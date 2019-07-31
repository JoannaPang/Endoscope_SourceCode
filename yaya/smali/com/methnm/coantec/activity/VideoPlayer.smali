.class public Lcom/methnm/coantec/activity/VideoPlayer;
.super Landroid/app/Activity;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;,
        Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;
    }
.end annotation


# static fields
.field protected static final HideTime:I = 0x2

.field protected static final Pause_Video:I = 0xb

.field protected static final ShowTime:I = 0x3

.field protected static final ShowVideo:I = 0x5

.field protected static final UpdateTime:I = 0x1

.field protected static final Update_Video:I = 0x9


# instance fields
.field private Coantec_Top_Timer:Ljava/util/Timer;

.field private Coantec_Top_TimerTask:Ljava/util/TimerTask;

.field private Coantec_VideoPlayer_Time_Layout:Landroid/widget/RelativeLayout;

.field private Coantec_VideoPlayer_Top_Layout:Landroid/widget/RelativeLayout;

.field private Coantec_Video_Back:Landroid/widget/ImageView;

.field private Coantec_Video_CurTime:Landroid/widget/TextView;

.field private Coantec_Video_PlayState:Landroid/widget/ImageView;

.field private Coantec_Video_State:Landroid/widget/ImageView;

.field private Coantec_Video_SurfaceViews:Lcom/methnm/coantec/moudle/SurfaceView;

.field private Coantec_Video_TimeBar:Landroid/widget/SeekBar;

.field private Coantec_Video_Title:Landroid/widget/TextView;

.field private Coantec_Video_TotalTime:Landroid/widget/TextView;

.field private CurVideoPath:Ljava/lang/String;

.field protected LastMicroSecond:J

.field protected Race_Current_Time:J

.field protected Tag:Ljava/lang/String;

.field protected ThreadTimeHide:Ljava/lang/Thread;

.field protected ThreadTimeShow:Ljava/lang/Thread;

.field protected TimeOffset:J

.field private cur_frame:I

.field private curtime:D

.field protected curtime1:J

.field handler:Landroid/os/Handler;

.field protected isHide:Z

.field protected isOver:Z

.field protected isPause:Z

.field protected isPlay:Z

.field private isRunning:Z

.field private isStop:Z

.field protected is_first:Z

.field protected offsettime:D

.field protected oldtime:J

.field private pausetime:D

.field protected recount_time:Z

.field private totalframe:I

