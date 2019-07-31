.class Lcom/methnm/coantec/moudle/Wifi$3;
.super Ljava/lang/Thread;
.source "Wifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/moudle/Wifi;->sendData()V
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
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Wifi$3;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    .line 423
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 425
    :goto_0
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Wifi$3;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v1}, Lcom/methnm/coantec/moudle/Wifi;->access$7(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    return-void

    .line 427
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Wifi$3;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v1}, Lcom/methnm/coantec/moudle/Wifi;->access$21(Lcom/methnm/coantec/moudle/Wifi;)V

    .line 428
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v0

    .line 431
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
