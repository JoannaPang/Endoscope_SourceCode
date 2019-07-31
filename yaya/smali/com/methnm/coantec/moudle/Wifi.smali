.class public Lcom/methnm/coantec/moudle/Wifi;
.super Ljava/lang/Object;
.source "Wifi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/moudle/Wifi$SdcardSelector;
    }
.end annotation


# static fields
.field private static final Change_Visible:I = 0x5

.field private static final Connect_Failed:I = 0x3

.field private static final Connect_Success:I = 0x2

.field private static final Photo_Key_Down:I = 0x6

.field private static final Set_Time:I = 0x4

.field private static final Video_Key_Down:I = 0x7

.field public static count:I

.field public static isConnect:Z

.field public static photoPath:Ljava/lang/String;

.field public static sdcardItem:Lcom/methnm/coantec/moudle/Wifi$SdcardSelector;


# instance fields
.field private BSSID:Ljava/lang/String;

.field private Capturefg:B

.field private Inetaddress:Ljava/net/InetAddress;

.field private Is_Get_Bitmap:Z

.field private Is_Video_Pause:Z

.field private Minute:I

.field private Photo_Key:I

.field private Record_Timer:Ljava/util/Timer;

.field private Record_TimerTask:Ljava/util/TimerTask;

.field private Second:I

.field protected Tag:Ljava/lang/String;

.field private Take_Capture_Flag:Z

.field private Take_Photo_Flag:Z

.field private Video_Key:I

.field private Wifi_Coantec_Rec:Landroid/widget/ImageView;

.field private activity:Landroid/app/Activity;

