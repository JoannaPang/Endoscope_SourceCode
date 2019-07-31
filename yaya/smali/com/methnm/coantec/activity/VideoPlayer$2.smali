.class Lcom/methnm/coantec/activity/VideoPlayer$2;
.super Ljava/lang/Thread;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/VideoPlayer;->Play()V
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
    iput-object p1, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    .line 174
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 176
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 177
    .local v1, "curDate":Ljava/util/Date;
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/methnm/coantec/activity/VideoPlayer;->oldtime:J

    .line 178
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    const-wide/16 v8, 0x0

    invoke-static {v7, v8, v9}, Lcom/methnm/coantec/activity/VideoPlayer;->access$8(Lcom/methnm/coantec/activity/VideoPlayer;D)V

    .line 179
    const/4 v6, 0x0

    .line 180
    .local v6, "old":I
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/methnm/coantec/activity/VideoPlayer;->isPlay:Z

    .line 181
    :goto_0
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v7}, Lcom/methnm/coantec/activity/VideoPlayer;->access$9(Lcom/methnm/coantec/activity/VideoPlayer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 218
    :goto_1
    return-void

    .line 182
    :cond_0
    new-instance v1, Ljava/util/Date;

    .end local v1    # "curDate":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v1, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 183
    .restart local v1    # "curDate":Ljava/util/Date;
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/methnm/coantec/activity/VideoPlayer;->curtime1:J

    .line 184
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-object v8, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-wide v8, v8, Lcom/methnm/coantec/activity/VideoPlayer;->offsettime:D

    iget-object v10, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-wide v10, v10, Lcom/methnm/coantec/activity/VideoPlayer;->curtime1:J

    iget-object v12, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-wide v12, v12, Lcom/methnm/coantec/activity/VideoPlayer;->oldtime:J

    sub-long/2addr v10, v12

    long-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-static {v7, v8, v9}, Lcom/methnm/coantec/activity/VideoPlayer;->access$8(Lcom/methnm/coantec/activity/VideoPlayer;D)V

    .line 185
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v7}, Lcom/methnm/coantec/activity/VideoPlayer;->access$1(Lcom/methnm/coantec/activity/VideoPlayer;)D

    move-result-wide v7

    double-to-int v5, v7

    .line 186
    .local v5, "newtime":I
    if-eq v5, v6, :cond_1

    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-boolean v7, v7, Lcom/methnm/coantec/activity/VideoPlayer;->isHide:Z

    if-nez v7, :cond_1

    .line 187
    move v6, v5

    .line 188
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 189
    .local v4, "msg":Landroid/os/Message;
    const/4 v7, 0x1

    iput v7, v4, Landroid/os/Message;->what:I

    .line 190
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-object v7, v7, Lcom/methnm/coantec/activity/VideoPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 192
    .end local v4    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v7}, Lcom/methnm/coantec/activity/VideoPlayer;->access$1(Lcom/methnm/coantec/activity/VideoPlayer;)D

    move-result-wide v7

    iget-object v9, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v9}, Lcom/methnm/coantec/activity/VideoPlayer;->access$10(Lcom/methnm/coantec/activity/VideoPlayer;)I

    move-result v9

    int-to-double v9, v9

    cmpl-double v7, v7, v9

    if-ltz v7, :cond_2

    .line 193
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/methnm/coantec/activity/VideoPlayer;->isOver:Z

    .line 194
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/methnm/coantec/activity/VideoPlayer;->access$5(Lcom/methnm/coantec/activity/VideoPlayer;Z)V

    .line 195
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/methnm/coantec/activity/VideoPlayer;->isPlay:Z

    goto :goto_1

    .line 200
    :cond_2
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-object v8, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v8}, Lcom/methnm/coantec/activity/VideoPlayer;->access$1(Lcom/methnm/coantec/activity/VideoPlayer;)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/methnm/coantec/activity/VideoPlayer;->iCameraGetOneSecond(D)[B

    move-result-object v2

    .line 201
    .local v2, "data":[B
    const/4 v7, 0x0

    .line 202
    array-length v8, v2

    .line 201
    invoke-static {v2, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v7}, Lcom/methnm/coantec/activity/VideoPlayer;->access$11(Lcom/methnm/coantec/activity/VideoPlayer;)Lcom/methnm/coantec/moudle/SurfaceView;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/methnm/coantec/moudle/SurfaceView;->SetBitmap(Landroid/graphics/Bitmap;)V

    .line 204
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-boolean v7, v7, Lcom/methnm/coantec/activity/VideoPlayer;->is_first:Z

    if-eqz v7, :cond_3

    .line 205
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/methnm/coantec/activity/VideoPlayer;->is_first:Z

    .line 206
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 207
    .restart local v4    # "msg":Landroid/os/Message;
    const/16 v7, 0xb

    iput v7, v4, Landroid/os/Message;->what:I

    .line 208
    iget-object v7, p0, Lcom/methnm/coantec/activity/VideoPlayer$2;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-object v7, v7, Lcom/methnm/coantec/activity/VideoPlayer;->handler:Landroid/os/Handler;

    invoke-virtual {v7, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 211
    .end local v4    # "msg":Landroid/os/Message;
    :cond_3
    const-wide/16 v7, 0x14

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 212
    :catch_0
    move-exception v3

    .line 214
    .local v3, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0
.end method
