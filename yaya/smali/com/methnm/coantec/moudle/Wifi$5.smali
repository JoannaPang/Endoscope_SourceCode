.class Lcom/methnm/coantec/moudle/Wifi$5;
.super Ljava/lang/Object;
.source "Wifi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/moudle/Wifi;->startCaptureVideo()V
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
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Wifi$5;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 631
    :goto_0
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Wifi$5;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v1}, Lcom/methnm/coantec/moudle/Wifi;->access$31(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    return-void

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Wifi$5;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v1}, Lcom/methnm/coantec/moudle/Wifi;->access$32(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 634
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Wifi$5;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v2, p0, Lcom/methnm/coantec/moudle/Wifi$5;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v2, v2, Lcom/methnm/coantec/moudle/Wifi;->bmp_data:[B

    iget-object v3, p0, Lcom/methnm/coantec/moudle/Wifi$5;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v3, v3, Lcom/methnm/coantec/moudle/Wifi;->bmp_data:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/methnm/coantec/moudle/Wifi;->iCameraRecInsertData([BI)V

    .line 636
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Wifi$5;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/methnm/coantec/moudle/Wifi;->access$33(Lcom/methnm/coantec/moudle/Wifi;Z)V

    .line 639
    :cond_1
    const-wide/16 v1, 0x14

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 642
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
