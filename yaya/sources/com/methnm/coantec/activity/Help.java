package com.methnm.coantec.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.wifidevice.coantec.activity.R;

public class Help extends Activity {
    private ImageView Coantec_Help_Back = null;
    private ImageView Coantec_Help_Close = null;

    private class ClickListener implements OnClickListener {
        private ClickListener() {
        }

        /* synthetic */ ClickListener(Help help, ClickListener clickListener) {
            this();
        }

        public void onClick(View arg0) {
            Help.this.startIntent(MainActivity.class);
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle savedInstanceState) {
        getWindow().addFlags(128);
        super.onCreate(savedInstanceState);
        setContentView(R.layout.help);
        init();
    }

    private void init() {
        this.Coantec_Help_Back = (ImageView) findViewById(R.id.coantec_dialogback_back);
        this.Coantec_Help_Close = (ImageView) findViewById(R.id.coantec_dialogback_close);
        this.Coantec_Help_Back.setOnClickListener(new ClickListener(this, null));
        this.Coantec_Help_Close.setOnClickListener(new ClickListener(this, null));
    }

    /* access modifiers changed from: private */
    public void startIntent(Class<?> cls) {
        finish();
    }

    public void onBackPressed() {
        super.onBackPressed();
        startIntent(MainActivity.class);
    }
}
