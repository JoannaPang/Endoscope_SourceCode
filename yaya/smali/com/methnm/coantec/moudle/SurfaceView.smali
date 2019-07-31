.class public Lcom/methnm/coantec/moudle/SurfaceView;
.super Landroid/view/SurfaceView;
.source "SurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private LastSecond1:I

.field private Second1:I

.field private Tag:Ljava/lang/String;

.field private VideoThread:Ljava/lang/Thread;

.field public bitmap:Landroid/graphics/Bitmap;

.field private count1:I

.field private has_new:Z

.field private height:I

.field private index:I

.field private isStop:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private m_canvas:Landroid/graphics/Canvas;

.field private m_holder:Landroid/view/SurfaceHolder;

.field private m_paint:Landroid/graphics/Paint;

.field private offset_x:I

.field private offset_y:I

.field private rect:Landroid/graphics/Rect;

.field private scale_multispy:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "openal"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    const-string v0, "icamera"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v2, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_holder:Landroid/view/SurfaceHolder;

    .line 23
    iput-object v2, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_canvas:Landroid/graphics/Canvas;

    .line 24
    iput-object v2, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_paint:Landroid/graphics/Paint;

    .line 25
    iput-object v2, p0, Lcom/methnm/coantec/moudle/SurfaceView;->bitmap:Landroid/graphics/Bitmap;

    .line 26
    iput-boolean v4, p0, Lcom/methnm/coantec/moudle/SurfaceView;->isStop:Z

    .line 29
    iput-object v2, p0, Lcom/methnm/coantec/moudle/SurfaceView;->VideoThread:Ljava/lang/Thread;

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->list:Ljava/util/List;

    .line 31
    iput v4, p0, Lcom/methnm/coantec/moudle/SurfaceView;->index:I

    .line 34
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->scale_multispy:F

    .line 36
    iput v4, p0, Lcom/methnm/coantec/moudle/SurfaceView;->offset_x:I

    .line 37
    iput v4, p0, Lcom/methnm/coantec/moudle/SurfaceView;->offset_y:I

    .line 50
    iput-boolean v4, p0, Lcom/methnm/coantec/moudle/SurfaceView;->has_new:Z

    .line 51
    iput-object v2, p0, Lcom/methnm/coantec/moudle/SurfaceView;->rect:Landroid/graphics/Rect;

    .line 53
    const-string v1, "SurfaceView"

    iput-object v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->Tag:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_holder:Landroid/view/SurfaceHolder;

    .line 59
    iget-object v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_holder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 60
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 62
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->width:I

    .line 63
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->height:I

    .line 64
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_paint:Landroid/graphics/Paint;

    .line 65
    iget-object v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_paint:Landroid/graphics/Paint;

    const v2, -0xffff01

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 67
    iget-object v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_holder:Landroid/view/SurfaceHolder;

    const/4 v2, -0x2

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 68
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SurfaceView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SurfaceView;->getHeight()I

    move-result v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->rect:Landroid/graphics/Rect;

    .line 70
    return-void
.end method


# virtual methods
.method public SetBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iget-object v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_holder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->rect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_canvas:Landroid/graphics/Canvas;

    .line 75
    iget-object v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_canvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_paint:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_canvas:Landroid/graphics/Canvas;

    iget v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->scale_multispy:F

    iget v2, p0, Lcom/methnm/coantec/moudle/SurfaceView;->scale_multispy:F

    iget v3, p0, Lcom/methnm/coantec/moudle/SurfaceView;->offset_x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/methnm/coantec/moudle/SurfaceView;->offset_y:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 80
    iget-object v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_canvas:Landroid/graphics/Canvas;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/methnm/coantec/moudle/SurfaceView;->rect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 81
    iget-object v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_holder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_holder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->m_canvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public Stop()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->isStop:Z

    .line 111
    return-void
.end method

.method public setNew(FII)V
    .locals 0
    .param p1, "scale_f"    # F
    .param p2, "offset_x"    # I
    .param p3, "offset_y"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/methnm/coantec/moudle/SurfaceView;->scale_multispy:F

    .line 120
    iput p2, p0, Lcom/methnm/coantec/moudle/SurfaceView;->offset_x:I

    .line 121
    iput p3, p0, Lcom/methnm/coantec/moudle/SurfaceView;->offset_y:I

    .line 123
    return-void
.end method

.method public setRect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SurfaceView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SurfaceView;->getHeight()I

    move-result v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->rect:Landroid/graphics/Rect;

    .line 115
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->isStop:Z

    .line 88
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 95
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->isStop:Z

    .line 101
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/methnm/coantec/moudle/SurfaceView;->isStop:Z

    .line 107
    return-void
.end method
