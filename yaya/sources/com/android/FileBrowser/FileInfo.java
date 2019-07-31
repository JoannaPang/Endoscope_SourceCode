package com.android.FileBrowser;

import com.wifidevice.coantec.activity.R;

public class FileInfo {
    public int FileCount = 0;
    public int FolderCount = 0;
    public boolean IsDirectory = false;
    public String Name;
    public String Path;
    public long Size;

    public int getIconResourceId() {
        if (this.IsDirectory) {
            return R.drawable.folder;
        }
        return R.drawable.doc;
    }
}
