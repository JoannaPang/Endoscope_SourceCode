package com.methnm.coantec.moudle;

import android.content.Context;
import android.content.SharedPreferences.Editor;

public class Config {
    private Context context = null;

    public Config(Context context2) {
        this.context = context2;
    }

    public int ReadScreen() {
        return this.context.getSharedPreferences("screenOrientation", 0).getInt("orientation", 0);
    }

    public void WriteScreen(int buf) {
        Editor edit = this.context.getSharedPreferences("screenOrientation", 0).edit();
        edit.putInt("orientation", buf);
        edit.commit();
    }
}
