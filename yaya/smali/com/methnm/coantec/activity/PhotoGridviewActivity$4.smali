.class Lcom/methnm/coantec/activity/PhotoGridviewActivity$4;
.super Ljava/lang/Object;
.source "PhotoGridviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/PhotoGridviewActivity;->Delete_Dialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$4;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    iput p2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$4;->val$position:I

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v3, 0x7d0

    .line 313
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->photoList:Ljava/util/List;

    iget v2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$4;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 317
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 318
    sget-object v1, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->photoList:Ljava/util/List;

    iget v2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$4;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 319
    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$4;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    invoke-virtual {v1}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6587\u4ef6\u5220\u9664\u6210\u529f\uff01"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$4;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    iget-object v1, v1, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->adapter:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    invoke-virtual {v1}, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->notifyDataSetChanged()V

    .line 329
    sget-object v1, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->photoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$4;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->access$3(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :cond_0
    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$4;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    invoke-virtual {v1}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 323
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
