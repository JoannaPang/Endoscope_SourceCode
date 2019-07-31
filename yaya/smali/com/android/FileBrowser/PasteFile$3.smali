.class Lcom/android/FileBrowser/PasteFile$3;
.super Landroid/os/Handler;
.source "PasteFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/FileBrowser/PasteFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/FileBrowser/PasteFile;


# direct methods
.method constructor <init>(Lcom/android/FileBrowser/PasteFile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/FileBrowser/PasteFile$3;->this$0:Lcom/android/FileBrowser/PasteFile;

    .line 125
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 129
    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile$3;->this$0:Lcom/android/FileBrowser/PasteFile;

    invoke-static {v2}, Lcom/android/FileBrowser/PasteFile;->access$3(Lcom/android/FileBrowser/PasteFile;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 131
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 133
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "CURRENTPATH"

    iget-object v3, p0, Lcom/android/FileBrowser/PasteFile$3;->this$0:Lcom/android/FileBrowser/PasteFile;

    invoke-static {v3}, Lcom/android/FileBrowser/PasteFile;->access$0(Lcom/android/FileBrowser/PasteFile;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 135
    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile$3;->this$0:Lcom/android/FileBrowser/PasteFile;

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/FileBrowser/PasteFile;->setResult(ILandroid/content/Intent;)V

    .line 137
    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile$3;->this$0:Lcom/android/FileBrowser/PasteFile;

    invoke-virtual {v2}, Lcom/android/FileBrowser/PasteFile;->finish()V

    .line 138
    return-void
.end method
