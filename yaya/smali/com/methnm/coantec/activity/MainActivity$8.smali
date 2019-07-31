.class Lcom/methnm/coantec/activity/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/MainActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity$8;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$8;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "3333333333333333"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$8;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$59(Lcom/methnm/coantec/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$8;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "44444444444444"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$8;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "5555555555555"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
