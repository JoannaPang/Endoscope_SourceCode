.class Lcom/methnm/coantec/activity/Home$2;
.super Ljava/lang/Thread;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/Home;->startMain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/Home;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/Home$2;->this$0:Lcom/methnm/coantec/activity/Home;

    .line 59
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 61
    :goto_0
    iget-object v2, p0, Lcom/methnm/coantec/activity/Home$2;->this$0:Lcom/methnm/coantec/activity/Home;

    invoke-static {v2}, Lcom/methnm/coantec/activity/Home;->access$3(Lcom/methnm/coantec/activity/Home;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    return-void

    .line 63
    :cond_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 64
    iget-object v2, p0, Lcom/methnm/coantec/activity/Home$2;->this$0:Lcom/methnm/coantec/activity/Home;

    invoke-static {v2}, Lcom/methnm/coantec/activity/Home;->access$4(Lcom/methnm/coantec/activity/Home;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/methnm/coantec/activity/Home;->access$5(Lcom/methnm/coantec/activity/Home;I)V

    .line 65
    iget-object v2, p0, Lcom/methnm/coantec/activity/Home$2;->this$0:Lcom/methnm/coantec/activity/Home;

    invoke-static {v2}, Lcom/methnm/coantec/activity/Home;->access$4(Lcom/methnm/coantec/activity/Home;)I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 66
    iget-object v2, p0, Lcom/methnm/coantec/activity/Home$2;->this$0:Lcom/methnm/coantec/activity/Home;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/methnm/coantec/activity/Home;->access$1(Lcom/methnm/coantec/activity/Home;Z)V

    .line 68
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 69
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/methnm/coantec/activity/Home$2;->this$0:Lcom/methnm/coantec/activity/Home;

    invoke-static {v2}, Lcom/methnm/coantec/activity/Home;->access$4(Lcom/methnm/coantec/activity/Home;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 70
    iget-object v2, p0, Lcom/methnm/coantec/activity/Home$2;->this$0:Lcom/methnm/coantec/activity/Home;

    iget-object v2, v2, Lcom/methnm/coantec/activity/Home;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
