.class Lcom/methnm/coantec/activity/PhotoGridviewActivity$GroupClicked;
.super Ljava/lang/Object;
.source "PhotoGridviewActivity.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/PhotoGridviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupClicked"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;


# direct methods
.method private constructor <init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)V
    .locals 0

    .prologue
    .line 373
    iput-object p1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$GroupClicked;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "arg0"    # Landroid/widget/ExpandableListView;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J

    .prologue
    .line 378
    const/4 v0, 0x1

    return v0
.end method
