package com.methnm.coantec.moudle;

import android.util.Log;
import java.io.File;
import java.util.HashMap;

public class FileScan {
    private static final String TAG = "FileScan";

    public HashMap<String, String> getMusicListOnSys(File file) {
        Log.i(TAG, file.getPath());
        HashMap<String, String> fileList = new HashMap<>();
        getFileList(file, fileList);
        return fileList;
    }

    private void getFileList(File path, HashMap<String, String> fileList) {
        if (path.isDirectory()) {
            File[] files = path.listFiles();
            if (files != null) {
                for (File fileList2 : files) {
                    getFileList(fileList2, fileList);
                }
                return;
            }
            return;
        }
        Log.i(TAG, path.getAbsolutePath());
        String filePath = path.getAbsolutePath();
        fileList.put(filePath.substring(filePath.lastIndexOf("/") + 1), filePath);
    }
}
