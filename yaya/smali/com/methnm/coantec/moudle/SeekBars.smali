.class public Lcom/methnm/coantec/moudle/SeekBars;
.super Landroid/widget/SeekBar;
.source "SeekBars.java"


# instance fields
.field private mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mThumb:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/methnm/coantec/moudle/SeekBars;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/methnm/coantec/moudle/SeekBars;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 155
    :cond_0
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9
    .param p1, "w"    # I
    .param p2, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p3, "scale"    # F
    .param p4, "gap"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, p1

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getPaddingRight()I

    move-result v8

    sub-int v0, v7, v8

    .line 55
    .local v0, "available":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    .line 56
    .local v5, "thumbWidth":I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 57
    .local v3, "thumbHeight":I
    sub-int/2addr v0, v5

    .line 59
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getThumbOffset()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    .line 60
    int-to-float v7, v0

    mul-float/2addr v7, p3

    float-to-int v4, v7

    .line 62
    .local v4, "thumbPos":I
    const/high16 v7, -0x80000000

    if-ne p4, v7, :cond_0

    .line 63
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 64
    .local v2, "oldBounds":Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 65
    .local v6, "topBound":I
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 70
    .end local v2    # "oldBounds":Landroid/graphics/Rect;
    .local v1, "bottomBound":I
    :goto_0
    add-int v7, v4, v5

    invoke-virtual {p2, v4, v6, v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 71
    return-void

    .line 67
    .end local v1    # "bottomBound":I
    .end local v6    # "topBound":I
    :cond_0
    move v6, p4

    .line 68
    .restart local v6    # "topBound":I
    add-int v1, p4, v3

    .restart local v1    # "bottomBound":I
    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getHeight()I

    move-result v0

    .line 134
    .local v0, "Height":I
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getPaddingBottom()I

    move-result v6

    sub-int v6, v0, v6

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getPaddingTop()I

    move-result v7

    sub-int v2, v6, v7

    .line 135
    .local v2, "available":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v1, v6

    .line 137
    .local v1, "Y":I
    const/4 v4, 0x0

    .line 138
    .local v4, "progress":F
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getPaddingBottom()I

    move-result v6

    sub-int v6, v0, v6

    if-le v1, v6, :cond_0

    .line 139
    const/4 v5, 0x0

    .line 146
    .local v5, "scale":F
    :goto_0
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getMax()I

    move-result v3

    .line 147
    .local v3, "max":I
    int-to-float v6, v3

    mul-float v4, v5, v6

    .line 148
    float-to-int v6, v4

    invoke-virtual {p0, v6}, Lcom/methnm/coantec/moudle/SeekBars;->setProgress(I)V

    .line 149
    return-void

    .line 140
    .end local v3    # "max":I
    .end local v5    # "scale":F
    :cond_0
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getPaddingTop()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 141
    const/high16 v5, 0x3f800000    # 1.0f

    .line 142
    .restart local v5    # "scale":F
    goto :goto_0

    .line 143
    .end local v5    # "scale":F
    :cond_1
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getPaddingBottom()I

    move-result v6

    sub-int v6, v0, v6

    sub-int/2addr v6, v1

    int-to-float v6, v6

    int-to-float v7, v2

    div-float v5, v6, v7

    .restart local v5    # "scale":F
    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 75
    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 76
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 83
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/methnm/coantec/moudle/SeekBars;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onProgressRefresh(FZ)V
    .locals 3
    .param p1, "scale"    # F
    .param p2, "fromUser"    # Z

    .prologue
    .line 43
    iget-object v0, p0, Lcom/methnm/coantec/moudle/SeekBars;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 44
    .local v0, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getHeight()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/methnm/coantec/moudle/SeekBars;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 46
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->invalidate()V

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/methnm/coantec/moudle/SeekBars;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/methnm/coantec/moudle/SeekBars;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getProgress()I

    move-result v2

    invoke-interface {v1, p0, v2, p2}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 51
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 94
    invoke-super {p0, p2, p1, p3, p4}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    .line 95
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/methnm/coantec/moudle/SeekBars;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/methnm/coantec/moudle/SeekBars;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 34
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/methnm/coantec/moudle/SeekBars;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/methnm/coantec/moudle/SeekBars;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 40
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 99
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 129
    goto :goto_0

    .line 104
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/methnm/coantec/moudle/SeekBars;->setPressed(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->onStartTrackingTouch()V

    .line 106
    invoke-direct {p0, p1}, Lcom/methnm/coantec/moudle/SeekBars;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 107
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/methnm/coantec/moudle/SeekBars;->onSizeChanged(IIII)V

    goto :goto_1

    .line 111
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/methnm/coantec/moudle/SeekBars;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 112
    invoke-direct {p0}, Lcom/methnm/coantec/moudle/SeekBars;->attemptClaimDrag()V

    .line 113
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/methnm/coantec/moudle/SeekBars;->onSizeChanged(IIII)V

    goto :goto_1

    .line 117
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/methnm/coantec/moudle/SeekBars;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 118
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->onStopTrackingTouch()V

    .line 119
    invoke-virtual {p0, v0}, Lcom/methnm/coantec/moudle/SeekBars;->setPressed(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/methnm/coantec/moudle/SeekBars;->onSizeChanged(IIII)V

    goto :goto_1

    .line 124
    :pswitch_3
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->onStopTrackingTouch()V

    .line 125
    invoke-virtual {p0, v0}, Lcom/methnm/coantec/moudle/SeekBars;->setPressed(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/SeekBars;->getHeight()I

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v0}, Lcom/methnm/coantec/moudle/SeekBars;->onSizeChanged(IIII)V

    goto :goto_1

    .line 102
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/methnm/coantec/moudle/SeekBars;->mOnSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 28
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "thumb"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/methnm/coantec/moudle/SeekBars;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 89
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 90
    return-void
.end method
