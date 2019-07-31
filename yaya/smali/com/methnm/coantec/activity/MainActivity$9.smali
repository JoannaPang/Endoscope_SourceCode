.class Lcom/methnm/coantec/activity/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/MainActivity;->getPhotoVideoList(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/MainActivity;

.field private final synthetic val$photoPath:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/MainActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity$9;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iput-object p2, p0, Lcom/methnm/coantec/activity/MainActivity$9;->val$photoPath:Ljava/io/File;

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 932
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$9;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v0, v0, Lcom/methnm/coantec/activity/MainActivity;->main_photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 933
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$9;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$9;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$60(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/PathConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity$9;->val$photoPath:Ljava/io/File;

    invoke-virtual {v1, v2}, Lcom/methnm/coantec/moudle/PathConfig;->getImagesList(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/methnm/coantec/activity/MainActivity;->main_photoList:Ljava/util/List;

    .line 935
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$9;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 937
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$9;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$59(Lcom/methnm/coantec/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$9;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity$9;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v2}, Lcom/methnm/coantec/activity/MainActivity;->access$61(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$62(Lcom/methnm/coantec/activity/MainActivity;Ljava/io/File;)V

    .line 947
    :goto_0
    return-void

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$9;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/methnm/coantec/activity/MainActivity$9;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v3}, Lcom/methnm/coantec/activity/MainActivity;->access$61(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/DCIM/SOAY/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$62(Lcom/methnm/coantec/activity/MainActivity;Ljava/io/File;)V

    goto :goto_0
.end method
