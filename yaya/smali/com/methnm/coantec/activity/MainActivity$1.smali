.class Lcom/methnm/coantec/activity/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity$1;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 955
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 970
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 959
    :pswitch_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$1;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    new-instance v1, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity$1;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    .line 960
    iget-object v3, p0, Lcom/methnm/coantec/activity/MainActivity$1;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v3, v3, Lcom/methnm/coantec/activity/MainActivity;->main_photoList:Ljava/util/List;

    iget-object v4, p0, Lcom/methnm/coantec/activity/MainActivity$1;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v4}, Lcom/methnm/coantec/activity/MainActivity;->access$0(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/GridView;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/GridView;)V

    .line 959
    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$1(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;)V

    .line 961
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$1;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$0(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$1;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$2(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 962
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$1;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "===333333333333333==="

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 955
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
