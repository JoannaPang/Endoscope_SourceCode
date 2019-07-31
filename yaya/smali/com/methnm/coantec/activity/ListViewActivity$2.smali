.class Lcom/methnm/coantec/activity/ListViewActivity$2;
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


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/ListViewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/ListViewActivity$2;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 284
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 285
    return-void
.end method
