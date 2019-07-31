.class public Lcom/methnm/coantec/moudle/MyImageView;
.super Landroid/widget/ImageView;
.source "MyImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/moudle/MyImageView$OnMeasureListener;
    }
.end annotation


# instance fields
.field private onMeasureListener:Lcom/methnm/coantec/moudle/MyImageView$OnMeasureListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 32
    iget-object v0, p0, Lcom/methnm/coantec/moudle/MyImageView;->onMeasureListener:Lcom/methnm/coantec/moudle/MyImageView$OnMeasureListener;

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/methnm/coantec/moudle/MyImageView;->onMeasureListener:Lcom/methnm/coantec/moudle/MyImageView$OnMeasureListener;

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/MyImageView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/MyImageView;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/methnm/coantec/moudle/MyImageView$OnMeasureListener;->onMeasureSize(II)V

    .line 36
    :cond_0
    return-void
.end method

.method public setOnMeasureListener(Lcom/methnm/coantec/moudle/MyImageView$OnMeasureListener;)V
    .locals 0
    .param p1, "onMeasureListener"    # Lcom/methnm/coantec/moudle/MyImageView$OnMeasureListener;

    .prologue
    .line 13
    iput-object p1, p0, Lcom/methnm/coantec/moudle/MyImageView;->onMeasureListener:Lcom/methnm/coantec/moudle/MyImageView$OnMeasureListener;

    .line 14
    return-void
.end method
