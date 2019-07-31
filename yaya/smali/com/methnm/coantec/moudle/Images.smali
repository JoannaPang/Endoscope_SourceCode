.class public Lcom/methnm/coantec/moudle/Images;
.super Landroid/widget/ImageView;
.source "Images.java"


# static fields
.field static final DRAG:I = 0x1

.field static final MAX_SCALE:F = 15.0f

.field static final NONE:I = 0x0

.field static final ZOOM:I = 0x2


# instance fields
.field protected Tag:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private bitmap_scale_x:F

.field private bitmap_scale_y:F

.field private context:Landroid/content/Context;

.field dist:F

.field private dm:Landroid/util/DisplayMetrics;

.field matrix:Landroid/graphics/Matrix;

.field mid:Landroid/graphics/PointF;

.field minScaleR:F

.field mode:I

.field prev:Landroid/graphics/PointF;

.field savedMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Images;->savedMatrix:Landroid/graphics/Matrix;

    .line 21
    iput-object v3, p0, Lcom/methnm/coantec/moudle/Images;->bitmap:Landroid/graphics/Bitmap;

    .line 26
    iput v2, p0, Lcom/methnm/coantec/moudle/Images;->minScaleR:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/methnm/coantec/moudle/Images;->mode:I

    .line 42
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Images;->prev:Landroid/graphics/PointF;

    .line 43
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Images;->mid:Landroid/graphics/PointF;

    .line 44
    iput v2, p0, Lcom/methnm/coantec/moudle/Images;->dist:F

    .line 45
    iput v1, p0, Lcom/methnm/coantec/moudle/Images;->bitmap_scale_x:F

    .line 46
    iput v1, p0, Lcom/methnm/coantec/moudle/Images;->bitmap_scale_y:F

    .line 47
    iput-object v3, p0, Lcom/methnm/coantec/moudle/Images;->context:Landroid/content/Context;

    .line 48
    const-string v0, "Images"

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Images;->Tag:Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/Images;->setupView()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    .line 19
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Images;->savedMatrix:Landroid/graphics/Matrix;

    .line 21
    iput-object v3, p0, Lcom/methnm/coantec/moudle/Images;->bitmap:Landroid/graphics/Bitmap;

    .line 26
    iput v2, p0, Lcom/methnm/coantec/moudle/Images;->minScaleR:F

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/methnm/coantec/moudle/Images;->mode:I

    .line 42
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Images;->prev:Landroid/graphics/PointF;

    .line 43
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Images;->mid:Landroid/graphics/PointF;

    .line 44
    iput v2, p0, Lcom/methnm/coantec/moudle/Images;->dist:F

    .line 45
    iput v1, p0, Lcom/methnm/coantec/moudle/Images;->bitmap_scale_x:F

    .line 46
    iput v1, p0, Lcom/methnm/coantec/moudle/Images;->bitmap_scale_y:F

    .line 47
    iput-object v3, p0, Lcom/methnm/coantec/moudle/Images;->context:Landroid/content/Context;

    .line 48
    const-string v0, "Images"

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Images;->Tag:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Images;->context:Landroid/content/Context;

    .line 58
    return-void
.end method

.method private Center()V
    .locals 11

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 131
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 132
    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v7, p0, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v7}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 133
    iget-object v7, p0, Lcom/methnm/coantec/moudle/Images;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 134
    .local v6, "width":I
    iget-object v7, p0, Lcom/methnm/coantec/moudle/Images;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 135
    .local v0, "height":I
    iget-object v7, p0, Lcom/methnm/coantec/moudle/Images;->dm:Landroid/util/DisplayMetrics;

    iget v5, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 136
    .local v5, "screenWidth":I
    iget-object v7, p0, Lcom/methnm/coantec/moudle/Images;->dm:Landroid/util/DisplayMetrics;

    iget v4, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 137
    .local v4, "screenHeight":I
    if-ge v6, v5, :cond_0

    .line 139
    iget-object v7, p0, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/methnm/coantec/moudle/Images;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 140
    sub-int v7, v5, v6

    int-to-float v7, v7

    div-float v2, v7, v9

    .line 141
    .local v2, "offset_x":F
    sub-int v7, v4, v0

    int-to-float v7, v7

    div-float v3, v7, v9

    .line 142
    .local v3, "offset_y":F
    iget-object v7, p0, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/methnm/coantec/moudle/Images;->mid:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    div-int/lit8 v9, v5, 0x2

    int-to-float v9, v9

    sub-float/2addr v8, v9

    neg-int v9, v4

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    iget-object v10, p0, Lcom/methnm/coantec/moudle/Images;->mid:Landroid/graphics/PointF;

    iget v10, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 144
    .end local v2    # "offset_x":F
    .end local v3    # "offset_y":F
    :cond_0
    return-void
.end method

