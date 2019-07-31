.class Lcom/android/FileBrowser/FileActivityHelper$1;
.super Ljava/lang/Object;
.source "FileActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/FileBrowser/FileActivityHelper;->createDir(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$hander:Landroid/os/Handler;

.field private final synthetic val$path:Ljava/lang/String;

.field private final synthetic val$text:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/FileBrowser/FileActivityHelper$1;->val$text:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/android/FileBrowser/FileActivityHelper$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/FileBrowser/FileActivityHelper$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/FileBrowser/FileActivityHelper$1;->val$hander:Landroid/os/Handler;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v7, 0x0

    .line 63
    iget-object v4, p0, Lcom/android/FileBrowser/FileActivityHelper$1;->val$text:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "newName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 65
    iget-object v4, p0, Lcom/android/FileBrowser/FileActivityHelper$1;->val$activity:Landroid/app/Activity;

    const v5, 0x7f06001a

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 66
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 86
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v4, p0, Lcom/android/FileBrowser/FileActivityHelper$1;->val$path:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/android/FileBrowser/FileUtil;->combinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "fullFileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v2, "newFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 72
    iget-object v4, p0, Lcom/android/FileBrowser/FileActivityHelper$1;->val$activity:Landroid/app/Activity;

    const v5, 0x7f060019

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 75
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    iget-object v4, p0, Lcom/android/FileBrowser/FileActivityHelper$1;->val$hander:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/FileBrowser/FileActivityHelper$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 83
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 78
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/FileBrowser/FileActivityHelper$1;->val$activity:Landroid/app/Activity;

    const v5, 0x7f06001b

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    .line 79
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
