.class Lcom/android/FileBrowser/PasteFile$4$1;
.super Ljava/lang/Thread;
.source "PasteFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/FileBrowser/PasteFile$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/FileBrowser/PasteFile$4;

.field private final synthetic val$src:Ljava/io/File;

.field private final synthetic val$tar:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/android/FileBrowser/PasteFile$4;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/FileBrowser/PasteFile$4$1;->this$1:Lcom/android/FileBrowser/PasteFile$4;

    iput-object p2, p0, Lcom/android/FileBrowser/PasteFile$4$1;->val$src:Ljava/io/File;

    iput-object p3, p0, Lcom/android/FileBrowser/PasteFile$4$1;->val$tar:Ljava/io/File;

    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 163
    const-string v1, "MOVE"

    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile$4$1;->this$1:Lcom/android/FileBrowser/PasteFile$4;

    invoke-static {v2}, Lcom/android/FileBrowser/PasteFile$4;->access$0(Lcom/android/FileBrowser/PasteFile$4;)Lcom/android/FileBrowser/PasteFile;

    move-result-object v2

    invoke-static {v2}, Lcom/android/FileBrowser/PasteFile;->access$6(Lcom/android/FileBrowser/PasteFile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile$4$1;->val$src:Ljava/io/File;

    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile$4$1;->val$tar:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/android/FileBrowser/FileUtil;->moveFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile$4$1;->this$1:Lcom/android/FileBrowser/PasteFile$4;

    invoke-static {v1}, Lcom/android/FileBrowser/PasteFile$4;->access$0(Lcom/android/FileBrowser/PasteFile$4;)Lcom/android/FileBrowser/PasteFile;

    move-result-object v1

    invoke-static {v1}, Lcom/android/FileBrowser/PasteFile;->access$7(Lcom/android/FileBrowser/PasteFile;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 182
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "PasteFile"

    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile$4$1;->this$1:Lcom/android/FileBrowser/PasteFile$4;

    invoke-static {v2}, Lcom/android/FileBrowser/PasteFile$4;->access$0(Lcom/android/FileBrowser/PasteFile$4;)Lcom/android/FileBrowser/PasteFile;

    move-result-object v2

    const v3, 0x7f060028

    invoke-virtual {v2, v3}, Lcom/android/FileBrowser/PasteFile;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile$4$1;->this$1:Lcom/android/FileBrowser/PasteFile$4;

    invoke-static {v1}, Lcom/android/FileBrowser/PasteFile$4;->access$0(Lcom/android/FileBrowser/PasteFile$4;)Lcom/android/FileBrowser/PasteFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/FileBrowser/PasteFile;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 173
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile$4$1;->val$src:Ljava/io/File;

    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile$4$1;->val$tar:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/android/FileBrowser/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    .line 175
    .restart local v0    # "ex":Ljava/lang/Exception;
    const-string v1, "PasteFile"

    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile$4$1;->this$1:Lcom/android/FileBrowser/PasteFile$4;

    invoke-static {v2}, Lcom/android/FileBrowser/PasteFile$4;->access$0(Lcom/android/FileBrowser/PasteFile$4;)Lcom/android/FileBrowser/PasteFile;

    move-result-object v2

    const v3, 0x7f060027

    invoke-virtual {v2, v3}, Lcom/android/FileBrowser/PasteFile;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile$4$1;->this$1:Lcom/android/FileBrowser/PasteFile$4;

    invoke-static {v1}, Lcom/android/FileBrowser/PasteFile$4;->access$0(Lcom/android/FileBrowser/PasteFile$4;)Lcom/android/FileBrowser/PasteFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/FileBrowser/PasteFile;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
