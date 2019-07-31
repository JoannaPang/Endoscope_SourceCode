package com.android.FileBrowser;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.wifidevice.coantec.activity.R;
import java.util.List;

public class FileAdapter extends BaseAdapter {
    private List<FileInfo> _files;
    private LayoutInflater _inflater;

    private class ViewHolder {
        ImageView icon;
        TextView name;

        private ViewHolder() {
        }

        /* synthetic */ ViewHolder(FileAdapter fileAdapter, ViewHolder viewHolder) {
            this();
        }
    }

    public FileAdapter(Context context, List<FileInfo> files) {
        this._files = files;
        this._inflater = LayoutInflater.from(context);
    }

    public int getCount() {
        return this._files.size();
    }

    public Object getItem(int position) {
        return this._files.get(position);
    }

    public long getItemId(int position) {
        return (long) position;
    }

    public View getView(int position, View convertView, ViewGroup parent) {
        ViewHolder holder;
        if (convertView == null) {
            convertView = this._inflater.inflate(R.layout.file_item, null);
            holder = new ViewHolder(this, null);
            holder.name = (TextView) convertView.findViewById(R.id.file_name);
            holder.icon = (ImageView) convertView.findViewById(R.id.file_icon);
            convertView.setTag(holder);
        } else {
            holder = (ViewHolder) convertView.getTag();
        }
        FileInfo f = (FileInfo) this._files.get(position);
        holder.name.setText(f.Name);
        holder.icon.setImageResource(f.getIconResourceId());
        return convertView;
    }
}
