.class public Lcom/methnm/coantec/moudle/Timer1s;
.super Ljava/lang/Object;
.source "Timer1s.java"


# static fields
.field private static final Set_Time:I = 0x4


# instance fields
.field protected Tag:Ljava/lang/String;

.field private Wifi_TimeTask:Ljava/util/TimerTask;

.field private Wifi_Timer:Ljava/util/Timer;

.field private action:Ljava/lang/String;

.field private has_start:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/methnm/coantec/moudle/Timer1s;->Wifi_Timer:Ljava/util/Timer;

    .line 20
    iput-object v1, p0, Lcom/methnm/coantec/moudle/Timer1s;->Wifi_TimeTask:Ljava/util/TimerTask;

    .line 21
    iput-object v1, p0, Lcom/methnm/coantec/moudle/Timer1s;->action:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/Timer1s;->has_start:Z

    .line 23
    const-string v0, "Timer500"

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Timer1s;->Tag:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/methnm/coantec/moudle/Timer1s;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Timer1s;->mHandler:Landroid/os/Handler;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/moudle/Timer1s;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/methnm/coantec/moudle/Timer1s;->sendBroad(I)V

    return-void
.end method

.method private sendBroad(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 35
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 36
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Timer1s;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 37
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Timer1s;->Wifi_Timer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Timer1s;->Wifi_Timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 56
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/Timer1s;->has_start:Z

    .line 57
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/methnm/coantec/moudle/Timer1s;->has_start:Z

    return v0
.end method

.method public start()V
    .locals 6

    .prologue
    .line 40
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Timer1s;->Wifi_Timer:Ljava/util/Timer;

    .line 41
    new-instance v0, Lcom/methnm/coantec/moudle/Timer1s$1;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/moudle/Timer1s$1;-><init>(Lcom/methnm/coantec/moudle/Timer1s;)V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Timer1s;->Wifi_TimeTask:Ljava/util/TimerTask;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/Timer1s;->has_start:Z

    .line 50
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Timer1s;->Wifi_Timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/methnm/coantec/moudle/Timer1s;->Wifi_TimeTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 51
    return-void
.end method
