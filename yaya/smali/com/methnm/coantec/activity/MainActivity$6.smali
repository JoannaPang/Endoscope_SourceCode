.class Lcom/methnm/coantec/activity/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity$6;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    .line 1066
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$6;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->startCaptureVideo()V

    .line 1073
    return-void
.end method
