.class public Lcom/methnm/coantec/moudle/NativeImageLoader;
.super Ljava/lang/Object;
.source "NativeImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/methnm/coantec/moudle/NativeImageLoader;


# instance fields
.field private mImageThreadPool:Ljava/util/concurrent/ExecutorService;

.field private mMemoryCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/methnm/coantec/moudle/NativeImageLoader;

    invoke-direct {v0}, Lcom/methnm/coantec/moudle/NativeImageLoader;-><init>()V

    sput-object v0, Lcom/methnm/coantec/moudle/NativeImageLoader;->mInstance:Lcom/methnm/coantec/moudle/NativeImageLoader;

    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/methnm/coantec/moudle/NativeImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;

    .line 30
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 33
    .local v1, "maxMemory":I
    div-int/lit8 v0, v1, 0x8

    .line 34
    .local v0, "cacheSize":I
    new-instance v2, Lcom/methnm/coantec/moudle/NativeImageLoader$1;

    invoke-direct {v2, p0, v0}, Lcom/methnm/coantec/moudle/NativeImageLoader$1;-><init>(Lcom/methnm/coantec/moudle/NativeImageLoader;I)V

    iput-object v2, p0, Lcom/methnm/coantec/moudle/NativeImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/moudle/NativeImageLoader;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/methnm/coantec/moudle/NativeImageLoader;->decodeThumbBitmapForFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/methnm/coantec/moudle/NativeImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/methnm/coantec/moudle/NativeImageLoader;->addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private addBitmapToMemoryCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 131
    invoke-virtual {p0, p1}, Lcom/methnm/coantec/moudle/NativeImageLoader;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 133
    iget-object v0, p0, Lcom/methnm/coantec/moudle/NativeImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    return-void
.end method

.method private computeScale(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I

    .prologue
    .line 194
    const/4 v3, 0x1

    .line 195
    .local v3, "inSampleSize":I
    if-eqz p2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v3

    .line 211
    .end local v3    # "inSampleSize":I
    .local v4, "inSampleSize":I
    :goto_0
    return v4

    .line 199
    .end local v4    # "inSampleSize":I
    .restart local v3    # "inSampleSize":I
    :cond_1
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 200
    .local v1, "bitmapWidth":I
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 203
    .local v0, "bitmapHeight":I
    if-gt v1, p2, :cond_2

    if-le v0, p2, :cond_3

    .line 205
    :cond_2
    int-to-float v6, v1

    int-to-float v7, p2

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 206
    .local v5, "widthScale":I
    int-to-float v6, v0

    int-to-float v7, p2

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 209
    .local v2, "heightScale":I
    if-ge v5, v2, :cond_4

    move v3, v5

    .end local v2    # "heightScale":I
    .end local v5    # "widthScale":I
    :cond_3
    :goto_1
    move v4, v3

    .line 211
    .end local v3    # "inSampleSize":I
    .restart local v4    # "inSampleSize":I
    goto :goto_0

    .end local v4    # "inSampleSize":I
    .restart local v2    # "heightScale":I
    .restart local v3    # "inSampleSize":I
    .restart local v5    # "widthScale":I
    :cond_4
    move v3, v2

    .line 209
    goto :goto_1
.end method

.method private decodeThumbBitmapForFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "viewWidth"    # I
    .param p3, "viewHeight"    # I

    .prologue
    .line 172
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 174
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 175
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 177
    invoke-direct {p0, v0, p2, p3}, Lcom/methnm/coantec/moudle/NativeImageLoader;->computeScale(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 180
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 182
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/methnm/coantec/moudle/NativeImageLoader;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/methnm/coantec/moudle/NativeImageLoader;->mInstance:Lcom/methnm/coantec/moudle/NativeImageLoader;

    return-object v0
.end method


# virtual methods
.method public CacelAllTasks()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/methnm/coantec/moudle/NativeImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 235
    return-void
.end method

.method public deleteBitmapToMemoryCache(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Lcom/methnm/coantec/moudle/NativeImageLoader;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/methnm/coantec/moudle/NativeImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_0
    return-void
.end method

.method public getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 159
    iget-object v0, p0, Lcom/methnm/coantec/moudle/NativeImageLoader;->mMemoryCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public loadNativeImage(IILjava/lang/String;Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "mCallBack"    # Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p4}, Lcom/methnm/coantec/moudle/NativeImageLoader;->loadNativeImage(Ljava/lang/String;Landroid/graphics/Point;Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadNativeImage(Ljava/lang/String;Landroid/graphics/Point;Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mPoint"    # Landroid/graphics/Point;
    .param p3, "mCallBack"    # Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/methnm/coantec/moudle/NativeImageLoader;->getBitmapFromMemCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 87
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lcom/methnm/coantec/moudle/NativeImageLoader$2;

    invoke-direct {v1, p0, p3, p1}, Lcom/methnm/coantec/moudle/NativeImageLoader$2;-><init>(Lcom/methnm/coantec/moudle/NativeImageLoader;Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;Ljava/lang/String;)V

    .line 100
    .local v1, "mHander":Landroid/os/Handler;
    if-nez v0, :cond_0

    .line 102
    iget-object v2, p0, Lcom/methnm/coantec/moudle/NativeImageLoader;->mImageThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/methnm/coantec/moudle/NativeImageLoader$3;

    invoke-direct {v3, p0, p1, p2, v1}, Lcom/methnm/coantec/moudle/NativeImageLoader$3;-><init>(Lcom/methnm/coantec/moudle/NativeImageLoader;Ljava/lang/String;Landroid/graphics/Point;Landroid/os/Handler;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 119
    :cond_0
    return-object v0
.end method
