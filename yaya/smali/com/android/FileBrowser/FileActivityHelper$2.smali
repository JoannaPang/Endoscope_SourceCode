.class Lcom/android/FileBrowser/FileActivityHelper$2;
.super Ljava/lang/Object;
.source "FileActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/FileBrowser/FileActivityHelper;->renameFile(Landroid/app/Activity;Ljava/io/File;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$f:Ljava/io/File;

.field private final synthetic val$hander:Landroid/os/Handler;

.field private final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Ljava/io/File;Landroid/widget/EditText;Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$f:Ljava/io/File;

    iput-object p2, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$text:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$hander:Landroid/os/Handler;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v8, 0x0

    .line 102
    iget-object v5, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$f:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 103
    .local v4, "path":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$text:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "newName":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$f:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 130
    :goto_0
    return-void

    .line 107
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 108
    iget-object v5, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$activity:Landroid/app/Activity;

    const v6, 0x7f06001a

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 109
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 112
    :cond_1
    invoke-static {v4, v3}, Lcom/android/FileBrowser/FileUtil;->combinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "fullFileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 115
    .local v2, "newFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    iget-object v5, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$activity:Landroid/app/Activity;

    const v6, 0x7f060019

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 119
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$f:Ljava/io/File;

    invoke-virtual {v5, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 120
    iget-object v5, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$hander:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 127
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 122
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/FileBrowser/FileActivityHelper$2;->val$activity:Landroid/app/Activity;

    const v6, 0x7f06001c

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 123
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
