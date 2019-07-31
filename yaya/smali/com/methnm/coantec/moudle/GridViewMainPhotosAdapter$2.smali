.class Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$2;
.super Ljava/lang/Object;
.source "GridViewMainPhotosAdapter.java"

# interfaces
.implements Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$2;->this$0:Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoader(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v1, p0, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter$2;->this$0:Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;

    invoke-static {v1}, Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;->access$1(Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 118
    .local v0, "mImageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 124
    :cond_0
    return-void
.end method
