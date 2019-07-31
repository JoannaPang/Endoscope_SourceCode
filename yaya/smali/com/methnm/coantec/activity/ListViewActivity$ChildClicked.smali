.class Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;
.super Ljava/lang/Object;
.source "ListViewActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/ListViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildClicked"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/ListViewActivity;


# direct methods
.method private constructor <init>(Lcom/methnm/coantec/activity/ListViewActivity;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/methnm/coantec/activity/ListViewActivity;Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;)V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;-><init>(Lcom/methnm/coantec/activity/ListViewActivity;)V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 4
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 296
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    iget-object v1, v1, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    invoke-virtual {v1, p3, p4}, Lcom/methnm/coantec/moudle/FileAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 297
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 298
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    invoke-virtual {v2}, Lcom/methnm/coantec/activity/ListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 299
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 300
    const-string v2, "\u6743\u9650\u4e0d\u8db3"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 301
    const v2, 0x104000a

    .line 302
    new-instance v3, Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked$1;

    invoke-direct {v3, p0}, Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked$1;-><init>(Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;)V

    .line 301
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 314
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 309
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    invoke-static {v1, v0}, Lcom/methnm/coantec/activity/ListViewActivity;->access$1(Lcom/methnm/coantec/activity/ListViewActivity;Ljava/io/File;)V

    goto :goto_0

    .line 312
    :cond_1
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    invoke-static {v1, v0}, Lcom/methnm/coantec/activity/ListViewActivity;->access$2(Lcom/methnm/coantec/activity/ListViewActivity;Ljava/io/File;)V

    goto :goto_0
.end method
