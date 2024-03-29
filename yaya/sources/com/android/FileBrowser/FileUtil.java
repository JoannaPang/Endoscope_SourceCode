package com.android.FileBrowser;

import android.os.Environment;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.DecimalFormat;

public class FileUtil {
    public static String getSDPath() {
        if (Environment.getExternalStorageState().equals("mounted")) {
            return Environment.getExternalStorageDirectory().getPath();
        }
        return "/sdcard";
    }

    public static FileInfo getFileInfo(File f) {
        FileInfo info = new FileInfo();
        info.Name = f.getName();
        info.IsDirectory = f.isDirectory();
        calcFileContent(info, f);
        return info;
    }

    private static void calcFileContent(FileInfo info, File f) {
        if (f.isFile()) {
            info.Size += f.length();
        }
        if (f.isDirectory()) {
            File[] files = f.listFiles();
            if (files != null && files.length > 0) {
                int i = 0;
                while (i < files.length) {
                    File tmp = files[i];
                    if (tmp.isDirectory()) {
                        info.FolderCount++;
                    } else if (tmp.isFile()) {
                        info.FileCount++;
                    }
                    if (info.FileCount + info.FolderCount < 10000) {
                        calcFileContent(info, tmp);
                        i++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    public static String formetFileSize(long fileS) {
        DecimalFormat df = new DecimalFormat("#.00");
        String str = "";
        if (fileS < 1024) {
            return new StringBuilder(String.valueOf(fileS)).append(" B").toString();
        }
        if (fileS < 1048576) {
            return df.format(((double) fileS) / 1024.0d) + " K";
        }
        if (fileS < 1073741824) {
            return df.format(((double) fileS) / 1048576.0d) + " M";
        }
        return df.format(((double) fileS) / 1.073741824E9d) + " G";
    }

    public static String combinPath(String path, String fileName) {
        return new StringBuilder(String.valueOf(path)).append(path.endsWith(File.separator) ? "" : File.separator).append(fileName).toString();
    }

    public static boolean copyFile(File src, File tar) throws Exception {
        if (src.isFile()) {
            InputStream is = new FileInputStream(src);
            OutputStream op = new FileOutputStream(tar);
            BufferedInputStream bis = new BufferedInputStream(is);
            BufferedOutputStream bos = new BufferedOutputStream(op);
            byte[] bt = new byte[8192];
            for (int len = bis.read(bt); len != -1; len = bis.read(bt)) {
                bos.write(bt, 0, len);
            }
            bis.close();
            bos.close();
        }
        if (src.isDirectory()) {
            File[] f = src.listFiles();
            tar.mkdir();
            for (int i = 0; i < f.length; i++) {
                copyFile(f[i].getAbsoluteFile(), new File(tar.getAbsoluteFile() + File.separator + f[i].getName()));
            }
        }
        return true;
    }

    public static boolean moveFile(File src, File tar) throws Exception {
        if (!copyFile(src, tar)) {
            return false;
        }
        deleteFile(src);
        return true;
    }

    public static void deleteFile(File f) {
        if (f.isDirectory()) {
            File[] files = f.listFiles();
            if (files != null && files.length > 0) {
                for (File deleteFile : files) {
                    deleteFile(deleteFile);
                }
            }
        }
        f.delete();
    }

    public static String getMIMEType(String name) {
        String type;
        String str = "";
        String end = name.substring(name.lastIndexOf(".") + 1, name.length()).toLowerCase();
        if (end.equals("apk")) {
            return "application/vnd.android.package-archive";
        }
        if (end.equals("mp4") || end.equals("avi") || end.equals("3gp") || end.equals("rmvb")) {
            type = "video";
        } else if (end.equals("m4a") || end.equals("mp3") || end.equals("mid") || end.equals("xmf") || end.equals("ogg") || end.equals("wav")) {
            type = "audio";
        } else if (end.equals("jpg") || end.equals("gif") || end.equals("png") || end.equals("jpeg") || end.equals("bmp")) {
            type = "image";
        } else if (end.equals("txt") || end.equals("log")) {
            type = "text";
        } else {
            type = "*";
        }
        return new StringBuilder(String.valueOf(type)).append("/*").toString();
    }
}
