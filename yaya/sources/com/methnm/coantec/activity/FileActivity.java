package com.methnm.coantec.activity;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ListActivity;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.FileBrowser.FileActivityHelper;
import com.android.FileBrowser.FileAdapter;
import com.android.FileBrowser.FileInfo;
import com.android.FileBrowser.FileUtil;
import com.wifidevice.coantec.activity.R;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class FileActivity extends ListActivity {
    public static String _currentPath = _rootPath;
    public static String _rootPath = FileUtil.getSDPath();
    private final String TAG = "FileActivity";
    private TextView _filePath;
    private List<FileInfo> _files = new ArrayList();
    private BaseAdapter adapter = null;
    @SuppressLint({"ShowToast"})
    private OnClickListener clickListener = new OnClickListener() {
        public void onClick(View v) {
            switch (v.getId()) {
                case R.id.relative_back /*2131296339*/:
                    FileActivity.this.goBack();
                    return;
                case R.id.create_btn /*2131296346*/:
                    FileActivityHelper.createDir(FileActivity.this, FileActivity._currentPath, FileActivity.this.createDirHandler);
                    return;
                case R.id.save_btn /*2131296347*/:
                    FileActivity.this.setCurPath(FileActivity._currentPath);
                    Toast.makeText(FileActivity.this, "设置保存路径成功!", 2000).show();
                    FileActivity.this.startIntent(FileActivity.this, MainActivity.class);
                    Applications.isSetDefaultPath = true;
                    FileActivity.this.saveAdapterIsSetDefaultPath(Boolean.valueOf(Applications.isSetDefaultPath));
                    return;
                case R.id.exit_btn /*2131296348*/:
                    FileActivity.this.startIntent(FileActivity.this, MainActivity.class);
                    return;
                default:
                    return;
            }
        }
    };
    /* access modifiers changed from: private */
    public final Handler createDirHandler = new Handler() {
        public void handleMessage(Message msg) {
            if (msg.what == 0) {
                FileActivity.this.viewFiles(FileActivity._currentPath);
            }
        }
    };
    private Button create_btn;
    private Button exit_btn;
    private RelativeLayout relative_back;
    private Button save_btn;

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        init();
        registerForContextMenu(getListView());
        this.adapter = new FileAdapter(this, this._files);
        setListAdapter(this.adapter);
        _currentPath = getCurPath();
        viewFiles(_currentPath);
    }

    private void init() {
        this._filePath = (TextView) findViewById(R.id.file_path);
        this.save_btn = (Button) findViewById(R.id.save_btn);
        this.exit_btn = (Button) findViewById(R.id.exit_btn);
        this.create_btn = (Button) findViewById(R.id.create_btn);
        this.relative_back = (RelativeLayout) findViewById(R.id.relative_back);
        this.save_btn.setOnClickListener(this.clickListener);
        this.exit_btn.setOnClickListener(this.clickListener);
        this.create_btn.setOnClickListener(this.clickListener);
        this.relative_back.setOnClickListener(this.clickListener);
        if (getCurPath().equals("/storage")) {
            this.relative_back.setVisibility(8);
        } else {
            this.relative_back.setVisibility(0);
        }
    }

    /* access modifiers changed from: protected */
    public void onListItemClick(ListView l, View v, int position, long id) {
        FileInfo f = (FileInfo) this._files.get(position);
        if (f.IsDirectory) {
            viewFiles(f.Path);
            this.relative_back.setVisibility(0);
            Log.e("FileActivity", "ddddddddddddddddd");
            return;
        }
        openFile(f.Path);
        Log.e("FileActivity", "fffffffffffffffff");
    }

    /* access modifiers changed from: private */
    public void goBack() {
        String parentPath = new File(_currentPath).getParent();
        if (!parentPath.equals("/")) {
            viewFiles(parentPath);
            if (parentPath.equals("/storage")) {
                this.relative_back.setVisibility(8);
            }
        }
    }

    public void onBackPressed() {
        super.onBackPressed();
        startIntent(this, MainActivity.class);
        Log.e("FileActivity", "-----点击-----");
    }

    /* access modifiers changed from: protected */
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        if (-1 == resultCode) {
            Bundle bundle = data.getExtras();
            if (bundle != null && bundle.containsKey("CURRENTPATH")) {
                viewFiles(bundle.getString("CURRENTPATH"));
            }
        }
    }

    /* access modifiers changed from: private */
    public void viewFiles(String filePath) {
        ArrayList<FileInfo> tmp = FileActivityHelper.getFiles(this, filePath);
        if (tmp != null) {
            this._files.clear();
            this._files.addAll(tmp);
            tmp.clear();
            _currentPath = filePath;
            this._filePath.setText(filePath);
            this.adapter.notifyDataSetChanged();
        }
    }

    private void openFile(String path) {
        Intent intent = new Intent();
        intent.addFlags(268435456);
        intent.setAction("android.intent.action.VIEW");
    }

    /* access modifiers changed from: private */
    public void startIntent(Activity activity, Class<?> cls) {
        finish();
        startActivity(new Intent(activity, cls));
    }

    /* access modifiers changed from: private */
    public void setCurPath(String path) {
        Editor edit = getSharedPreferences("CurPath", 0).edit();
        edit.putString("CurPath", path);
        edit.commit();
        Log.e("FileActivity", "path==" + path);
    }

    private String getCurPath() {
        String path = getSharedPreferences("CurPath", 0).getString("CurPath", _currentPath);
        Log.e("FileActivity", "path==" + path);
        return path;
    }

    /* access modifiers changed from: private */
    public void saveAdapterIsSetDefaultPath(Boolean b) {
        Editor edit = getSharedPreferences("IsSetDefaultPath", 0).edit();
        edit.putBoolean("IsSetDefaultPath", b.booleanValue());
        edit.commit();
    }
}
