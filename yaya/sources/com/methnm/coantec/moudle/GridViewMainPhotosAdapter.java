package com.methnm.coantec.moudle;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
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

public class GridViewMainPhotosAdapter extends BaseAdapter {
    static LayoutInflater main_mInflater = null;
    private Context context = null;
    private int index = 0;
    /* access modifiers changed from: private */
    public GridView mGridView;
    /* access modifiers changed from: private */
    public Point mPoint = new Point(0, 0);
    List<String> main_list;

    public static class PhotosViewHolder {
        public MyImageView main_mImageView;
    }

    public GridViewMainPhotosAdapter(Context context2, List<String> list, GridView mGridView2) {
        this.context = context2;
        this.main_list = list;
        this.mGridView = mGridView2;
        main_mInflater = LayoutInflater.from(context2);
    }

    public int getCount() {
        return this.main_list.size();
    }

    public Object getItem(int position) {
        return this.main_list.get(position);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        PhotosViewHolder viewHolder;
        String path = (String) this.main_list.get(position);
        if (convertView == null) {
            viewHolder = new PhotosViewHolder();
            convertView = main_mInflater.inflate(R.layout.main_gridview_list_photos_item, null);
            viewHolder.main_mImageView = (MyImageView) convertView.findViewById(R.id.main_gd_photo);
            viewHolder.main_mImageView.setOnMeasureListener(new OnMeasureListener() {
                public void onMeasureSize(int width, int height) {
                    GridViewMainPhotosAdapter.this.mPoint.set(width, height);
                }
            });
            convertView.setTag(viewHolder);
        } else {
            viewHolder = (PhotosViewHolder) convertView.getTag();
        }
        viewHolder.main_mImageView.setTag(path);
        Bitmap bitmap = NativeImageLoader.getInstance().loadNativeImage(path, this.mPoint, new NativeImageCallBack() {
            public void onImageLoader(Bitmap bitmap, String path) {
                ImageView mImageView = (ImageView) GridViewMainPhotosAdapter.this.mGridView.findViewWithTag(path);
                if (bitmap != null && mImageView != null) {
                    mImageView.setImageBitmap(bitmap);
                }
            }
        });
        if (bitmap != null) {
            viewHolder.main_mImageView.setImageBitmap(bitmap);
        } else {
            viewHolder.main_mImageView.setImageResource(R.drawable.friends_sends_pictures_no);
        }
        return convertView;
    }
}
