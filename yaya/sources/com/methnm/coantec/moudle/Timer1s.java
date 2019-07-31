package com.methnm.coantec.moudle;

import android.os.Handler;
import android.os.Message;
import java.util.Timer;
import java.util.TimerTask;

public class Timer1s {
    private static final int Set_Time = 4;
    protected String Tag = "Timer500";
    private TimerTask Wifi_TimeTask = null;
    private Timer Wifi_Timer = null;
    private String action = null;
    private boolean has_start = false;
    private Handler mHandler = null;

    public Timer1s(Handler mHandler2) {
        this.mHandler = mHandler2;
    }

    /* access modifiers changed from: private */
    public void sendBroad(int action2) {
        Message msg = Message.obtain();
        msg.arg1 = action2;
        this.mHandler.sendMessage(msg);
    }

    public void start() {
        this.Wifi_Timer = new Timer();
        this.Wifi_TimeTask = new TimerTask() {
            public void run() {
                Timer1s.this.sendBroad(4);
            }
        };
        this.has_start = true;
        this.Wifi_Timer.schedule(this.Wifi_TimeTask, 0, 500);
    }

    public void cancel() {
        if (this.Wifi_Timer != null) {
            this.Wifi_Timer.cancel();
        }
        this.has_start = false;
    }

    public boolean isAlive() {
        return this.has_start;
    }
}
