.class public Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewPhotosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$PhotosViewHolder;
    }
.end annotation


# static fields
.field static mInflater_c:Landroid/view/LayoutInflater;

.field static mInflater_g:Landroid/view/LayoutInflater;


# instance fields
.field private context:Landroid/content/Context;

.field private index:I

.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGridView:Landroid/widget/GridView;

.field private mPoint:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    sput-object v0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->mInflater_c:Landroid/view/LayoutInflater;

    .line 49
    sput-object v0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->mInflater_g:Landroid/view/LayoutInflater;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/GridView;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "mGridView"    # Landroid/widget/GridView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/widget/GridView;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->mPoint:Landroid/graphics/Point;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->context:Landroid/content/Context;

    .line 51
    iput v1, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->index:I

    .line 53
    iput-object p1, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->list:Ljava/util/List;

    .line 55
    iput-object p3, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->mGridView:Landroid/widget/GridView;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sput-object v0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->mInflater_c:Landroid/view/LayoutInflater;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->mPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1(Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method private getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 151
    const/4 v3, 0x0

    .line 152
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 153
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 155
    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 156
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 158
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 159
    .local v4, "h":I
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 160
    .local v6, "w":I
    div-int v2, v6, p2

    .line 161
    .local v2, "beWidth":I
    div-int v1, v4, p3

    .line 162
    .local v1, "beHeight":I
    const/4 v0, 0x1

    .line 163
    .local v0, "be":I
    if-ge v2, v1, :cond_1

    .line 164
    move v0, v2

    .line 168
    :goto_0
    if-gtz v0, :cond_0

    .line 169
    const/4 v0, 0x1

    .line 171
    :cond_0
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 172
    iget v7, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->index:I

    if-ne v7, v9, :cond_2

    .line 173
    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 174
    invoke-static {v3, p2, p3, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 184
    :goto_1
    return-object v3

    .line 166
    :cond_1
    move v0, v1

    goto :goto_0

    .line 176
    :cond_2
    iget v7, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->index:I

    if-ne v7, v8, :cond_3

    .line 177
    invoke-static {p1, v8}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 178
    invoke-static {v3, p2, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 179
    goto :goto_1

    .line 180
    :cond_3
    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 181
    invoke-static {v3, p2, p3, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 196
    iget-object v0, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 202
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 210
    iget-object v3, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 211
    .local v1, "path":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 212
    new-instance v2, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$PhotosViewHolder;

    invoke-direct {v2}, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$PhotosViewHolder;-><init>()V

    .line 213
    .local v2, "viewHolder":Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$PhotosViewHolder;
    sget-object v3, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->mInflater_c:Landroid/view/LayoutInflater;

    const v4, 0x7f03000d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 214
    const v3, 0x7f090044

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/methnm/coantec/moudle/MyImageView;

    iput-object v3, v2, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$PhotosViewHolder;->mImageView:Lcom/methnm/coantec/moudle/MyImageView;

    .line 217
    iget-object v3, v2, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$PhotosViewHolder;->mImageView:Lcom/methnm/coantec/moudle/MyImageView;

    new-instance v4, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$1;

    invoke-direct {v4, p0}, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$1;-><init>(Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;)V

    invoke-virtual {v3, v4}, Lcom/methnm/coantec/moudle/MyImageView;->setOnMeasureListener(Lcom/methnm/coantec/moudle/MyImageView$OnMeasureListener;)V

    .line 226
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 232
    :goto_0
    iget-object v3, v2, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$PhotosViewHolder;->mImageView:Lcom/methnm/coantec/moudle/MyImageView;

    invoke-virtual {v3, v1}, Lcom/methnm/coantec/moudle/MyImageView;->setTag(Ljava/lang/Object;)V

    .line 235
    invoke-static {}, Lcom/methnm/coantec/moudle/NativeImageLoader;->getInstance()Lcom/methnm/coantec/moudle/NativeImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->mPoint:Landroid/graphics/Point;

    new-instance v5, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$2;

    invoke-direct {v5, p0}, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$2;-><init>(Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;)V

    invoke-virtual {v3, v1, v4, v5}, Lcom/methnm/coantec/moudle/NativeImageLoader;->loadNativeImage(Ljava/lang/String;Landroid/graphics/Point;Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 251
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 253
    iget-object v3, v2, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$PhotosViewHolder;->mImageView:Lcom/methnm/coantec/moudle/MyImageView;

    invoke-virtual {v3, v0}, Lcom/methnm/coantec/moudle/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 262
    :cond_0
    return-object p2

    .line 229
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "viewHolder":Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$PhotosViewHolder;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$PhotosViewHolder;

    .restart local v2    # "viewHolder":Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$PhotosViewHolder;
    goto :goto_0
.end method