.method private CheckView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 197
    .local v0, "p":[F
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 198
    iget v1, p0, Lcom/methnm/coantec/moudle/Images;->mode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 199
    aget v1, v0, v4

    iget v2, p0, Lcom/methnm/coantec/moudle/Images;->minScaleR:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/methnm/coantec/moudle/Images;->minScaleR:F

    iget v3, p0, Lcom/methnm/coantec/moudle/Images;->minScaleR:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 203
    :cond_0
    aget v1, v0, v4

    const/high16 v2, 0x41700000    # 15.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 205
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/methnm/coantec/moudle/Images;->savedMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 208
    :cond_1
    invoke-virtual {p0, v5, v5}, Lcom/methnm/coantec/moudle/Images;->center(ZZ)V

    .line 209
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/moudle/Images;Landroid/view/MotionEvent;)F
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/methnm/coantec/moudle/Images;->spacing(Landroid/view/MotionEvent;)F

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/methnm/coantec/moudle/Images;Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Lcom/methnm/coantec/moudle/Images;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    return-void
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .param p1, "point"    # Landroid/graphics/PointF;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 225
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 226
    .local v0, "x":F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 227
    .local v1, "y":F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 228
    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 216
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 217
    .local v0, "x":F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 218
    .local v1, "y":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method protected center(ZZ)V
    .locals 12
    .param p1, "horizontal"    # Z
    .param p2, "vertical"    # Z

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, 0x0

    .line 151
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 152
    .local v3, "m":Landroid/graphics/Matrix;
    iget-object v8, p0, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 153
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/methnm/coantec/moudle/Images;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/methnm/coantec/moudle/Images;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v11, v11, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 154
    .local v4, "rect":Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 156
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 157
    .local v2, "height":F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 159
    .local v7, "width":F
    const/4 v0, 0x0

    .local v0, "deltaX":F
    const/4 v1, 0x0

    .line 161
    .local v1, "deltaY":F
    if-eqz p2, :cond_0

    .line 163
    iget-object v8, p0, Lcom/methnm/coantec/moudle/Images;->dm:Landroid/util/DisplayMetrics;

    iget v5, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 164
    .local v5, "screenHeight":I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 165
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v10

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 173
    .end local v5    # "screenHeight":I
    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 174
    iget-object v8, p0, Lcom/methnm/coantec/moudle/Images;->dm:Landroid/util/DisplayMetrics;

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 175
    .local v6, "screenWidth":I
    iget-object v8, p0, Lcom/methnm/coantec/moudle/Images;->dm:Landroid/util/DisplayMetrics;

    iget v5, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 176
    .restart local v5    # "screenHeight":I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 177
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v10

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 183
    :cond_1
    :goto_1
    int-to-float v8, v6

    div-float/2addr v8, v7

    iput v8, p0, Lcom/methnm/coantec/moudle/Images;->bitmap_scale_x:F

    .line 184
    int-to-float v8, v5

    div-float/2addr v8, v2

    iput v8, p0, Lcom/methnm/coantec/moudle/Images;->bitmap_scale_y:F

    .line 185
    iget-object v8, p0, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    iget v9, p0, Lcom/methnm/coantec/moudle/Images;->bitmap_scale_x:F

    iget v10, p0, Lcom/methnm/coantec/moudle/Images;->bitmap_scale_y:F

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 187
    .end local v5    # "screenHeight":I
    .end local v6    # "screenWidth":I
    :cond_2
    iget-object v8, p0, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v11, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 189
    return-void

    .line 166
    .restart local v5    # "screenHeight":I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_4

    .line 167
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    .line 168
    goto :goto_0

    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/Images;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_0

    .line 178
    .restart local v6    # "screenWidth":I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v11

    if-lez v8, :cond_6

    .line 179
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 180
    goto :goto_1

    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 181
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_1
.end method

.method public setupView()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 63
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Images;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/moudle/Images;->dm:Landroid/util/DisplayMetrics;

    .line 65
    invoke-virtual {p0}, Lcom/methnm/coantec/moudle/Images;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 66
    .local v0, "bd":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/moudle/Images;->bitmap:Landroid/graphics/Bitmap;

    .line 71
    :cond_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/methnm/coantec/moudle/Images;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 72
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Images;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1}, Lcom/methnm/coantec/moudle/Images;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Images;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {p0, v2, v2}, Lcom/methnm/coantec/moudle/Images;->center(ZZ)V

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Images;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1}, Lcom/methnm/coantec/moudle/Images;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 79
    new-instance v1, Lcom/methnm/coantec/moudle/Images$1;

    invoke-direct {v1, p0}, Lcom/methnm/coantec/moudle/Images$1;-><init>(Lcom/methnm/coantec/moudle/Images;)V

    invoke-virtual {p0, v1}, Lcom/methnm/coantec/moudle/Images;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 129
    return-void
.end method
