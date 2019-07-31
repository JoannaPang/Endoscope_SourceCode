.class Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked$1;
.super Ljava/lang/Object;
.source "ListViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;->onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked$1;->this$1:Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;

    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 307
    return-void
.end method
