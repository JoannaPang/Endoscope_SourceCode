.class Lcom/android/FileBrowser/PasteFile$4;
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
    iput-object p1, p0, Lcom/android/FileBrowser/PasteFile$4;->this$0:Lcom/android/FileBrowser/PasteFile;

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/android/FileBrowser/PasteFile$4;)Lcom/android/FileBrowser/PasteFile;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/FileBrowser/PasteFile$4;->this$0:Lcom/android/FileBrowser/PasteFile;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 144
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/FileBrowser/PasteFile$4;->this$0:Lcom/android/FileBrowser/PasteFile;

    invoke-static {v3}, Lcom/android/FileBrowser/PasteFile;->access$4(Lcom/android/FileBrowser/PasteFile;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "src":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/FileBrowser/PasteFile$4;->this$0:Lcom/android/FileBrowser/PasteFile;

    invoke-virtual {v3}, Lcom/android/FileBrowser/PasteFile;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060029

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 147
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 184
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v3, p0, Lcom/android/FileBrowser/PasteFile$4;->this$0:Lcom/android/FileBrowser/PasteFile;

    invoke-static {v3}, Lcom/android/FileBrowser/PasteFile;->access$0(Lcom/android/FileBrowser/PasteFile;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/FileBrowser/FileUtil;->combinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "tar":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    iget-object v3, p0, Lcom/android/FileBrowser/PasteFile$4;->this$0:Lcom/android/FileBrowser/PasteFile;

    invoke-virtual {v3}, Lcom/android/FileBrowser/PasteFile;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060019

    invoke-static {v3, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 154
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/android/FileBrowser/PasteFile$4;->this$0:Lcom/android/FileBrowser/PasteFile;

    iget-object v4, p0, Lcom/android/FileBrowser/PasteFile$4;->this$0:Lcom/android/FileBrowser/PasteFile;

    const-string v5, ""

    const-string v6, "Please wait..."

    const/4 v7, 0x1

    invoke-static {v4, v5, v6, v7, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/FileBrowser/PasteFile;->access$5(Lcom/android/FileBrowser/PasteFile;Landroid/app/ProgressDialog;)V

    .line 160
    new-instance v3, Lcom/android/FileBrowser/PasteFile$4$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/FileBrowser/PasteFile$4$1;-><init>(Lcom/android/FileBrowser/PasteFile$4;Ljava/io/File;Ljava/io/File;)V

    .line 183
    invoke-virtual {v3}, Lcom/android/FileBrowser/PasteFile$4$1;->start()V

    goto :goto_0
.end method
