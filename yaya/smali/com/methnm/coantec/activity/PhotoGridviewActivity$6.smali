.class Lcom/methnm/coantec/activity/PhotoGridviewActivity$6;
.super Ljava/lang/Object;
.source "PhotoGridviewActivity.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/PhotoGridviewActivity;->initData(Ljava/io/File;)V
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
    iput-object p1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$6;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    .line 427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity$6;->this$0:Lcom/methnm/coantec/activity/PhotoGridviewActivity;

    sget v1, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->index:I

    invoke-static {v0, p1, v1}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->access$4(Lcom/methnm/coantec/activity/PhotoGridviewActivity;Ljava/io/File;I)Z

    move-result v0

    return v0
.end method
