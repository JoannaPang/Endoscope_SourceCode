.class Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/AudioSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;


# direct methods
.method private constructor <init>(Lcom/methnm/coantec/activity/AudioSelectActivity;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/methnm/coantec/activity/AudioSelectActivity;Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;)V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/AudioSelectActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    :pswitch_0
    return-void

    .line 91
    :pswitch_1
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    const-class v1, Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$0(Lcom/methnm/coantec/activity/AudioSelectActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 95
    :pswitch_2
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    const-class v1, Lcom/methnm/coantec/activity/ListViewActivity;

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$1(Lcom/methnm/coantec/activity/AudioSelectActivity;Ljava/lang/Class;I)V

    goto :goto_0

    .line 100
    :pswitch_3
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    const-class v1, Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$0(Lcom/methnm/coantec/activity/AudioSelectActivity;Ljava/lang/Class;)V

    goto :goto_0

    .line 104
    :pswitch_4
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$2(Lcom/methnm/coantec/activity/AudioSelectActivity;)V

    .line 105
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$3(Lcom/methnm/coantec/activity/AudioSelectActivity;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x7f090026
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
