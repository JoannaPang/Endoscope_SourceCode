.class public Lcom/android/FileBrowser/FileAdapter;
.super Landroid/widget/BaseAdapter;
.source "FileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/FileBrowser/FileAdapter$ViewHolder;
    }
.end annotation


# instance fields
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

.field private _inflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/FileBrowser/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "files":Ljava/util/List;, "Ljava/util/List<Lcom/android/FileBrowser/FileInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/android/FileBrowser/FileAdapter;->_files:Ljava/util/List;

    .line 30
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/FileBrowser/FileAdapter;->_inflater:Landroid/view/LayoutInflater;

    .line 31
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/FileBrowser/FileAdapter;->_files:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/FileBrowser/FileAdapter;->_files:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 48
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, "holder":Lcom/android/FileBrowser/FileAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/android/FileBrowser/FileAdapter;->_inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030007

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v1, Lcom/android/FileBrowser/FileAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/android/FileBrowser/FileAdapter$ViewHolder;
    invoke-direct {v1, p0, v4}, Lcom/android/FileBrowser/FileAdapter$ViewHolder;-><init>(Lcom/android/FileBrowser/FileAdapter;Lcom/android/FileBrowser/FileAdapter$ViewHolder;)V

    .line 60
    .restart local v1    # "holder":Lcom/android/FileBrowser/FileAdapter$ViewHolder;
    const v2, 0x7f090036

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/FileBrowser/FileAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f09003a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/FileBrowser/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    :goto_0
    iget-object v2, p0, Lcom/android/FileBrowser/FileAdapter;->_files:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/FileBrowser/FileInfo;

    .line 70
    .local v0, "f":Lcom/android/FileBrowser/FileInfo;
    iget-object v2, v1, Lcom/android/FileBrowser/FileAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/FileBrowser/FileInfo;->Name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v2, v1, Lcom/android/FileBrowser/FileAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/FileBrowser/FileInfo;->getIconResourceId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 73
    return-object p2

    .line 65
    .end local v0    # "f":Lcom/android/FileBrowser/FileInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/android/FileBrowser/FileAdapter$ViewHolder;
    check-cast v1, Lcom/android/FileBrowser/FileAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/android/FileBrowser/FileAdapter$ViewHolder;
    goto :goto_0
.end method
