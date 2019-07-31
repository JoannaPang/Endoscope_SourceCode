.class Lcom/android/FileBrowser/PasteFile$2;
.super Ljava/lang/Object;
.source "PasteFile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/FileBrowser/PasteFile$2;->this$0:Lcom/android/FileBrowser/PasteFile;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/FileBrowser/PasteFile$2;->this$0:Lcom/android/FileBrowser/PasteFile;

    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile$2;->this$0:Lcom/android/FileBrowser/PasteFile;

    invoke-static {v1}, Lcom/android/FileBrowser/PasteFile;->access$0(Lcom/android/FileBrowser/PasteFile;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile$2;->this$0:Lcom/android/FileBrowser/PasteFile;

    invoke-static {v2}, Lcom/android/FileBrowser/PasteFile;->access$2(Lcom/android/FileBrowser/PasteFile;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/FileBrowser/FileActivityHelper;->createDir(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    .line 119
    return-void
.end method
