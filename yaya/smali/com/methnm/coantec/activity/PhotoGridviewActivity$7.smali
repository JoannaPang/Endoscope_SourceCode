.class Lcom/methnm/coantec/activity/PhotoGridviewActivity$7;
.super Ljava/lang/Object;
.source "PhotoGridviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getPhotoVideoList(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

.field private final synthetic val$photoPath:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$7;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    iput-object p2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$7;->val$photoPath:Ljava/io/File;

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 467
    sget-object v0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 468
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$7;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->access$5(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)Lcom/methnm/coantec/moudle/PathConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$7;->val$photoPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/methnm/coantec/moudle/PathConfig;->getImagesList(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->photoList:Ljava/util/List;

    .line 470
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$7;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->access$6(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 472
    sget-object v0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->photoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$7;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->access$3(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    :goto_0
    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$7;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->access$3(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
