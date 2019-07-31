.class Lcom/android/FileBrowser/FileAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "FileAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/FileBrowser/FileAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/FileBrowser/FileAdapter;


# direct methods
.method private constructor <init>(Lcom/android/FileBrowser/FileAdapter;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/FileBrowser/FileAdapter$ViewHolder;->this$0:Lcom/android/FileBrowser/FileAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/FileBrowser/FileAdapter;Lcom/android/FileBrowser/FileAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/FileBrowser/FileAdapter$ViewHolder;-><init>(Lcom/android/FileBrowser/FileAdapter;)V

    return-void
.end method
