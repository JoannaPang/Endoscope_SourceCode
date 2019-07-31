.class Lcom/methnm/coantec/moudle/NativeImageLoader$3;
.super Ljava/lang/Object;
.source "NativeImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/moudle/NativeImageLoader;->loadNativeImage(Ljava/lang/String;Landroid/graphics/Point;Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/moudle/NativeImageLoader;

.field private final synthetic val$mHander:Landroid/os/Handler;

.field private final synthetic val$mPoint:Landroid/graphics/Point;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/moudle/NativeImageLoader;Ljava/lang/String;Landroid/graphics/Point;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->this$0:Lcom/methnm/coantec/moudle/NativeImageLoader;

    iput-object p2, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->val$mPoint:Landroid/graphics/Point;

    iput-object p4, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->val$mHander:Landroid/os/Handler;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 109
    iget-object v4, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->this$0:Lcom/methnm/coantec/moudle/NativeImageLoader;

    iget-object v5, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->val$path:Ljava/lang/String;

    iget-object v2, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->val$mPoint:Landroid/graphics/Point;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iget-object v6, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->val$mPoint:Landroid/graphics/Point;

    if-nez v6, :cond_1

    :goto_1
    invoke-static {v4, v5, v2, v3}, Lcom/methnm/coantec/moudle/NativeImageLoader;->access$0(Lcom/methnm/coantec/moudle/NativeImageLoader;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 110
    .local v0, "mBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->val$mHander:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 111
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    iget-object v2, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->val$mHander:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 115
    iget-object v2, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->this$0:Lcom/methnm/coantec/moudle/NativeImageLoader;

    iget-object v3, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->val$path:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/methnm/coantec/moudle/NativeImageLoader;->access$1(Lcom/methnm/coantec/moudle/NativeImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 116
    return-void

    .line 109
    .end local v0    # "mBitmap":Landroid/graphics/Bitmap;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->val$mPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$3;->val$mPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method
