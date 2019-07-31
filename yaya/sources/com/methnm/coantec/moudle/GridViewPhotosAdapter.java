package com.methnm.coantec.moudle;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Point;
import android.media.ThumbnailUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import com.methnm.coantec.moudle.MyImageView.OnMeasureListener;
import com.methnm.coantec.moudle.NativeImageLoader.NativeImageCallBack;
import com.wifidevice.coantec.activity.R;
import java.util.List;

public class GridViewPhotosAdapter extends BaseAdapter {
    static LayoutInflater mInflater_c = null;
    static LayoutInflater mInflater_g = null;
    private Context context = null;
    private int index = 0;
    List<String> list;
    /* access modifiers changed from: private */
    public GridView mGridView;
    /* access modifiers changed from: private */
    public Point mPoint = new Point(0, 0);

    public static class PhotosViewHolder {
        public MyImageView mImageView;
    }

    public GridViewPhotosAdapter(Context context2, List<String> list2, GridView mGridView2) {
        this.context = context2;
        this.list = list2;
        this.mGridView = mGridView2;
        mInflater_c = LayoutInflater.from(context2);
    }

    private Bitmap getImageThumbnail(String imagePath, int width, int height) {
        int be;
        Options options = new Options();
        options.inJustDecodeBounds = true;
        Bitmap bitmap = BitmapFactory.decodeFile(imagePath, options);
        options.inJustDecodeBounds = false;
        int beWidth = options.outWidth / width;
        int beHeight = options.outHeight / height;
        if (beWidth < beHeight) {
            be = beWidth;
        } else {
            be = beHeight;
        }
        if (be <= 0) {
            be = 1;
        }
        options.inSampleSize = be;
        if (this.index == 1) {
            return ThumbnailUtils.extractThumbnail(BitmapFactory.decodeFile(imagePath, options), width, height, 2);
        }
        if (this.index == 2) {
            return ThumbnailUtils.extractThumbnail(ThumbnailUtils.createVideoThumbnail(imagePath, 2), width, height);
        }
        return ThumbnailUtils.extractThumbnail(BitmapFactory.decodeFile(imagePath, options), width, height, 2);
    }

    public int getCount() {
        return this.list.size();
    }

    public Object getItem(int position) {
        return this.list.get(position);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        PhotosViewHolder viewHolder;
        String path = (String) this.list.get(position);
        if (convertView == null) {
            viewHolder = new PhotosViewHolder();
            convertView = mInflater_c.inflate(R.layout.gridview_list_photos_item, null);
            viewHolder.mImageView = (MyImageView) convertView.findViewById(R.id.myig_photo);
            viewHolder.mImageView.setOnMeasureListener(new OnMeasureListener() {
                public void onMeasureSize(int width, int height) {
                    GridViewPhotosAdapter.this.mPoint.set(width, height);
                }
            });
            convertView.setTag(viewHolder);
        } else {
            viewHolder = (PhotosViewHolder) convertView.getTag();
        }
        viewHolder.mImageView.setTag(path);
        Bitmap bitmap = NativeImageLoader.getInstance().loadNativeImage(path, this.mPoint, new NativeImageCallBack() {
            public void onImageLoader(Bitmap bitmap, String path) {
                ImageView mImageView = (ImageView) GridViewPhotosAdapter.this.mGridView.findViewWithTag(path);
                if (bitmap != null && mImageView != null) {
                    mImageView.setImageBitmap(bitmap);
                }
            }
        });
        if (bitmap != null) {
            viewHolder.mImageView.setImageBitmap(bitmap);
        }
        return convertView;
    }
}
