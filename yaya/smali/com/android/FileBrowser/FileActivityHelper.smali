.class public Lcom/android/FileBrowser/FileActivityHelper;
.super Ljava/lang/Object;
.source "FileActivityHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDir(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "hander"    # Landroid/os/Handler;

    .prologue
    const/4 v6, 0x0

    .line 57
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030005

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 59
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f090036

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 60
    .local v3, "text":Landroid/widget/EditText;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 61
    const v4, 0x7f06000e

    new-instance v5, Lcom/android/FileBrowser/FileActivityHelper$1;

    invoke-direct {v5, v3, p0, p1, p2}, Lcom/android/FileBrowser/FileActivityHelper$1;-><init>(Landroid/widget/EditText;Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 87
    const v5, 0x7f06000f

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 89
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v4, 0x7f060013

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 90
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 91
    return-void
.end method

.method public static getFiles(Landroid/app/Activity;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/FileBrowser/FileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 28
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 30
    .local v4, "files":[Ljava/io/File;
    if-nez v4, :cond_0

    .line 32
    const v6, 0x7f060018

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 31
    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 33
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 34
    const/4 v3, 0x0

    .line 52
    :goto_0
    return-object v3

    .line 37
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .local v3, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/FileBrowser/FileInfo;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-lt v5, v6, :cond_1

    .line 50
    new-instance v6, Lcom/android/FileBrowser/FileComparator;

    invoke-direct {v6}, Lcom/android/FileBrowser/FileComparator;-><init>()V

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 40
    :cond_1
    aget-object v1, v4, v5

    .line 41
    .local v1, "file":Ljava/io/File;
    new-instance v2, Lcom/android/FileBrowser/FileInfo;

    invoke-direct {v2}, Lcom/android/FileBrowser/FileInfo;-><init>()V

    .line 42
    .local v2, "fileInfo":Lcom/android/FileBrowser/FileInfo;
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/FileBrowser/FileInfo;->Name:Ljava/lang/String;

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v6

    iput-boolean v6, v2, Lcom/android/FileBrowser/FileInfo;->IsDirectory:Z

    .line 44
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/FileBrowser/FileInfo;->Path:Ljava/lang/String;

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/FileBrowser/FileInfo;->Size:J

    .line 46
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public static renameFile(Landroid/app/Activity;Ljava/io/File;Landroid/os/Handler;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "f"    # Ljava/io/File;
    .param p2, "hander"    # Landroid/os/Handler;

    .prologue
    const/4 v6, 0x0

    .line 95
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030009

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 97
    .local v2, "layout":Landroid/view/View;
    const v4, 0x7f090036

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 98
    .local v3, "text":Landroid/widget/EditText;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 99
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 100
    const v4, 0x7f06000e

    new-instance v5, Lcom/android/FileBrowser/FileActivityHelper$2;

    invoke-direct {v5, p1, v3, p0, p2}, Lcom/android/FileBrowser/FileActivityHelper$2;-><init>(Ljava/io/File;Landroid/widget/EditText;Landroid/app/Activity;Landroid/os/Handler;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 131
    const v5, 0x7f06000f

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 132
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 133
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v4, 0x7f060015

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 134
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 135
    return-void
.end method

.method public static viewFileInfo(Landroid/app/Activity;Ljava/io/File;)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 139
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 141
    .local v3, "layout":Landroid/view/View;
    invoke-static {p1}, Lcom/android/FileBrowser/FileUtil;->getFileInfo(Ljava/io/File;)Lcom/android/FileBrowser/FileInfo;

    move-result-object v2

    .line 143
    .local v2, "info":Lcom/android/FileBrowser/FileInfo;
    const v4, 0x7f090036

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v4, 0x7f090038

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .line 145
    invoke-virtual {v5}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v5

    .line 144
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    const v4, 0x7f090037

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 147
    iget-wide v5, v2, Lcom/android/FileBrowser/FileInfo;->Size:J

    invoke-static {v5, v6}, Lcom/android/FileBrowser/FileUtil;->formetFileSize(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    const v4, 0x7f090039

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Folder "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    iget v6, v2, Lcom/android/FileBrowser/FileInfo;->FolderCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", File "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/android/FileBrowser/FileInfo;->FileCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 149
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 154
    const v4, 0x7f06000e

    new-instance v5, Lcom/android/FileBrowser/FileActivityHelper$3;

    invoke-direct {v5}, Lcom/android/FileBrowser/FileActivityHelper$3;-><init>()V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 160
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const v4, 0x7f060017

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 161
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 162
    return-void
.end method
