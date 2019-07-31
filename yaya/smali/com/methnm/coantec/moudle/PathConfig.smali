.class public Lcom/methnm/coantec/moudle/PathConfig;
.super Ljava/lang/Object;
.source "PathConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;
    }
.end annotation


# static fields
.field private static Tag:Ljava/lang/String;

.field public static sdcardItem:Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;


# instance fields
.field private context:Landroid/app/Activity;

.field private mSwitchConfig:Lcom/methnm/coantec/moudle/SwitchConfig;

.field private videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "PathConfig"

    sput-object v0, Lcom/methnm/coantec/moudle/PathConfig;->Tag:Ljava/lang/String;

    .line 31
    sget-object v0, Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;->BUILT_IN:Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;

    sput-object v0, Lcom/methnm/coantec/moudle/PathConfig;->sdcardItem:Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/PathConfig;->videoList:Ljava/util/List;

    .line 41
    iput-object p1, p0, Lcom/methnm/coantec/moudle/PathConfig;->context:Landroid/app/Activity;

    .line 42
    new-instance v0, Lcom/methnm/coantec/moudle/SwitchConfig;

    invoke-direct {v0, p1}, Lcom/methnm/coantec/moudle/SwitchConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/PathConfig;->mSwitchConfig:Lcom/methnm/coantec/moudle/SwitchConfig;

    .line 43
    iget-object v0, p0, Lcom/methnm/coantec/moudle/PathConfig;->mSwitchConfig:Lcom/methnm/coantec/moudle/SwitchConfig;

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/SwitchConfig;->readSdcardChoose()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v0, Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;->EXTERNAL:Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;

    sput-object v0, Lcom/methnm/coantec/moudle/PathConfig;->sdcardItem:Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    sget-object v0, Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;->BUILT_IN:Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;

    sput-object v0, Lcom/methnm/coantec/moudle/PathConfig;->sdcardItem:Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;

    goto :goto_0
.end method

.method private getCurrentSavePath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 362
    const-string v0, "mnt/sdcard/FLY_SZB"

    .line 363
    .local v0, "curPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/methnm/coantec/moudle/PathConfig;->context:Landroid/app/Activity;

    const-string v3, "SetCurrentPath"

    .line 364
    const/4 v4, 0x0

    .line 363
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 365
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "SetCurrentPath"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    sget-object v2, Lcom/methnm/coantec/moudle/PathConfig;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u83b7\u53d6\u70b9\u51fb\u4fdd\u5b58\u65f6\u7684\u8def\u5f84="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    return-object v0
.end method

.method private getVideoList(Ljava/io/File;)V
    .locals 10
    .param p1, "videoPath"    # Ljava/io/File;

    .prologue
    const/4 v9, -0x1

    .line 211
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v6, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 213
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v7, v1

    if-lez v7, :cond_0

    .line 214
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v7, v1

    if-lt v2, v7, :cond_1

    .line 250
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 215
    .restart local v2    # "i":I
    :cond_1
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 216
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 217
    const-string v8, ".avi"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 218
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 219
    const-string v8, ".3gp"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 220
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 221
    const-string v8, ".mp4"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 222
    :cond_2
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 223
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "lcPath":Ljava/lang/String;
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "absPath":Ljava/lang/String;
    const/4 v5, 0x0

    .line 226
    .local v5, "photopath":Ljava/lang/String;
    const-string v7, ".avi"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 227
    const-string v7, ".avi"

    const-string v8, ".jpg"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 233
    :cond_3
    :goto_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    .local v4, "photofile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 235
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 236
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v7, p0, Lcom/methnm/coantec/moudle/PathConfig;->videoList:Ljava/util/List;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .end local v0    # "absPath":Ljava/lang/String;
    .end local v3    # "lcPath":Ljava/lang/String;
    .end local v4    # "photofile":Ljava/io/File;
    .end local v5    # "photopath":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 228
    .restart local v0    # "absPath":Ljava/lang/String;
    .restart local v3    # "lcPath":Ljava/lang/String;
    .restart local v5    # "photopath":Ljava/lang/String;
    :cond_5
    const-string v7, ".mp4"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 229
    const-string v7, ".mp4"

    const-string v8, ".jpg"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 230
    goto :goto_1

    :cond_6
    const-string v7, ".3gp"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 231
    const-string v7, ".3gp"

    const-string v8, ".jpg"

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 243
    .end local v0    # "absPath":Ljava/lang/String;
    .end local v3    # "lcPath":Ljava/lang/String;
    .end local v5    # "photopath":Ljava/lang/String;
    :cond_7
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 244
    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/."

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 245
    aget-object v7, v1, v2

    invoke-direct {p0, v7}, Lcom/methnm/coantec/moudle/PathConfig;->getVideoList(Ljava/io/File;)V

    goto :goto_2
