.class public Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;
.super Landroid/widget/BaseAdapter;
.source "GridViewMainPhotosAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$PhotosViewHolder;
    }
.end annotation


# static fields
.field static main_mInflater:Landroid/view/LayoutInflater;


# instance fields
.field private context:Landroid/content/Context;

.field private index:I

.field private mGridView:Landroid/widget/GridView;

.field private mPoint:Landroid/graphics/Point;

.field main_list:Ljava/util/List;
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
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->main_mInflater:Landroid/view/LayoutInflater;

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

    iput-object v0, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->mPoint:Landroid/graphics/Point;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->context:Landroid/content/Context;

    .line 51
    iput v1, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->index:I

    .line 53
    iput-object p1, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->main_list:Ljava/util/List;

    .line 55
    iput-object p3, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->mGridView:Landroid/widget/GridView;

    .line 57
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sput-object v0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->main_mInflater:Landroid/view/LayoutInflater;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;)Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->mPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$1(Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->mGridView:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->main_list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->main_list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    iget-object v3, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->main_list:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    .local v1, "path":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 88
    new-instance v2, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$PhotosViewHolder;

    invoke-direct {v2}, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$PhotosViewHolder;-><init>()V

    .line 89
    .local v2, "viewHolder":Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$PhotosViewHolder;
    sget-object v3, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->main_mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030016

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 90
    const v3, 0x7f09005d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/methnm/coantec/moudle/MyImageView;

    iput-object v3, v2, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$PhotosViewHolder;->main_mImageView:Lcom/methnm/coantec/moudle/MyImageView;

    .line 93
    iget-object v3, v2, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$PhotosViewHolder;->main_mImageView:Lcom/methnm/coantec/moudle/MyImageView;

    new-instance v4, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$1;

    invoke-direct {v4, p0}, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$1;-><init>(Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;)V

    invoke-virtual {v3, v4}, Lcom/methnm/coantec/moudle/MyImageView;->setOnMeasureListener(Lcom/methnm/coantec/moudle/MyImageView$OnMeasureListener;)V

    .line 102
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 108
    :goto_0
    iget-object v3, v2, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$PhotosViewHolder;->main_mImageView:Lcom/methnm/coantec/moudle/MyImageView;

    invoke-virtual {v3, v1}, Lcom/methnm/coantec/moudle/MyImageView;->setTag(Ljava/lang/Object;)V

    .line 111
    invoke-static {}, Lcom/methnm/coantec/moudle/NativeImageLoader;->getInstance()Lcom/methnm/coantec/moudle/NativeImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->mPoint:Landroid/graphics/Point;

    new-instance v5, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$2;

    invoke-direct {v5, p0}, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$2;-><init>(Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;)V

    invoke-virtual {v3, v1, v4, v5}, Lcom/methnm/coantec/moudle/NativeImageLoader;->loadNativeImage(Ljava/lang/String;Landroid/graphics/Point;Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 127
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 129
    iget-object v3, v2, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$PhotosViewHolder;->main_mImageView:Lcom/methnm/coantec/moudle/MyImageView;

    invoke-virtual {v3, v0}, Lcom/methnm/coantec/moudle/MyImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    :goto_1
    return-object p2

    .line 105
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "viewHolder":Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$PhotosViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$PhotosViewHolder;

    .restart local v2    # "viewHolder":Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$PhotosViewHolder;
    goto :goto_0

    .line 133
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, v2, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$PhotosViewHolder;->main_mImageView:Lcom/methnm/coantec/moudle/MyImageView;

    const v4, 0x7f02001b

    invoke-virtual {v3, v4}, Lcom/methnm/coantec/moudle/MyImageView;->setImageResource(I)V

    goto :goto_1
.end method
