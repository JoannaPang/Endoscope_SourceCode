.class Lcom/methnm/coantec/activity/VideoPlayer$1;
.super Landroid/os/Handler;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/VideoPlayer;
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
    iput-object p1, p0, Lcom/methnm/coantec/activity/VideoPlayer$1;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    .line 247
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/activity/VideoPlayer$1;)Lcom/methnm/coantec/activity/VideoPlayer;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$1;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 251
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 254
    :sswitch_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$1;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-boolean v0, v0, Lcom/methnm/coantec/activity/VideoPlayer;->isHide:Z

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$1;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->access$0(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/methnm/coantec/activity/VideoPlayer$1$1;

    invoke-direct {v1, p0}, Lcom/methnm/coantec/activity/VideoPlayer$1$1;-><init>(Lcom/methnm/coantec/activity/VideoPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 274
    :sswitch_1
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$1;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/methnm/coantec/activity/VideoPlayer;->isHide:Z

    .line 275
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$1;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->access$0(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/methnm/coantec/activity/VideoPlayer$1$2;

    invoke-direct {v1, p0}, Lcom/methnm/coantec/activity/VideoPlayer$1$2;-><init>(Lcom/methnm/coantec/activity/VideoPlayer$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 289
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$1;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->access$3(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$1;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->access$4(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 294
    :sswitch_2
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$1;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iput-boolean v1, v0, Lcom/methnm/coantec/activity/VideoPlayer;->isHide:Z

    .line 295
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$1;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->access$3(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$1;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->access$4(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 301
    :sswitch_3
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$1;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-virtual {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->Pause()V

    goto :goto_0

    .line 252
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0xb -> :sswitch_3
    .end sparse-switch
.end method