.field private totaltime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "openal"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 71
    const-string v0, "icamera"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_SurfaceViews:Lcom/methnm/coantec/moudle/SurfaceView;

    .line 32
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_Title:Landroid/widget/TextView;

    .line 33
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_Back:Landroid/widget/ImageView;

    .line 34
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_PlayState:Landroid/widget/ImageView;

    .line 35
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_CurTime:Landroid/widget/TextView;

    .line 36
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_TotalTime:Landroid/widget/TextView;

    .line 37
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_TimeBar:Landroid/widget/SeekBar;

    .line 38
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_State:Landroid/widget/ImageView;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->CurVideoPath:Ljava/lang/String;

    .line 40
    iput-boolean v2, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isStop:Z

    .line 41
    iput v2, p0, Lcom/methnm/coantec/activity/VideoPlayer;->totaltime:I

    .line 42
    iput v2, p0, Lcom/methnm/coantec/activity/VideoPlayer;->totalframe:I

    .line 43
    iput v2, p0, Lcom/methnm/coantec/activity/VideoPlayer;->cur_frame:I

    .line 44
    iput-wide v3, p0, Lcom/methnm/coantec/activity/VideoPlayer;->pausetime:D

    .line 45
    iput-wide v3, p0, Lcom/methnm/coantec/activity/VideoPlayer;->curtime:D

    .line 46
    iput-wide v3, p0, Lcom/methnm/coantec/activity/VideoPlayer;->offsettime:D

    .line 48
    iput-boolean v2, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isOver:Z

    .line 49
    iput-wide v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->oldtime:J

    .line 50
    iput-wide v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->curtime1:J

    .line 51
    iput-boolean v2, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isHide:Z

    .line 52
    iput-boolean v5, p0, Lcom/methnm/coantec/activity/VideoPlayer;->is_first:Z

    .line 59
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->ThreadTimeHide:Ljava/lang/Thread;

    .line 60
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->ThreadTimeShow:Ljava/lang/Thread;

    .line 61
    iput-boolean v5, p0, Lcom/methnm/coantec/activity/VideoPlayer;->recount_time:Z

    .line 62
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_VideoPlayer_Top_Layout:Landroid/widget/RelativeLayout;

    .line 63
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_VideoPlayer_Time_Layout:Landroid/widget/RelativeLayout;

    .line 73
    iput-wide v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->TimeOffset:J

    .line 76
    iput-boolean v5, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isPause:Z

    .line 77
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Top_Timer:Ljava/util/Timer;

    .line 78
    iput-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Top_TimerTask:Ljava/util/TimerTask;

    .line 79
    iput-boolean v2, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isRunning:Z

    .line 80
    const-string v0, "VideoPlayer"

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Tag:Ljava/lang/String;

    .line 247
    new-instance v0, Lcom/methnm/coantec/activity/VideoPlayer$1;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/VideoPlayer$1;-><init>(Lcom/methnm/coantec/activity/VideoPlayer;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->handler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method private Init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 126
    const v0, 0x7f090064

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/methnm/coantec/moudle/SurfaceView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_SurfaceViews:Lcom/methnm/coantec/moudle/SurfaceView;

    .line 127
    const v0, 0x7f090068

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_Title:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f090067

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_Back:Landroid/widget/ImageView;

    .line 129
    const v0, 0x7f09006c

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_PlayState:Landroid/widget/ImageView;

    .line 130
    const v0, 0x7f090070

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_State:Landroid/widget/ImageView;

    .line 131
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_CurTime:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f09006e

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_TotalTime:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f09006f

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_TimeBar:Landroid/widget/SeekBar;

    .line 134
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_TimeBar:Landroid/widget/SeekBar;

    .line 135
    new-instance v1, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;-><init>(Lcom/methnm/coantec/activity/VideoPlayer;Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 136
    const v0, 0x7f090065

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_VideoPlayer_Top_Layout:Landroid/widget/RelativeLayout;

    .line 137
    const v0, 0x7f090069

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/VideoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_VideoPlayer_Time_Layout:Landroid/widget/RelativeLayout;

    .line 138
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_Back:Landroid/widget/ImageView;

    new-instance v1, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;-><init>(Lcom/methnm/coantec/activity/VideoPlayer;Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_State:Landroid/widget/ImageView;

    new-instance v1, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;-><init>(Lcom/methnm/coantec/activity/VideoPlayer;Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_CurTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/methnm/coantec/activity/VideoPlayer;)D
    .locals 2

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->curtime:D

    return-wide v0
.end method

.method static synthetic access$10(Lcom/methnm/coantec/activity/VideoPlayer;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->totaltime:I

    return v0
.end method

.method static synthetic access$11(Lcom/methnm/coantec/activity/VideoPlayer;)Lcom/methnm/coantec/moudle/SurfaceView;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_SurfaceViews:Lcom/methnm/coantec/moudle/SurfaceView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/SeekBar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_TimeBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$3(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_VideoPlayer_Top_Layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$4(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_VideoPlayer_Time_Layout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/methnm/coantec/activity/VideoPlayer;Z)V
    .locals 0

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isStop:Z

    return-void
.end method

.method static synthetic access$6(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_PlayState:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_State:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/methnm/coantec/activity/VideoPlayer;D)V
    .locals 0

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->curtime:D

    return-void
.end method

.method static synthetic access$9(Lcom/methnm/coantec/activity/VideoPlayer;)Z
    .locals 1

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isStop:Z

    return v0
.end method


# virtual methods
.method public Pause()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 343
    iget-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_PlayState:Landroid/widget/ImageView;

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 344
    iget-wide v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->curtime:D

    iput-wide v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->pausetime:D

    .line 345
    iget-wide v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->curtime:D

    iput-wide v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->offsettime:D

    .line 346
    iput-boolean v3, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isStop:Z

    .line 347
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isPlay:Z

    .line 348
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 349
    .local v0, "msg":Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 350
    iget-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 351
    return-void
.end method

.method public Play()V
    .locals 1

    .prologue
    .line 174
    new-instance v0, Lcom/methnm/coantec/activity/VideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/VideoPlayer$2;-><init>(Lcom/methnm/coantec/activity/VideoPlayer;)V

    .line 219
    invoke-virtual {v0}, Lcom/methnm/coantec/activity/VideoPlayer$2;->start()V

    .line 220
    return-void
.end method

.method public RePlay()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 354
    iput-boolean v3, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isStop:Z

    .line 355
    iget-boolean v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isOver:Z

    if-eqz v0, :cond_0

    .line 356
    iput-boolean v3, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isOver:Z

    .line 357
    iput-wide v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->offsettime:D

    .line 358
    iput-wide v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->curtime:D

    .line 359
    iput-wide v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->pausetime:D

    .line 361
    :cond_0
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->Play()V

    .line 362
    return-void
.end method

.method public cancelTimer()V
    .locals 1

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isRunning:Z

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isRunning:Z

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Top_Timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 245
    return-void
.end method

.method public native iCameraCloseFile()V
.end method

.method public native iCameraCloseVoice()V
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

.method public native iCameraOpenFile(Ljava/lang/String;)V
.end method

.method public native iCameraOpenVoice()V
.end method

.method public native iCameraWriteData([B)V
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 458
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 459
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->cancelTimer()V

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isStop:Z

    .line 461
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->iCameraCloseFile()V

    .line 462
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->finish()V

    .line 463
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x0

    .line 85
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->getWindow()Landroid/view/Window;

    move-result-object v8

    .line 86
    const/16 v9, 0x80

    .line 85
    invoke-virtual {v8, v9}, Landroid/view/Window;->addFlags(I)V

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v8, 0x7f03001b

    invoke-virtual {p0, v8}, Lcom/methnm/coantec/activity/VideoPlayer;->setContentView(I)V

    .line 89
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 90
    .local v5, "intent":Landroid/content/Intent;
    const-string v8, "path"

    invoke-virtual {v5, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->CurVideoPath:Ljava/lang/String;

    .line 91
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->CurVideoPath:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "name":Ljava/lang/String;
    invoke-direct {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->Init()V

    .line 97
    iget-object v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->CurVideoPath:Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/methnm/coantec/activity/VideoPlayer;->iCameraOpenFile(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->iCameraGetTotalTime()D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->totaltime:I

    .line 99
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->iCameraGetTotalFrame()I

    move-result v8

    iput v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->totaltime:I

    .line 102
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->Play()V

    .line 104
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->iCameraGetTotalFrame()I

    move-result v1

    .line 105
    .local v1, "countframe":I
    if-le v1, v10, :cond_0

    .line 106
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v12, :cond_1

    .line 115
    .end local v4    # "i":I
    :cond_0
    iget-object v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_TimeBar:Landroid/widget/SeekBar;

    iget v9, p0, Lcom/methnm/coantec/activity/VideoPlayer;->totaltime:I

    invoke-virtual {v8, v9}, Landroid/widget/SeekBar;->setMax(I)V

    .line 116
    iget-object v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_TimeBar:Landroid/widget/SeekBar;

    invoke-virtual {v8, v11}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 117
    const-string v8, "/%02d:%02d:%02d"

    new-array v9, v10, [Ljava/lang/Object;

    iget v10, p0, Lcom/methnm/coantec/activity/VideoPlayer;->totaltime:I

    div-int/lit16 v10, v10, 0xe10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    const/4 v10, 0x1

    .line 118
    iget v11, p0, Lcom/methnm/coantec/activity/VideoPlayer;->totaltime:I

    div-int/lit8 v11, v11, 0x3c

    rem-int/lit8 v11, v11, 0x3c

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    iget v10, p0, Lcom/methnm/coantec/activity/VideoPlayer;->totaltime:I

    rem-int/lit8 v10, v10, 0x3c

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    .line 117
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 119
    .local v7, "string":Ljava/lang/String;
    iget-object v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_TotalTime:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_CurTime:Landroid/widget/TextView;

    const-string v9, "00:00:00"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_Title:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->startTimer()V

    .line 123
    return-void

    .line 108
    .end local v7    # "string":Ljava/lang/String;
    .restart local v4    # "i":I
    :cond_1
    invoke-virtual {p0, v4}, Lcom/methnm/coantec/activity/VideoPlayer;->iCameraGetOneFrame(I)[B

    move-result-object v2

    .line 110
    .local v2, "data":[B
    array-length v8, v2

    .line 109
    invoke-static {v2, v11, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_SurfaceViews:Lcom/methnm/coantec/moudle/SurfaceView;

    invoke-virtual {v8, v0}, Lcom/methnm/coantec/moudle/SurfaceView;->SetBitmap(Landroid/graphics/Bitmap;)V

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 367
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 368
    .local v1, "count":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    ushr-int/lit8 v3, v6, 0x8

    .line 369
    .local v3, "pointerId":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 370
    .local v0, "action":I
    sparse-switch v0, :sswitch_data_0

    .line 413
    :goto_0
    return v9

    .line 374
    :sswitch_0
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    float-to-int v4, v6

    .line 375
    .local v4, "x":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v5, v6

    .line 376
    .local v5, "y":I
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->cancelTimer()V

    .line 377
    iget-boolean v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isHide:Z

    if-nez v6, :cond_1

    .line 378
    iput-boolean v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->recount_time:Z

    .line 379
    iget-boolean v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isPause:Z

    if-eqz v6, :cond_0

    .line 380
    iput-boolean v9, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isPlay:Z

    .line 381
    iput-boolean v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isStop:Z

    .line 382
    iget-object v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_PlayState:Landroid/widget/ImageView;

    const v7, 0x7f02000e

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 383
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->RePlay()V

    .line 384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->LastMicroSecond:J

    .line 385
    iget-object v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_State:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 386
    iput-boolean v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isPause:Z

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->Pause()V

    .line 389
    iput-boolean v9, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isStop:Z

    .line 390
    iput-boolean v8, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isPlay:Z

    .line 391
    iget-object v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_PlayState:Landroid/widget/ImageView;

    const v7, 0x7f02000c

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 392
    iget-wide v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Race_Current_Time:J

    iput-wide v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->TimeOffset:J

    .line 393
    iget-object v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Video_State:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    iput-boolean v9, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isPause:Z

    goto :goto_0

    .line 397
    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 398
    .local v2, "msg":Landroid/os/Message;
    const/4 v6, 0x3

    iput v6, v2, Landroid/os/Message;->what:I

    .line 399
    iget-object v6, p0, Lcom/methnm/coantec/activity/VideoPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 405
    .end local v2    # "msg":Landroid/os/Message;
    .end local v4    # "x":I
    .end local v5    # "y":I
    :sswitch_1
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/VideoPlayer;->startTimer()V

    .line 406
    iput-boolean v9, p0, Lcom/methnm/coantec/activity/VideoPlayer;->recount_time:Z

    goto :goto_0

    .line 370
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0x105 -> :sswitch_0
    .end sparse-switch
.end method

.method public startTimer()V
    .locals 4

    .prologue
    .line 223
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Top_Timer:Ljava/util/Timer;

    .line 224
    new-instance v0, Lcom/methnm/coantec/activity/VideoPlayer$3;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/VideoPlayer$3;-><init>(Lcom/methnm/coantec/activity/VideoPlayer;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Top_TimerTask:Ljava/util/TimerTask;

    .line 237
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Top_Timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer;->Coantec_Top_TimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/methnm/coantec/activity/VideoPlayer;->isRunning:Z

    .line 239
    return-void
.end method
