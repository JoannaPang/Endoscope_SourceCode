package com.methnm.coantec.moudle;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;

public class SeekBars extends SeekBar {
    private OnSeekBarChangeListener mOnSeekBarChangeListener;
    private Drawable mThumb;

    public SeekBars(Context context) {
        this(context, null);
    }

    public SeekBars(Context context, AttributeSet attrs) {
        this(context, attrs, 16842875);
    }

    public SeekBars(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public void setOnSeekBarChangeListener(OnSeekBarChangeListener l) {
        this.mOnSeekBarChangeListener = l;
    }

    /* access modifiers changed from: 0000 */
    public void onStartTrackingTouch() {
        if (this.mOnSeekBarChangeListener != null) {
            this.mOnSeekBarChangeListener.onStartTrackingTouch(this);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onStopTrackingTouch() {
        if (this.mOnSeekBarChangeListener != null) {
            this.mOnSeekBarChangeListener.onStopTrackingTouch(this);
        }
    }

    /* access modifiers changed from: 0000 */
    public void onProgressRefresh(float scale, boolean fromUser) {
        Drawable thumb = this.mThumb;
        if (thumb != null) {
            setThumbPos(getHeight(), thumb, scale, ExploreByTouchHelper.INVALID_ID);
            invalidate();
        }
        if (this.mOnSeekBarChangeListener != null) {
            this.mOnSeekBarChangeListener.onProgressChanged(this, getProgress(), fromUser);
        }
    }

    private void setThumbPos(int w, Drawable thumb, float scale, int gap) {
        int topBound;
        int bottomBound;
        int available = (getPaddingLeft() + w) - getPaddingRight();
        int thumbWidth = thumb.getIntrinsicWidth();
        int thumbHeight = thumb.getIntrinsicHeight();
        int thumbPos = (int) (((float) ((available - thumbWidth) + (getThumbOffset() * 2))) * scale);
        if (gap == Integer.MIN_VALUE) {
            Rect oldBounds = thumb.getBounds();
            topBound = oldBounds.top;
            bottomBound = oldBounds.bottom;
        } else {
            topBound = gap;
            bottomBound = gap + thumbHeight;
        }
        thumb.setBounds(thumbPos, topBound, thumbPos + thumbWidth, bottomBound);
    }

    /* access modifiers changed from: protected */
    public void onDraw(Canvas c) {
        c.rotate(-90.0f);
        c.translate((float) (-getHeight()), 0.0f);
        super.onDraw(c);
    }

    /* access modifiers changed from: protected */
    public synchronized void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(heightMeasureSpec, widthMeasureSpec);
        setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
    }

    public void setThumb(Drawable thumb) {
        this.mThumb = thumb;
        super.setThumb(thumb);
    }

    /* access modifiers changed from: protected */
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(h, w, oldw, oldh);
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (!isEnabled()) {
            return false;
        }
        switch (event.getAction()) {
            case 0:
                setPressed(true);
                onStartTrackingTouch();
                trackTouchEvent(event);
                onSizeChanged(getWidth(), getHeight(), 0, 0);
                break;
            case 1:
                trackTouchEvent(event);
                onStopTrackingTouch();
                setPressed(false);
                onSizeChanged(getWidth(), getHeight(), 0, 0);
                break;
            case 2:
                trackTouchEvent(event);
                attemptClaimDrag();
                onSizeChanged(getWidth(), getHeight(), 0, 0);
                break;
            case 3:
                onStopTrackingTouch();
                setPressed(false);
                onSizeChanged(getWidth(), getHeight(), 0, 0);
                break;
        }
        return true;
    }

    private void trackTouchEvent(MotionEvent event) {
        float scale;
        int Height = getHeight();
        int available = (Height - getPaddingBottom()) - getPaddingTop();
        int Y = (int) event.getY();
        if (Y > Height - getPaddingBottom()) {
            scale = 0.0f;
        } else if (Y < getPaddingTop()) {
            scale = 1.0f;
        } else {
            scale = ((float) ((Height - getPaddingBottom()) - Y)) / ((float) available);
        }
        setProgress((int) (scale * ((float) getMax())));
    }

    private void attemptClaimDrag() {
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
    }
}
