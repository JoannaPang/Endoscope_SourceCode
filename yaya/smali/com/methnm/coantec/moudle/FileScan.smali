.class public Lcom/methnm/coantec/moudle/FileScan;
.super Ljava/lang/Object;
.source "FileScan.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FileScan"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFileList(Ljava/io/File;Ljava/util/HashMap;)V
    .locals 6
    .param p1, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "fileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 43
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 47
    .local v2, "files":[Ljava/io/File;
    if-nez v2, :cond_1

    .line 79
    .end local v2    # "files":[Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 51
    .restart local v2    # "files":[Ljava/io/File;
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 53
    aget-object v4, v2, v3

    invoke-direct {p0, v4, p2}, Lcom/methnm/coantec/moudle/FileScan;->getFileList(Ljava/io/File;Ljava/util/HashMap;)V

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 63
    .end local v2    # "files":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_2
    const-string v4, "FileScan"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "filePath":Ljava/lang/String;
    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "fileName":Ljava/lang/String;
    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public getMusicListOnSys(Ljava/io/File;)Ljava/util/HashMap;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    const-string v1, "FileScan"

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 20
    .local v0, "fileList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1, v0}, Lcom/methnm/coantec/moudle/FileScan;->getFileList(Ljava/io/File;Ljava/util/HashMap;)V

    .line 22
    return-object v0
.end method
