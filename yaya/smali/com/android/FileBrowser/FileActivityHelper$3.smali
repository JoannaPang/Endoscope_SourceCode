.class Lcom/android/FileBrowser/FileActivityHelper$3;
.super Ljava/lang/Object;
.source "FileActivityHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/FileBrowser/FileActivityHelper;->viewFileInfo(Landroid/app/Activity;Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialoginterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 156
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 157
    return-void
.end method
