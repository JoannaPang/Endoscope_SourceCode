.class Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/VideoPlayer;


# direct methods
.method private constructor <init>(Lcom/methnm/coantec/activity/VideoPlayer;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/methnm/coantec/activity/VideoPlayer;Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;)V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;-><init>(Lcom/methnm/coantec/activity/VideoPlayer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 147
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 149
    :sswitch_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-virtual {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->cancelTimer()V

    .line 150
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/VideoPlayer;->access$5(Lcom/methnm/coantec/activity/VideoPlayer;Z)V

    .line 152
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-virtual {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->iCameraCloseFile()V

    .line 153
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-virtual {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->finish()V

    goto :goto_0

    .line 157
    :sswitch_1
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iput-boolean v1, v0, Lcom/methnm/coantec/activity/VideoPlayer;->isPlay:Z

    .line 158
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v0, v3}, Lcom/methnm/coantec/activity/VideoPlayer;->access$5(Lcom/methnm/coantec/activity/VideoPlayer;Z)V

    .line 159
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->access$6(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 160
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-virtual {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->RePlay()V

    .line 161
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/methnm/coantec/activity/VideoPlayer;->LastMicroSecond:J

    .line 162
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->access$7(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iput-boolean v3, v0, Lcom/methnm/coantec/activity/VideoPlayer;->isPause:Z

    goto :goto_0

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090067 -> :sswitch_0
        0x7f090070 -> :sswitch_1
    .end sparse-switch
.end method