.end method

.method private path2uri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 253
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v9

    .line 256
    .local v9, "path":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 257
    invoke-static {v9}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 259
    iget-object v1, p0, Lcom/methnm/coantec/moudle/PathConfig;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 260
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 261
    .local v6, "buff":Ljava/lang/StringBuffer;
    const-string v1, "("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 262
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 264
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    .line 265
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    .line 263
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 266
    .local v7, "cur":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 267
    .local v8, "index":I
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    if-eqz v8, :cond_0

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "content://media/external/images/media/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 278
    .local v10, "uri_temp":Landroid/net/Uri;
    const-string v1, ""

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uri_temp is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    if-eqz v10, :cond_0

    .line 280
    move-object p1, v10

    .line 285
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "buff":Ljava/lang/StringBuffer;
    .end local v7    # "cur":Landroid/database/Cursor;
    .end local v8    # "index":I
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "uri_temp":Landroid/net/Uri;
    :cond_0
    return-object p1

    .line 268
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "buff":Ljava/lang/StringBuffer;
    .restart local v7    # "cur":Landroid/database/Cursor;
    .restart local v8    # "index":I
    .restart local v9    # "path":Ljava/lang/String;
    :cond_1
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 270
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 267
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0
.end method


# virtual methods
.method public deleteFiles(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 329
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 338
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 340
    :cond_1
    return-void

    .line 332
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 333
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 334
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 335
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/methnm/coantec/moudle/PathConfig;->deleteFiles(Ljava/io/File;)V

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getCurPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 349
    iget-object v2, p0, Lcom/methnm/coantec/moudle/PathConfig;->context:Landroid/app/Activity;

    const-string v3, "CurPath"

    .line 350
    const/4 v4, 0x0

    .line 349
    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 351
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "CurPath"

    invoke-static {}, Lcom/android/FileBrowser/FileUtil;->getSDPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "path":Ljava/lang/String;
    sget-object v2, Lcom/methnm/coantec/moudle/PathConfig;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "---------path=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-object v0
.end method

.method public getImagesList(Ljava/io/File;)Ljava/util/List;
    .locals 8
    .param p1, "photoPath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v3, "photoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/methnm/coantec/moudle/PathConfig$1;

    invoke-direct {v1, p0}, Lcom/methnm/coantec/moudle/PathConfig$1;-><init>(Lcom/methnm/coantec/moudle/PathConfig;)V

    .line 190
    .local v1, "filter":Ljava/io/FileFilter;
    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 191
    .local v2, "filterFiles":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 193
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_1

    .line 202
    :cond_0
    return-object v3

    .line 193
    :cond_1
    aget-object v0, v2, v4

    .line 195
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 197
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getRootPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    sget-object v1, Lcom/methnm/coantec/moudle/PathConfig;->sdcardItem:Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;

    sget-object v2, Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;->BUILT_IN:Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;

    if-ne v1, v2, :cond_1

    .line 100
    invoke-static {}, Lcom/methnm/coantec/moudle/SdCardUtils;->getFirstExternPath()Ljava/lang/String;

    move-result-object v0

    .local v0, "sdCardDir":Ljava/lang/String;
    :cond_0
    move-object v1, v0

    .line 107
    :goto_0
    return-object v1

    .line 102
    .end local v0    # "sdCardDir":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/methnm/coantec/moudle/SdCardUtils;->getSecondExternPath()Ljava/lang/String;

    move-result-object v0

    .line 103
    .restart local v0    # "sdCardDir":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 104
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSdcardAvilibleSize()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x400

    .line 290
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/PathConfig;->getRootPath()Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "sdCardDir":Ljava/lang/String;
    new-instance v5, Landroid/os/StatFs;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 293
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 295
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 297
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    div-long/2addr v6, v8

    div-long/2addr v6, v8

    long-to-int v6, v6

    return v6
.end method

.method public getSdcardTotalSize()I
    .locals 10

    .prologue
    const-wide/16 v8, 0x400

    .line 302
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/PathConfig;->getRootPath()Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "sdCardDir":Ljava/lang/String;
    new-instance v5, Landroid/os/StatFs;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 305
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 307
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockCount()I

    move-result v6

    int-to-long v0, v6

    .line 309
    .local v0, "blockCount":J
    mul-long v6, v0, v2

    div-long/2addr v6, v8

    div-long/2addr v6, v8

    long-to-int v6, v6

    return v6
.end method

.method public getVideoPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "parentFolder"    # Ljava/lang/String;
    .param p2, "videoName"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 66
    .local v0, "absolutePath":Ljava/lang/String;
    :try_start_0
    sget-object v6, Lcom/methnm/coantec/moudle/PathConfig;->sdcardItem:Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;

    sget-object v7, Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;->BUILT_IN:Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;

    if-ne v6, v7, :cond_3

    .line 67
    invoke-static {}, Lcom/methnm/coantec/moudle/SdCardUtils;->getFirstExternPath()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "sdCardDir":Ljava/lang/String;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/methnm/coantec/moudle/PathConfig;->getCurrentSavePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 77
    .local v5, "videoPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 81
    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v3, "saveVideo":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_2

    .line 83
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 85
    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .end local v2    # "folder":Ljava/io/File;
    .end local v3    # "saveVideo":Ljava/io/File;
    .end local v4    # "sdCardDir":Ljava/lang/String;
    .end local v5    # "videoPath":Ljava/lang/String;
    :goto_0
    move-object v6, v0

    .line 89
    :goto_1
    return-object v6

    .line 69
    :cond_3
    invoke-static {}, Lcom/methnm/coantec/moudle/SdCardUtils;->getSecondExternPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 70
    .restart local v4    # "sdCardDir":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 71
    const/4 v6, 0x0

    goto :goto_1

    .line 86
    .end local v4    # "sdCardDir":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getVideosList(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .param p1, "videoPath"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/methnm/coantec/moudle/PathConfig;->getVideoList(Ljava/io/File;)V

    .line 207
    iget-object v0, p0, Lcom/methnm/coantec/moudle/PathConfig;->videoList:Ljava/util/List;

    return-object v0
.end method

.method public savePhoto(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 11
    .param p1, "parentFolder"    # Ljava/lang/String;
    .param p2, "photoName"    # Ljava/lang/String;
    .param p3, "imagedata"    # [B

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/PathConfig;->getCurPath()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 127
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/methnm/coantec/moudle/PathConfig;->getCurrentSavePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "photoPath":Ljava/lang/String;
    sget-object v8, Lcom/methnm/coantec/moudle/PathConfig;->Tag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "photoPath="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "folder":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 133
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 136
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .local v6, "savePhoto":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 139
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 141
    :cond_1
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "absolutePath":Ljava/lang/String;
    const-string v8, "path"

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 148
    .local v3, "fout":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    array-length v9, p3

    invoke-virtual {v3, p3, v8, v9}, Ljava/io/FileOutputStream;->write([BII)V

    .line 149
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 151
    new-instance v4, Landroid/content/Intent;

    .line 152
    const-string v8, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 151
    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v4, "intent":Landroid/content/Intent;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v8

    .line 154
    invoke-direct {p0, v8}, Lcom/methnm/coantec/moudle/PathConfig;->path2uri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    .line 157
    .local v7, "uri":Landroid/net/Uri;
    const-string v8, "Display Activity"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "uri  "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {v4, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    iget-object v8, p0, Lcom/methnm/coantec/moudle/PathConfig;->context:Landroid/app/Activity;

    invoke-virtual {v8, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 168
    .end local v0    # "absolutePath":Ljava/lang/String;
    .end local v2    # "folder":Ljava/io/File;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "photoPath":Ljava/lang/String;
    .end local v6    # "savePhoto":Ljava/io/File;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSdcardItem(Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;)V
    .locals 0
    .param p1, "item"    # Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;

    .prologue
    .line 50
    sput-object p1, Lcom/methnm/coantec/moudle/PathConfig;->sdcardItem:Lcom/methnm/coantec/moudle/PathConfig$SdcardSelector;

    .line 51
    return-void
.end method

.method public sortVideoList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "photoList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v0, Lcom/methnm/coantec/moudle/PathConfig$2;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/moudle/PathConfig$2;-><init>(Lcom/methnm/coantec/moudle/PathConfig;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 324
    return-object p1
.end method
