.class Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$2;
.super Ljava/lang/Object;
.source "GridViewPhotosAdapter.java"

# interfaces
.implements Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$2;->this$0:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageLoader(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$2;->this$0:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    invoke-static {v1}, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->access$1(Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;)Landroid/widget/GridView;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/widget/GridView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 242
    .local v0, "mImageView":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    :cond_0
    return-void
.end method
