.class Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$1;
.super Ljava/lang/Object;
.source "GridViewPhotosAdapter.java"

# interfaces
.implements Lcom/methnm/coantec/moudle/MyImageView$OnMeasureListener;


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
    iput-object p1, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$1;->this$0:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMeasureSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 223
    iget-object v0, p0, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter$1;->this$0:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    invoke-static {v0}, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->access$0(Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 224
    return-void
.end method
