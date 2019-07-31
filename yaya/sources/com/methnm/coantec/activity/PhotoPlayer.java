package com.methnm.coantec.activity;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Point;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.methnm.coantec.moudle.Images;
import com.wifidevice.coantec.activity.R;

public class PhotoPlayer extends Activity {
    private ImageView Coantec_PhotoPlay_Back = null;
    private ImageView Coantec_PhotoPlay_Bg = null;
    private ImageView Coantec_PhotoPlay_Close = null;
    private Images Coantec_PhotoPlay_ImageView = null;
    /* access modifiers changed from: private */
    public RelativeLayout Coantec_PhotoPlay_Operator = null;
    private Point Default_Point = new Point();
    private Point First_Point = new Point();
    protected String Tag = "PhotoPlayer";
    private Bitmap bitmap = null;
    private int point_count = 0;

    private class ClickListener implements OnClickListener {
        private ClickListener() {
        }

        /* synthetic */ ClickListener(PhotoPlayer photoPlayer, ClickListener clickListener) {
            this();
        }

        public void onClick(View arg0) {
            switch (arg0.getId()) {
                case R.id.coantec_dialogback_back /*2131296306*/:
                case R.id.coantec_dialogback_close /*2131296308*/:
                    PhotoPlayer.this.finish();
                    return;
                case R.id.coantec_photoplay_imageview /*2131296350*/:
                    PhotoPlayer.this.Coantec_PhotoPlay_Operator.setVisibility(0);
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
        setContentView(R.layout.photoplay);
        String photopath = (String) getIntent().getExtras().get("path");
        Log.e(this.Tag, photopath);
        this.bitmap = BitmapFactory.decodeFile(photopath);
        Init();
    }

    private void Init() {
        this.Coantec_PhotoPlay_Operator = (RelativeLayout) findViewById(R.id.coantec_photoplay_operator);
        this.Coantec_PhotoPlay_ImageView = (Images) findViewById(R.id.coantec_photoplay_imageview);
        this.Coantec_PhotoPlay_Back = (ImageView) findViewById(R.id.coantec_dialogback_back);
        this.Coantec_PhotoPlay_Close = (ImageView) findViewById(R.id.coantec_dialogback_close);
        this.Coantec_PhotoPlay_Bg = (ImageView) findViewById(R.id.coantec_dialogback_bg);
        this.Coantec_PhotoPlay_Bg.setVisibility(8);
        this.Coantec_PhotoPlay_ImageView.setImageBitmap(this.bitmap);
        this.Coantec_PhotoPlay_ImageView.setupView();
        this.Coantec_PhotoPlay_ImageView.setOnClickListener(new ClickListener(this, null));
        this.Coantec_PhotoPlay_Back.setOnClickListener(new ClickListener(this, null));
        this.Coantec_PhotoPlay_Close.setOnClickListener(new ClickListener(this, null));
    }

    public void onBackPressed() {
        super.onBackPressed();
    }
}
