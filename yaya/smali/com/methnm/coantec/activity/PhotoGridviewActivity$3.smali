.class Lcom/methnm/coantec/activity/PhotoGridviewActivity$3;
.super Ljava/lang/Object;
.source "PhotoGridviewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/PhotoGridviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$3;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 190
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$3;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    invoke-static {v0, p3}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->access$2(Lcom/methnm/coantec/activity/PhotoGridviewActivity;I)V

    .line 191
    const/4 v0, 0x0

    return v0
.end method
