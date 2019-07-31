package com.methnm.coantec.moudle;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.media.ThumbnailUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseExpandableListAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.wifidevice.coantec.activity.R;
import java.io.File;
import java.sql.Date;
import java.text.DecimalFormat;
import java.util.List;

public class FileAdapter extends BaseExpandableListAdapter {
    static Context context = null;
    static LayoutInflater mInflater_c = null;
    static LayoutInflater mInflater_g = null;
    List<List<File>> child;
    private CHolder cholder = null;
    private Date date = null;
    private GHolder gholder = null;
    List<String> group;
    private int index = 0;

    public FileAdapter(Context context2, List<String> group2, List<List<File>> child2, int index2) {
        context = context2;
        this.group = group2;
        this.child = child2;
        this.index = index2;
        mInflater_c = LayoutInflater.from(context2);
        mInflater_g = LayoutInflater.from(context2);
    }

    public int Lw_Get_Child(View view) {
        return ((Integer) view.getTag(R.id.name)).intValue();
    }

    public int Lw_Get_Group(View view) {
        return ((Integer) view.getTag(R.id.date)).intValue();
    }

    public Object getChild(int groupPosition, int childPosition) {
        return ((List) this.child.get(groupPosition)).get(childPosition);
    }

    public long getChildId(int groupPosition, int childPosition) {
        return (long) childPosition;
    }

    public List<File> GetTmp(int groupPosition) {
        return (List) this.child.get(groupPosition);
    }

    public int getChildrenCount(int groupPosition) {
        return ((List) this.child.get(groupPosition)).size();
    }

    public View getChildView(int groupPosition, int childPosition, boolean isLastChild, View convertView, ViewGroup parent) {
        View view;
        if (convertView == null) {
            this.cholder = new CHolder();
            view = mInflater_c.inflate(R.layout.child, null);
            this.cholder.imgView = (ImageView) view.findViewById(R.id.imgView);
            this.cholder.Name = (TextView) view.findViewById(R.id.name);
            this.cholder.date = (TextView) view.findViewById(R.id.date);
            this.cholder.size = (TextView) view.findViewById(R.id.size);
            view.setTag(this.cholder);
            View convertView2 = view;
        } else {
            view = convertView;
            this.cholder = (CHolder) view.getTag();
        }
        File file = (File) ((List) this.child.get(groupPosition)).get(childPosition);
        this.cholder.Name.setText(file.getName());
        this.date = new Date(file.lastModified());
        this.cholder.date.setText(this.date.toString());
        view.setTag(R.id.date, Integer.valueOf(groupPosition));
        view.setTag(R.id.name, Integer.valueOf(childPosition));
        Bitmap bmp = getImageThumbnail(file.getPath(), 72, 72);
        if (bmp == null) {
            this.cholder.imgView.setImageResource(R.drawable.mediabg);
        } else {
            this.cholder.imgView.setImageBitmap(bmp);
        }
        float length = (float) file.length();
        if (length >= 1048576.0f) {
            this.cholder.size.setText(new StringBuilder(String.valueOf(new DecimalFormat("#.00").format((double) (length / 1048576.0f)))).append("MB").toString());
        } else if (length >= 1024.0f) {
            this.cholder.size.setText(new StringBuilder(String.valueOf(new DecimalFormat("#.00").format((double) (length / 1024.0f)))).append("KB").toString());
        } else {
            this.cholder.size.setText(new StringBuilder(String.valueOf(length)).append("B").toString());
        }
        return view;
    }

    public Object getGroup(int groupPosition) {
        return this.group.get(groupPosition);
    }

    public long getGroupId(int groupPosition) {
        return (long) groupPosition;
    }

    public int getGroupCount() {
        return this.group.size();
    }

    public View getGroupView(int groupPosition, boolean isExpanded, View convertView, ViewGroup parent) {
        View view;
        if (convertView == null) {
            this.gholder = new GHolder();
            view = mInflater_c.inflate(R.layout.group, null);
            this.gholder.gdate = (TextView) view.findViewById(R.id.gdate);
            this.gholder.count = (TextView) view.findViewById(R.id.gcount);
            View convertView2 = view;
            view.setTag(this.gholder);
        } else {
            view = convertView;
            this.gholder = (GHolder) view.getTag();
        }
        view.setTag(R.id.date, Integer.valueOf(groupPosition));
        view.setTag(R.id.name, Integer.valueOf(-1));
        this.gholder.gdate.setText((CharSequence) this.group.get(groupPosition));
        return view;
    }

    public boolean hasStableIds() {
        return false;
    }

    public boolean isChildSelectable(int groupPosition, int childPosition) {
        return true;
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
}
