.class Lcom/methnm/coantec/activity/Home$1;
.super Landroid/os/Handler;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/Home;
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
    iput-object p1, p0, Lcom/methnm/coantec/activity/Home$1;->this$0:Lcom/methnm/coantec/activity/Home;

    .line 80
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 85
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 87
    :pswitch_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/Home$1;->this$0:Lcom/methnm/coantec/activity/Home;

    invoke-static {v0}, Lcom/methnm/coantec/activity/Home;->access$0(Lcom/methnm/coantec/activity/Home;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 92
    :pswitch_1
    iget-object v0, p0, Lcom/methnm/coantec/activity/Home$1;->this$0:Lcom/methnm/coantec/activity/Home;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/Home;->access$1(Lcom/methnm/coantec/activity/Home;Z)V

    .line 93
    iget-object v0, p0, Lcom/methnm/coantec/activity/Home$1;->this$0:Lcom/methnm/coantec/activity/Home;

    const-class v1, Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/Home;->access$2(Lcom/methnm/coantec/activity/Home;Ljava/lang/Class;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
