.class Lcom/android/FileBrowser/PasteFile$5;
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
    iput-object p1, p0, Lcom/android/FileBrowser/PasteFile$5;->this$0:Lcom/android/FileBrowser/PasteFile;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/FileBrowser/PasteFile$5;->this$0:Lcom/android/FileBrowser/PasteFile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/FileBrowser/PasteFile;->setResult(I)V

    .line 190
    iget-object v0, p0, Lcom/android/FileBrowser/PasteFile$5;->this$0:Lcom/android/FileBrowser/PasteFile;

    invoke-virtual {v0}, Lcom/android/FileBrowser/PasteFile;->finish()V

    .line 191
    return-void
.end method
