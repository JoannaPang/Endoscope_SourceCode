package com.methnm.coantec.moudle;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.text.format.Time;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import com.methnm.coantec.activity.Applications;
import com.methnm.coantec.activity.FileActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.util.Timer;
import java.util.TimerTask;

public class Wifi {
    private static final int Change_Visible = 5;
    private static final int Connect_Failed = 3;
    private static final int Connect_Success = 2;
    private static final int Photo_Key_Down = 6;
    private static final int Set_Time = 4;
    private static final int Video_Key_Down = 7;
    public static int count = 0;
    public static boolean isConnect = false;
    public static String photoPath = null;
    public static SdcardSelector sdcardItem = SdcardSelector.BUILT_IN;
    private String BSSID = "192.168.10.123";
    private byte Capturefg = 0;
    private InetAddress Inetaddress = null;
    /* access modifiers changed from: private */
    public boolean Is_Get_Bitmap = true;
    /* access modifiers changed from: private */
    public boolean Is_Video_Pause = false;
    private int Minute = 0;
    /* access modifiers changed from: private */
    public int Photo_Key = 1;
    private Timer Record_Timer = null;
    private TimerTask Record_TimerTask = null;
    private int Second = 0;
    protected String Tag = "WIFI";
    /* access modifiers changed from: private */
    public boolean Take_Capture_Flag = false;
    /* access modifiers changed from: private */
    public boolean Take_Photo_Flag = false;
    /* access modifiers changed from: private */
    public int Video_Key = 2;
    /* access modifiers changed from: private */
    public ImageView Wifi_Coantec_Rec = null;
    private Activity activity;
    public byte[] bmp_data;
    byte[] buff = new byte[1472];
    private byte capture;
    private byte[] dataBuf = new byte[14];
    private String defaultpath = "http://192.168.10.123:7060";
    private Thread getDataThread = null;
    private Thread getPlayBackThread = null;
    Handler handler = new Handler() {
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            switch (msg.arg1) {
                case 4:
                    if (Wifi.this.pic_show) {
                        Wifi.this.pic_show = false;
                        Wifi.this.Wifi_Coantec_Rec.setVisibility(8);
                    } else {
                        Wifi.this.pic_show = true;
                        Wifi.this.Wifi_Coantec_Rec.setVisibility(0);
                    }
                    Wifi.this.setTime();
                    return;
                case 6:
                    Wifi.this.wifi_Coantec_Photo.performClick();
                    return;
                case 7:
                    Wifi.this.wifi_Coantec_Video.performClick();
                    return;
                default:
                    return;
            }
        }
    };
    /* access modifiers changed from: private */
    public boolean has_connect = false;
    /* access modifiers changed from: private */
    public boolean has_first_get = false;
    /* access modifiers changed from: private */
    public boolean has_new_frame = false;
    /* access modifiers changed from: private */
    public boolean has_timer_start = true;
    /* access modifiers changed from: private */
    public boolean isRecording = false;
    /* access modifiers changed from: private */
    public boolean isStop = false;
    byte[] keybuf = new byte[14];
    private int lastSecond = -1;
    private byte last_voice_id = 0;
    /* access modifiers changed from: private */
    public Timer1s m_play_timer = null;
    /* access modifiers changed from: private */
    public boolean pic_show = false;
    byte[] receiver_key = new byte[12];
    private String rootsStringPhoto = FileActivity._currentPath;
    private String rootsStringVideo = FileActivity._currentPath;
    /* access modifiers changed from: private */
    public byte save_key_index = 0;
    private Thread sendDataThread = null;
    private byte[] sendbuf = new byte[10];
    /* access modifiers changed from: private */
    public DatagramSocket socket = null;
    private Thread startCapture = null;
    /* access modifiers changed from: private */
    public SurfaceView surfaceView = null;
    private String videoPath = null;
    private DatagramSocket voiceSocket = null;
    private Thread voiceThread = null;
    private boolean voice_press_id = false;
    private byte[] voicebuf = new byte[1450];
    private TextView wifi_Coantec_Capture_Time;
    /* access modifiers changed from: private */
    public ImageView wifi_Coantec_Photo;
    /* access modifiers changed from: private */
    public ImageView wifi_Coantec_Video;

    public enum SdcardSelector {
        BUILT_IN,
        EXTERNAL
    }

    public native byte[] getResolution();

    public native void iCameraCloseFile();

    public native int iCameraCloseSocket();

    public native void iCameraCloseVoice();

    public native byte[] iCameraGetCmdData();

    public native byte[] iCameraGetFrame();

    public native byte[] iCameraGetOneFrame(int i);

    public native byte[] iCameraGetOneSecond(double d);

    public native int iCameraGetTotalFrame();

    public native double iCameraGetTotalTime();

    public native byte[] iCameraGetVoice(double d);

    public native int iCameraInitSocket();

    public native void iCameraInsertCmdData(byte[] bArr, int i, int i2, byte b);

    public native void iCameraOpenFile(String str);

    public native void iCameraOpenVoice();

    public native void iCameraRecInsertData(byte[] bArr, int i);

    public native void iCameraRecSetParams(int i, int i2, int i3);

    public native void iCameraRecStart(String str);

    public native void iCameraRecStop();

    public native int iCameraServerStart();

    public native void iCameraServerStop();

    public native void iCameraWriteData(byte[] bArr);

    public native int sendChangeName(String str);

    public native int sendChangePassword(String str);

    public native int sendChangeResolution(int i, int i2, int i3);

    public native int sendClearPassword();

    public native int sendReboot();

    static {
        System.loadLibrary("openal");
        System.loadLibrary("icamera");
    }

    public Wifi(Activity activity2) {
        this.activity = activity2;
        this.isStop = false;
        if (this.m_play_timer == null) {
            this.m_play_timer = new Timer1s(this.handler);
        }
        startWifi();
        Log.e(this.Tag, "保存的根路径rootsStringVideo=" + this.rootsStringVideo);
        Log.e(this.Tag, "保存的根路径rootsStringPhoto=" + this.rootsStringPhoto);
    }

    public void startWifi() {
        createSocket(54098);
        this.has_first_get = false;
        startCapture();
        getKeyStatus();
    }

    public void Pause_Video(boolean is_video_pause) {
        this.Is_Video_Pause = is_video_pause;
        this.Is_Get_Bitmap = false;
    }

    private void startCapture() {
        if (this.startCapture == null || !this.startCapture.isAlive()) {
            this.startCapture = new Thread() {
                public void run() {
                    Bitmap bitmap;
                    Wifi.this.isStop = false;
                    int ret = Wifi.this.iCameraServerStart();
                    while (ret <= 0) {
                        ret = Wifi.this.iCameraServerStart();
                        try {
                            Thread.sleep(100);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                    while (!Wifi.this.isStop) {
                        byte[] data = Wifi.this.iCameraGetFrame();
                        if (!Wifi.this.Is_Video_Pause || !Wifi.this.Is_Get_Bitmap) {
                            if (data == null || data.length <= 0) {
                                try {
                                    Thread.sleep(5);
                                } catch (InterruptedException e2) {
                                    e2.printStackTrace();
                                }
                                Wifi.count++;
                                if (Wifi.count == 200) {
                                    Wifi.isConnect = false;
                                }
                            } else {
                                Wifi.this.has_connect = true;
                                bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
                                Wifi.this.surfaceView.SetBitmap(bitmap);
                                Wifi.this.bmp_data = data;
                                Wifi.this.Is_Get_Bitmap = true;
                                Wifi.isConnect = true;
                                Wifi.count = 0;
                            }
                        } else if (Wifi.this.Is_Get_Bitmap) {
                            if (Wifi.this.bmp_data.length == 0) {
                                Wifi.this.Is_Get_Bitmap = false;
                            } else {
                                bitmap = BitmapFactory.decodeByteArray(Wifi.this.bmp_data, 0, Wifi.this.bmp_data.length);
                                Wifi.this.surfaceView.SetBitmap(bitmap);
                            }
                        }
                        if (Wifi.this.Take_Photo_Flag) {
                            Wifi.this.CreatePNG(Wifi.photoPath, bitmap);
                            Wifi.this.Take_Photo_Flag = false;
                        }
                        if (Wifi.this.Take_Capture_Flag) {
                            if (!Wifi.this.has_timer_start) {
                                Wifi.this.has_timer_start = true;
                                Wifi.this.m_play_timer.start();
                            }
                            Wifi.this.setRecordData(data, data.length);
                        }
                    }
                }
            };
            this.startCapture.start();
        }
    }

    /* access modifiers changed from: private */
    public void sendMessage(int type) {
        Message message = Message.obtain();
        message.arg1 = type;
        this.handler.sendMessage(message);
    }

    /* access modifiers changed from: private */
    public void setTime() {
        Time time = new Time();
        time.setToNow();
        int i = time.hour;
        int i2 = time.minute;
        int second = time.second;
        if (second != this.lastSecond) {
            this.lastSecond = second;
            this.Second++;
            if (this.Second > 59) {
                this.Second = 0;
                this.Minute++;
            }
            this.wifi_Coantec_Capture_Time.setText(String.format("%02d:%02d", new Object[]{Integer.valueOf(this.Minute), Integer.valueOf(this.Second)}));
        }
    }

    private void clearTime() {
        this.lastSecond = -1;
        this.Second = 0;
        this.Minute = 0;
    }

    public void createSocket(int port) {
        try {
            this.socket = new DatagramSocket(port);
        } catch (SocketException e) {
            e.printStackTrace();
        }
        try {
            this.Inetaddress = InetAddress.getByName(this.BSSID);
        } catch (UnknownHostException e2) {
            e2.printStackTrace();
        }
    }

    private void createVoiceSocket(int port) {
        try {
            this.socket = new DatagramSocket(port);
        } catch (SocketException e) {
            e.printStackTrace();
        }
        try {
            this.Inetaddress = InetAddress.getByName(this.BSSID);
        } catch (UnknownHostException e2) {
            e2.printStackTrace();
        }
    }

    public void sendVoiceBuffer(byte[] buffer) {
        if (this.voiceSocket != null) {
            try {
                this.voiceSocket.send(new DatagramPacket(buffer, buffer.length, this.Inetaddress, 60000));
            } catch (IOException e) {
                Log.e("", "connect failed!");
                e.printStackTrace();
            }
        }
    }

    public void sendDataBuffer(byte[] buffer) {
        if (this.socket != null) {
            try {
                this.socket.send(new DatagramPacket(buffer, buffer.length, this.Inetaddress, 60034));
            } catch (IOException e) {
                Log.e("", "connect failed!");
                e.printStackTrace();
            }
        }
    }

    private void voiceInit() {
        this.sendbuf[0] = 71;
        this.sendbuf[1] = 69;
        this.sendbuf[2] = 84;
        this.sendbuf[3] = 83;
        this.sendbuf[4] = 79;
        this.sendbuf[5] = 85;
        this.sendbuf[6] = 78;
        this.sendbuf[7] = 68;
        this.sendbuf[8] = 1;
        this.sendbuf[9] = 9;
    }

    /* access modifiers changed from: private */
    public void sendDataBuff() {
        this.dataBuf[0] = 115;
        this.dataBuf[1] = 101;
        this.dataBuf[2] = 116;
        this.dataBuf[3] = 95;
        this.dataBuf[4] = 114;
        this.dataBuf[5] = 101;
        this.dataBuf[6] = 99;
        this.dataBuf[7] = 111;
        this.dataBuf[8] = 114;
        this.dataBuf[9] = 100;
        this.dataBuf[10] = 58;
        this.dataBuf[11] = this.capture;
        this.dataBuf[12] = 95;
        this.dataBuf[13] = 95;
        sendDataBuffer(this.dataBuf);
    }

    public static String byteToHex(byte[] bytes) {
        StringBuffer sb = new StringBuffer();
        for (byte b : bytes) {
            String hex = Integer.toHexString(b & 255);
            if (hex.length() == 1) {
                hex = new StringBuilder(String.valueOf('0')).append(hex).toString();
            }
            sb.append(new StringBuilder(String.valueOf(hex)).append(" ").toString());
        }
        return sb.toString();
    }

    private void sendData() {
        if (this.sendDataThread == null || !this.sendDataThread.isAlive()) {
            this.sendDataThread = new Thread() {
                public void run() {
                    while (!Wifi.this.isStop) {
                        try {
                            Wifi.this.sendDataBuff();
                            Thread.sleep(50);
                        } catch (InterruptedException e) {
                            e.printStackTrace();
                        }
                    }
                }
            };
            this.sendDataThread.start();
        }
    }

    /* access modifiers changed from: private */
    public void sendKeyCommand() {
        this.keybuf[0] = 103;
        this.keybuf[1] = 101;
        this.keybuf[2] = 116;
        this.keybuf[3] = 95;
        this.keybuf[4] = 107;
        this.keybuf[5] = 101;
        this.keybuf[6] = 121;
        this.keybuf[7] = 95;
        this.keybuf[8] = 95;
        this.keybuf[9] = 95;
        this.keybuf[10] = 95;
        this.keybuf[11] = 95;
        this.keybuf[12] = 95;
        this.keybuf[13] = 95;
        sendDataBuffer(this.keybuf);
    }

    private void SendMessage() {
    }

    private void getKeyStatus() {
        if (this.getDataThread == null || !this.getDataThread.isAlive()) {
            this.getDataThread = new Thread() {
                public void run() {
                    while (!Wifi.this.isStop) {
                        Wifi.this.sendKeyCommand();
                        try {
                            if (Wifi.this.socket != null) {
                                DatagramPacket packet = new DatagramPacket(Wifi.this.receiver_key, Wifi.this.receiver_key.length);
                                Wifi.this.socket.setSoTimeout(15);
                                while (packet.getLength() != 0) {
                                    Wifi.this.socket.receive(packet);
                                    byte[] receiver = packet.getData();
                                    if (receiver[0] == 107 && receiver[1] == 101 && receiver[2] == 121 && receiver[3] == 118 && receiver[4] == 97 && receiver[5] == 108 && receiver[6] == 117 && receiver[7] == 101 && receiver[8] == 58 && Wifi.this.save_key_index != receiver[9]) {
                                        Wifi.this.save_key_index = receiver[9];
                                        byte key_value = receiver[10];
                                        byte b = receiver[11];
                                        if (!Wifi.this.has_first_get) {
                                            Wifi.this.has_first_get = true;
                                        } else if (key_value == Wifi.this.Photo_Key) {
                                            Wifi.this.sendMessage(6);
                                            Log.e(Wifi.this.Tag, "photo_key_Down");
                                        } else if (key_value == Wifi.this.Video_Key) {
                                            Wifi.this.sendMessage(7);
                                            Log.e(Wifi.this.Tag, "Video_Key_Down");
                                        }
                                    }
                                }
                            } else {
                                return;
                            }
                        } catch (SocketException e) {
                            e.printStackTrace();
                        } catch (IOException e2) {
                            e2.printStackTrace();
                        }
                    }
                    Wifi.this.isStop = true;
                    Wifi.this.iCameraServerStop();
                }
            };
            this.getDataThread.start();
        }
    }

    public void setPhotoPath() {
        if (!Environment.getExternalStorageDirectory().exists()) {
            Toast.makeText(this.activity, "SD Card not exist!", 1).show();
        }
        if (getAdapterIsSetDefaultPath()) {
            this.rootsStringPhoto = getCurPath() + "/";
            Log.e(this.Tag, "-----设置路径----" + Applications.isSetDefaultPath);
        } else {
            this.rootsStringPhoto = getCurPath() + "/" + "DCIM" + "/" + "SOAY" + "/";
            Log.e(this.Tag, "----默认路径-----" + Applications.isSetDefaultPath);
        }
        File file = new File(this.rootsStringPhoto);
        if (!file.exists()) {
            file.mkdirs();
        }
        photoPath = this.rootsStringPhoto + checkPhotoPath(this.rootsStringPhoto);
        Log.e(this.Tag, "===photoPath==" + photoPath);
        File photoFile = new File(photoPath);
        try {
            if (!photoFile.exists()) {
                photoFile.createNewFile();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.Take_Photo_Flag = true;
    }

    private void setVideoPath() {
        if (!Environment.getExternalStorageDirectory().exists()) {
            Toast.makeText(this.activity, "SD Card not exist!", 1).show();
        }
        if (getAdapterIsSetDefaultPath()) {
            this.rootsStringVideo = getCurPath() + "/";
            Log.e(this.Tag, "-----设置路径----" + Applications.isSetDefaultPath);
        } else {
            this.rootsStringVideo = getCurPath() + "/" + "DCIM" + "/" + "SOAY" + "/";
            Log.e(this.Tag, "----默认路径-----" + Applications.isSetDefaultPath);
            Log.e(this.Tag, "----路径-----" + Applications.isSetDefaultPath);
        }
        File file = new File(this.rootsStringVideo);
        if (!file.exists()) {
            file.mkdirs();
        }
        this.videoPath = this.rootsStringVideo + checkVideoPath(this.rootsStringVideo);
        Log.e(this.Tag, "videoPath==" + this.videoPath);
        File videoFile = new File(this.videoPath);
        try {
            if (!videoFile.exists()) {
                videoFile.createNewFile();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    /* access modifiers changed from: private */
    public void setRecordData(byte[] data, int length) {
        if (data.length > 0) {
            this.has_new_frame = true;
            this.bmp_data = data;
        }
    }

    public void startCaptureVideo() {
        setVideoPath();
        iCameraRecSetParams(1280, 720, 8);
        iCameraRecStart(this.videoPath);
        this.has_timer_start = false;
        this.Take_Capture_Flag = true;
        this.isRecording = true;
        new Thread(new Runnable() {
            public void run() {
                while (Wifi.this.isRecording) {
                    if (Wifi.this.has_new_frame) {
                        Wifi.this.iCameraRecInsertData(Wifi.this.bmp_data, Wifi.this.bmp_data.length);
                        Wifi.this.has_new_frame = false;
                    }
                    try {
                        Thread.sleep(20);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        }).start();
    }

    public void CaptureStop() {
        this.Take_Capture_Flag = false;
        this.wifi_Coantec_Capture_Time.setText("00:00");
        iCameraRecStop();
        this.has_timer_start = true;
        if (this.m_play_timer != null) {
            this.m_play_timer.cancel();
        }
        clearTime();
        this.isRecording = false;
    }

    /* access modifiers changed from: private */
    public void CreatePNG(String path, Bitmap bitmap) {
        try {
            FileOutputStream fos = new FileOutputStream(new File(path));
            bitmap.compress(CompressFormat.JPEG, 50, fos);
            fos.flush();
            fos.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public String checkPhotoPath(String path) {
        long count2 = 1;
        while (true) {
            if (!new File(path, "SOAY-" + String.format("%04d", new Object[]{Long.valueOf(count2)}) + ".jpg").exists()) {
                return "SOAY-" + String.format("%04d", new Object[]{Long.valueOf(count2)}) + ".jpg";
            }
            count2++;
        }
    }

    public String checkVideoPath(String path) {
        long count2 = 1;
        while (true) {
            if (!new File(path, "SOAY-" + String.format("%04d", new Object[]{Long.valueOf(count2)}) + ".avi").exists()) {
                return "SOAY-" + String.format("%04d", new Object[]{Long.valueOf(count2)}) + ".avi";
            }
            count2++;
        }
    }

    public void stop() {
        this.isStop = true;
        iCameraCloseSocket();
        if (this.socket != null && !this.socket.isClosed()) {
            this.socket.close();
        }
    }

    public String getRootPath() {
        String sdCardDir;
        if (sdcardItem == SdcardSelector.BUILT_IN) {
            sdCardDir = SdCardUtils.getFirstExternPath();
        } else {
            sdCardDir = SdCardUtils.getSecondExternPath();
            if (sdCardDir == null) {
                return null;
            }
        }
        return sdCardDir;
    }

    public void setTime(TextView wifi_Coantec_Capture_Time2) {
        this.wifi_Coantec_Capture_Time = wifi_Coantec_Capture_Time2;
    }

    public void setCapture(byte capture2) {
        this.capture = capture2;
    }

    public void setKeyValue(ImageView wifi_Coantec_Photo2, ImageView wifi_Coantec_Video2) {
        this.wifi_Coantec_Photo = wifi_Coantec_Photo2;
        this.wifi_Coantec_Video = wifi_Coantec_Video2;
    }

    public void setWidget(SurfaceView wifi_Coantec_SurfaceView, ImageView wifi_Coantec_Rec2) {
        this.surfaceView = wifi_Coantec_SurfaceView;
        this.Wifi_Coantec_Rec = wifi_Coantec_Rec2;
    }

    public String getCurPath() {
        String str = "DCIM";
        String path = this.activity.getSharedPreferences("CurPath", 0).getString("CurPath", FileActivity._currentPath);
        Log.e(this.Tag, "---------path==" + path);
        return path;
    }

    private boolean getAdapterIsSetDefaultPath() {
        boolean bool = this.activity.getSharedPreferences("IsSetDefaultPath", 0).getBoolean("IsSetDefaultPath", false);
        Log.e(this.Tag, "bool=" + bool);
        return bool;
    }
}
