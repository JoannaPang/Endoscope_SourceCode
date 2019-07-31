.class Lcom/methnm/coantec/activity/PhotoGridviewActivity$1;
.super Ljava/lang/Object;
.source "PhotoGridviewActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/PhotoGridviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$1;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 485
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 498
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 489
    :pswitch_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$1;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    new-instance v1, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    iget-object v2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$1;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    .line 490
    sget-object v3, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->photoList:Ljava/util/List;

    iget-object v4, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$1;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    invoke-static {v4}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->access$0(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)Landroid/widget/GridView;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/GridView;)V

    .line 489
    iput-object v1, v0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->adapter:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    .line 491
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$1;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->access$0(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$1;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    iget-object v1, v1, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->adapter:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
