.class Lcom/methnm/coantec/moudle/Images$1;
.super Ljava/lang/Object;
.source "Images.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/moudle/Images;->setupView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/moudle/Images;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/moudle/Images;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x2

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v6, 0x1

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 123
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v3, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v3, v3, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Lcom/methnm/coantec/moudle/Images;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 126
    return v6

    .line 85
    :pswitch_1
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v2, v2, Lcom/methnm/coantec/moudle/Images;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v3, v3, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 86
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v2, v2, Lcom/methnm/coantec/moudle/Images;->prev:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 87
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iput v6, v2, Lcom/methnm/coantec/moudle/Images;->mode:I

    goto :goto_0

    .line 91
    :pswitch_2
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v3, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    invoke-static {v3, p2}, Lcom/methnm/coantec/moudle/Images;->access$0(Lcom/methnm/coantec/moudle/Images;Landroid/view/MotionEvent;)F

    move-result v3

    iput v3, v2, Lcom/methnm/coantec/moudle/Images;->dist:F

    .line 93
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    invoke-static {v2, p2}, Lcom/methnm/coantec/moudle/Images;->access$0(Lcom/methnm/coantec/moudle/Images;Landroid/view/MotionEvent;)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v2, v2, Lcom/methnm/coantec/moudle/Images;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v3, v3, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 95
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v3, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v3, v3, Lcom/methnm/coantec/moudle/Images;->mid:Landroid/graphics/PointF;

    invoke-static {v2, v3, p2}, Lcom/methnm/coantec/moudle/Images;->access$1(Lcom/methnm/coantec/moudle/Images;Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 96
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iput v5, v2, Lcom/methnm/coantec/moudle/Images;->mode:I

    goto :goto_0

    .line 105
    :pswitch_3
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    const/4 v3, 0x0

    iput v3, v2, Lcom/methnm/coantec/moudle/Images;->mode:I

    .line 106
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v2, v2, Lcom/methnm/coantec/moudle/Images;->savedMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v3, v3, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 109
    :pswitch_4
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget v2, v2, Lcom/methnm/coantec/moudle/Images;->mode:I

    if-ne v2, v6, :cond_1

    .line 110
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v2, v2, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v3, v3, Lcom/methnm/coantec/moudle/Images;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 111
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v2, v2, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v4, v4, Lcom/methnm/coantec/moudle/Images;->prev:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 112
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v5, v5, Lcom/methnm/coantec/moudle/Images;->prev:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    .line 111
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget v2, v2, Lcom/methnm/coantec/moudle/Images;->mode:I

    if-ne v2, v5, :cond_0

    .line 114
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    invoke-static {v2, p2}, Lcom/methnm/coantec/moudle/Images;->access$0(Lcom/methnm/coantec/moudle/Images;Landroid/view/MotionEvent;)F

    move-result v0

    .line 115
    .local v0, "newDist":F
    cmpl-float v2, v0, v4

    if-lez v2, :cond_0

    .line 116
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v2, v2, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v3, v3, Lcom/methnm/coantec/moudle/Images;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 117
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget v2, v2, Lcom/methnm/coantec/moudle/Images;->dist:F

    div-float v1, v0, v2

    .line 118
    .local v1, "tScale":F
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v2, v2, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v3, v3, Lcom/methnm/coantec/moudle/Images;->mid:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/methnm/coantec/moudle/Images$1;->this$0:Lcom/methnm/coantec/moudle/Images;

    iget-object v4, v4, Lcom/methnm/coantec/moudle/Images;->mid:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto/16 :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
