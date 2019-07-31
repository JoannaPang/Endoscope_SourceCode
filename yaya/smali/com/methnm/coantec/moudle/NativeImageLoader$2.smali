.class Lcom/methnm/coantec/moudle/NativeImageLoader$2;
.super Landroid/os/Handler;
.source "NativeImageLoader.java"


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

.field private final synthetic val$mCallBack:Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/moudle/NativeImageLoader;Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$2;->this$0:Lcom/methnm/coantec/moudle/NativeImageLoader;

    iput-object p2, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$2;->val$mCallBack:Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;

    iput-object p3, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$2;->val$path:Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 94
    iget-object v1, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$2;->val$mCallBack:Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/methnm/coantec/moudle/NativeImageLoader$2;->val$path:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/methnm/coantec/moudle/NativeImageLoader$NativeImageCallBack;->onImageLoader(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 95
    return-void
.end method
