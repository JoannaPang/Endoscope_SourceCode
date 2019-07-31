.class public Lcom/methnm/coantec/activity/FileActivity;
.super Landroid/app/ListActivity;
.source "FileActivity.java"


# static fields
.field public static _currentPath:Ljava/lang/String;

.field public static _rootPath:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

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

.field private adapter:Landroid/widget/BaseAdapter;

.field private clickListener:Landroid/view/View$OnClickListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ShowToast"
        }
    .end annotation
.end field

.field private final createDirHandler:Landroid/os/Handler;

.field private create_btn:Landroid/widget/Button;

.field private exit_btn:Landroid/widget/Button;

.field private relative_back:Landroid/widget/RelativeLayout;

.field private save_btn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    invoke-static {}, Lcom/android/FileBrowser/FileUtil;->getSDPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/methnm/coantec/activity/FileActivity;->_rootPath:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/methnm/coantec/activity/FileActivity;->_rootPath:Ljava/lang/String;

    sput-object v0, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->_files:Ljava/util/List;

    .line 56
    const-string v0, "FileActivity"

    iput-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->TAG:Ljava/lang/String;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->adapter:Landroid/widget/BaseAdapter;

    .line 99
    new-instance v0, Lcom/methnm/coantec/activity/FileActivity$1;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/FileActivity$1;-><init>(Lcom/methnm/coantec/activity/FileActivity;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->clickListener:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/methnm/coantec/activity/FileActivity$2;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/FileActivity$2;-><init>(Lcom/methnm/coantec/activity/FileActivity;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->createDirHandler:Landroid/os/Handler;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/activity/FileActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->createDirHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1(Lcom/methnm/coantec/activity/FileActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/FileActivity;->setCurPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/methnm/coantec/activity/FileActivity;Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0, p1, p2}, Lcom/methnm/coantec/activity/FileActivity;->startIntent(Landroid/app/Activity;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$3(Lcom/methnm/coantec/activity/FileActivity;Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/FileActivity;->saveAdapterIsSetDefaultPath(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$4(Lcom/methnm/coantec/activity/FileActivity;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/methnm/coantec/activity/FileActivity;->goBack()V

    return-void
.end method

.method static synthetic access$5(Lcom/methnm/coantec/activity/FileActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/FileActivity;->viewFiles(Ljava/lang/String;)V

    return-void
.end method

.method private getCurPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 275
    const-string v2, "CurPath"

    .line 276
    const/4 v3, 0x0

    .line 275
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/FileActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 277
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "CurPath"

    sget-object v3, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "path":Ljava/lang/String;
    const-string v2, "FileActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "path=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-object v0
.end method

.method private goBack()V
    .locals 4

    .prologue
    .line 157
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "parentPath":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 161
    invoke-direct {p0, v1}, Lcom/methnm/coantec/activity/FileActivity;->viewFiles(Ljava/lang/String;)V

    .line 163
    const-string v2, "/storage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/methnm/coantec/activity/FileActivity;->relative_back:Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 170
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 81
    const v0, 0x7f09003b

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/FileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->_filePath:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/FileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->save_btn:Landroid/widget/Button;

    .line 83
    const v0, 0x7f09005c

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/FileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->exit_btn:Landroid/widget/Button;

    .line 84
    const v0, 0x7f09005a

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/FileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->create_btn:Landroid/widget/Button;

    .line 85
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/FileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->relative_back:Landroid/widget/RelativeLayout;

    .line 86
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->save_btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->exit_btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->create_btn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->relative_back:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/methnm/coantec/activity/FileActivity;->getCurPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/storage"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->relative_back:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->relative_back:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private openFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 223
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 225
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    return-void
.end method

.method private saveAdapterIsSetDefaultPath(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "b"    # Ljava/lang/Boolean;

    .prologue
    .line 284
    const-string v2, "IsSetDefaultPath"

    .line 285
    const/4 v3, 0x0

    .line 284
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/FileActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 286
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 287
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "IsSetDefaultPath"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 289
    return-void
.end method

.method private setCurPath(Ljava/lang/String;)V
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 260
    const-string v2, "CurPath"

    .line 261
    const/4 v3, 0x0

    .line 260
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/FileActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 262
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "CurPath"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 264
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    const-string v2, "FileActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "path=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void
.end method

.method private startIntent(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/FileActivity;->finish()V

    .line 250
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/FileActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    return-void
.end method

.method private viewFiles(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 204
    .line 203
    invoke-static {p0, p1}, Lcom/android/FileBrowser/FileActivityHelper;->getFiles(Landroid/app/Activity;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 205
    .local v0, "tmp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/FileBrowser/FileInfo;>;"
    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity;->_files:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 208
    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity;->_files:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 212
    sput-object p1, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    .line 213
    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity;->_filePath:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 193
    const/4 v1, -0x1

    if-ne v1, p2, :cond_0

    .line 194
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 195
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "CURRENTPATH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    const-string v1, "CURRENTPATH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/methnm/coantec/activity/FileActivity;->viewFiles(Ljava/lang/String;)V

    .line 199
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 185
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    .line 186
    const-class v0, Lcom/methnm/coantec/activity/MainActivity;

    invoke-direct {p0, p0, v0}, Lcom/methnm/coantec/activity/FileActivity;->startIntent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 187
    const-string v0, "FileActivity"

    const-string v1, "-----\u70b9\u51fb-----"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/FileActivity;->setContentView(I)V

    .line 66
    invoke-direct {p0}, Lcom/methnm/coantec/activity/FileActivity;->init()V

    .line 69
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/FileActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/FileActivity;->registerForContextMenu(Landroid/view/View;)V

    .line 72
    new-instance v0, Lcom/android/FileBrowser/FileAdapter;

    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity;->_files:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/android/FileBrowser/FileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->adapter:Landroid/widget/BaseAdapter;

    .line 73
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/FileActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 74
    invoke-direct {p0}, Lcom/methnm/coantec/activity/FileActivity;->getCurPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/methnm/coantec/activity/FileActivity;->viewFiles(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 139
    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity;->_files:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/FileBrowser/FileInfo;

    .line 141
    .local v0, "f":Lcom/android/FileBrowser/FileInfo;
    iget-boolean v1, v0, Lcom/android/FileBrowser/FileInfo;->IsDirectory:Z

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, v0, Lcom/android/FileBrowser/FileInfo;->Path:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/methnm/coantec/activity/FileActivity;->viewFiles(Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity;->relative_back:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 144
    const-string v1, "FileActivity"

    const-string v2, "ddddddddddddddddd"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v1, v0, Lcom/android/FileBrowser/FileInfo;->Path:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/methnm/coantec/activity/FileActivity;->openFile(Ljava/lang/String;)V

    .line 148
    const-string v1, "FileActivity"

    const-string v2, "fffffffffffffffff"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
