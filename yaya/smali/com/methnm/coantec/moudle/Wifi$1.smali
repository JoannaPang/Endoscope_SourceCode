.class Lcom/methnm/coantec/moudle/Wifi$1;
.super Landroid/os/Handler;
.source "Wifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/moudle/Wifi;
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
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Wifi$1;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    .line 249
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 253
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 254
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_0
    :pswitch_0
    return-void

    .line 256
    :pswitch_1
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi$1;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v0}, Lcom/methnm/coantec/moudle/Wifi;->access$0(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi$1;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v0, v2}, Lcom/methnm/coantec/moudle/Wifi;->access$1(Lcom/methnm/coantec/moudle/Wifi;Z)V

    .line 258
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi$1;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v0}, Lcom/methnm/coantec/moudle/Wifi;->access$2(Lcom/methnm/coantec/moudle/Wifi;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    :goto_1
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi$1;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v0}, Lcom/methnm/coantec/moudle/Wifi;->access$3(Lcom/methnm/coantec/moudle/Wifi;)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi$1;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/methnm/coantec/moudle/Wifi;->access$1(Lcom/methnm/coantec/moudle/Wifi;Z)V

    .line 261
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi$1;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v0}, Lcom/methnm/coantec/moudle/Wifi;->access$2(Lcom/methnm/coantec/moudle/Wifi;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 272
    :pswitch_2
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi$1;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v0}, Lcom/methnm/coantec/moudle/Wifi;->access$4(Lcom/methnm/coantec/moudle/Wifi;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    .line 276
    :pswitch_3
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Wifi$1;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v0}, Lcom/methnm/coantec/moudle/Wifi;->access$5(Lcom/methnm/coantec/moudle/Wifi;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->performClick()Z

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
