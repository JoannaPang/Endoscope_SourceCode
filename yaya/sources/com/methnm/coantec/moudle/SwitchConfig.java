package com.methnm.coantec.moudle;

import android.content.Context;
import android.content.SharedPreferences.Editor;

public class SwitchConfig {
    private Context context;

    public SwitchConfig(Context context2) {
        this.context = context2;
    }

    public void writeSdcardChoose(Boolean sdcardState) {
        Editor edit = this.context.getSharedPreferences("sdcardchoose", 0).edit();
        edit.putBoolean("sdcardchoose", sdcardState.booleanValue());
        edit.commit();
    }

    public boolean readSdcardChoose() {
        return this.context.getSharedPreferences("sdcardchoose", 0).getBoolean("sdcardchoose", false);
    }

    public void writeTurnLeftRight(Boolean isTurnLeftRight) {
        Editor edit = this.context.getSharedPreferences("isTurnLeftRight", 0).edit();
        edit.putBoolean("isTurnLeftRight", isTurnLeftRight.booleanValue());
        edit.commit();
    }

    public boolean readTurnLeftRight() {
        return this.context.getSharedPreferences("isTurnLeftRight", 0).getBoolean("isTurnLeftRight", false);
    }
}
