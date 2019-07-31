.class Lcom/methnm/coantec/activity/FileActivity$2;
.super Landroid/os/Handler;
.source "FileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/FileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/FileActivity;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/FileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/FileActivity$2;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    .line 234
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 237
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity$2;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    sget-object v1, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/FileActivity;->access$5(Lcom/methnm/coantec/activity/FileActivity;Ljava/lang/String;)V

    .line 239
    :cond_0
    return-void
.end method
