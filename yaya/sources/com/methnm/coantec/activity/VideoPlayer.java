package com.methnm.coantec.activity;

import android.app.Activity;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.support.v4.view.MotionEventCompat;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;
import com.methnm.coantec.moudle.SurfaceView;
import com.wifidevice.coantec.activity.R;
import java.io.File;
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

public class VideoPlayer extends Activity {
    protected static final int HideTime = 2;
    protected static final int Pause_Video = 11;
    protected static final int ShowTime = 3;
    protected static final int ShowVideo = 5;
    protected static final int UpdateTime = 1;
    protected static final int Update_Video = 9;
    private Timer Coantec_Top_Timer = null;
    private TimerTask Coantec_Top_TimerTask = null;
    /* access modifiers changed from: private */
    public RelativeLayout Coantec_VideoPlayer_Time_Layout = null;
    /* access modifiers changed from: private */
    public RelativeLayout Coantec_VideoPlayer_Top_Layout = null;
    private ImageView Coantec_Video_Back = null;
    /* access modifiers changed from: private */
    public TextView Coantec_Video_CurTime = null;
    /* access modifiers changed from: private */
    public ImageView Coantec_Video_PlayState = null;
    /* access modifiers changed from: private */
    public ImageView Coantec_Video_State = null;
    /* access modifiers changed from: private */
    public SurfaceView Coantec_Video_SurfaceViews = null;
    /* access modifiers changed from: private */
    public SeekBar Coantec_Video_TimeBar = null;
    private TextView Coantec_Video_Title = null;
    private TextView Coantec_Video_TotalTime = null;
    private String CurVideoPath = "";
    protected long LastMicroSecond;
    protected long Race_Current_Time;
    protected String Tag = "VideoPlayer";
    protected Thread ThreadTimeHide = null;
    protected Thread ThreadTimeShow = null;
    protected long TimeOffset = 0;
    private int cur_frame = 0;
    /* access modifiers changed from: private */
    public double curtime = 0.0d;
    protected long curtime1 = 0;
    Handler handler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.what) {
                case 1:
                    if (!VideoPlayer.this.isHide) {
                        VideoPlayer.this.Coantec_Video_CurTime.post(new Runnable() {
                            public void run() {
                                int time = (int) VideoPlayer.this.curtime;
                                VideoPlayer.this.Coantec_Video_TimeBar.setProgress(time);
                                VideoPlayer.this.Coantec_Video_CurTime.setText(String.format("%02d:%02d:%02d", new Object[]{Integer.valueOf(time / 3600), Integer.valueOf((time / 60) % 60), Integer.valueOf(time % 60)}));
                            }
                        });
                        return;
                    }
                    return;
                case 2:
                    VideoPlayer.this.isHide = true;
                    VideoPlayer.this.Coantec_Video_CurTime.post(new Runnable() {
                        public void run() {
                            int time = (int) VideoPlayer.this.curtime;
                            VideoPlayer.this.Coantec_Video_TimeBar.setProgress(time);
                            VideoPlayer.this.Coantec_Video_CurTime.setText(String.format("%02d:%02d:%02d", new Object[]{Integer.valueOf(time / 3600), Integer.valueOf((time / 60) % 60), Integer.valueOf(time % 60)}));
                        }
                    });
                    VideoPlayer.this.Coantec_VideoPlayer_Top_Layout.setVisibility(8);
                    VideoPlayer.this.Coantec_VideoPlayer_Time_Layout.setVisibility(8);
                    return;
                case 3:
                    VideoPlayer.this.isHide = false;
                    VideoPlayer.this.Coantec_VideoPlayer_Top_Layout.setVisibility(0);
                    VideoPlayer.this.Coantec_VideoPlayer_Time_Layout.setVisibility(0);
                    return;
                case VideoPlayer.Pause_Video /*11*/:
                    VideoPlayer.this.Pause();
                    return;
                default:
                    return;
            }
        }
    };
    protected boolean isHide = false;
    protected boolean isOver = false;
    protected boolean isPause = true;
    protected boolean isPlay;
    private boolean isRunning = false;
    /* access modifiers changed from: private */
    public boolean isStop = false;
    protected boolean is_first = true;
    protected double offsettime = 0.0d;
    protected long oldtime = 0;
    private double pausetime = 0.0d;
    protected boolean recount_time = true;
    private int totalframe = 0;
    /* access modifiers changed from: private */
    public int totaltime = 0;

    private class ClickListener implements OnClickListener {
        private ClickListener() {
        }

        /* synthetic */ ClickListener(VideoPlayer videoPlayer, ClickListener clickListener) {
            this();
        }

        public void onClick(View arg0) {
            switch (arg0.getId()) {
                case R.id.coantec_videoplayer_back /*2131296359*/:
                    VideoPlayer.this.cancelTimer();
                    VideoPlayer.this.isStop = true;
                    VideoPlayer.this.iCameraCloseFile();
                    VideoPlayer.this.finish();
                    return;
                case R.id.coantec_videoplayer_state /*2131296368*/:
                    VideoPlayer.this.isPlay = true;
                    VideoPlayer.this.isStop = false;
                    VideoPlayer.this.Coantec_Video_PlayState.setImageResource(R.drawable.bsj);
                    VideoPlayer.this.RePlay();
                    VideoPlayer.this.LastMicroSecond = System.currentTimeMillis();
                    VideoPlayer.this.Coantec_Video_State.setVisibility(8);
                    VideoPlayer.this.isPause = false;
                    return;
                default:
                    return;
            }
        }
    }

    private class SeekBarChangeListener implements OnSeekBarChangeListener {
        private SeekBarChangeListener() {
        }

        /* synthetic */ SeekBarChangeListener(VideoPlayer videoPlayer, SeekBarChangeListener seekBarChangeListener) {
            this();
        }

        public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
            VideoPlayer.this.oldtime = VideoPlayer.this.curtime1;
            VideoPlayer.this.offsettime = (double) progress;
            VideoPlayer.this.Coantec_Video_TimeBar.setProgress(progress);
            if (VideoPlayer.this.isOver) {
                VideoPlayer.this.isOver = false;
                VideoPlayer.this.isStop = false;
                VideoPlayer.this.offsettime = (double) progress;
                VideoPlayer.this.Play();
            }
        }

        public void onStartTrackingTouch(SeekBar seekBar) {
        }

        public void onStopTrackingTouch(SeekBar seekBar) {
        }
    }

    public native void iCameraCloseFile();

    public native void iCameraCloseVoice();

    public native byte[] iCameraGetOneFrame(int i);

    public native byte[] iCameraGetOneSecond(double d);

    public native int iCameraGetTotalFrame();

    public native double iCameraGetTotalTime();

    public native byte[] iCameraGetVoice(double d);

    public native void iCameraOpenFile(String str);

    public native void iCameraOpenVoice();

    public native void iCameraWriteData(byte[] bArr);

    static {
        System.loadLibrary("openal");
        System.loadLibrary("icamera");
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        getWindow().addFlags(128);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.videoplayer);
        this.CurVideoPath = getIntent().getStringExtra("path");
        String name = new File(this.CurVideoPath).getName();
        Init();
        iCameraOpenFile(this.CurVideoPath);
        this.totaltime = (int) iCameraGetTotalTime();
        this.totaltime = iCameraGetTotalFrame();
        Play();
        if (iCameraGetTotalFrame() > 3) {
            for (int i = 0; i < 2; i++) {
                byte[] data = iCameraGetOneFrame(i);
                this.Coantec_Video_SurfaceViews.SetBitmap(BitmapFactory.decodeByteArray(data, 0, data.length));
            }
        }
        this.Coantec_Video_TimeBar.setMax(this.totaltime);
        this.Coantec_Video_TimeBar.setProgress(0);
        this.Coantec_Video_TotalTime.setText(String.format("/%02d:%02d:%02d", new Object[]{Integer.valueOf(this.totaltime / 3600), Integer.valueOf((this.totaltime / 60) % 60), Integer.valueOf(this.totaltime % 60)}));
        this.Coantec_Video_CurTime.setText("00:00:00");
        this.Coantec_Video_Title.setText(name);
        startTimer();
    }

    private void Init() {
        this.Coantec_Video_SurfaceViews = (SurfaceView) findViewById(R.id.coantec_video_surfaceview);
        this.Coantec_Video_Title = (TextView) findViewById(R.id.coantec_videoplayer_title);
        this.Coantec_Video_Back = (ImageView) findViewById(R.id.coantec_videoplayer_back);
        this.Coantec_Video_PlayState = (ImageView) findViewById(R.id.coantec_videoplayer_play_state);
        this.Coantec_Video_State = (ImageView) findViewById(R.id.coantec_videoplayer_state);
        this.Coantec_Video_CurTime = (TextView) findViewById(R.id.coantec_videoplayer_curtime);
        this.Coantec_Video_TotalTime = (TextView) findViewById(R.id.coantec_videoplayer_totaltime);
        this.Coantec_Video_TimeBar = (SeekBar) findViewById(R.id.coantec_videoplayer_seekbar);
        this.Coantec_Video_TimeBar.setOnSeekBarChangeListener(new SeekBarChangeListener(this, null));
        this.Coantec_VideoPlayer_Top_Layout = (RelativeLayout) findViewById(R.id.coantec_videoplayer_top_layout);
        this.Coantec_VideoPlayer_Time_Layout = (RelativeLayout) findViewById(R.id.coantec_videoplayer_bottom_timebar_layout);
        this.Coantec_Video_Back.setOnClickListener(new ClickListener(this, null));
        this.Coantec_Video_State.setOnClickListener(new ClickListener(this, null));
    }

    public void Play() {
        new Thread() {
            public void run() {
                Date curDate = new Date(System.currentTimeMillis());
                VideoPlayer.this.oldtime = curDate.getTime();
                VideoPlayer.this.curtime = 0.0d;
                int old = 0;
                VideoPlayer.this.isPlay = true;
                while (!VideoPlayer.this.isStop) {
                    Date curDate2 = new Date(System.currentTimeMillis());
                    VideoPlayer.this.curtime1 = curDate2.getTime();
                    VideoPlayer.this.curtime = VideoPlayer.this.offsettime + (((double) (VideoPlayer.this.curtime1 - VideoPlayer.this.oldtime)) / 1000.0d);
                    int newtime = (int) VideoPlayer.this.curtime;
                    if (newtime != old && !VideoPlayer.this.isHide) {
                        old = newtime;
                        Message msg = new Message();
                        msg.what = 1;
                        VideoPlayer.this.handler.sendMessage(msg);
                    }
                    if (VideoPlayer.this.curtime >= ((double) VideoPlayer.this.totaltime)) {
                        VideoPlayer.this.isOver = true;
                        VideoPlayer.this.isStop = true;
                        VideoPlayer.this.isPlay = false;
                        return;
                    }
                    byte[] data = VideoPlayer.this.iCameraGetOneSecond(VideoPlayer.this.curtime);
                    VideoPlayer.this.Coantec_Video_SurfaceViews.SetBitmap(BitmapFactory.decodeByteArray(data, 0, data.length));
                    if (VideoPlayer.this.is_first) {
                        VideoPlayer.this.is_first = false;
                        Message msg2 = new Message();
                        msg2.what = VideoPlayer.Pause_Video;
                        VideoPlayer.this.handler.sendMessage(msg2);
                    }
                    try {
                        Thread.sleep(20);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }.start();
    }

    public void startTimer() {
        this.Coantec_Top_Timer = new Timer();
        this.Coantec_Top_TimerTask = new TimerTask() {
            public void run() {
                if (!VideoPlayer.this.isHide) {
                    VideoPlayer.this.isHide = true;
                    Message msg = new Message();
                    msg.what = 2;
                    VideoPlayer.this.handler.sendMessage(msg);
                }
            }
        };
        this.Coantec_Top_Timer.schedule(this.Coantec_Top_TimerTask, 5000);
        this.isRunning = true;
    }

    public void cancelTimer() {
        if (this.isRunning) {
            this.isRunning = false;
        }
        this.Coantec_Top_Timer.cancel();
    }

    public void Pause() {
        this.Coantec_Video_PlayState.setImageResource(R.drawable.bjx);
        this.pausetime = this.curtime;
        this.offsettime = this.curtime;
        this.isStop = true;
        this.isPlay = false;
        Message msg = new Message();
        msg.what = 1;
        this.handler.sendMessage(msg);
    }

    public void RePlay() {
        this.isStop = false;
        if (this.isOver) {
            this.isOver = false;
            this.offsettime = 0.0d;
            this.curtime = 0.0d;
            this.pausetime = 0.0d;
        }
        Play();
    }

    public boolean onTouchEvent(MotionEvent event) {
        int pointerCount = event.getPointerCount();
        int pointerId = (event.getAction() & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >>> 8;
        switch (event.getAction()) {
            case 0:
            case 5:
            case 261:
                int x = (int) event.getX(pointerId);
                int y = (int) event.getY(pointerId);
                cancelTimer();
                if (this.isHide) {
                    Message msg = new Message();
                    msg.what = 3;
                    this.handler.sendMessage(msg);
                    break;
                } else {
                    this.recount_time = false;
                    if (!this.isPause) {
                        Pause();
                        this.isStop = true;
                        this.isPlay = false;
                        this.Coantec_Video_PlayState.setImageResource(R.drawable.bjx);
                        this.TimeOffset = this.Race_Current_Time;
                        this.Coantec_Video_State.setVisibility(0);
                        this.isPause = true;
                        break;
                    } else {
                        this.isPlay = true;
                        this.isStop = false;
                        this.Coantec_Video_PlayState.setImageResource(R.drawable.bsj);
                        RePlay();
                        this.LastMicroSecond = System.currentTimeMillis();
                        this.Coantec_Video_State.setVisibility(8);
                        this.isPause = false;
                        break;
                    }
                }
            case 1:
                startTimer();
                this.recount_time = true;
                break;
        }
        return true;
    }

    public void onBackPressed() {
        super.onBackPressed();
        cancelTimer();
        this.isStop = true;
        iCameraCloseFile();
        finish();
    }
}
