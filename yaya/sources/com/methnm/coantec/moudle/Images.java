package com.methnm.coantec.moudle;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.support.v4.view.MotionEventCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.FloatMath;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;

public class Images extends ImageView {
    static final int DRAG = 1;
    static final float MAX_SCALE = 15.0f;
    static final int NONE = 0;
    static final int ZOOM = 2;
    protected String Tag = "Images";
    private Bitmap bitmap = null;
    private float bitmap_scale_x = 0.0f;
    private float bitmap_scale_y = 0.0f;
    private Context context = null;
    float dist = 1.0f;
    private DisplayMetrics dm;
    Matrix matrix = new Matrix();
    PointF mid = new PointF();
    float minScaleR = 1.0f;
    int mode = 0;
    PointF prev = new PointF();
    Matrix savedMatrix = new Matrix();

    public Images(Context context2) {
        super(context2);
        setupView();
    }

    public Images(Context context2, AttributeSet attrs) {
        super(context2, attrs);
        this.context = context2;
    }

    public void setupView() {
        this.dm = this.context.getResources().getDisplayMetrics();
        BitmapDrawable bd = (BitmapDrawable) getDrawable();
        if (bd != null) {
            this.bitmap = bd.getBitmap();
        }
        setScaleType(ScaleType.MATRIX);
        setImageBitmap(this.bitmap);
        if (this.bitmap != null) {
            center(true, true);
        }
        setImageMatrix(this.matrix);
        setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction() & MotionEventCompat.ACTION_MASK) {
                    case 0:
                        Images.this.savedMatrix.set(Images.this.matrix);
                        Images.this.prev.set(event.getX(), event.getY());
                        Images.this.mode = 1;
                        break;
                    case 2:
                        if (Images.this.mode != 1) {
                            if (Images.this.mode == 2) {
                                float newDist = Images.this.spacing(event);
                                if (newDist > 10.0f) {
                                    Images.this.matrix.set(Images.this.savedMatrix);
                                    float tScale = newDist / Images.this.dist;
                                    Images.this.matrix.postScale(tScale, tScale, Images.this.mid.x, Images.this.mid.y);
                                    break;
                                }
                            }
                        } else {
                            Images.this.matrix.set(Images.this.savedMatrix);
                            Images.this.matrix.postTranslate(event.getX() - Images.this.prev.x, event.getY() - Images.this.prev.y);
                            break;
                        }
                        break;
                    case 5:
                        Images.this.dist = Images.this.spacing(event);
                        if (Images.this.spacing(event) > 10.0f) {
                            Images.this.savedMatrix.set(Images.this.matrix);
                            Images.this.midPoint(Images.this.mid, event);
                            Images.this.mode = 2;
                            break;
                        }
                        break;
                    case 6:
                        Images.this.mode = 0;
                        Images.this.savedMatrix.set(Images.this.matrix);
                        break;
                }
                Images.this.setImageMatrix(Images.this.matrix);
                return true;
            }
        });
    }

    private void Center() {
        new Matrix().set(this.matrix);
        int width = this.bitmap.getWidth();
        int height = this.bitmap.getHeight();
        int screenWidth = this.dm.widthPixels;
        int screenHeight = this.dm.heightPixels;
        if (width < screenWidth) {
            this.matrix.set(this.savedMatrix);
            float f = ((float) (screenWidth - width)) / 2.0f;
            float f2 = ((float) (screenHeight - height)) / 2.0f;
            this.matrix.postTranslate(this.mid.x - ((float) (screenWidth / 2)), ((float) ((-screenHeight) / 2)) + this.mid.y);
        }
    }

    /* access modifiers changed from: protected */
    public void center(boolean horizontal, boolean vertical) {
        Matrix m = new Matrix();
        m.set(this.matrix);
        RectF rect = new RectF(0.0f, 0.0f, (float) this.bitmap.getWidth(), (float) this.bitmap.getHeight());
        m.mapRect(rect);
        float height = rect.height();
        float width = rect.width();
        if (vertical) {
            int screenHeight = this.dm.heightPixels;
            if (height < ((float) screenHeight)) {
                float deltaY = ((((float) screenHeight) - height) / 2.0f) - rect.top;
            } else if (rect.top > 0.0f) {
                float deltaY2 = -rect.top;
            } else if (rect.bottom < ((float) screenHeight)) {
                float deltaY3 = ((float) getHeight()) - rect.bottom;
            }
        }
        if (horizontal) {
            int screenWidth = this.dm.widthPixels;
            int screenHeight2 = this.dm.heightPixels;
            if (width < ((float) screenWidth)) {
                float deltaX = ((((float) screenWidth) - width) / 2.0f) - rect.left;
            } else if (rect.left > 0.0f) {
                float deltaX2 = -rect.left;
            } else if (rect.right < ((float) screenWidth)) {
                float deltaX3 = ((float) screenWidth) - rect.right;
            }
            this.bitmap_scale_x = ((float) screenWidth) / width;
            this.bitmap_scale_y = ((float) screenHeight2) / height;
            this.matrix.setScale(this.bitmap_scale_x, this.bitmap_scale_y);
        }
        this.matrix.postTranslate(0.0f, 0.0f);
    }

    private void CheckView() {
        float[] p = new float[9];
        this.matrix.getValues(p);
        if (this.mode == 2) {
            if (p[0] < this.minScaleR) {
                this.matrix.setScale(this.minScaleR, this.minScaleR);
            }
            if (p[0] > MAX_SCALE) {
                this.matrix.set(this.savedMatrix);
            }
        }
        center(true, true);
    }

    /* access modifiers changed from: private */
    public float spacing(MotionEvent event) {
        float x = event.getX(0) - event.getX(1);
        float y = event.getY(0) - event.getY(1);
        return FloatMath.sqrt((x * x) + (y * y));
    }

    /* access modifiers changed from: private */
    public void midPoint(PointF point, MotionEvent event) {
        point.set((event.getX(0) + event.getX(1)) / 2.0f, (event.getY(0) + event.getY(1)) / 2.0f);
    }
}
