package com.methnm.coantec.activity;

import android.app.Activity;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.SimpleAdapter;
import com.wifidevice.coantec.activity.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AudioSelectActivity extends Activity {
    private ImageView AudioSelect_Operator_Back = null;
    private ImageView AudioSelect_Operator_Photo = null;
    private ImageView AudioSelect_Operator_Video = null;
    /* access modifiers changed from: private */
    public String TAG = "AudioSelectActivity";
    /* access modifiers changed from: private */
    public int currSdcardItem = 0;
    /* access modifiers changed from: private */
    public RelativeLayout layout_Actionbar;
    /* access modifiers changed from: private */
    public int layout_Actionbar_Height;
    private SimpleAdapter mAdapter;
    /* access modifiers changed from: private */
    public PopupWindow pWindowMenu;
    private int screenWidth;
    private ImageView set_back;

    private class ClickListener implements OnClickListener {
        private ClickListener() {
        }

        /* synthetic */ ClickListener(AudioSelectActivity audioSelectActivity, ClickListener clickListener) {
            this();
        }

        public void onClick(View arg0) {
            switch (arg0.getId()) {
                case R.id.audioselect_operator_back /*2131296294*/:
                    AudioSelectActivity.this.startIntent(MainActivity.class);
                    return;
                case R.id.audioselect_set_back /*2131296296*/:
                    AudioSelectActivity.this.initPopupWndMenu();
                    AudioSelectActivity.this.showPopupWndMenu();
                    return;
                case R.id.audioselect_operator_video /*2131296297*/:
                    AudioSelectActivity.this.startIntent(ListViewActivity.class, 2);
                    return;
                case R.id.audioselect_operator_photo /*2131296298*/:
                    AudioSelectActivity.this.startIntent(PhotoGridviewActivity.class);
                    return;
                default:
                    return;
            }
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        getWindow().addFlags(128);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.audioselect);
        this.screenWidth = getResources().getDisplayMetrics().widthPixels;
        init();
    }

    private void init() {
        this.layout_Actionbar = (RelativeLayout) findViewById(R.id.layout_actionbar);
        this.AudioSelect_Operator_Back = (ImageView) findViewById(R.id.audioselect_operator_back);
        this.AudioSelect_Operator_Video = (ImageView) findViewById(R.id.audioselect_operator_video);
        this.AudioSelect_Operator_Photo = (ImageView) findViewById(R.id.audioselect_operator_photo);
        this.set_back = (ImageView) findViewById(R.id.audioselect_set_back);
        this.AudioSelect_Operator_Back.setOnClickListener(new ClickListener(this, null));
        this.AudioSelect_Operator_Video.setOnClickListener(new ClickListener(this, null));
        this.AudioSelect_Operator_Photo.setOnClickListener(new ClickListener(this, null));
        this.set_back.setOnClickListener(new ClickListener(this, null));
        this.layout_Actionbar.post(new Runnable() {
            public void run() {
                AudioSelectActivity.this.layout_Actionbar_Height = AudioSelectActivity.this.layout_Actionbar.getHeight();
            }
        });
    }

    /* access modifiers changed from: private */
    public void initPopupWndMenu() {
        View view = LayoutInflater.from(getApplicationContext()).inflate(R.layout.popup_playback_actionbar_more, null);
        this.pWindowMenu = new PopupWindow(view, this.screenWidth / 4, -2);
        ListView mListView = (ListView) view.findViewById(R.id.listview_Popup_actionbar_more);
        this.mAdapter = new SimpleAdapter(this, getData(), R.layout.list_item_playback_menu, new String[]{"icon", "info"}, new int[]{R.id.icon, R.id.info});
        mListView.setAdapter(this.mAdapter);
        mListView.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View arg1, int item, long arg3) {
                switch (item) {
                    case 0:
                        Log.e(AudioSelectActivity.this.TAG, "手机存储" + AudioSelectActivity.this.currSdcardItem);
                        AudioSelectActivity.this.pWindowMenu.dismiss();
                        return;
                    case 1:
                        Log.e(AudioSelectActivity.this.TAG, "外部sd卡" + AudioSelectActivity.this.currSdcardItem);
                        AudioSelectActivity.this.pWindowMenu.dismiss();
                        return;
                    default:
                        return;
                }
            }
        });
    }

    /* access modifiers changed from: private */
    public void showPopupWndMenu() {
        this.pWindowMenu.setFocusable(true);
        this.pWindowMenu.setBackgroundDrawable(new BitmapDrawable(getResources(), BitmapFactory.decodeResource(getResources(), R.color.transparent)));
        this.pWindowMenu.setOutsideTouchable(true);
        this.pWindowMenu.showAtLocation(this.layout_Actionbar, 53, 0, this.layout_Actionbar_Height);
    }

    private List<Map<String, Object>> getData() {
        List<Map<String, Object>> list = new ArrayList<>();
        Map<String, Object> photo = new HashMap<>();
        photo.put("icon", Integer.valueOf(R.drawable.playback_menu_phone));
        photo.put("info", getString(R.string.tv_Playback_BuiltinSdcard));
        list.add(photo);
        Map<String, Object> photo2 = new HashMap<>();
        photo2.put("icon", Integer.valueOf(R.drawable.playback_menu_sdcard));
        photo2.put("info", getString(R.string.tv_Playback_ExternalSdcard));
        list.add(photo2);
        return list;
    }

    public void onBackPressed() {
        super.onBackPressed();
        startIntent(MainActivity.class);
    }

    /* access modifiers changed from: private */
    public void startIntent(Class<?> cls) {
        finish();
        Intent intent = new Intent();
        intent.setClass(getApplicationContext(), cls);
        startActivity(intent);
    }

    /* access modifiers changed from: private */
    public void startIntent(Class<?> cls, int index) {
        finish();
        Intent intent = new Intent();
        intent.setClass(getApplicationContext(), cls);
        intent.putExtra("index", index);
        startActivity(intent);
    }
}
