.class public Lcom/android/FileBrowser/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcFileContent(Lcom/android/FileBrowser/FileInfo;Ljava/io/File;)V
    .locals 7
    .param p0, "info"    # Lcom/android/FileBrowser/FileInfo;
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 44
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    iget-wide v3, p0, Lcom/android/FileBrowser/FileInfo;->Size:J

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/FileBrowser/FileInfo;->Size:J

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 49
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1

    array-length v3, v0

    if-lez v3, :cond_1

    .line 50
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_2

    .line 64
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 51
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v1    # "i":I
    :cond_2
    aget-object v2, v0, v1

    .line 52
    .local v2, "tmp":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 53
    iget v3, p0, Lcom/android/FileBrowser/FileInfo;->FolderCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/FileBrowser/FileInfo;->FolderCount:I

    .line 57
    :cond_3
    :goto_1
    iget v3, p0, Lcom/android/FileBrowser/FileInfo;->FileCount:I

    iget v4, p0, Lcom/android/FileBrowser/FileInfo;->FolderCount:I

    add-int/2addr v3, v4

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_1

    .line 60
    invoke-static {p0, v2}, Lcom/android/FileBrowser/FileUtil;->calcFileContent(Lcom/android/FileBrowser/FileInfo;Ljava/io/File;)V

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    iget v3, p0, Lcom/android/FileBrowser/FileInfo;->FileCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/FileBrowser/FileInfo;->FileCount:I

    goto :goto_1
.end method

.method public static combinPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    goto :goto_0
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 12
    .param p0, "src"    # Ljava/io/File;
    .param p1, "tar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 91
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    .local v5, "is":Ljava/io/InputStream;
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 93
    .local v7, "op":Ljava/io/OutputStream;
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 94
    .local v0, "bis":Ljava/io/BufferedInputStream;
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 95
    .local v1, "bos":Ljava/io/BufferedOutputStream;
    const/16 v8, 0x2000

    new-array v2, v8, [B

    .line 96
    .local v2, "bt":[B
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    .line 97
    .local v6, "len":I
    :goto_0
    const/4 v8, -0x1

    if-ne v6, v8, :cond_2

    .line 101
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 102
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 104
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "bt":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "len":I
    .end local v7    # "op":Ljava/io/OutputStream;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 105
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 106
    .local v3, "f":[Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 107
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v8, v3

    if-lt v4, v8, :cond_3

    .line 112
    .end local v3    # "f":[Ljava/io/File;
    .end local v4    # "i":I
    :cond_1
    const/4 v8, 0x1

    return v8

    .line 98
    .restart local v0    # "bis":Ljava/io/BufferedInputStream;
    .restart local v1    # "bos":Ljava/io/BufferedOutputStream;
    .restart local v2    # "bt":[B
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "len":I
    .restart local v7    # "op":Ljava/io/OutputStream;
    :cond_2
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 99
    invoke-virtual {v0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v6

    goto :goto_0

    .line 108
    .end local v0    # "bis":Ljava/io/BufferedInputStream;
    .end local v1    # "bos":Ljava/io/BufferedOutputStream;
    .end local v2    # "bt":[B
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "len":I
    .end local v7    # "op":Ljava/io/OutputStream;
    .restart local v3    # "f":[Ljava/io/File;
    .restart local v4    # "i":I
    :cond_3
    aget-object v8, v3, v4

    invoke-virtual {v8}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 109
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v11, v3, v4

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-static {v8, v9}, Lcom/android/FileBrowser/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 107
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 3
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 128
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 129
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 134
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 135
    return-void

    .line 130
    .restart local v0    # "files":[Ljava/io/File;
    .restart local v1    # "i":I
    :cond_1
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/android/FileBrowser/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 129
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static formetFileSize(J)Ljava/lang/String;
    .locals 7
    .param p0, "fileS"    # J

    .prologue
    .line 68
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 69
    .local v0, "df":Ljava/text/DecimalFormat;
    const-string v1, ""

    .line 70
    .local v1, "fileSizeString":Ljava/lang/String;
    const-wide/16 v2, 0x400

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " B"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 79
    :goto_0
    return-object v1

    .line 72
    :cond_0
    const-wide/32 v2, 0x100000

    cmp-long v2, p0, v2

    if-gez v2, :cond_1

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p0

    const-wide/high16 v5, 0x4090000000000000L    # 1024.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " K"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 74
    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x40000000

    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p0

    const-wide/high16 v5, 0x4130000000000000L    # 1048576.0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    long-to-double v3, p0

    const-wide/high16 v5, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileInfo(Ljava/io/File;)Lcom/android/FileBrowser/FileInfo;
    .locals 2
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 35
    new-instance v0, Lcom/android/FileBrowser/FileInfo;

    invoke-direct {v0}, Lcom/android/FileBrowser/FileInfo;-><init>()V

    .line 36
    .local v0, "info":Lcom/android/FileBrowser/FileInfo;
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/FileBrowser/FileInfo;->Name:Ljava/lang/String;

    .line 37
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/FileBrowser/FileInfo;->IsDirectory:Z

    .line 38
    invoke-static {v0, p0}, Lcom/android/FileBrowser/FileUtil;->calcFileContent(Lcom/android/FileBrowser/FileInfo;Ljava/io/File;)V

    .line 39
    return-object v0
.end method

.method public static getMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    const-string v1, ""

    .line 140
    .local v1, "type":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "end":Ljava/lang/String;
    const-string v2, "apk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    const-string v2, "application/vnd.android.package-archive"

    .line 159
    :goto_0
    return-object v2

    .line 144
    :cond_0
    const-string v2, "mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "avi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "3gp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 145
    const-string v2, "rmvb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    :cond_1
    const-string v1, "video"

    .line 158
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/*"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 159
    goto :goto_0

    .line 147
    :cond_2
    const-string v2, "m4a"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "mp3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "mid"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 148
    const-string v2, "xmf"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "ogg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "wav"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    :cond_3
    const-string v1, "audio"

    .line 150
    goto :goto_1

    :cond_4
    const-string v2, "jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 151
    const-string v2, "jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "bmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    :cond_5
    const-string v1, "image"

    .line 153
    goto :goto_1

    :cond_6
    const-string v2, "txt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "log"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 154
    :cond_7
    const-string v1, "text"

    .line 155
    goto/16 :goto_1

    .line 156
    :cond_8
    const-string v1, "*"

    goto/16 :goto_1
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 24
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 25
    const-string v2, "mounted"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 27
    .local v0, "sdDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 29
    .end local v0    # "sdDir":Ljava/io/File;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "/sdcard"

    goto :goto_0
.end method

.method public static moveFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 1
    .param p0, "src"    # Ljava/io/File;
    .param p1, "tar"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 117
    invoke-static {p0, p1}, Lcom/android/FileBrowser/FileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {p0}, Lcom/android/FileBrowser/FileUtil;->deleteFile(Ljava/io/File;)V

    .line 119
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
