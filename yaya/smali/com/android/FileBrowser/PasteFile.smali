.class public Lcom/android/FileBrowser/PasteFile;
.super Landroid/app/ListActivity;
.source "PasteFile.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _action:Ljava/lang/String;

.field private _currentPasteFilePath:Ljava/lang/String;

.field private _currentPath:Ljava/lang/String;

.field private _filePath:Landroid/widget/TextView;

.field private _files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/FileBrowser/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _rootPath:Ljava/lang/String;

.field private adapter:Landroid/widget/BaseAdapter;

.field private final createDirHandler:Landroid/os/Handler;

.field private fun_Cancel:Landroid/view/View$OnClickListener;

.field private fun_CreateDir:Landroid/view/View$OnClickListener;

.field private fun_Paste:Landroid/view/View$OnClickListener;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private final progressHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/FileBrowser/PasteFile;->_files:Ljava/util/List;

    .line 30
    invoke-static {}, Lcom/android/FileBrowser/FileUtil;->getSDPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/FileBrowser/PasteFile;->_rootPath:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/android/FileBrowser/PasteFile;->_rootPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/FileBrowser/PasteFile;->_currentPath:Ljava/lang/String;

    .line 32
    const-string v0, "PasteFile"

    iput-object v0, p0, Lcom/android/FileBrowser/PasteFile;->TAG:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/FileBrowser/PasteFile;->_currentPasteFilePath:Ljava/lang/String;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/android/FileBrowser/PasteFile;->_action:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/FileBrowser/PasteFile;->adapter:Landroid/widget/BaseAdapter;

    .line 108
    new-instance v0, Lcom/android/FileBrowser/PasteFile$1;

    invoke-direct {v0, p0}, Lcom/android/FileBrowser/PasteFile$1;-><init>(Lcom/android/FileBrowser/PasteFile;)V

    iput-object v0, p0, Lcom/android/FileBrowser/PasteFile;->createDirHandler:Landroid/os/Handler;

    .line 116
    new-instance v0, Lcom/android/FileBrowser/PasteFile$2;

    invoke-direct {v0, p0}, Lcom/android/FileBrowser/PasteFile$2;-><init>(Lcom/android/FileBrowser/PasteFile;)V

    iput-object v0, p0, Lcom/android/FileBrowser/PasteFile;->fun_CreateDir:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v0, Lcom/android/FileBrowser/PasteFile$3;

    invoke-direct {v0, p0}, Lcom/android/FileBrowser/PasteFile$3;-><init>(Lcom/android/FileBrowser/PasteFile;)V

    iput-object v0, p0, Lcom/android/FileBrowser/PasteFile;->progressHandler:Landroid/os/Handler;

    .line 141
    new-instance v0, Lcom/android/FileBrowser/PasteFile$4;

    invoke-direct {v0, p0}, Lcom/android/FileBrowser/PasteFile$4;-><init>(Lcom/android/FileBrowser/PasteFile;)V

    iput-object v0, p0, Lcom/android/FileBrowser/PasteFile;->fun_Paste:Landroid/view/View$OnClickListener;

    .line 187
    new-instance v0, Lcom/android/FileBrowser/PasteFile$5;

    invoke-direct {v0, p0}, Lcom/android/FileBrowser/PasteFile$5;-><init>(Lcom/android/FileBrowser/PasteFile;)V

    iput-object v0, p0, Lcom/android/FileBrowser/PasteFile;->fun_Cancel:Landroid/view/View$OnClickListener;

    .line 27
    return-void
.end method

.method static synthetic access$0(Lcom/android/FileBrowser/PasteFile;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/FileBrowser/PasteFile;->_currentPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/android/FileBrowser/PasteFile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/FileBrowser/PasteFile;->viewFiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/android/FileBrowser/PasteFile;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/FileBrowser/PasteFile;->createDirHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3(Lcom/android/FileBrowser/PasteFile;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/FileBrowser/PasteFile;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$4(Lcom/android/FileBrowser/PasteFile;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/FileBrowser/PasteFile;->_currentPasteFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/android/FileBrowser/PasteFile;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/FileBrowser/PasteFile;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$6(Lcom/android/FileBrowser/PasteFile;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/FileBrowser/PasteFile;->_action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/android/FileBrowser/PasteFile;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/FileBrowser/PasteFile;->progressHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private viewFiles(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-static {p0, p1}, Lcom/android/FileBrowser/FileActivityHelper;->getFiles(Landroid/app/Activity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 92
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/FileBrowser/FileInfo;>;"
    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile;->_files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 95
    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile;->_files:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 99
    iput-object p1, p0, Lcom/android/FileBrowser/PasteFile;->_currentPath:Ljava/lang/String;

    .line 100
    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile;->_filePath:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v1, 0x7f030008

    invoke-virtual {p0, v1}, Lcom/android/FileBrowser/PasteFile;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lcom/android/FileBrowser/PasteFile;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "CURRENTPASTEFILEPATH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/FileBrowser/PasteFile;->_currentPasteFilePath:Ljava/lang/String;

    .line 47
    const-string v1, "ACTION"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/FileBrowser/PasteFile;->_action:Ljava/lang/String;

    .line 49
    const v1, 0x7f09003b

    invoke-virtual {p0, v1}, Lcom/android/FileBrowser/PasteFile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/FileBrowser/PasteFile;->_filePath:Landroid/widget/TextView;

    .line 52
    const v1, 0x7f09003d

    invoke-virtual {p0, v1}, Lcom/android/FileBrowser/PasteFile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile;->fun_CreateDir:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    const v1, 0x7f09003e

    invoke-virtual {p0, v1}, Lcom/android/FileBrowser/PasteFile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile;->fun_Paste:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f09003f

    invoke-virtual {p0, v1}, Lcom/android/FileBrowser/PasteFile;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile;->fun_Cancel:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    new-instance v1, Lcom/android/FileBrowser/FileAdapter;

    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile;->_files:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/android/FileBrowser/FileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/android/FileBrowser/PasteFile;->adapter:Landroid/widget/BaseAdapter;

    .line 58
    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v1}, Lcom/android/FileBrowser/PasteFile;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile;->_currentPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/FileBrowser/PasteFile;->viewFiles(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 78
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 79
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/FileBrowser/PasteFile;->_currentPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "parentPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 82
    invoke-direct {p0, v1}, Lcom/android/FileBrowser/PasteFile;->viewFiles(Ljava/lang/String;)V

    .line 84
    :cond_0
    const/4 v2, 0x1

    .line 86
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "parentPath":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/FileBrowser/PasteFile;->_files:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/FileBrowser/FileInfo;

    .line 69
    .local v0, "f":Lcom/android/FileBrowser/FileInfo;
    iget-boolean v1, v0, Lcom/android/FileBrowser/FileInfo;->IsDirectory:Z

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, v0, Lcom/android/FileBrowser/FileInfo;->Path:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/FileBrowser/PasteFile;->viewFiles(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method
