.class Lcom/methnm/coantec/activity/AudioSelectActivity$2;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/AudioSelectActivity;->initPopupWndMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/AudioSelectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$2;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "item"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    packed-switch p3, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$2;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$6(Lcom/methnm/coantec/activity/AudioSelectActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u624b\u673a\u5b58\u50a8"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$2;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    invoke-static {v2}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$7(Lcom/methnm/coantec/activity/AudioSelectActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$2;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$8(Lcom/methnm/coantec/activity/AudioSelectActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$2;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$6(Lcom/methnm/coantec/activity/AudioSelectActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5916\u90e8sd\u5361"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$2;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    invoke-static {v2}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$7(Lcom/methnm/coantec/activity/AudioSelectActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$2;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$8(Lcom/methnm/coantec/activity/AudioSelectActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
