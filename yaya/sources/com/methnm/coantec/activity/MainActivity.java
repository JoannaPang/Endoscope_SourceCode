package com.methnm.coantec.activity;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences.Editor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import android.graphics.Point;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.os.Process;
import android.support.v4.media.TransportMediator;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import android.widget.Toast;
import com.methnm.coantec.moudle.Config;
import com.methnm.coantec.moudle.GridViewMainPhotosAdapter;
import com.methnm.coantec.moudle.Media;
import com.methnm.coantec.moudle.PathConfig;
import com.methnm.coantec.moudle.SeekBars;
import com.methnm.coantec.moudle.SurfaceView;
import com.methnm.coantec.moudle.SwitchConfig;
import com.methnm.coantec.moudle.Wifi;
import com.wifidevice.coantec.activity.R;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

public class MainActivity extends Activity {
    private static final int SCAN_OK = 0;
    /* access modifiers changed from: private */
    public String Tag = "MainActivity";
    private ImageView Wifi_Coantec_Big = null;
    /* access modifiers changed from: private */
    public RelativeLayout Wifi_Coantec_Capture_RelativeLayout = null;
    private TextView Wifi_Coantec_Capture_Time = null;
    private ImageView Wifi_Coantec_Gallery = null;
    private ImageView Wifi_Coantec_Help = null;
    private ImageView Wifi_Coantec_LeftArea = null;
    private RelativeLayout Wifi_Coantec_Left_Layout = null;
    /* access modifiers changed from: private */
    public ImageView Wifi_Coantec_Pause = null;
    private ImageView Wifi_Coantec_Photo = null;
    private ImageView Wifi_Coantec_Rec = null;
    private ImageView Wifi_Coantec_RightArea = null;
    private RelativeLayout Wifi_Coantec_Right_Layout = null;
    private ImageView Wifi_Coantec_Rotate = null;
    private ImageView Wifi_Coantec_Small = null;
    /* access modifiers changed from: private */
    public SurfaceView Wifi_Coantec_SurfaceView = null;
    /* access modifiers changed from: private */
    public ImageView Wifi_Coantec_Video = null;
    /* access modifiers changed from: private */
    public Bitmap bm;
    /* access modifiers changed from: private */
    public Bitmap bm2;
    private Bitmap bm3;
    /* access modifiers changed from: private */
    public Bitmap bm4;
    /* access modifiers changed from: private */
    public Bitmap bm5;
    private Bitmap bm6;
    private byte capture = 0;
    private boolean capture_press_flag = false;
    private Config config = null;
    /* access modifiers changed from: private */
    public String curPath = null;
    /* access modifiers changed from: private */
    public GridView gd_main_photos;
    /* access modifiers changed from: private */
    public Handler handler = new Handler(new Callback() {
        public boolean handleMessage(Message msg) {
            switch (msg.what) {
                case 0:
                    MainActivity.this.main_adapter = new GridViewMainPhotosAdapter(MainActivity.this, MainActivity.this.main_photoList, MainActivity.this.gd_main_photos);
                    MainActivity.this.gd_main_photos.setAdapter(MainActivity.this.main_adapter);
                    Log.e(MainActivity.this.Tag, "===333333333333333===");
                    break;
            }
            return true;
        }
    });
    private int height = 0;
    /* access modifiers changed from: private */
    public boolean isZoom = false;
    private boolean is_screen_landscape = false;
    /* access modifiers changed from: private */
    public boolean is_video_pause = false;
    /* access modifiers changed from: private */
    public ImageView iv1;
    /* access modifiers changed from: private */
    public ImageView iv1_zoom;
    /* access modifiers changed from: private */
    public ImageView iv2;
    /* access modifiers changed from: private */
    public ImageView iv2_zoom;
    /* access modifiers changed from: private */
    public ImageView iv4;
    /* access modifiers changed from: private */
    public ImageView iv4_zoom;
    /* access modifiers changed from: private */
    public ImageView iv5;
    /* access modifiers changed from: private */
    public ImageView iv5_zoom;
    /* access modifiers changed from: private */
    public ImageView iv_big;
    /* access modifiers changed from: private */
    public ImageView iv_small;
    /* access modifiers changed from: private */
    public LinearLayout linear_photo;
    /* access modifiers changed from: private */
    public LinearLayout linear_photo_zoom;
    Handler mHandler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            Log.e(MainActivity.this.Tag, "三秒后执行这个操作");
        }
    };
    private long mKeyTime;
    /* access modifiers changed from: private */
    public PathConfig mPathConfig;
    private Point mPoint = new Point(0, 0);
    private SwitchConfig mSwitchConfig;
    /* access modifiers changed from: private */
    public GridViewMainPhotosAdapter main_adapter;
    List<String> main_photoList;
    /* access modifiers changed from: private */
    public Media media = null;
    /* access modifiers changed from: private */
    public String myJpgPath = "path";
    /* access modifiers changed from: private */
    public String myJpgPath2 = "path2";
    /* access modifiers changed from: private */
    public String myJpgPath4 = "path4";
    /* access modifiers changed from: private */
    public String myJpgPath5 = "path5";
    /* access modifiers changed from: private */
    public int num = -1;
    Options options;
    private int pic_zoom_multiple = 0;
    private Runnable recording = new Runnable() {
        public void run() {
            MainActivity.this.wifi.startCaptureVideo();
        }
    };
    /* access modifiers changed from: private */
    public float scale_default = 0.0f;
    private SeekBars seekBars = null;
    private int seek_height = 0;
    private int seek_width = 0;
    /* access modifiers changed from: private */
    public Runnable takePhotos1 = new Runnable() {
        public void run() {
            MainActivity.this.bm = BitmapFactory.decodeFile(MainActivity.this.myJpgPath, MainActivity.this.options);
            if (MainActivity.this.isZoom) {
                MainActivity.this.iv1_zoom.setImageBitmap(MainActivity.this.bm);
            } else {
                MainActivity.this.iv1.setImageBitmap(MainActivity.this.bm);
            }
        }
    };
    /* access modifiers changed from: private */
    public Runnable takePhotos2 = new Runnable() {
        public void run() {
            MainActivity.this.bm2 = BitmapFactory.decodeFile(MainActivity.this.myJpgPath2, MainActivity.this.options);
            if (MainActivity.this.isZoom) {
                MainActivity.this.iv2_zoom.setImageBitmap(MainActivity.this.bm2);
            } else {
                MainActivity.this.iv2.setImageBitmap(MainActivity.this.bm2);
            }
        }
    };
    /* access modifiers changed from: private */
    public Runnable takePhotos4 = new Runnable() {
        public void run() {
            MainActivity.this.bm4 = BitmapFactory.decodeFile(MainActivity.this.myJpgPath4, MainActivity.this.options);
            if (MainActivity.this.isZoom) {
                MainActivity.this.iv4_zoom.setImageBitmap(MainActivity.this.bm4);
            } else {
                MainActivity.this.iv4.setImageBitmap(MainActivity.this.bm4);
            }
        }
    };
    /* access modifiers changed from: private */
    public Runnable takePhotos5 = new Runnable() {
        public void run() {
            MainActivity.this.bm5 = BitmapFactory.decodeFile(MainActivity.this.myJpgPath5, MainActivity.this.options);
            if (MainActivity.this.isZoom) {
                MainActivity.this.iv5_zoom.setImageBitmap(MainActivity.this.bm5);
            } else {
                MainActivity.this.iv5.setImageBitmap(MainActivity.this.bm5);
            }
        }
    };
    /* access modifiers changed from: private */
    public boolean video_press_flag = false;
    private int width = 0;
    /* access modifiers changed from: private */
    public Wifi wifi = null;

    private class ClickListener implements OnClickListener {
        private ClickListener() {
        }

        /* synthetic */ ClickListener(MainActivity mainActivity, ClickListener clickListener) {
            this();
        }

        public void onClick(View arg0) {
            switch (arg0.getId()) {
                case R.id.home_wifi_coantec_playback /*2131296259*/:
                    if (MainActivity.this.video_press_flag) {
                        Toast.makeText(MainActivity.this, "Please Stop Record Video!", 2000).show();
                        return;
                    } else {
                        MainActivity.this.startIntent(AudioSelectActivity.class);
                        return;
                    }
                case R.id.home_wifi_coantec_photo /*2131296260*/:
                    Log.e(MainActivity.this.Tag, "Photo Key Down!");
                    MainActivity.this.media.Play();
                    MainActivity.this.wifi.setPhotoPath();
                    return;
                case R.id.home_wifi_coantec_video /*2131296261*/:
                    Log.e(MainActivity.this.Tag, "Video Key Down!");
                    if (!MainActivity.this.video_press_flag) {
                        MainActivity.this.Wifi_Coantec_Video.setImageResource(R.drawable.videoen);
                        MainActivity.this.Wifi_Coantec_Capture_RelativeLayout.setVisibility(0);
                        MainActivity.this.wifi.startCaptureVideo();
                        MainActivity.this.video_press_flag = true;
                        return;
                    }
                    MainActivity.this.video_press_flag = false;
                    MainActivity.this.Wifi_Coantec_Video.setImageResource(R.drawable.videodis);
                    MainActivity.this.Wifi_Coantec_Capture_RelativeLayout.setVisibility(8);
                    MainActivity.this.wifi.CaptureStop();
                    return;
                case R.id.home_wifi_coantec_rotate /*2131296272*/:
                    if (MainActivity.this.video_press_flag) {
                        Toast.makeText(MainActivity.this, "Please Stop Record Video!", 2000).show();
                        return;
                    } else {
                        MainActivity.this.startIntent(FileActivity.class);
                        return;
                    }
                case R.id.home_wifi_coantec_pause /*2131296273*/:
                    if (MainActivity.this.video_press_flag) {
                        Toast.makeText(MainActivity.this, "Please Stop Record Video!", 2000).show();
                        return;
                    } else if (MainActivity.this.is_video_pause) {
                        MainActivity.this.is_video_pause = false;
                        MainActivity.this.Wifi_Coantec_Pause.setImageResource(R.drawable.play);
                        MainActivity.this.wifi.Pause_Video(MainActivity.this.is_video_pause);
                        return;
                    } else {
                        MainActivity.this.is_video_pause = true;
                        MainActivity.this.Wifi_Coantec_Pause.setImageResource(R.drawable.pause);
                        MainActivity.this.wifi.Pause_Video(MainActivity.this.is_video_pause);
                        return;
                    }
                case R.id.home_wifi_coantec_help /*2131296274*/:
                    if (MainActivity.this.video_press_flag) {
                        Toast.makeText(MainActivity.this, "Please Stop Record Video!", 2000).show();
                        return;
                    } else {
                        MainActivity.this.startIntent1(Help.class);
                        return;
                    }
                case R.id.iv1 /*2131296277*/:
                    MainActivity.this.media.Play();
                    MainActivity.this.wifi.setPhotoPath();
                    if (!Wifi.isConnect) {
                        return;
                    }
                    if (MainActivity.this.myJpgPath.equals("path")) {
                        MainActivity.this.myJpgPath = Wifi.photoPath;
                        MainActivity.this.savePhotoPath(MainActivity.this.myJpgPath);
                        MainActivity.this.handler.postDelayed(MainActivity.this.takePhotos1, 500);
                        Log.e(MainActivity.this.Tag, "11111111111");
                        return;
                    }
                    MainActivity.this.num = 0;
                    MainActivity.this.myJpgPath = Wifi.photoPath;
                    MainActivity.this.dialogReplace();
                    Log.e(MainActivity.this.Tag, "2222222222222");
                    return;
                case R.id.iv2 /*2131296278*/:
                    MainActivity.this.media.Play();
                    MainActivity.this.wifi.setPhotoPath();
                    if (!Wifi.isConnect) {
                        return;
                    }
                    if (MainActivity.this.myJpgPath2.equals("path2")) {
                        MainActivity.this.myJpgPath2 = Wifi.photoPath;
                        MainActivity.this.savePhotoPath2(MainActivity.this.myJpgPath2);
                        MainActivity.this.handler.postDelayed(MainActivity.this.takePhotos2, 500);
                        Log.e(MainActivity.this.Tag, "11111111111");
                        return;
                    }
                    MainActivity.this.num = 1;
                    MainActivity.this.myJpgPath2 = Wifi.photoPath;
                    MainActivity.this.dialogReplace();
                    Log.e(MainActivity.this.Tag, "2222222222222");
                    return;
                case R.id.iv4 /*2131296280*/:
                    MainActivity.this.media.Play();
                    MainActivity.this.wifi.setPhotoPath();
                    if (!Wifi.isConnect) {
                        return;
                    }
                    if (MainActivity.this.myJpgPath4.equals("path4")) {
                        MainActivity.this.myJpgPath4 = Wifi.photoPath;
                        MainActivity.this.savePhotoPath4(MainActivity.this.myJpgPath4);
                        MainActivity.this.handler.postDelayed(MainActivity.this.takePhotos4, 500);
                        Log.e(MainActivity.this.Tag, "11111111111");
                        return;
                    }
                    MainActivity.this.num = 3;
                    MainActivity.this.myJpgPath4 = Wifi.photoPath;
                    MainActivity.this.dialogReplace();
                    Log.e(MainActivity.this.Tag, "2222222222222");
                    return;
                case R.id.iv5 /*2131296281*/:
                    MainActivity.this.media.Play();
                    MainActivity.this.wifi.setPhotoPath();
                    if (!Wifi.isConnect) {
                        return;
                    }
                    if (MainActivity.this.myJpgPath5.equals("path5")) {
                        MainActivity.this.myJpgPath5 = Wifi.photoPath;
                        MainActivity.this.savePhotoPath5(MainActivity.this.myJpgPath5);
                        MainActivity.this.handler.postDelayed(MainActivity.this.takePhotos5, 500);
                        Log.e(MainActivity.this.Tag, "11111111111");
                        return;
                    }
                    MainActivity.this.num = 4;
                    MainActivity.this.myJpgPath5 = Wifi.photoPath;
                    MainActivity.this.dialogReplace();
                    Log.e(MainActivity.this.Tag, "2222222222222");
                    return;
                case R.id.iv_big /*2131296283*/:
                    MainActivity.this.isZoom = true;
                    if (!MainActivity.this.myJpgPath.equals("path")) {
                        MainActivity.this.iv1_zoom.setImageBitmap(MainActivity.this.bm);
                    }
                    if (!MainActivity.this.myJpgPath2.equals("path2")) {
                        MainActivity.this.iv2_zoom.setImageBitmap(MainActivity.this.bm2);
                    }
                    if (!MainActivity.this.myJpgPath4.equals("path4")) {
                        MainActivity.this.iv4_zoom.setImageBitmap(MainActivity.this.bm4);
                    }
                    if (!MainActivity.this.myJpgPath5.equals("path5")) {
                        MainActivity.this.iv5_zoom.setImageBitmap(MainActivity.this.bm5);
                    }
                    MainActivity.this.linear_photo.setVisibility(8);
                    MainActivity.this.linear_photo_zoom.setVisibility(0);
                    MainActivity.this.iv_big.setVisibility(8);
                    MainActivity.this.iv_small.setVisibility(0);
                    return;
                case R.id.iv_small /*2131296284*/:
                    MainActivity.this.isZoom = false;
                    if (!MainActivity.this.myJpgPath.equals("path")) {
                        MainActivity.this.iv1.setImageBitmap(MainActivity.this.bm);
                    }
                    if (!MainActivity.this.myJpgPath2.equals("path2")) {
                        MainActivity.this.iv2.setImageBitmap(MainActivity.this.bm2);
                    }
                    if (!MainActivity.this.myJpgPath4.equals("path4")) {
                        MainActivity.this.iv4.setImageBitmap(MainActivity.this.bm4);
                    }
                    if (!MainActivity.this.myJpgPath5.equals("path5")) {
                        MainActivity.this.iv5.setImageBitmap(MainActivity.this.bm5);
                    }
                    MainActivity.this.linear_photo.setVisibility(0);
                    MainActivity.this.linear_photo_zoom.setVisibility(8);
                    MainActivity.this.iv_big.setVisibility(0);
                    MainActivity.this.iv_small.setVisibility(8);
                    return;
                case R.id.iv1_zoom /*2131296287*/:
                    MainActivity.this.media.Play();
                    MainActivity.this.wifi.setPhotoPath();
                    if (!Wifi.isConnect) {
                        return;
                    }
                    if (MainActivity.this.myJpgPath.equals("path")) {
                        MainActivity.this.myJpgPath = Wifi.photoPath;
                        MainActivity.this.savePhotoPath(MainActivity.this.myJpgPath);
                        MainActivity.this.handler.postDelayed(MainActivity.this.takePhotos1, 500);
                        Log.e(MainActivity.this.Tag, "aaaaaa");
                        return;
                    }
                    MainActivity.this.num = 0;
                    MainActivity.this.myJpgPath = Wifi.photoPath;
                    MainActivity.this.dialogReplace();
                    Log.e(MainActivity.this.Tag, "bbbbbbbb");
                    return;
                case R.id.iv2_zoom /*2131296288*/:
                    MainActivity.this.media.Play();
                    MainActivity.this.wifi.setPhotoPath();
                    if (!Wifi.isConnect) {
                        return;
                    }
                    if (MainActivity.this.myJpgPath2.equals("path2")) {
                        MainActivity.this.myJpgPath2 = Wifi.photoPath;
                        MainActivity.this.savePhotoPath2(MainActivity.this.myJpgPath2);
                        MainActivity.this.handler.postDelayed(MainActivity.this.takePhotos2, 500);
                        Log.e(MainActivity.this.Tag, "11111111111");
                        return;
                    }
                    MainActivity.this.num = 1;
                    MainActivity.this.myJpgPath2 = Wifi.photoPath;
                    MainActivity.this.dialogReplace();
                    Log.e(MainActivity.this.Tag, "2222222222222");
                    return;
                case R.id.iv4_zoom /*2131296291*/:
                    MainActivity.this.media.Play();
                    MainActivity.this.wifi.setPhotoPath();
                    if (!Wifi.isConnect) {
                        return;
                    }
                    if (MainActivity.this.myJpgPath4.equals("path4")) {
                        MainActivity.this.myJpgPath4 = Wifi.photoPath;
                        MainActivity.this.savePhotoPath4(MainActivity.this.myJpgPath4);
                        MainActivity.this.handler.postDelayed(MainActivity.this.takePhotos4, 500);
                        return;
                    }
                    MainActivity.this.num = 3;
                    MainActivity.this.myJpgPath4 = Wifi.photoPath;
                    MainActivity.this.dialogReplace();
                    return;
                case R.id.iv5_zoom /*2131296292*/:
                    MainActivity.this.media.Play();
                    MainActivity.this.wifi.setPhotoPath();
                    if (!Wifi.isConnect) {
                        return;
                    }
                    if (MainActivity.this.myJpgPath5.equals("path5")) {
                        MainActivity.this.myJpgPath5 = Wifi.photoPath;
                        MainActivity.this.savePhotoPath5(MainActivity.this.myJpgPath5);
                        MainActivity.this.handler.postDelayed(MainActivity.this.takePhotos5, 500);
                        return;
                    }
                    MainActivity.this.num = 4;
                    MainActivity.this.myJpgPath5 = Wifi.photoPath;
                    MainActivity.this.dialogReplace();
                    return;
                default:
                    return;
            }
        }
    }

    private class SeeekBarChange implements OnSeekBarChangeListener {
        private SeeekBarChange() {
        }

        /* synthetic */ SeeekBarChange(MainActivity mainActivity, SeeekBarChange seeekBarChange) {
            this();
        }

        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
            MainActivity.this.setArea1((((float) (seekBar.getProgress() + 10)) / 10.0f) + MainActivity.this.scale_default, MainActivity.this.Wifi_Coantec_SurfaceView.getWidth() / 2, MainActivity.this.Wifi_Coantec_SurfaceView.getHeight() / 2);
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        getWindow().addFlags(128);
        this.config = new Config(this);
        if (this.config.ReadScreen() == 2) {
            setRequestedOrientation(0);
        }
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        init();
        this.wifi = new Wifi(this);
        this.wifi.setWidget(this.Wifi_Coantec_SurfaceView, this.Wifi_Coantec_Rec);
        this.wifi.setKeyValue(this.Wifi_Coantec_Photo, this.Wifi_Coantec_Video);
        this.wifi.setTime(this.Wifi_Coantec_Capture_Time);
        this.wifi.Pause_Video(this.is_video_pause);
        this.options = new Options();
        this.options.inSampleSize = 2;
        this.myJpgPath = getPhotoPath();
        this.myJpgPath2 = getPhotoPath2();
        this.myJpgPath4 = getPhotoPath4();
        this.myJpgPath5 = getPhotoPath5();
        this.bm = BitmapFactory.decodeFile(this.myJpgPath, this.options);
        this.bm2 = BitmapFactory.decodeFile(this.myJpgPath2, this.options);
        this.bm4 = BitmapFactory.decodeFile(this.myJpgPath4, this.options);
        this.bm5 = BitmapFactory.decodeFile(this.myJpgPath5, this.options);
        if (!this.myJpgPath.equals("path")) {
            this.iv1.setImageBitmap(this.bm);
        }
        if (!this.myJpgPath2.equals("path2")) {
            this.iv2.setImageBitmap(this.bm2);
        }
        if (!this.myJpgPath4.equals("path4")) {
            this.iv4.setImageBitmap(this.bm4);
        }
        if (!this.myJpgPath5.equals("path5")) {
            this.iv5.setImageBitmap(this.bm5);
        }
        Log.e(this.Tag, "==初始化时myJpgPath==" + this.myJpgPath);
        Log.e(this.Tag, "--又加载了一次--");
    }

    private void init() {
        new DisplayMetrics();
        DisplayMetrics dm = getResources().getDisplayMetrics();
        this.width = dm.widthPixels;
        this.height = dm.heightPixels;
        this.gd_main_photos = (GridView) findViewById(R.id.gd_main_photos);
        this.linear_photo = (LinearLayout) findViewById(R.id.linear_photo);
        this.linear_photo_zoom = (LinearLayout) findViewById(R.id.linear_photo_zoom);
        this.iv1 = (ImageView) findViewById(R.id.iv1);
        this.iv1.setOnClickListener(new ClickListener(this, null));
        this.iv2 = (ImageView) findViewById(R.id.iv2);
        this.iv2.setOnClickListener(new ClickListener(this, null));
        this.iv4 = (ImageView) findViewById(R.id.iv4);
        this.iv4.setOnClickListener(new ClickListener(this, null));
        this.iv5 = (ImageView) findViewById(R.id.iv5);
        this.iv5.setOnClickListener(new ClickListener(this, null));
        this.iv_big = (ImageView) findViewById(R.id.iv_big);
        this.iv_big.setOnClickListener(new ClickListener(this, null));
        this.iv_small = (ImageView) findViewById(R.id.iv_small);
        this.iv_small.setOnClickListener(new ClickListener(this, null));
        this.iv1_zoom = (ImageView) findViewById(R.id.iv1_zoom);
        this.iv2_zoom = (ImageView) findViewById(R.id.iv2_zoom);
        this.iv4_zoom = (ImageView) findViewById(R.id.iv4_zoom);
        this.iv5_zoom = (ImageView) findViewById(R.id.iv5_zoom);
        this.iv1_zoom.setOnClickListener(new ClickListener(this, null));
        this.iv2_zoom.setOnClickListener(new ClickListener(this, null));
        this.iv4_zoom.setOnClickListener(new ClickListener(this, null));
        this.iv5_zoom.setOnClickListener(new ClickListener(this, null));
        this.Wifi_Coantec_Photo = (ImageView) findViewById(R.id.home_wifi_coantec_photo);
        this.Wifi_Coantec_Video = (ImageView) findViewById(R.id.home_wifi_coantec_video);
        this.Wifi_Coantec_Gallery = (ImageView) findViewById(R.id.home_wifi_coantec_playback);
        this.Wifi_Coantec_SurfaceView = (SurfaceView) findViewById(R.id.wifi_home_operator_surface);
        this.Wifi_Coantec_Capture_RelativeLayout = (RelativeLayout) findViewById(R.id.home_wifi_capture_layout);
        this.Wifi_Coantec_Capture_Time = (TextView) findViewById(R.id.home_wifi_capture_time);
        this.Wifi_Coantec_Left_Layout = (RelativeLayout) findViewById(R.id.wifi_home_operator_left_layout);
        this.Wifi_Coantec_Right_Layout = (RelativeLayout) findViewById(R.id.wifi_home_operator_right_layout);
        this.Wifi_Coantec_Rec = (ImageView) findViewById(R.id.home_wifi_capture_icon);
        this.seekBars = (SeekBars) findViewById(R.id.wifi_home_operator_seekbars);
        this.seekBars.setOnSeekBarChangeListener(new SeeekBarChange(this, null));
        this.Wifi_Coantec_Big = (ImageView) findViewById(R.id.wifi_home_operator_bigicon);
        this.Wifi_Coantec_Small = (ImageView) findViewById(R.id.wifi_home_operator_smallicon);
        this.Wifi_Coantec_LeftArea = (ImageView) findViewById(R.id.wifi_home_operator_left_area);
        this.Wifi_Coantec_RightArea = (ImageView) findViewById(R.id.wifi_home_operator_right_area);
        this.Wifi_Coantec_Big.setOnClickListener(new ClickListener(this, null));
        this.Wifi_Coantec_Small.setOnClickListener(new ClickListener(this, null));
        this.Wifi_Coantec_Photo.setOnClickListener(new ClickListener(this, null));
        this.Wifi_Coantec_Video.setOnClickListener(new ClickListener(this, null));
        this.Wifi_Coantec_Gallery.setOnClickListener(new ClickListener(this, null));
        this.Wifi_Coantec_Rotate = (ImageView) findViewById(R.id.home_wifi_coantec_rotate);
        this.Wifi_Coantec_Pause = (ImageView) findViewById(R.id.home_wifi_coantec_pause);
        this.Wifi_Coantec_Help = (ImageView) findViewById(R.id.home_wifi_coantec_help);
        this.Wifi_Coantec_Pause.setOnClickListener(new ClickListener(this, null));
        this.Wifi_Coantec_Rotate.setOnClickListener(new ClickListener(this, null));
        this.Wifi_Coantec_Help.setOnClickListener(new ClickListener(this, null));
        this.media = new Media(getApplicationContext());
        Bitmap bitmap = BitmapFactory.decodeResource(getResources(), R.drawable.bar);
        this.seek_width = bitmap.getWidth();
        this.seek_height = bitmap.getHeight();
        LayoutParams lp = new LayoutParams(-2, -2);
        lp.width = this.seek_width;
        lp.height = this.seek_height;
        this.seekBars.setLayoutParams(lp);
        if (this.height > this.width) {
            setPortScale();
            this.Wifi_Coantec_SurfaceView.setRect();
        }
        setArea1(1.0f + this.scale_default, 0, 0);
        this.mPathConfig = new PathConfig(this);
        this.mSwitchConfig = new SwitchConfig(this);
        this.main_photoList = new ArrayList();
        this.curPath = getCurPath();
        RelativeLayout.LayoutParams rl_linear = new RelativeLayout.LayoutParams(-2, -2);
        rl_linear.width = -1;
        rl_linear.height = (this.width * 200) / 960;
        rl_linear.topMargin = (this.height * 780) / 960;
        rl_linear.leftMargin = (this.width * 210) / 960;
        rl_linear.rightMargin = (this.width * 210) / 960;
        this.linear_photo.setLayoutParams(rl_linear);
        RelativeLayout.LayoutParams rl_linear_zoom = new RelativeLayout.LayoutParams(-2, -2);
        rl_linear_zoom.width = this.width;
        rl_linear_zoom.height = this.height;
        rl_linear_zoom.topMargin = 10;
        rl_linear_zoom.leftMargin = (this.width * 100) / 960;
        rl_linear_zoom.rightMargin = (this.width * TransportMediator.KEYCODE_MEDIA_RECORD) / 960;
        this.linear_photo_zoom.setLayoutParams(rl_linear_zoom);
        RelativeLayout.LayoutParams ll_zoom = new RelativeLayout.LayoutParams(-2, -2);
        ll_zoom.width = -2;
        ll_zoom.height = -2;
        ll_zoom.topMargin = (this.height * 885) / 960;
        ll_zoom.leftMargin = (this.width * 760) / 960;
        this.iv_big.setLayoutParams(ll_zoom);
        RelativeLayout.LayoutParams ll_small = new RelativeLayout.LayoutParams(-2, -2);
        ll_small.width = -2;
        ll_small.height = -2;
        ll_small.topMargin = (this.height * 885) / 960;
        ll_small.leftMargin = (this.width * 830) / 960;
        this.iv_small.setLayoutParams(ll_small);
        this.gd_main_photos.setOnItemClickListener(new OnItemClickListener() {
            public void onItemClick(AdapterView<?> adapterView, View view, int position, long id) {
                Log.e(MainActivity.this.Tag, "3333333333333333");
                if (MainActivity.this.getAdapterIsSetDefaultPath()) {
                    Log.e(MainActivity.this.Tag, "44444444444444");
                } else {
                    Log.e(MainActivity.this.Tag, "5555555555555");
                }
            }
        });
    }

    public InputStream getImageHead(String path) {
        try {
            return new FileInputStream(path);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* access modifiers changed from: private */
    public void setArea1(float scale_f, int offset_x, int offset_y) {
        this.Wifi_Coantec_SurfaceView.setNew(scale_f, offset_x, offset_y);
    }

    private void setPortScale() {
        RelativeLayout.LayoutParams lp = new RelativeLayout.LayoutParams(-2, -2);
        lp.width = -1;
        lp.height = -1;
        lp.addRule(13);
        lp.addRule(3, R.id.wifi_home_operator_right_layout);
        lp.addRule(2, R.id.wifi_home_operator_left_layout);
        this.Wifi_Coantec_SurfaceView.setLayoutParams(lp);
        RelativeLayout.LayoutParams lp2 = new RelativeLayout.LayoutParams(-2, -2);
        lp2.width = this.width;
        lp2.height = (this.height * 80) / 640;
        lp2.addRule(12);
        this.Wifi_Coantec_LeftArea.setLayoutParams(lp2);
        RelativeLayout.LayoutParams lp3 = new RelativeLayout.LayoutParams(-2, -2);
        lp3.width = this.width;
        lp3.height = (this.height * 80) / 640;
        lp3.addRule(10);
        this.Wifi_Coantec_RightArea.setLayoutParams(lp3);
        this.scale_default = (float) ((this.height - ((this.height * 1) / 4)) / 480);
    }

    /* access modifiers changed from: private */
    public void getPhotoVideoList(final File photoPath) {
        new Thread(new Runnable() {
            public void run() {
                MainActivity.this.main_photoList.clear();
                MainActivity.this.main_photoList = MainActivity.this.mPathConfig.getImagesList(photoPath);
                MainActivity.this.handler.sendEmptyMessage(0);
                if (MainActivity.this.getAdapterIsSetDefaultPath()) {
                    MainActivity.this.getPhotoVideoList(new File(MainActivity.this.curPath));
                } else {
                    MainActivity.this.getPhotoVideoList(new File(new StringBuilder(String.valueOf(MainActivity.this.curPath)).append("/DCIM/SOAY/").toString()));
                }
            }
        }).start();
    }

    /* access modifiers changed from: private */
    public void dialogReplace() {
        String title = getString(R.string.str_warning);
        String msg = getString(R.string.str_replace);
        Builder builder = new Builder(this);
        builder.setMessage(msg);
        builder.setTitle(title);
        builder.setPositiveButton(R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                switch (MainActivity.this.num) {
                    case 0:
                        MainActivity.this.savePhotoPath(MainActivity.this.myJpgPath);
                        MainActivity.this.handler.postDelayed(MainActivity.this.takePhotos1, 500);
                        return;
                    case 1:
                        MainActivity.this.savePhotoPath2(MainActivity.this.myJpgPath2);
                        MainActivity.this.handler.postDelayed(MainActivity.this.takePhotos2, 500);
                        return;
                    case 3:
                        MainActivity.this.savePhotoPath4(MainActivity.this.myJpgPath4);
                        MainActivity.this.handler.postDelayed(MainActivity.this.takePhotos4, 500);
                        return;
                    case 4:
                        MainActivity.this.savePhotoPath5(MainActivity.this.myJpgPath5);
                        MainActivity.this.handler.postDelayed(MainActivity.this.takePhotos5, 500);
                        return;
                    default:
                        return;
                }
            }
        });
        builder.setNegativeButton(R.string.cancel, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });
        builder.create().show();
    }

    /* access modifiers changed from: private */
    public void startIntent(Class<?> cls) {
        this.wifi.stop();
        finish();
        Intent intent = new Intent();
        intent.setClass(getApplicationContext(), cls);
        startActivity(intent);
    }

    /* access modifiers changed from: private */
    public void startIntent1(Class<?> cls) {
        Intent intent = new Intent();
        intent.setClass(getApplicationContext(), cls);
        startActivity(intent);
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode != 4) {
            return super.onKeyDown(keyCode, event);
        }
        if (System.currentTimeMillis() - this.mKeyTime > 2000) {
            this.mKeyTime = System.currentTimeMillis();
            showToast(getString(R.string.txt_select_onemorepress));
        } else {
            this.wifi.stop();
            finish();
            Process.killProcess(Process.myPid());
        }
        return true;
    }

    private void showToast(String msg) {
        Toast.makeText(this, msg, 1).show();
    }

    public String getCurPath() {
        return getSharedPreferences("CurPath", 0).getString("CurPath", FileActivity._currentPath);
    }

    /* access modifiers changed from: private */
    public boolean getAdapterIsSetDefaultPath() {
        boolean bool = getSharedPreferences("IsSetDefaultPath", 0).getBoolean("IsSetDefaultPath", false);
        Log.e(this.Tag, "bool=" + bool);
        return bool;
    }

    /* access modifiers changed from: private */
    public void savePhotoPath(String path) {
        Editor edit = getSharedPreferences("myJpgPath", 0).edit();
        edit.putString("myJpgPath", path);
        edit.commit();
    }

    public String getPhotoPath() {
        return getSharedPreferences("myJpgPath", 0).getString("myJpgPath", "path");
    }

    /* access modifiers changed from: private */
    public void savePhotoPath2(String path) {
        Editor edit = getSharedPreferences("myJpgPath2", 0).edit();
        edit.putString("myJpgPath2", path);
        edit.commit();
    }

    public String getPhotoPath2() {
        return getSharedPreferences("myJpgPath2", 0).getString("myJpgPath2", "path2");
    }

    private void savePhotoPath3(String path) {
        Editor edit = getSharedPreferences("myJpgPath3", 0).edit();
        edit.putString("myJpgPath3", path);
        edit.commit();
    }

    public String getPhotoPath3() {
        return getSharedPreferences("myJpgPath3", 0).getString("myJpgPath3", "path3");
    }

    /* access modifiers changed from: private */
    public void savePhotoPath4(String path) {
        Editor edit = getSharedPreferences("myJpgPath4", 0).edit();
        edit.putString("myJpgPath4", path);
        edit.commit();
    }

    public String getPhotoPath4() {
        return getSharedPreferences("myJpgPath4", 0).getString("myJpgPath4", "path4");
    }

    /* access modifiers changed from: private */
    public void savePhotoPath5(String path) {
        Editor edit = getSharedPreferences("myJpgPath5", 0).edit();
        edit.putString("myJpgPath5", path);
        edit.commit();
    }

    public String getPhotoPath5() {
        return getSharedPreferences("myJpgPath5", 0).getString("myJpgPath5", "path5");
    }

    private void savePhotoPath6(String path) {
        Editor edit = getSharedPreferences("myJpgPath6", 0).edit();
        edit.putString("myJpgPath6", path);
        edit.commit();
    }

    public String getPhotoPath6() {
        return getSharedPreferences("myJpgPath6", 0).getString("myJpgPath6", "path6");
    }
}
