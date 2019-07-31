package com.methnm.coantec.activity;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnGroupClickListener;
import android.widget.GridView;
import android.widget.TextView;
import android.widget.Toast;
import com.methnm.coantec.moudle.GridViewPhotosAdapter;
import com.methnm.coantec.moudle.PathConfig;
import com.methnm.coantec.moudle.SwitchConfig;
import com.wifidevice.coantec.activity.R;
import java.io.File;
import java.io.FileFilter;
import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class PhotoGridviewActivity extends Activity {
    static Date DT = null;
    public static final int MENU_ADD = 1;
    public static final int MENU_DELETE = 2;
    private static final int SCAN_OK = 0;
    static String format = "image/*";
    static int index = -1;
    public static List<String> photoList = new ArrayList();
    private String Tag = "ListViewActivity";
    Activity activity;
    GridViewPhotosAdapter adapter = null;
    List<List<File>> child;
    private String curPath = null;
    private File folder;
    /* access modifiers changed from: private */
    public GridView gd_photo;
    /* access modifiers changed from: private */
    public Handler handler = new Handler(new Callback() {
        public boolean handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    PhotoGridviewActivity.this.adapter = new GridViewPhotosAdapter(PhotoGridviewActivity.this, PhotoGridviewActivity.photoList, PhotoGridviewActivity.this.gd_photo);
                    PhotoGridviewActivity.this.gd_photo.setAdapter(PhotoGridviewActivity.this.adapter);
                    break;
            }
            return true;
        }
    });
    /* access modifiers changed from: private */
    public PathConfig mPathConfig;
    private SwitchConfig mSwitchConfig;
    /* access modifiers changed from: private */
    public TextView notice = null;
    List<File> temp;

    private class GroupClicked implements OnGroupClickListener {
        private GroupClicked() {
        }

        public boolean onGroupClick(ExpandableListView arg0, View arg1, int arg2, long arg3) {
            return true;
        }
    }

    private class ItemLongClicked implements OnItemLongClickListener {
        private ItemLongClicked() {
        }

        public boolean onItemLongClick(AdapterView<?> adapterView, View arg1, int arg2, long arg3) {
            return false;
        }
    }

    public void initialData() {
        this.child = new ArrayList();
    }

    public void addInfo(String p, File file) {
        List<File> item = new ArrayList<>();
        item.add(file);
        this.child.add(item);
    }

    public void addInfo(File file, List<File> temp1) {
        if (temp1.indexOf(file) == -1) {
            temp1.add(file);
            this.child.add(temp1);
        }
    }

    private void ChildDelete(int grouplocation, int childlocation) {
        this.temp.remove(childlocation);
        if (this.temp.isEmpty()) {
            this.child.remove(grouplocation);
        } else {
            this.child.add(this.temp);
        }
        this.adapter.notifyDataSetChanged();
    }

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().addFlags(128);
        setContentView(R.layout.gridview_list_photos);
        Bundle extras = getIntent().getExtras();
        SetFormat(1);
        this.activity = this;
        this.gd_photo = (GridView) findViewById(R.id.gd_photo_list);
        this.mPathConfig = new PathConfig(this);
        this.mSwitchConfig = new SwitchConfig(this);
        this.notice = (TextView) findViewById(R.id.notice);
        initialData();
        initView();
        if (getAdapterIsSetDefaultPath()) {
            getPhotoVideoList(new File(this.curPath));
        } else {
            getPhotoVideoList(new File(this.curPath + "/DCIM/SOAY/"));
        }
        this.gd_photo.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                PhotoGridviewActivity.this.startIntent(PhotoPlayer.class, (String) PhotoGridviewActivity.photoList.get(position));
            }
        });
        this.gd_photo.setOnItemLongClickListener(new OnItemLongClickListener() {
            public boolean onItemLongClick(AdapterView<?> adapterView, View view, int position, long id) {
                PhotoGridviewActivity.this.Delete_Dialog(position);
                return false;
            }
        });
    }

    private void SetFormat(int n) {
        switch (n) {
            case 0:
                format = "audio/*";
                return;
            case 1:
                format = "image/*";
                return;
            case 2:
                format = "video/*";
                return;
            default:
                return;
        }
    }

    /* access modifiers changed from: private */
    public boolean FilterFile(File file, int n) {
        switch (n) {
            case 0:
                if (!file.isFile() || !file.getName().toLowerCase().startsWith("soay-") || (!file.getAbsolutePath().toLowerCase().endsWith(".m4a") && !file.getAbsolutePath().toLowerCase().endsWith(".m3u") && !file.getAbsolutePath().toLowerCase().endsWith(".m4b") && !file.getAbsolutePath().toLowerCase().endsWith(".m4p") && !file.getAbsolutePath().toLowerCase().endsWith(".mp2") && !file.getAbsolutePath().toLowerCase().endsWith(".mp3") && !file.getAbsolutePath().toLowerCase().endsWith(".ogg") && !file.getAbsolutePath().toLowerCase().endsWith(".wma") && !file.getAbsolutePath().toLowerCase().endsWith(".wav"))) {
                    return false;
                }
                return true;
            case 1:
                if (!file.isFile() || !file.getName().toLowerCase().startsWith("soay-") || (!file.getAbsolutePath().toLowerCase().endsWith(".bmp") && !file.getAbsolutePath().toLowerCase().endsWith(".jpg") && !file.getAbsolutePath().toLowerCase().endsWith(".png"))) {
                    return false;
                }
                return true;
            case 2:
                if (!file.isFile() || !file.getName().toLowerCase().startsWith("soay-") || (!file.getAbsolutePath().toLowerCase().endsWith(".avi") && !file.getAbsolutePath().toLowerCase().endsWith(".m4v") && !file.getAbsolutePath().toLowerCase().endsWith(".m4u") && !file.getAbsolutePath().toLowerCase().endsWith(".mpe") && !file.getAbsolutePath().toLowerCase().endsWith(".mpeg") && !file.getAbsolutePath().toLowerCase().endsWith(".mpg") && !file.getAbsolutePath().toLowerCase().endsWith(".3gp") && !file.getAbsolutePath().toLowerCase().endsWith(".mpg4") && !file.getAbsolutePath().toLowerCase().endsWith(".mp4"))) {
                    return false;
                }
                return true;
            default:
                return true;
        }
    }

    /* access modifiers changed from: private */
    public void Delete_Dialog(final int position) {
        Builder alertBuilder = new Builder(this);
        alertBuilder.setTitle("提示！").setMessage("删除文件！").setNeutralButton("确定", new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                File file = new File((String) PhotoGridviewActivity.photoList.get(position));
                if (file.exists()) {
                    file.delete();
                    file.deleteOnExit();
                    PhotoGridviewActivity.photoList.remove(position);
                    Toast.makeText(PhotoGridviewActivity.this.getApplicationContext(), "文件删除成功！", 2000).show();
                } else {
                    Toast.makeText(PhotoGridviewActivity.this.getApplicationContext(), "文件不存在", 2000).show();
                }
                PhotoGridviewActivity.this.adapter.notifyDataSetChanged();
                if (PhotoGridviewActivity.photoList.isEmpty()) {
                    PhotoGridviewActivity.this.notice.setVisibility(0);
                }
            }
        }).setNegativeButton("取消", new OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });
        alertBuilder.create().show();
    }

    private void initView() {
        this.curPath = getCurPath();
        Log.e(this.Tag, "curPath==" + this.curPath);
        File sdcardDir = Environment.getExternalStorageDirectory();
        if (getAdapterIsSetDefaultPath()) {
            this.folder = new File(this.curPath + "/");
        } else {
            this.folder = new File(this.curPath + "/DCIM/SOAY/");
        }
        if (!this.folder.exists()) {
            this.folder.mkdirs();
        }
        initData(this.folder);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0044 A[SYNTHETIC, Splitter:B:12:0x0044] */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0054 A[SYNTHETIC, Splitter:B:20:0x0054] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static boolean RootCommand(java.lang.String r6) {
        /*
            r3 = 0
            r1 = 0
            java.lang.Runtime r4 = java.lang.Runtime.getRuntime()     // Catch:{ Exception -> 0x0041, all -> 0x0051 }
            java.lang.String r5 = "su"
            java.lang.Process r3 = r4.exec(r5)     // Catch:{ Exception -> 0x0041, all -> 0x0051 }
            java.io.DataOutputStream r2 = new java.io.DataOutputStream     // Catch:{ Exception -> 0x0041, all -> 0x0051 }
            java.io.OutputStream r4 = r3.getOutputStream()     // Catch:{ Exception -> 0x0041, all -> 0x0051 }
            r2.<init>(r4)     // Catch:{ Exception -> 0x0041, all -> 0x0051 }
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x0068, all -> 0x0065 }
            java.lang.String r5 = java.lang.String.valueOf(r6)     // Catch:{ Exception -> 0x0068, all -> 0x0065 }
            r4.<init>(r5)     // Catch:{ Exception -> 0x0068, all -> 0x0065 }
            java.lang.String r5 = "\n"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch:{ Exception -> 0x0068, all -> 0x0065 }
            java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x0068, all -> 0x0065 }
            r2.writeBytes(r4)     // Catch:{ Exception -> 0x0068, all -> 0x0065 }
            java.lang.String r4 = "exit\n"
            r2.writeBytes(r4)     // Catch:{ Exception -> 0x0068, all -> 0x0065 }
            r2.flush()     // Catch:{ Exception -> 0x0068, all -> 0x0065 }
            r3.waitFor()     // Catch:{ Exception -> 0x0068, all -> 0x0065 }
            if (r2 == 0) goto L_0x003b
            r2.close()     // Catch:{ Exception -> 0x0060 }
        L_0x003b:
            r3.destroy()     // Catch:{ Exception -> 0x0060 }
        L_0x003e:
            r4 = 1
            r1 = r2
        L_0x0040:
            return r4
        L_0x0041:
            r0 = move-exception
        L_0x0042:
            if (r1 == 0) goto L_0x0047
            r1.close()     // Catch:{ Exception -> 0x004c }
        L_0x0047:
            r3.destroy()     // Catch:{ Exception -> 0x004c }
        L_0x004a:
            r4 = 0
            goto L_0x0040
        L_0x004c:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x004a
        L_0x0051:
            r4 = move-exception
        L_0x0052:
            if (r1 == 0) goto L_0x0057
            r1.close()     // Catch:{ Exception -> 0x005b }
        L_0x0057:
            r3.destroy()     // Catch:{ Exception -> 0x005b }
        L_0x005a:
            throw r4
        L_0x005b:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x005a
        L_0x0060:
            r0 = move-exception
            r0.printStackTrace()
            goto L_0x003e
        L_0x0065:
            r4 = move-exception
            r1 = r2
            goto L_0x0052
        L_0x0068:
            r0 = move-exception
            r1 = r2
            goto L_0x0042
        */
        throw new UnsupportedOperationException("Method not decompiled: com.methnm.coantec.activity.PhotoGridviewActivity.RootCommand(java.lang.String):boolean");
    }

    private void initData(File folder2) {
        File[] filterFiles = folder2.listFiles(new FileFilter() {
            public boolean accept(File file) {
                return PhotoGridviewActivity.this.FilterFile(file, PhotoGridviewActivity.index);
            }
        });
        if (filterFiles != null && filterFiles.length > 0) {
            for (File file : filterFiles) {
                new Date(file.lastModified()).toString();
            }
            this.adapter = new GridViewPhotosAdapter(this, photoList, this.gd_photo);
            this.gd_photo.setAdapter(this.adapter);
            for (File file2 : filterFiles) {
                new Date(file2.lastModified()).toString();
            }
        }
    }

    private void getPhotoVideoList(final File photoPath) {
        new Thread(new Runnable() {
            public void run() {
                PhotoGridviewActivity.photoList.clear();
                PhotoGridviewActivity.photoList = PhotoGridviewActivity.this.mPathConfig.getImagesList(photoPath);
                PhotoGridviewActivity.this.handler.sendEmptyMessage(0);
                if (PhotoGridviewActivity.photoList.isEmpty()) {
                    PhotoGridviewActivity.this.notice.setVisibility(0);
                } else {
                    PhotoGridviewActivity.this.notice.setVisibility(8);
                }
            }
        }).start();
    }

    private void openFile(File file) {
        if (index == 1) {
            Log.e(this.Tag, "path==" + file.getAbsolutePath());
            startIntent(PhotoPlayer.class, file.getAbsolutePath());
            return;
        }
        startIntent(VideoPlayer.class, file.getAbsolutePath());
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            Intent intent = new Intent(this, AudioSelectActivity.class);
            finish();
            startActivity(intent);
        }
        return super.onKeyDown(keyCode, event);
    }

    /* access modifiers changed from: private */
    public void startIntent(Class<?> cls, String path) {
        Intent intent = new Intent();
        intent.setClass(getApplicationContext(), cls);
        intent.putExtra("path", path);
        startActivity(intent);
    }

    public String getCurPath() {
        String path = getSharedPreferences("CurPath", 0).getString("CurPath", FileActivity._currentPath);
        Log.e(this.Tag, "path==" + path);
        return path;
    }

    private boolean getAdapterIsSetDefaultPath() {
        boolean bool = getSharedPreferences("IsSetDefaultPath", 0).getBoolean("IsSetDefaultPath", false);
        Log.e(this.Tag, "bool=" + bool);
        return bool;
    }
}