.field public bmp_data:[B

.field buff:[B

.field private capture:B

.field private dataBuf:[B

.field private defaultpath:Ljava/lang/String;

.field private getDataThread:Ljava/lang/Thread;

.field private getPlayBackThread:Ljava/lang/Thread;

.field handler:Landroid/os/Handler;

.field private has_connect:Z

.field private has_first_get:Z

.field private has_new_frame:Z

.field private has_timer_start:Z

.field private isRecording:Z

.field private isStop:Z

.field keybuf:[B

.field private lastSecond:I

.field private last_voice_id:B

.field private m_play_timer:Lcom/methnm/coantec/moudle/Timer1s;

.field private pic_show:Z

.field receiver_key:[B

.field private rootsStringPhoto:Ljava/lang/String;

.field private rootsStringVideo:Ljava/lang/String;

.field private save_key_index:B

.field private sendDataThread:Ljava/lang/Thread;

.field private sendbuf:[B

.field private socket:Ljava/net/DatagramSocket;

.field private startCapture:Ljava/lang/Thread;

.field private surfaceView:Lcom/methnm/coantec/moudle/SurfaceView;

.field private videoPath:Ljava/lang/String;

.field private voiceSocket:Ljava/net/DatagramSocket;

.field private voiceThread:Ljava/lang/Thread;

.field private voice_press_id:Z

.field private voicebuf:[B

.field private wifi_Coantec_Capture_Time:Landroid/widget/TextView;

.field private wifi_Coantec_Photo:Landroid/widget/ImageView;

.field private wifi_Coantec_Video:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    .line 93
    sget-object v0, Lcom/methnm/coantec/moudle/Wifi$SdcardSelector;->BUILT_IN:Lcom/methnm/coantec/moudle/Wifi$SdcardSelector;

    sput-object v0, Lcom/methnm/coantec/moudle/Wifi;->sdcardItem:Lcom/methnm/coantec/moudle/Wifi$SdcardSelector;

    .line 100
    sput-boolean v1, Lcom/methnm/coantec/moudle/Wifi;->isConnect:Z

    .line 101
    sput v1, Lcom/methnm/coantec/moudle/Wifi;->count:I

    .line 119
    const-string v0, "openal"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 120
    const-string v0, "icamera"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v4, 0xe

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->socket:Ljava/net/DatagramSocket;

    .line 48
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->voiceSocket:Ljava/net/DatagramSocket;

    .line 49
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->Inetaddress:Ljava/net/InetAddress;

    .line 50
    const-string v0, "192.168.10.123"

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->BSSID:Ljava/lang/String;

    .line 51
    const-string v0, "http://192.168.10.123:7060"

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->defaultpath:Ljava/lang/String;

    .line 56
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->startCapture:Ljava/lang/Thread;

    .line 57
    iput-boolean v1, p0, Lcom/methnm/coantec/moudle/Wifi;->isStop:Z

    .line 58
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->surfaceView:Lcom/methnm/coantec/moudle/SurfaceView;

    .line 59
    const-string v0, "WIFI"

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    .line 62
    iput-boolean v1, p0, Lcom/methnm/coantec/moudle/Wifi;->Take_Photo_Flag:Z

    .line 63
    iput-boolean v1, p0, Lcom/methnm/coantec/moudle/Wifi;->Take_Capture_Flag:Z

    .line 64
    iput-boolean v1, p0, Lcom/methnm/coantec/moudle/Wifi;->has_connect:Z

    .line 65
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->voiceThread:Ljava/lang/Thread;

    .line 66
    const/16 v0, 0x5aa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->voicebuf:[B

    .line 67
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendbuf:[B

    .line 68
    const/16 v0, 0x5c0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->buff:[B

    .line 69
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->receiver_key:[B

    .line 71
    iput-byte v1, p0, Lcom/methnm/coantec/moudle/Wifi;->last_voice_id:B

    .line 72
    iput-boolean v1, p0, Lcom/methnm/coantec/moudle/Wifi;->voice_press_id:Z

    .line 73
    new-array v0, v4, [B

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    .line 74
    iput-byte v1, p0, Lcom/methnm/coantec/moudle/Wifi;->Capturefg:B

    .line 75
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->sendDataThread:Ljava/lang/Thread;

    .line 76
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->getPlayBackThread:Ljava/lang/Thread;

    .line 77
    iput-boolean v1, p0, Lcom/methnm/coantec/moudle/Wifi;->Is_Video_Pause:Z

    .line 78
    iput-boolean v3, p0, Lcom/methnm/coantec/moudle/Wifi;->Is_Get_Bitmap:Z

    .line 79
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->Record_Timer:Ljava/util/Timer;

    .line 80
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->Record_TimerTask:Ljava/util/TimerTask;

    .line 82
    iput-boolean v1, p0, Lcom/methnm/coantec/moudle/Wifi;->pic_show:Z

    .line 83
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->Wifi_Coantec_Rec:Landroid/widget/ImageView;

    .line 84
    iput-byte v1, p0, Lcom/methnm/coantec/moudle/Wifi;->save_key_index:B

    .line 85
    iput v3, p0, Lcom/methnm/coantec/moudle/Wifi;->Photo_Key:I

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Lcom/methnm/coantec/moudle/Wifi;->Video_Key:I

    .line 90
    iput-boolean v1, p0, Lcom/methnm/coantec/moudle/Wifi;->has_first_get:Z

    .line 91
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->m_play_timer:Lcom/methnm/coantec/moudle/Timer1s;

    .line 95
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->getDataThread:Ljava/lang/Thread;

    .line 96
    iput-boolean v3, p0, Lcom/methnm/coantec/moudle/Wifi;->has_timer_start:Z

    .line 97
    iput-boolean v1, p0, Lcom/methnm/coantec/moudle/Wifi;->isRecording:Z

    .line 98
    iput-boolean v1, p0, Lcom/methnm/coantec/moudle/Wifi;->has_new_frame:Z

    .line 104
    sget-object v0, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringVideo:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringPhoto:Ljava/lang/String;

    .line 249
    new-instance v0, Lcom/methnm/coantec/moudle/Wifi$1;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/moudle/Wifi$1;-><init>(Lcom/methnm/coantec/moudle/Wifi;)V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->handler:Landroid/os/Handler;

    .line 284
    const/4 v0, -0x1

    iput v0, p0, Lcom/methnm/coantec/moudle/Wifi;->lastSecond:I

    .line 285
    iput v1, p0, Lcom/methnm/coantec/moudle/Wifi;->Second:I

    .line 286
    iput v1, p0, Lcom/methnm/coantec/moudle/Wifi;->Minute:I

    .line 313
    iput-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->videoPath:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Wifi;->activity:Landroid/app/Activity;

    .line 126
    iput-boolean v1, p0, Lcom/methnm/coantec/moudle/Wifi;->isStop:Z

    .line 127
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->m_play_timer:Lcom/methnm/coantec/moudle/Timer1s;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/methnm/coantec/moudle/Timer1s;

    iget-object v1, p0, Lcom/methnm/coantec/moudle/Wifi;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/methnm/coantec/moudle/Timer1s;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->m_play_timer:Lcom/methnm/coantec/moudle/Timer1s;

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/Wifi;->startWifi()V

    .line 132
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4fdd\u5b58\u7684\u6839\u8def\u5f84rootsStringVideo="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringVideo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4fdd\u5b58\u7684\u6839\u8def\u5f84rootsStringPhoto="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringPhoto:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return-void
.end method

.method private CreatePNG(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 665
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 667
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 668
    .local v2, "fos":Ljava/io/FileOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x32

    invoke-virtual {p2, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 669
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 670
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 671
    :catch_0
    move-exception v0

    .line 673
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private SendMessage()V
    .locals 0

    .prologue
    .line 460
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/moudle/Wifi;)Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->pic_show:Z

    return v0
.end method

.method static synthetic access$1(Lcom/methnm/coantec/moudle/Wifi;Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/methnm/coantec/moudle/Wifi;->pic_show:Z

    return-void
.end method

.method static synthetic access$10(Lcom/methnm/coantec/moudle/Wifi;Z)V
    .locals 0

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/methnm/coantec/moudle/Wifi;->has_connect:Z

    return-void
.end method

.method static synthetic access$11(Lcom/methnm/coantec/moudle/Wifi;)Lcom/methnm/coantec/moudle/SurfaceView;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->surfaceView:Lcom/methnm/coantec/moudle/SurfaceView;

    return-object v0
.end method

.method static synthetic access$12(Lcom/methnm/coantec/moudle/Wifi;Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/methnm/coantec/moudle/Wifi;->Is_Get_Bitmap:Z

    return-void
.end method

.method static synthetic access$13(Lcom/methnm/coantec/moudle/Wifi;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->Take_Photo_Flag:Z

    return v0
.end method

.method static synthetic access$14(Lcom/methnm/coantec/moudle/Wifi;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 664
    invoke-direct {p0, p1, p2}, Lcom/methnm/coantec/moudle/Wifi;->CreatePNG(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$15(Lcom/methnm/coantec/moudle/Wifi;Z)V
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/methnm/coantec/moudle/Wifi;->Take_Photo_Flag:Z

    return-void
.end method

.method static synthetic access$16(Lcom/methnm/coantec/moudle/Wifi;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->Take_Capture_Flag:Z

    return v0
.end method

.method static synthetic access$17(Lcom/methnm/coantec/moudle/Wifi;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->has_timer_start:Z

    return v0
.end method

.method static synthetic access$18(Lcom/methnm/coantec/moudle/Wifi;Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/methnm/coantec/moudle/Wifi;->has_timer_start:Z

    return-void
.end method

.method static synthetic access$19(Lcom/methnm/coantec/moudle/Wifi;)Lcom/methnm/coantec/moudle/Timer1s;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->m_play_timer:Lcom/methnm/coantec/moudle/Timer1s;

    return-object v0
.end method

.method static synthetic access$2(Lcom/methnm/coantec/moudle/Wifi;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->Wifi_Coantec_Rec:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$20(Lcom/methnm/coantec/moudle/Wifi;[BI)V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0, p1, p2}, Lcom/methnm/coantec/moudle/Wifi;->setRecordData([BI)V

    return-void
.end method

.method static synthetic access$21(Lcom/methnm/coantec/moudle/Wifi;)V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Lcom/methnm/coantec/moudle/Wifi;->sendDataBuff()V

    return-void
.end method

.method static synthetic access$22(Lcom/methnm/coantec/moudle/Wifi;)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/methnm/coantec/moudle/Wifi;->sendKeyCommand()V

    return-void
.end method

.method static synthetic access$23(Lcom/methnm/coantec/moudle/Wifi;)Ljava/net/DatagramSocket;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->socket:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic access$24(Lcom/methnm/coantec/moudle/Wifi;)B
    .locals 1

    .prologue
    .line 84
    iget-byte v0, p0, Lcom/methnm/coantec/moudle/Wifi;->save_key_index:B

    return v0
.end method

.method static synthetic access$25(Lcom/methnm/coantec/moudle/Wifi;B)V
    .locals 0

    .prologue
    .line 84
    iput-byte p1, p0, Lcom/methnm/coantec/moudle/Wifi;->save_key_index:B

    return-void
.end method

.method static synthetic access$26(Lcom/methnm/coantec/moudle/Wifi;)Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->has_first_get:Z

    return v0
.end method

.method static synthetic access$27(Lcom/methnm/coantec/moudle/Wifi;Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/methnm/coantec/moudle/Wifi;->has_first_get:Z

    return-void
.end method

.method static synthetic access$28(Lcom/methnm/coantec/moudle/Wifi;)I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/methnm/coantec/moudle/Wifi;->Photo_Key:I

    return v0
.end method

.method static synthetic access$29(Lcom/methnm/coantec/moudle/Wifi;I)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/methnm/coantec/moudle/Wifi;->sendMessage(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/methnm/coantec/moudle/Wifi;)V
    .locals 0

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/methnm/coantec/moudle/Wifi;->setTime()V

    return-void
.end method

.method static synthetic access$30(Lcom/methnm/coantec/moudle/Wifi;)I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/methnm/coantec/moudle/Wifi;->Video_Key:I

    return v0
.end method

.method static synthetic access$31(Lcom/methnm/coantec/moudle/Wifi;)Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->isRecording:Z

    return v0
.end method

.method static synthetic access$32(Lcom/methnm/coantec/moudle/Wifi;)Z
    .locals 1

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->has_new_frame:Z

    return v0
.end method

.method static synthetic access$33(Lcom/methnm/coantec/moudle/Wifi;Z)V
    .locals 0

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/methnm/coantec/moudle/Wifi;->has_new_frame:Z

    return-void
.end method

.method static synthetic access$4(Lcom/methnm/coantec/moudle/Wifi;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->wifi_Coantec_Photo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/methnm/coantec/moudle/Wifi;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->wifi_Coantec_Video:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/methnm/coantec/moudle/Wifi;Z)V
    .locals 0

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/methnm/coantec/moudle/Wifi;->isStop:Z

    return-void
.end method

.method static synthetic access$7(Lcom/methnm/coantec/moudle/Wifi;)Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->isStop:Z

    return v0
.end method

.method static synthetic access$8(Lcom/methnm/coantec/moudle/Wifi;)Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->Is_Video_Pause:Z

    return v0
.end method

.method static synthetic access$9(Lcom/methnm/coantec/moudle/Wifi;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->Is_Get_Bitmap:Z

    return v0
.end method

.method public static byteToHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    .prologue
    .line 409
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 410
    .local v2, "sb":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-lt v1, v3, :cond_0

    .line 418
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 411
    :cond_0
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "hex":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 413
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x30

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 415
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 416
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private clearTime()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/methnm/coantec/moudle/Wifi;->lastSecond:I

    .line 309
    iput v1, p0, Lcom/methnm/coantec/moudle/Wifi;->Second:I

    .line 310
    iput v1, p0, Lcom/methnm/coantec/moudle/Wifi;->Minute:I

    .line 311
    return-void
.end method

.method private createVoiceSocket(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 335
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v1, p0, Lcom/methnm/coantec/moudle/Wifi;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Wifi;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/moudle/Wifi;->Inetaddress:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 345
    :goto_1
    return-void

    .line 336
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 342
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 343
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1
.end method

.method private getAdapterIsSetDefaultPath()Z
    .locals 5

    .prologue
    .line 872
    const/4 v0, 0x0

    .line 873
    .local v0, "bool":Z
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->activity:Landroid/app/Activity;

    .line 874
    const-string v3, "IsSetDefaultPath"

    const/4 v4, 0x0

    .line 873
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 875
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "IsSetDefaultPath"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 876
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bool="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    return v0
.end method

.method private getKeyStatus()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->getDataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->getDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 464
    :cond_0
    new-instance v0, Lcom/methnm/coantec/moudle/Wifi$4;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/moudle/Wifi$4;-><init>(Lcom/methnm/coantec/moudle/Wifi;)V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->getDataThread:Ljava/lang/Thread;

    .line 518
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->getDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 520
    :cond_1
    return-void
.end method

.method private sendData()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendDataThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 423
    :cond_0
    new-instance v0, Lcom/methnm/coantec/moudle/Wifi$3;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/moudle/Wifi$3;-><init>(Lcom/methnm/coantec/moudle/Wifi;)V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendDataThread:Ljava/lang/Thread;

    .line 436
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendDataThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 438
    :cond_1
    return-void
.end method

.method private sendDataBuff()V
    .locals 6

    .prologue
    const/16 v5, 0x72

    const/16 v4, 0x65

    const/16 v3, 0x5f

    .line 391
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/4 v1, 0x0

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    .line 392
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/4 v1, 0x1

    aput-byte v4, v0, v1

    .line 393
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/4 v1, 0x2

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    .line 394
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 395
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/4 v1, 0x4

    aput-byte v5, v0, v1

    .line 396
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/4 v1, 0x5

    aput-byte v4, v0, v1

    .line 397
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/4 v1, 0x6

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    .line 398
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/4 v1, 0x7

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    .line 399
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/16 v1, 0x8

    aput-byte v5, v0, v1

    .line 400
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/16 v1, 0x9

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    .line 401
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/16 v1, 0xa

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    .line 402
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/16 v1, 0xb

    iget-byte v2, p0, Lcom/methnm/coantec/moudle/Wifi;->capture:B

    aput-byte v2, v0, v1

    .line 403
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    .line 404
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    .line 405
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->dataBuf:[B

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/moudle/Wifi;->sendDataBuffer([B)V

    .line 406
    return-void
.end method

.method private sendKeyCommand()V
    .locals 5

    .prologue
    const/16 v4, 0x65

    const/16 v3, 0x5f

    .line 441
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/4 v1, 0x0

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    .line 442
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/4 v1, 0x1

    aput-byte v4, v0, v1

    .line 443
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/4 v1, 0x2

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    .line 444
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 445
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/4 v1, 0x4

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    .line 446
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/4 v1, 0x5

    aput-byte v4, v0, v1

    .line 447
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/4 v1, 0x6

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    .line 448
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    .line 449
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    .line 450
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    .line 451
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    .line 452
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    .line 453
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    .line 454
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    .line 455
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->keybuf:[B

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/moudle/Wifi;->sendDataBuffer([B)V

    .line 456
    return-void
.end method

.method private sendMessage(I)V
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 244
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 245
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 246
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Wifi;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    return-void
.end method

.method private setRecordData([BI)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "length"    # I

    .prologue
    .line 605
    array-length v0, p1

    if-lez v0, :cond_0

    .line 606
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->has_new_frame:Z

    .line 607
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Wifi;->bmp_data:[B

    .line 609
    :cond_0
    return-void
.end method

.method private setTime()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 290
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 291
    .local v3, "time":Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 292
    iget v0, v3, Landroid/text/format/Time;->hour:I

    .line 293
    .local v0, "hour":I
    iget v1, v3, Landroid/text/format/Time;->minute:I

    .line 294
    .local v1, "min":I
    iget v2, v3, Landroid/text/format/Time;->second:I

    .line 295
    .local v2, "second":I
    iget v5, p0, Lcom/methnm/coantec/moudle/Wifi;->lastSecond:I

    if-eq v2, v5, :cond_1

    .line 296
    iput v2, p0, Lcom/methnm/coantec/moudle/Wifi;->lastSecond:I

    .line 297
    iget v5, p0, Lcom/methnm/coantec/moudle/Wifi;->Second:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/methnm/coantec/moudle/Wifi;->Second:I

    .line 298
    iget v5, p0, Lcom/methnm/coantec/moudle/Wifi;->Second:I

    const/16 v6, 0x3b

    if-le v5, v6, :cond_0

    .line 299
    iput v8, p0, Lcom/methnm/coantec/moudle/Wifi;->Second:I

    .line 300
    iget v5, p0, Lcom/methnm/coantec/moudle/Wifi;->Minute:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/methnm/coantec/moudle/Wifi;->Minute:I

    .line 302
    :cond_0
    const-string v5, "%02d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/methnm/coantec/moudle/Wifi;->Minute:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget v8, p0, Lcom/methnm/coantec/moudle/Wifi;->Second:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "timeString":Ljava/lang/String;
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi;->wifi_Coantec_Capture_Time:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    .end local v4    # "timeString":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private setVideoPath()V
    .locals 7

    .prologue
    .line 564
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 565
    .local v0, "boot":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 566
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->activity:Landroid/app/Activity;

    const-string v5, "SD Card not exist!"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 567
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 573
    :cond_0
    invoke-direct {p0}, Lcom/methnm/coantec/moudle/Wifi;->getAdapterIsSetDefaultPath()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 574
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/Wifi;->getCurPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringVideo:Ljava/lang/String;

    .line 575
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-----\u8bbe\u7f6e\u8def\u5f84----"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/methnm/coantec/activity/Applications;->isSetDefaultPath:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringVideo:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 584
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 586
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringVideo:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringVideo:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/methnm/coantec/moudle/Wifi;->checkVideoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->videoPath:Ljava/lang/String;

    .line 587
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "videoPath=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/methnm/coantec/moudle/Wifi;->videoPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->videoPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 590
    .local v3, "videoFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 591
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    :cond_2
    :goto_1
    return-void

    .line 577
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "videoFile":Ljava/io/File;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/Wifi;->getCurPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DCIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SOAY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringVideo:Ljava/lang/String;

    .line 578
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "----\u9ed8\u8ba4\u8def\u5f84-----"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/methnm/coantec/activity/Applications;->isSetDefaultPath:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "----\u8def\u5f84-----"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/methnm/coantec/activity/Applications;->isSetDefaultPath:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 592
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "videoFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 594
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private startCapture()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->startCapture:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->startCapture:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 154
    :cond_0
    new-instance v0, Lcom/methnm/coantec/moudle/Wifi$2;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/moudle/Wifi$2;-><init>(Lcom/methnm/coantec/moudle/Wifi;)V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->startCapture:Ljava/lang/Thread;

    .line 239
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->startCapture:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    :cond_1
    return-void
.end method

.method private voiceInit()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    .line 378
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendbuf:[B

    const/4 v1, 0x0

    const/16 v2, 0x47

    aput-byte v2, v0, v1

    .line 379
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendbuf:[B

    const/16 v1, 0x45

    aput-byte v1, v0, v3

    .line 380
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendbuf:[B

    const/4 v1, 0x2

    const/16 v2, 0x54

    aput-byte v2, v0, v1

    .line 381
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendbuf:[B

    const/4 v1, 0x3

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    .line 382
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendbuf:[B

    const/4 v1, 0x4

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    .line 383
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendbuf:[B

    const/4 v1, 0x5

    const/16 v2, 0x55

    aput-byte v2, v0, v1

    .line 384
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendbuf:[B

    const/4 v1, 0x6

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    .line 385
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendbuf:[B

    const/4 v1, 0x7

    const/16 v2, 0x44

    aput-byte v2, v0, v1

    .line 386
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendbuf:[B

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    .line 387
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->sendbuf:[B

    aput-byte v4, v0, v4

    .line 388
    return-void
.end method


# virtual methods
.method public CaptureStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 651
    iput-boolean v2, p0, Lcom/methnm/coantec/moudle/Wifi;->Take_Capture_Flag:Z

    .line 652
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->wifi_Coantec_Capture_Time:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/Wifi;->iCameraRecStop()V

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->has_timer_start:Z

    .line 657
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->m_play_timer:Lcom/methnm/coantec/moudle/Timer1s;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->m_play_timer:Lcom/methnm/coantec/moudle/Timer1s;

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Timer1s;->cancel()V

    .line 659
    :cond_0
    invoke-direct {p0}, Lcom/methnm/coantec/moudle/Wifi;->clearTime()V

    .line 661
    iput-boolean v2, p0, Lcom/methnm/coantec/moudle/Wifi;->isRecording:Z

    .line 662
    return-void
.end method

.method public Pause_Video(Z)V
    .locals 1
    .param p1, "is_video_pause"    # Z

    .prologue
    .line 147
    iput-boolean p1, p0, Lcom/methnm/coantec/moudle/Wifi;->Is_Video_Pause:Z

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->Is_Get_Bitmap:Z

    .line 149
    return-void
.end method

.method public checkPhotoPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 678
    const/4 v2, 0x0

    .line 679
    .local v2, "name":Ljava/lang/String;
    const-wide/16 v0, 0x1

    .line 680
    .local v0, "count":J
    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SOAY-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%04d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SOAY-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%04d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 685
    return-object v2

    .line 682
    :cond_0
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_0
.end method

.method public checkVideoPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 689
    const/4 v2, 0x0

    .line 690
    .local v2, "name":Ljava/lang/String;
    const-wide/16 v0, 0x1

    .line 691
    .local v0, "count":J
    :goto_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SOAY-"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "%04d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".avi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 695
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SOAY-"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%04d"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".avi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 696
    return-object v2

    .line 693
    :cond_0
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_0
.end method

.method public createSocket(I)V
    .locals 2
    .param p1, "port"    # I

    .prologue
    .line 321
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1, p1}, Ljava/net/DatagramSocket;-><init>(I)V

    iput-object v1, p0, Lcom/methnm/coantec/moudle/Wifi;->socket:Ljava/net/DatagramSocket;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Wifi;->BSSID:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/moudle/Wifi;->Inetaddress:Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    .line 331
    :goto_1
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0

    .line 328
    .end local v0    # "e":Ljava/net/SocketException;
    :catch_1
    move-exception v0

    .line 329
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_1
.end method

.method public getCurPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 861
    const-string v0, "DCIM"

    .line 862
    .local v0, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->activity:Landroid/app/Activity;

    const-string v3, "CurPath"

    .line 863
    const/4 v4, 0x0

    .line 862
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 864
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "CurPath"

    sget-object v3, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 866
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---------path=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-object v0
.end method

.method public native getResolution()[B
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 719
    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->sdcardItem:Lcom/methnm/coantec/moudle/Wifi$SdcardSelector;

    sget-object v2, Lcom/methnm/coantec/moudle/Wifi$SdcardSelector;->BUILT_IN:Lcom/methnm/coantec/moudle/Wifi$SdcardSelector;

    if-ne v1, v2, :cond_1

    .line 720
    invoke-static {}, Lcom/methnm/coantec/moudle/SdCardUtils;->getFirstExternPath()Ljava/lang/String;

    move-result-object v0

    .local v0, "sdCardDir":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 727
    :goto_0
    return-object v1

    .line 722
    .end local v0    # "sdCardDir":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/methnm/coantec/moudle/SdCardUtils;->getSecondExternPath()Ljava/lang/String;

    move-result-object v0

    .line 723
    .restart local v0    # "sdCardDir":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 724
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public native iCameraCloseFile()V
.end method

.method public native iCameraCloseSocket()I
.end method

.method public native iCameraCloseVoice()V
.end method

.method public native iCameraGetCmdData()[B
.end method

.method public native iCameraGetFrame()[B
.end method

.method public native iCameraGetOneFrame(I)[B
.end method

.method public native iCameraGetOneSecond(D)[B
.end method

.method public native iCameraGetTotalFrame()I
.end method

.method public native iCameraGetTotalTime()D
.end method

.method public native iCameraGetVoice(D)[B
.end method

.method public native iCameraInitSocket()I
.end method

.method public native iCameraInsertCmdData([BIIB)V
.end method

.method public native iCameraOpenFile(Ljava/lang/String;)V
.end method

.method public native iCameraOpenVoice()V
.end method

.method public native iCameraRecInsertData([BI)V
.end method

.method public native iCameraRecSetParams(III)V
.end method

.method public native iCameraRecStart(Ljava/lang/String;)V
.end method

.method public native iCameraRecStop()V
.end method

.method public native iCameraServerStart()I
.end method

.method public native iCameraServerStop()V
.end method

.method public native iCameraWriteData([B)V
.end method

.method public native sendChangeName(Ljava/lang/String;)I
.end method

.method public native sendChangePassword(Ljava/lang/String;)I
.end method

.method public native sendChangeResolution(III)I
.end method

.method public native sendClearPassword()I
.end method

.method public sendDataBuffer([B)V
    .locals 5
    .param p1, "buffer"    # [B

    .prologue
    .line 363
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->socket:Ljava/net/DatagramSocket;

    if-nez v2, :cond_0

    .line 375
    :goto_0
    return-void

    .line 367
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    .line 368
    array-length v2, p1

    iget-object v3, p0, Lcom/methnm/coantec/moudle/Wifi;->Inetaddress:Ljava/net/InetAddress;

    const v4, 0xea82

    .line 367
    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 369
    .local v1, "sendpacket":Ljava/net/DatagramPacket;
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    .end local v1    # "sendpacket":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/io/IOException;
    const-string v2, ""

    const-string v3, "connect failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public native sendReboot()I
.end method

.method public sendVoiceBuffer([B)V
    .locals 5
    .param p1, "buffer"    # [B

    .prologue
    .line 348
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->voiceSocket:Ljava/net/DatagramSocket;

    if-nez v2, :cond_0

    .line 360
    :goto_0
    return-void

    .line 352
    :cond_0
    :try_start_0
    new-instance v1, Ljava/net/DatagramPacket;

    .line 353
    array-length v2, p1

    iget-object v3, p0, Lcom/methnm/coantec/moudle/Wifi;->Inetaddress:Ljava/net/InetAddress;

    const v4, 0xea60

    .line 352
    invoke-direct {v1, p1, v2, v3, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 354
    .local v1, "sendpacket":Ljava/net/DatagramPacket;
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Wifi;->voiceSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 355
    .end local v1    # "sendpacket":Ljava/net/DatagramPacket;
    :catch_0
    move-exception v0

    .line 357
    .local v0, "e":Ljava/io/IOException;
    const-string v2, ""

    const-string v3, "connect failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setCapture(B)V
    .locals 0
    .param p1, "capture"    # B

    .prologue
    .line 838
    iput-byte p1, p0, Lcom/methnm/coantec/moudle/Wifi;->capture:B

    .line 839
    return-void
.end method

.method public setKeyValue(Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "wifi_Coantec_Photo"    # Landroid/widget/ImageView;
    .param p2, "wifi_Coantec_Video"    # Landroid/widget/ImageView;

    .prologue
    .line 844
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Wifi;->wifi_Coantec_Photo:Landroid/widget/ImageView;

    .line 845
    iput-object p2, p0, Lcom/methnm/coantec/moudle/Wifi;->wifi_Coantec_Video:Landroid/widget/ImageView;

    .line 846
    return-void
.end method

.method public setPhotoPath()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 526
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 527
    .local v0, "boot":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 528
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->activity:Landroid/app/Activity;

    const-string v5, "SD Card not exist!"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 529
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 534
    :cond_0
    invoke-direct {p0}, Lcom/methnm/coantec/moudle/Wifi;->getAdapterIsSetDefaultPath()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/Wifi;->getCurPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringPhoto:Ljava/lang/String;

    .line 536
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-----\u8bbe\u7f6e\u8def\u5f84----"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/methnm/coantec/activity/Applications;->isSetDefaultPath:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringPhoto:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 544
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 546
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringPhoto:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringPhoto:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/methnm/coantec/moudle/Wifi;->checkPhotoPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    .line 547
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "===photoPath=="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    .local v3, "photoFile":Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 552
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :cond_2
    :goto_1
    iput-boolean v7, p0, Lcom/methnm/coantec/moudle/Wifi;->Take_Photo_Flag:Z

    .line 558
    return-void

    .line 538
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "photoFile":Ljava/io/File;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/Wifi;->getCurPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DCIM"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "SOAY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->rootsStringPhoto:Ljava/lang/String;

    .line 539
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "----\u9ed8\u8ba4\u8def\u5f84-----"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v6, Lcom/methnm/coantec/activity/Applications;->isSetDefaultPath:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 553
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "photoFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public setTime(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "wifi_Coantec_Capture_Time"    # Landroid/widget/TextView;

    .prologue
    .line 833
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Wifi;->wifi_Coantec_Capture_Time:Landroid/widget/TextView;

    .line 834
    return-void
.end method

.method public setWidget(Lcom/methnm/coantec/moudle/SurfaceView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "wifi_Coantec_SurfaceView"    # Lcom/methnm/coantec/moudle/SurfaceView;
    .param p2, "wifi_Coantec_Rec2"    # Landroid/widget/ImageView;

    .prologue
    .line 851
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Wifi;->surfaceView:Lcom/methnm/coantec/moudle/SurfaceView;

    .line 852
    iput-object p2, p0, Lcom/methnm/coantec/moudle/Wifi;->Wifi_Coantec_Rec:Landroid/widget/ImageView;

    .line 853
    return-void
.end method

.method public startCaptureVideo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 612
    invoke-direct {p0}, Lcom/methnm/coantec/moudle/Wifi;->setVideoPath()V

    .line 615
    const/16 v0, 0x500

    const/16 v1, 0x2d0

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v1, v2}, Lcom/methnm/coantec/moudle/Wifi;->iCameraRecSetParams(III)V

    .line 616
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->videoPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/moudle/Wifi;->iCameraRecStart(Ljava/lang/String;)V

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->has_timer_start:Z

    .line 622
    iput-boolean v3, p0, Lcom/methnm/coantec/moudle/Wifi;->Take_Capture_Flag:Z

    .line 624
    iput-boolean v3, p0, Lcom/methnm/coantec/moudle/Wifi;->isRecording:Z

    .line 626
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/methnm/coantec/moudle/Wifi$5;

    invoke-direct {v1, p0}, Lcom/methnm/coantec/moudle/Wifi$5;-><init>(Lcom/methnm/coantec/moudle/Wifi;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 646
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 647
    return-void
.end method

.method public startWifi()V
    .locals 1

    .prologue
    .line 137
    const v0, 0xd352

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/moudle/Wifi;->createSocket(I)V

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->has_first_get:Z

    .line 142
    invoke-direct {p0}, Lcom/methnm/coantec/moudle/Wifi;->startCapture()V

    .line 143
    invoke-direct {p0}, Lcom/methnm/coantec/moudle/Wifi;->getKeyStatus()V

    .line 144
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 700
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/Wifi;->isStop:Z

    .line 703
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/Wifi;->iCameraCloseSocket()I

    .line 704
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->socket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi;->socket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 710
    :cond_0
    return-void
.end method
