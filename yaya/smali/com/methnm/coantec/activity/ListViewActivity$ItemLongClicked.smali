.class Lcom/methnm/coantec/activity/ListViewActivity$ItemLongClicked;
.super Ljava/lang/Object;
.source "ListViewActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/ListViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemLongClicked"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/ListViewActivity;


# direct methods
.method private constructor <init>(Lcom/methnm/coantec/activity/ListViewActivity;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/methnm/coantec/activity/ListViewActivity$ItemLongClicked;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/methnm/coantec/activity/ListViewActivity;Lcom/methnm/coantec/activity/ListViewActivity$ItemLongClicked;)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/ListViewActivity$ItemLongClicked;-><init>(Lcom/methnm/coantec/activity/ListViewActivity;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 237
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/methnm/coantec/activity/ListViewActivity$ItemLongClicked;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    iget-object v2, v2, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    invoke-virtual {v2, p2}, Lcom/methnm/coantec/moudle/FileAdapter;->Lw_Get_Child(Landroid/view/View;)I

    move-result v0

    .line 238
    .local v0, "childlocation":I
    iget-object v2, p0, Lcom/methnm/coantec/activity/ListViewActivity$ItemLongClicked;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    iget-object v2, v2, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    invoke-virtual {v2, p2}, Lcom/methnm/coantec/moudle/FileAdapter;->Lw_Get_Group(Landroid/view/View;)I

    move-result v1

    .line 239
    .local v1, "grouplocation":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 240
    iget-object v2, p0, Lcom/methnm/coantec/activity/ListViewActivity$ItemLongClicked;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    invoke-static {v2, v0, v1}, Lcom/methnm/coantec/activity/ListViewActivity;->access$0(Lcom/methnm/coantec/activity/ListViewActivity;II)V

    .line 241
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
