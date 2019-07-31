.class Lcom/methnm/coantec/activity/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity$2;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    .line 973
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 979
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$2;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$2;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$4(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity$2;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v2, v2, Lcom/methnm/coantec/activity/MainActivity;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$5(Lcom/methnm/coantec/activity/MainActivity;Landroid/graphics/Bitmap;)V

    .line 980
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$2;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$6(Lcom/methnm/coantec/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$2;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$7(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$2;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$8(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 988
    :goto_0
    return-void

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$2;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$9(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$2;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$8(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
