.class Lcom/methnm/coantec/activity/AudioSelectActivity$1;
.super Ljava/lang/Object;
.source "AudioSelectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/AudioSelectActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/AudioSelectActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$1;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$1;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/AudioSelectActivity$1;->this$0:Lcom/methnm/coantec/activity/AudioSelectActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$4(Lcom/methnm/coantec/activity/AudioSelectActivity;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/AudioSelectActivity;->access$5(Lcom/methnm/coantec/activity/AudioSelectActivity;I)V

    .line 80
    return-void
.end method
