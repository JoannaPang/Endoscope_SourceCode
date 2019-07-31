.class Lcom/methnm/coantec/activity/VideoPlayer$1$1;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/VideoPlayer$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/methnm/coantec/activity/VideoPlayer$1;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/VideoPlayer$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/VideoPlayer$1$1;->this$1:Lcom/methnm/coantec/activity/VideoPlayer$1;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 261
    iget-object v2, p0, Lcom/methnm/coantec/activity/VideoPlayer$1$1;->this$1:Lcom/methnm/coantec/activity/VideoPlayer$1;

    invoke-static {v2}, Lcom/methnm/coantec/activity/VideoPlayer$1;->access$0(Lcom/methnm/coantec/activity/VideoPlayer$1;)Lcom/methnm/coantec/activity/VideoPlayer;

    move-result-object v2

    invoke-static {v2}, Lcom/methnm/coantec/activity/VideoPlayer;->access$1(Lcom/methnm/coantec/activity/VideoPlayer;)D

    move-result-wide v2

    double-to-int v1, v2

    .line 263
    .local v1, "time":I
    iget-object v2, p0, Lcom/methnm/coantec/activity/VideoPlayer$1$1;->this$1:Lcom/methnm/coantec/activity/VideoPlayer$1;

    invoke-static {v2}, Lcom/methnm/coantec/activity/VideoPlayer$1;->access$0(Lcom/methnm/coantec/activity/VideoPlayer$1;)Lcom/methnm/coantec/activity/VideoPlayer;

    move-result-object v2

    invoke-static {v2}, Lcom/methnm/coantec/activity/VideoPlayer;->access$2(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 264
    const-string v2, "%02d:%02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 265
    div-int/lit16 v5, v1, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    div-int/lit8 v5, v1, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    rem-int/lit8 v5, v1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 264
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "bufString":Ljava/lang/String;
    iget-object v2, p0, Lcom/methnm/coantec/activity/VideoPlayer$1$1;->this$1:Lcom/methnm/coantec/activity/VideoPlayer$1;

    invoke-static {v2}, Lcom/methnm/coantec/activity/VideoPlayer$1;->access$0(Lcom/methnm/coantec/activity/VideoPlayer$1;)Lcom/methnm/coantec/activity/VideoPlayer;

    move-result-object v2

    invoke-static {v2}, Lcom/methnm/coantec/activity/VideoPlayer;->access$0(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    return-void
.end method
