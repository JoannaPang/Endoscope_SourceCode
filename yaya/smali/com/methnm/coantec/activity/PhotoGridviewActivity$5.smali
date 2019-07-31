.class Lcom/methnm/coantec/activity/PhotoGridviewActivity$5;
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


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$5;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 339
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 340
    return-void
.end method
