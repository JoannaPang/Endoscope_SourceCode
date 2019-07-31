package com.methnm.coantec.moudle;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Point;
import android.os.Handler;
import android.os.Message;
import android.support.v4.util.LruCache;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class NativeImageLoader {
    private static NativeImageLoader mInstance = new NativeImageLoader();
    private ExecutorService mImageThreadPool = Executors.newFixedThreadPool(1);
    private LruCache<String, Bitmap> mMemoryCache = new LruCache<String, Bitmap>(((int) (Runtime.getRuntime().maxMemory() / 1024)) / 8) {
        /* access modifiers changed from: protected */
        public int sizeOf(String key, Bitmap bitmap) {
            return (bitmap.getRowBytes() * bitmap.getHeight()) / 1024;
        }
    };

    public interface NativeImageCallBack {
        void onImageLoader(Bitmap bitmap, String str);
    }

    private NativeImageLoader() {
    }

    public static NativeImageLoader getInstance() {
        return mInstance;
    }

    public Bitmap loadNativeImage(int firstVisibleItem, int visibleItemCount, String path, NativeImageCallBack mCallBack) {
        return loadNativeImage(path, null, mCallBack);
    }

    @SuppressLint({"HandlerLeak"})
    public Bitmap loadNativeImage(final String path, final Point mPoint, final NativeImageCallBack mCallBack) {
        Bitmap bitmap = getBitmapFromMemCache(path);
        final Handler mHander = new Handler() {
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                mCallBack.onImageLoader((Bitmap) msg.obj, path);
            }
        };
        if (bitmap == null) {
            this.mImageThreadPool.execute(new Runnable() {
                public void run() {
                    int i = 0;
                    NativeImageLoader nativeImageLoader = NativeImageLoader.this;
                    String str = path;
                    int i2 = mPoint == null ? 0 : mPoint.x;
                    if (mPoint != null) {
                        i = mPoint.y;
                    }
                    Bitmap mBitmap = nativeImageLoader.decodeThumbBitmapForFile(str, i2, i);
                    Message msg = mHander.obtainMessage();
                    msg.obj = mBitmap;
                    mHander.sendMessage(msg);
                    NativeImageLoader.this.addBitmapToMemoryCache(path, mBitmap);
                }
            });
        }
        return bitmap;
    }

    /* access modifiers changed from: private */
    public void addBitmapToMemoryCache(String key, Bitmap bitmap) {
        if (getBitmapFromMemCache(key) == null && bitmap != null) {
            this.mMemoryCache.put(key, bitmap);
        }
    }

    public void deleteBitmapToMemoryCache(String key) {
        if (getBitmapFromMemCache(key) != null) {
            this.mMemoryCache.remove(key);
        }
    }

    public Bitmap getBitmapFromMemCache(String key) {
        return (Bitmap) this.mMemoryCache.get(key);
    }

    /* access modifiers changed from: private */
    public Bitmap decodeThumbBitmapForFile(String path, int viewWidth, int viewHeight) {
        Options options = new Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(path, options);
        options.inSampleSize = computeScale(options, viewWidth, viewHeight);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(path, options);
    }

    private int computeScale(Options options, int viewWidth, int viewHeight) {
        int inSampleSize = 1;
        if (viewWidth == 0 || viewWidth == 0) {
            return 1;
        }
        int bitmapWidth = options.outWidth;
        int bitmapHeight = options.outHeight;
        if (bitmapWidth > viewWidth || bitmapHeight > viewWidth) {
            int widthScale = Math.round(((float) bitmapWidth) / ((float) viewWidth));
            int heightScale = Math.round(((float) bitmapHeight) / ((float) viewWidth));
            if (widthScale < heightScale) {
                inSampleSize = widthScale;
            } else {
                inSampleSize = heightScale;
            }
        }
        return inSampleSize;
    }

    public void CacelAllTasks() {
        this.mImageThreadPool.shutdown();
    }
}
