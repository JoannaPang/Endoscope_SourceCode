package com.methnm.coantec.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.widget.ImageView;
import android.widget.TextView;
import com.methnm.coantec.moudle.Config;
import com.wifidevice.coantec.activity.R;

public class Home extends Activity {
    /* access modifiers changed from: private */
    public ImageView Coantec_Home_ImageView = null;
    private TextView Coantec_Home_TextView = null;
    Handler handler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.arg1) {
                case 1:
                    Home.this.Coantec_Home_ImageView.setImageResource(R.drawable.home_bj);
                    return;
                case 2:
                    Home.this.isStop = true;
                    Home.this.startIntent(MainActivity.class);
                    return;
                default:
                    return;
            }
        }
    };
    /* access modifiers changed from: private */
    public boolean isStop = false;
    private boolean is_exit = false;
    /* access modifiers changed from: private */
    public int show_count = 0;

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        getWindow().addFlags(128);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.home);
        init();
        new Config(this).WriteScreen(1);
    }

    private void init() {
        this.Coantec_Home_ImageView = (ImageView) findViewById(R.id.coantec_home_imageview);
        this.Coantec_Home_TextView = (TextView) findViewById(R.id.coantec_home_textview);
    }

    public void onBackPressed() {
        super.onBackPressed();
        this.is_exit = true;
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 3) {
            this.is_exit = true;
        }
        return true;
    }

    private void startMain() {
        this.show_count = 0;
        new Thread() {
            public void run() {
                while (!Home.this.isStop) {
                    try {
                        Thread.sleep(1000);
                        Home home = Home.this;
                        home.show_count = home.show_count + 1;
                        if (Home.this.show_count > 2) {
                            Home.this.isStop = true;
                        }
                        Message msg = Message.obtain();
                        msg.arg1 = Home.this.show_count;
                        Home.this.handler.sendMessage(msg);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }.start();
    }

    /* access modifiers changed from: private */
    public void startIntent(Class<?> cls) {
        finish();
        Intent intent = new Intent();
        intent.setClass(getApplicationContext(), cls);
        startActivity(intent);
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        startMain();
    }
}
