.class public Lcom/methnm/coantec/moudle/SdCardUtils;
.super Ljava/lang/Object;
.source "SdCardUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFsWritable(Ljava/lang/String;)Z
    .locals 4
    .param p0, "dir"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    if-nez p0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return v2

    .line 69
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v3, ".keysharetestgzc"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    .local v1, "f":Ljava/io/File;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 86
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    const/4 v2, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static getAllExterSdcardPath()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v0, "SdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/methnm/coantec/moudle/SdCardUtils;->getFirstExternPath()Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "firstPath":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    .line 115
    .local v10, "runtime":Ljava/lang/Runtime;
    const-string v11, "mount"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 116
    .local v9, "proc":Ljava/lang/Process;
    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 117
    .local v5, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 119
    .local v6, "isr":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 120
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 153
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "proc":Ljava/lang/Process;
    .end local v10    # "runtime":Ljava/lang/Runtime;
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 155
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1
    return-object v0

    .line 123
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "proc":Ljava/lang/Process;
    .restart local v10    # "runtime":Ljava/lang/Runtime;
    :cond_2
    :try_start_1
    const-string v11, "secure"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 125
    const-string v11, "asec"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 127
    const-string v11, "media"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 129
    const-string v11, "system"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "cache"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "sys"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "data"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "tmpfs"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "shell"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "root"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 130
    const-string v11, "acct"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "proc"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "misc"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "obb"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 135
    const-string v11, "fat"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "fuse"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "ntfs"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 138
    :cond_3
    const-string v11, " "

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "columns":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v11, v2

    if-le v11, v13, :cond_0

    .line 141
    const/4 v11, 0x1

    aget-object v11, v2, v11

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    .line 142
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "sd"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 143
    const/4 v11, 0x1

    aget-object v11, v2, v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 147
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "proc":Ljava/lang/Process;
    .end local v10    # "runtime":Ljava/lang/Runtime;
    :catch_0
    move-exception v3

    .line 150
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public static getFirstExternPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSecondExternPath()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-static {}, Lcom/methnm/coantec/moudle/SdCardUtils;->getAllExterSdcardPath()Ljava/util/List;

    move-result-object v1

    .line 21
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 24
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v0, v2

    .line 36
    :goto_0
    return-object v0

    .line 24
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 26
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/methnm/coantec/moudle/SdCardUtils;->getFirstExternPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .end local v0    # "path":Ljava/lang/String;
    :cond_2
    move-object v0, v2

    .line 36
    goto :goto_0
.end method

.method public static isFirstSdcardMounted()Z
    .locals 2

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 46
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSecondSDcardMounted()Z
    .locals 3

    .prologue
    .line 51
    invoke-static {}, Lcom/methnm/coantec/moudle/SdCardUtils;->getSecondExternPath()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "sd2":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 54
    const/4 v1, 0x0

    .line 56
    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/methnm/coantec/moudle/SdCardUtils;->checkFsWritable(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method
