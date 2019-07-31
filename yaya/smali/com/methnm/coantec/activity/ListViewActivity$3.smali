.class Lcom/methnm/coantec/activity/ListViewActivity$3;
.super Ljava/lang/Object;
.source "ListViewActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/ListViewActivity;->initData(Ljava/io/File;)V
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
    iput-object p1, p0, Lcom/methnm/coantec/activity/ListViewActivity$3;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity$3;->this$0:Lcom/methnm/coantec/activity/ListViewActivity;

    sget v1, Lcom/methnm/coantec/activity/ListViewActivity;->index:I

    invoke-static {v0, p1, v1}, Lcom/methnm/coantec/activity/ListViewActivity;->access$5(Lcom/methnm/coantec/activity/ListViewActivity;Ljava/io/File;I)Z

    move-result v0

    return v0
.end method
