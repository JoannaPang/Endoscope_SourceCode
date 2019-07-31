.class Lcom/android/FileBrowser/PasteFile$1;
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
    iput-object p1, p0, Lcom/android/FileBrowser/PasteFile$1;->this$0:Lcom/android/FileBrowser/PasteFile;

    .line 108
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 111
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/FileBrowser/PasteFile$1;->this$0:Lcom/android/FileBrowser/PasteFile;

    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile$1;->this$0:Lcom/android/FileBrowser/PasteFile;

    invoke-static {v1}, Lcom/android/FileBrowser/PasteFile;->access$0(Lcom/android/FileBrowser/PasteFile;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/FileBrowser/PasteFile;->access$1(Lcom/android/FileBrowser/PasteFile;Ljava/lang/String;)V

    .line 113
    :cond_0
    return-void
.end method
