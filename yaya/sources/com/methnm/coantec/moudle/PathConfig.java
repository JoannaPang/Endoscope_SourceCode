package com.methnm.coantec.moudle;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.StatFs;
import android.provider.MediaStore.Images.Media;
import android.util.Log;
import com.android.FileBrowser.FileUtil;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public class PathConfig {
    private static String Tag = "PathConfig";
    public static SdcardSelector sdcardItem = SdcardSelector.BUILT_IN;
    private Activity context;
    private SwitchConfig mSwitchConfig;
    private List<String> videoList = new ArrayList();

    public enum SdcardSelector {
        BUILT_IN,
        EXTERNAL
    }

    public PathConfig(Activity context2) {
        this.context = context2;
        this.mSwitchConfig = new SwitchConfig(context2);
        if (this.mSwitchConfig.readSdcardChoose()) {
            sdcardItem = SdcardSelector.EXTERNAL;
        } else {
            sdcardItem = SdcardSelector.BUILT_IN;
        }
    }

    public void setSdcardItem(SdcardSelector item) {
        sdcardItem = item;
    }

    public String getVideoPath(String parentFolder, String videoName) {
        String absolutePath = null;
        try {
            if (sdcardItem == SdcardSelector.BUILT_IN) {
                String firstExternPath = SdCardUtils.getFirstExternPath();
            } else if (SdCardUtils.getSecondExternPath() == null) {
                return null;
            }
            String videoPath = getCurrentSavePath() + "/" + parentFolder + "/";
            File folder = new File(videoPath);
            if (!folder.exists()) {
                folder.mkdirs();
            }
            File saveVideo = new File(new StringBuilder(String.valueOf(videoPath)).append(videoName).toString());
            if (!saveVideo.exists()) {
                saveVideo.createNewFile();
            }
            absolutePath = saveVideo.getAbsolutePath();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return absolutePath;
    }

    public String getRootPath() {
        String sdCardDir;
        if (sdcardItem == SdcardSelector.BUILT_IN) {
            sdCardDir = SdCardUtils.getFirstExternPath();
        } else {
            sdCardDir = SdCardUtils.getSecondExternPath();
            if (sdCardDir == null) {
                return null;
            }
        }
        return sdCardDir;
    }

    public void savePhoto(String parentFolder, String photoName, byte[] imagedata) {
        if (getCurPath() != null) {
            try {
                String photoPath = getCurrentSavePath() + "/" + parentFolder + "/";
                Log.e(Tag, "photoPath=" + photoPath);
                File folder = new File(photoPath);
                if (!folder.exists()) {
                    folder.mkdirs();
                }
                File savePhoto = new File(photoPath, photoName);
                if (!savePhoto.exists()) {
                    savePhoto.createNewFile();
                }
                String absolutePath = savePhoto.getAbsolutePath();
                Log.e("path", absolutePath);
                FileOutputStream fout = new FileOutputStream(absolutePath);
                fout.write(imagedata, 0, imagedata.length);
                fout.close();
                Intent intent = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
                Uri uri = path2uri(Uri.fromFile(new File(new StringBuilder(String.valueOf(photoPath)).append(photoName).toString())));
                Log.e("Display Activity", "uri  " + uri.toString());
                intent.setData(uri);
                this.context.sendBroadcast(intent);
            } catch (FileNotFoundException e) {
                e.printStackTrace();
            } catch (IOException e2) {
                e2.printStackTrace();
            }
        }
    }

    public List<String> getImagesList(File photoPath) {
        List<String> photoList = new ArrayList<>();
        File[] filterFiles = photoPath.listFiles(new FileFilter() {
            public boolean accept(File file) {
                if (!file.isFile() || (!file.getAbsolutePath().toLowerCase().endsWith(".bmp") && !file.getAbsolutePath().toLowerCase().endsWith(".jpg") && !file.getAbsolutePath().toLowerCase().endsWith(".png"))) {
                    return false;
                }
                return true;
            }
        });
        if (filterFiles != null && filterFiles.length > 0) {
            for (File file : filterFiles) {
                if (photoList.indexOf(file.getAbsolutePath()) == -1) {
                    photoList.add(file.getAbsolutePath());
                }
            }
        }
        return photoList;
    }

    public List<String> getVideosList(File videoPath) {
        getVideoList(videoPath);
        return this.videoList;
    }

    private void getVideoList(File videoPath) {
        List<String> temp = new ArrayList<>();
        File[] files = videoPath.listFiles();
        if (files != null && files.length > 0) {
            for (int i = 0; i < files.length; i++) {
                if (files[i].isFile()) {
                    if (files[i].getAbsolutePath().toLowerCase().endsWith(".avi") || files[i].getAbsolutePath().toLowerCase().endsWith(".3gp") || files[i].getAbsolutePath().toLowerCase().endsWith(".mp4")) {
                        String lcPath = files[i].getAbsolutePath().toLowerCase();
                        String absPath = files[i].getAbsolutePath();
                        String photopath = null;
                        if (lcPath.contains(".avi")) {
                            photopath = absPath.replace(".avi", ".jpg");
                        } else if (lcPath.contains(".mp4")) {
                            photopath = absPath.replace(".mp4", ".jpg");
                        } else if (lcPath.contains(".3gp")) {
                            photopath = absPath.replace(".3gp", ".jpg");
                        }
                        File photofile = new File(photopath);
                        if (photofile.exists() && temp.indexOf(photofile.getAbsolutePath()) == -1) {
                            temp.add(photofile.getAbsolutePath());
                            this.videoList.add(photofile.toString());
                        }
                    }
                } else if (files[i].isDirectory() && files[i].getPath().indexOf("/.") == -1) {
                    getVideoList(files[i]);
                }
            }
        }
    }

    private Uri path2uri(Uri uri) {
        if (!uri.getScheme().equals("file")) {
            return uri;
        }
        String path = uri.getEncodedPath();
        if (path == null) {
            return uri;
        }
        String path2 = Uri.decode(path);
        ContentResolver cr = this.context.getContentResolver();
        StringBuffer buff = new StringBuffer();
        buff.append("(").append("_data").append("=").append("'" + path2 + "'").append(")");
        Cursor cur = cr.query(Media.EXTERNAL_CONTENT_URI, new String[]{"_id"}, buff.toString(), null, null);
        int index = 0;
        cur.moveToFirst();
        while (!cur.isAfterLast()) {
            index = cur.getInt(cur.getColumnIndex("_id"));
            cur.moveToNext();
        }
        if (index == 0) {
            return uri;
        }
        Uri uri_temp = Uri.parse("content://media/external/images/media/" + index);
        Log.d("", "uri_temp is " + uri_temp);
        if (uri_temp != null) {
            return uri_temp;
        }
        return uri;
    }

    public int getSdcardAvilibleSize() {
        StatFs stat = new StatFs(new File(getRootPath()).getPath());
        return (int) (((((long) stat.getAvailableBlocks()) * ((long) stat.getBlockSize())) / 1024) / 1024);
    }

    public int getSdcardTotalSize() {
        StatFs stat = new StatFs(new File(getRootPath()).getPath());
        return (int) (((((long) stat.getBlockCount()) * ((long) stat.getBlockSize())) / 1024) / 1024);
    }

    public List<File> sortVideoList(List<File> photoList) {
        Collections.sort(photoList, new Comparator<File>() {
            public int compare(File curFile, File nextFile) {
                return curFile.lastModified() > nextFile.lastModified() ? 1 : -1;
            }
        });
        return photoList;
    }

    public void deleteFiles(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                file.delete();
            } else if (file.isDirectory()) {
                File[] files = file.listFiles();
                for (File deleteFiles : files) {
                    deleteFiles(deleteFiles);
                }
            }
            file.delete();
        }
    }

    public String getCurPath() {
        String path = this.context.getSharedPreferences("CurPath", 0).getString("CurPath", FileUtil.getSDPath());
        Log.e(Tag, "---------path==" + path);
        return path;
    }

    private String getCurrentSavePath() {
        String curPath = this.context.getSharedPreferences("SetCurrentPath", 0).getString("SetCurrentPath", "mnt/sdcard/FLY_SZB");
        Log.e(Tag, "获取点击保存时的路径=" + curPath);
        return curPath;
    }
}
