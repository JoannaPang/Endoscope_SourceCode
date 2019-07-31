package com.android.FileBrowser;

import android.app.ListActivity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.wifidevice.coantec.activity.R;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class PasteFile extends ListActivity {
    private final String TAG = "PasteFile";
    /* access modifiers changed from: private */
    public String _action = "";
    /* access modifiers changed from: private */
    public String _currentPasteFilePath = "";
    /* access modifiers changed from: private */
    public String _currentPath = this._rootPath;
    private TextView _filePath;
    private List<FileInfo> _files = new ArrayList();
    private String _rootPath = FileUtil.getSDPath();
    private BaseAdapter adapter = null;
    /* access modifiers changed from: private */
    public final Handler createDirHandler = new Handler() {
        public void handleMessage(Message msg) {
            if (msg.what == 0) {
                PasteFile.this.viewFiles(PasteFile.this._currentPath);
            }
        }
    };
    private OnClickListener fun_Cancel = new OnClickListener() {
        public void onClick(View v) {
            PasteFile.this.setResult(0);
            PasteFile.this.finish();
        }
    };
    private OnClickListener fun_CreateDir = new OnClickListener() {
        public void onClick(View v) {
            FileActivityHelper.createDir(PasteFile.this, PasteFile.this._currentPath, PasteFile.this.createDirHandler);
        }
    };
    private OnClickListener fun_Paste = new OnClickListener() {
        public void onClick(View v) {
            final File src = new File(PasteFile.this._currentPasteFilePath);
            if (!src.exists()) {
                Toast.makeText(PasteFile.this.getApplicationContext(), R.string.file_notexists, 0).show();
                return;
            }
            final File tar = new File(FileUtil.combinPath(PasteFile.this._currentPath, src.getName()));
            if (tar.exists()) {
                Toast.makeText(PasteFile.this.getApplicationContext(), R.string.file_exists, 0).show();
                return;
            }
            PasteFile.this.progressDialog = ProgressDialog.show(PasteFile.this, "", "Please wait...", true, false);
            new Thread() {
                public void run() {
                    if ("MOVE".equals(PasteFile.this._action)) {
                        try {
                            FileUtil.moveFile(src, tar);
                        } catch (Exception ex) {
                            Log.e("PasteFile", PasteFile.this.getString(R.string.file_move_fail), ex);
                            Toast.makeText(PasteFile.this.getApplicationContext(), ex.getMessage(), 0).show();
                        }
                    } else {
                        try {
                            FileUtil.copyFile(src, tar);
                        } catch (Exception ex2) {
                            Log.e("PasteFile", PasteFile.this.getString(R.string.file_copy_fail), ex2);
                            Toast.makeText(PasteFile.this.getApplicationContext(), ex2.getMessage(), 0).show();
                        }
                    }
                    PasteFile.this.progressHandler.sendEmptyMessage(0);
                }
            }.start();
        }
    };
    /* access modifiers changed from: private */
    public ProgressDialog progressDialog;
    /* access modifiers changed from: private */
    public final Handler progressHandler = new Handler() {
        public void handleMessage(Message msg) {
            PasteFile.this.progressDialog.dismiss();
            Intent intent = new Intent();
            Bundle bundle = new Bundle();
            bundle.putString("CURRENTPATH", PasteFile.this._currentPath);
            intent.putExtras(bundle);
            PasteFile.this.setResult(-1, intent);
            PasteFile.this.finish();
        }
    };

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.file_paste);
        Bundle bundle = getIntent().getExtras();
        this._currentPasteFilePath = bundle.getString("CURRENTPASTEFILEPATH");
        this._action = bundle.getString("ACTION");
        this._filePath = (TextView) findViewById(R.id.file_path);
        ((Button) findViewById(R.id.file_createdir)).setOnClickListener(this.fun_CreateDir);
        ((Button) findViewById(R.id.paste)).setOnClickListener(this.fun_Paste);
        ((Button) findViewById(R.id.cancel)).setOnClickListener(this.fun_Cancel);
        this.adapter = new FileAdapter(this, this._files);
        setListAdapter(this.adapter);
        viewFiles(this._currentPath);
    }

    /* access modifiers changed from: protected */
    public void onListItemClick(ListView l, View v, int position, long id) {
        FileInfo f = (FileInfo) this._files.get(position);
        if (f.IsDirectory) {
            viewFiles(f.Path);
        }
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return super.onKeyDown(keyCode, event);
        }
        String parentPath = new File(this._currentPath).getParent();
        if (parentPath != null) {
            viewFiles(parentPath);
        }
        return true;
    }

    /* access modifiers changed from: private */
    public void viewFiles(String filePath) {
        ArrayList<FileInfo> tmp = FileActivityHelper.getFiles(this, filePath);
        if (tmp != null) {
            this._files.clear();
            this._files.addAll(tmp);
            tmp.clear();
            this._currentPath = filePath;
            this._filePath.setText(filePath);
            this.adapter.notifyDataSetChanged();
        }
    }
}
