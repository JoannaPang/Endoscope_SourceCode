package com.methnm.coantec.moudle;

import android.content.Context;
import android.media.MediaPlayer;
import com.wifidevice.coantec.activity.R;

public class Media {
    private MediaPlayer mp = null;

    public Media(Context context) {
        this.mp = MediaPlayer.create(context, R.drawable.shutter);
    }

    public void Play() {
        try {
            if (this.mp != null) {
                this.mp.stop();
            }
            this.mp.prepare();
            this.mp.start();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void Stop() {
        if (this.mp != null) {
            this.mp.stop();
        }
    }
}
