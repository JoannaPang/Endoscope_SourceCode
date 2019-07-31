package com.android.FileBrowser;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.wifidevice.coantec.activity.R;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;

public class FileActivityHelper {
    public static ArrayList<FileInfo> getFiles(Activity activity, String path) {
        File[] files = new File(path).listFiles();
        if (files == null) {
            Toast.makeText(activity, String.format(activity.getString(R.string.file_cannotopen), new Object[]{path}), 0).show();
            return null;
        }
        ArrayList<FileInfo> fileList = new ArrayList<>();
        for (File file : files) {
            FileInfo fileInfo = new FileInfo();
            fileInfo.Name = file.getName();
            fileInfo.IsDirectory = file.isDirectory();
            fileInfo.Path = file.getPath();
            fileInfo.Size = file.length();
            fileList.add(fileInfo);
        }
        Collections.sort(fileList, new FileComparator());
        return fileList;
    }

    public static void createDir(final Activity activity, final String path, final Handler hander) {
        Builder builder = new Builder(activity);
        View layout = LayoutInflater.from(activity).inflate(R.layout.file_create, null);
        final EditText text = (EditText) layout.findViewById(R.id.file_name);
        builder.setView(layout);
        builder.setPositiveButton(R.string.ok, new OnClickListener() {
            public void onClick(DialogInterface dialoginterface, int i) {
                String newName = text.getText().toString().trim();
                if (newName.length() == 0) {
                    Toast.makeText(activity, R.string.file_namecannotempty, 0).show();
                    return;
                }
                File newFile = new File(FileUtil.combinPath(path, newName));
                if (newFile.exists()) {
                    Toast.makeText(activity, R.string.file_exists, 0).show();
                    return;
                }
                try {
                    if (newFile.mkdir()) {
                        hander.sendEmptyMessage(0);
                    } else {
                        Toast.makeText(activity, R.string.file_create_fail, 0).show();
                    }
                } catch (Exception ex) {
                    Toast.makeText(activity, ex.getLocalizedMessage(), 0).show();
                }
            }
        }).setNegativeButton(R.string.cancel, null);
        AlertDialog alertDialog = builder.create();
        alertDialog.setTitle(R.string.mainmenu_createdir);
        alertDialog.show();
    }

    public static void renameFile(final Activity activity, final File f, final Handler hander) {
        Builder builder = new Builder(activity);
        View layout = LayoutInflater.from(activity).inflate(R.layout.file_rename, null);
        final EditText text = (EditText) layout.findViewById(R.id.file_name);
        text.setText(f.getName());
        builder.setView(layout);
        builder.setPositiveButton(R.string.ok, new OnClickListener() {
            public void onClick(DialogInterface dialoginterface, int i) {
                String path = f.getParentFile().getPath();
                String newName = text.getText().toString().trim();
                if (!newName.equalsIgnoreCase(f.getName())) {
                    if (newName.length() == 0) {
                        Toast.makeText(activity, R.string.file_namecannotempty, 0).show();
                        return;
                    }
                    File newFile = new File(FileUtil.combinPath(path, newName));
                    if (newFile.exists()) {
                        Toast.makeText(activity, R.string.file_exists, 0).show();
                        return;
                    }
                    try {
                        if (f.renameTo(newFile)) {
                            hander.sendEmptyMessage(0);
                        } else {
                            Toast.makeText(activity, R.string.file_rename_fail, 0).show();
                        }
                    } catch (Exception ex) {
                        Toast.makeText(activity, ex.getLocalizedMessage(), 0).show();
                    }
                }
            }
        }).setNegativeButton(R.string.cancel, null);
        AlertDialog alertDialog = builder.create();
        alertDialog.setTitle(R.string.file_rename);
        alertDialog.show();
    }

    public static void viewFileInfo(Activity activity, File f) {
        Builder builder = new Builder(activity);
        View layout = LayoutInflater.from(activity).inflate(R.layout.file_info, null);
        FileInfo info = FileUtil.getFileInfo(f);
        ((TextView) layout.findViewById(R.id.file_name)).setText(f.getName());
        ((TextView) layout.findViewById(R.id.file_lastmodified)).setText(new Date(f.lastModified()).toLocaleString());
        ((TextView) layout.findViewById(R.id.file_size)).setText(FileUtil.formetFileSize(info.Size));
        if (f.isDirectory()) {
            ((TextView) layout.findViewById(R.id.file_contents)).setText("Folder " + info.FolderCount + ", File " + info.FileCount);
        }
        builder.setView(layout);
        builder.setPositiveButton(R.string.ok, new OnClickListener() {
            public void onClick(DialogInterface dialoginterface, int i) {
                dialoginterface.cancel();
            }
        });
        AlertDialog alertDialog = builder.create();
        alertDialog.setTitle(R.string.file_info);
        alertDialog.show();
    }
}
