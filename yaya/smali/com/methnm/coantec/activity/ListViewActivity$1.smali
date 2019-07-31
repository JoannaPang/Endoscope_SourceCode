.class Lcom/methnm/coantec/activity/ListViewActivity$1;
.super Ljava/lang/Object;
.source "ListViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/ListViewActivity;->Delete_Dialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/ListViewActivity;

.field private final synthetic val$childlocation:I

.field private final synthetic val$grouplocation:I


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/ListViewActivity;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    iput p2, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->val$grouplocation:I

    iput p3, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->val$childlocation:I

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/16 v4, 0x7d0

    .line 257
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    iget-object v1, v1, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    iget v2, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->val$grouplocation:I

    .line 258
    iget v3, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->val$childlocation:I

    .line 257
    invoke-virtual {v1, v2, v3}, Lcom/methnm/coantec/moudle/FileAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 259
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->deleteOnExit()V

    .line 264
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    invoke-virtual {v1}, Lcom/methnm/coantec/activity/ListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6587\u4ef6\u5220\u9664\u6210\u529f\uff01"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 270
    :goto_0
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    iget v2, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->val$grouplocation:I

    iget v3, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->val$childlocation:I

    invoke-static {v1, v2, v3}, Lcom/methnm/coantec/activity/ListViewActivity;->access$3(Lcom/methnm/coantec/activity/ListViewActivity;II)V

    .line 272
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    iget-object v1, v1, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    invoke-virtual {v1}, Lcom/methnm/coantec/moudle/FileAdapter;->notifyDataSetChanged()V

    .line 274
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    iget-object v1, v1, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    iget-object v1, v1, Lcom/methnm/coantec/activity/ListViewActivity;->child:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/ListViewActivity;->access$4(Lcom/methnm/coantec/activity/ListViewActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 277
    :cond_0
    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity$1;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    invoke-virtual {v1}, Lcom/methnm/coantec/activity/ListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u6587\u4ef6\u4e0d\u5b58\u5728"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 268
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
