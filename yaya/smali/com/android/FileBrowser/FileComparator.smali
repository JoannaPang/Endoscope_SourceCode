.class public Lcom/android/FileBrowser/FileComparator;
.super Ljava/lang/Object;
.source "FileComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/FileBrowser/FileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/FileBrowser/FileInfo;Lcom/android/FileBrowser/FileInfo;)I
    .locals 2
    .param p1, "file1"    # Lcom/android/FileBrowser/FileInfo;
    .param p2, "file2"    # Lcom/android/FileBrowser/FileInfo;

    .prologue
    .line 11
    iget-boolean v0, p1, Lcom/android/FileBrowser/FileInfo;->IsDirectory:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/android/FileBrowser/FileInfo;->IsDirectory:Z

    if-nez v0, :cond_0

    .line 12
    const/16 v0, -0x3e8

    .line 17
    :goto_0
    return v0

    .line 13
    :cond_0
    iget-boolean v0, p1, Lcom/android/FileBrowser/FileInfo;->IsDirectory:Z

    if-nez v0, :cond_1

    iget-boolean v0, p2, Lcom/android/FileBrowser/FileInfo;->IsDirectory:Z

    if-eqz v0, :cond_1

    .line 14
    const/16 v0, 0x3e8

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p1, Lcom/android/FileBrowser/FileInfo;->Name:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/FileBrowser/FileInfo;->Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/android/FileBrowser/FileInfo;

    check-cast p2, Lcom/android/FileBrowser/FileInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/FileBrowser/FileComparator;->compare(Lcom/android/FileBrowser/FileInfo;Lcom/android/FileBrowser/FileInfo;)I

    move-result v0

    return v0
.end method
