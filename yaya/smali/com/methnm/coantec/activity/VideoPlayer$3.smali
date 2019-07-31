.class Lcom/methnm/coantec/activity/VideoPlayer$3;
.super Ljava/util/TimerTask;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/VideoPlayer;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/VideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/VideoPlayer$3;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    .line 224
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 229
    iget-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer$3;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-boolean v1, v1, Lcom/methnm/coantec/activity/VideoPlayer;->isHide:Z

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer$3;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/methnm/coantec/activity/VideoPlayer;->isHide:Z

    .line 231
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 232
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 233
    iget-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer$3;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-object v1, v1, Lcom/methnm/coantec/activity/VideoPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 235
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
