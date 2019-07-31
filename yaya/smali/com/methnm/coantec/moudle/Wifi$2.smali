.class Lcom/methnm/coantec/moudle/Wifi$2;
.super Ljava/lang/Thread;
.source "Wifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/moudle/Wifi;->startCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/moudle/Wifi;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/moudle/Wifi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    .line 154
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 156
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4, v6}, Lcom/methnm/coantec/moudle/Wifi;->access$6(Lcom/methnm/coantec/moudle/Wifi;Z)V

    .line 159
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-virtual {v4}, Lcom/methnm/coantec/moudle/Wifi;->iCameraServerStart()I

    move-result v3

    .line 161
    .local v3, "ret":I
    :goto_0
    if-lez v3, :cond_1

    .line 171
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4}, Lcom/methnm/coantec/moudle/Wifi;->access$7(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 237
    return-void

    .line 162
    :cond_1
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-virtual {v4}, Lcom/methnm/coantec/moudle/Wifi;->iCameraServerStart()I

    move-result v3

    .line 164
    const-wide/16 v4, 0x64

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_2
    const/4 v0, 0x0

    .line 175
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-virtual {v4}, Lcom/methnm/coantec/moudle/Wifi;->iCameraGetFrame()[B

    move-result-object v1

    .line 177
    .local v1, "data":[B
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4}, Lcom/methnm/coantec/moudle/Wifi;->access$8(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4}, Lcom/methnm/coantec/moudle/Wifi;->access$9(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 182
    :cond_3
    if-eqz v1, :cond_4

    array-length v4, v1

    if-gtz v4, :cond_5

    .line 186
    :cond_4
    const-wide/16 v4, 0x5

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 192
    :goto_2
    sget v4, Lcom/methnm/coantec/moudle/Wifi;->count:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/methnm/coantec/moudle/Wifi;->count:I

    .line 194
    sget v4, Lcom/methnm/coantec/moudle/Wifi;->count:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    .line 195
    sput-boolean v6, Lcom/methnm/coantec/moudle/Wifi;->isConnect:Z

    goto :goto_1

    .line 187
    :catch_1
    move-exception v2

    .line 190
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 201
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_5
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4, v7}, Lcom/methnm/coantec/moudle/Wifi;->access$10(Lcom/methnm/coantec/moudle/Wifi;Z)V

    .line 203
    array-length v4, v1

    .line 202
    invoke-static {v1, v6, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 204
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4}, Lcom/methnm/coantec/moudle/Wifi;->access$11(Lcom/methnm/coantec/moudle/Wifi;)Lcom/methnm/coantec/moudle/SurfaceView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/methnm/coantec/moudle/SurfaceView;->SetBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    iput-object v1, v4, Lcom/methnm/coantec/moudle/Wifi;->bmp_data:[B

    .line 206
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4, v7}, Lcom/methnm/coantec/moudle/Wifi;->access$12(Lcom/methnm/coantec/moudle/Wifi;Z)V

    .line 207
    sput-boolean v7, Lcom/methnm/coantec/moudle/Wifi;->isConnect:Z

    .line 208
    sput v6, Lcom/methnm/coantec/moudle/Wifi;->count:I

    .line 223
    :goto_3
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4}, Lcom/methnm/coantec/moudle/Wifi;->access$13(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 224
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    sget-object v5, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v4, v5, v0}, Lcom/methnm/coantec/moudle/Wifi;->access$14(Lcom/methnm/coantec/moudle/Wifi;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 225
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4, v6}, Lcom/methnm/coantec/moudle/Wifi;->access$15(Lcom/methnm/coantec/moudle/Wifi;Z)V

    .line 228
    :cond_6
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4}, Lcom/methnm/coantec/moudle/Wifi;->access$16(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 229
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4}, Lcom/methnm/coantec/moudle/Wifi;->access$17(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 230
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4, v7}, Lcom/methnm/coantec/moudle/Wifi;->access$18(Lcom/methnm/coantec/moudle/Wifi;Z)V

    .line 231
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4}, Lcom/methnm/coantec/moudle/Wifi;->access$19(Lcom/methnm/coantec/moudle/Wifi;)Lcom/methnm/coantec/moudle/Timer1s;

    move-result-object v4

    invoke-virtual {v4}, Lcom/methnm/coantec/moudle/Timer1s;->start()V

    .line 234
    :cond_7
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    array-length v5, v1

    invoke-static {v4, v1, v5}, Lcom/methnm/coantec/moudle/Wifi;->access$20(Lcom/methnm/coantec/moudle/Wifi;[BI)V

    goto/16 :goto_1

    .line 211
    :cond_8
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4}, Lcom/methnm/coantec/moudle/Wifi;->access$9(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 212
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v4, v4, Lcom/methnm/coantec/moudle/Wifi;->bmp_data:[B

    array-length v4, v4

    if-nez v4, :cond_9

    .line 213
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4, v6}, Lcom/methnm/coantec/moudle/Wifi;->access$12(Lcom/methnm/coantec/moudle/Wifi;Z)V

    goto/16 :goto_1

    .line 219
    :cond_9
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v4, v4, Lcom/methnm/coantec/moudle/Wifi;->bmp_data:[B

    .line 220
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v5, v5, Lcom/methnm/coantec/moudle/Wifi;->bmp_data:[B

    array-length v5, v5

    .line 219
    invoke-static {v4, v6, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    iget-object v4, p0, Lcom/methnm/coantec/moudle/Wifi$2;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v4}, Lcom/methnm/coantec/moudle/Wifi;->access$11(Lcom/methnm/coantec/moudle/Wifi;)Lcom/methnm/coantec/moudle/SurfaceView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/methnm/coantec/moudle/SurfaceView;->SetBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_3
.end method
