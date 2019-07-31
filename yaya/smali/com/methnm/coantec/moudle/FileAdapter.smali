.class public Lcom/methnm/coantec/moudle/FileAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "FileAdapter.java"


# static fields
.field static context:Landroid/content/Context;

.field static mInflater_c:Landroid/view/LayoutInflater;

.field static mInflater_g:Landroid/view/LayoutInflater;


# instance fields
.field child:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private cholder:Lcom/methnm/coantec/moudle/CHolder;

.field private date:Ljava/sql/Date;

.field private gholder:Lcom/methnm/coantec/moudle/GHolder;

.field group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/methnm/coantec/moudle/FileAdapter;->mInflater_c:Landroid/view/LayoutInflater;

    .line 34
    sput-object v0, Lcom/methnm/coantec/moudle/FileAdapter;->mInflater_g:Landroid/view/LayoutInflater;

    .line 35
    sput-object v0, Lcom/methnm/coantec/moudle/FileAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .local p2, "group":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "child":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/io/File;>;>;"
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    .line 37
    iput-object v0, p0, Lcom/methnm/coantec/moudle/FileAdapter;->gholder:Lcom/methnm/coantec/moudle/GHolder;

    .line 38
    iput-object v0, p0, Lcom/methnm/coantec/moudle/FileAdapter;->date:Ljava/sql/Date;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/methnm/coantec/moudle/FileAdapter;->index:I

    .line 42
    sput-object p1, Lcom/methnm/coantec/moudle/FileAdapter;->context:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/methnm/coantec/moudle/FileAdapter;->group:Ljava/util/List;

    .line 44
    iput-object p3, p0, Lcom/methnm/coantec/moudle/FileAdapter;->child:Ljava/util/List;

    .line 45
    iput p4, p0, Lcom/methnm/coantec/moudle/FileAdapter;->index:I

    .line 46
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sput-object v0, Lcom/methnm/coantec/moudle/FileAdapter;->mInflater_c:Landroid/view/LayoutInflater;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sput-object v0, Lcom/methnm/coantec/moudle/FileAdapter;->mInflater_g:Landroid/view/LayoutInflater;

    .line 48
    return-void
.end method

.method private getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "imagePath"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x2

    .line 183
    const/4 v3, 0x0

    .line 184
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 185
    .local v5, "options":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v9, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 187
    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 188
    const/4 v7, 0x0

    iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 190
    iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 191
    .local v4, "h":I
    iget v6, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 192
    .local v6, "w":I
    div-int v2, v6, p2

    .line 193
    .local v2, "beWidth":I
    div-int v1, v4, p3

    .line 194
    .local v1, "beHeight":I
    const/4 v0, 0x1

    .line 195
    .local v0, "be":I
    if-ge v2, v1, :cond_1

    .line 196
    move v0, v2

    .line 200
    :goto_0
    if-gtz v0, :cond_0

    .line 201
    const/4 v0, 0x1

    .line 203
    :cond_0
    iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 204
    iget v7, p0, Lcom/methnm/coantec/moudle/FileAdapter;->index:I

    if-ne v7, v9, :cond_2

    .line 205
    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 206
    invoke-static {v3, p2, p3, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 216
    :goto_1
    return-object v3

    .line 198
    :cond_1
    move v0, v1

    goto :goto_0

    .line 208
    :cond_2
    iget v7, p0, Lcom/methnm/coantec/moudle/FileAdapter;->index:I

    if-ne v7, v8, :cond_3

    .line 209
    invoke-static {p1, v8}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 210
    invoke-static {v3, p2, p3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 211
    goto :goto_1

    .line 212
    :cond_3
    invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 213
    invoke-static {v3, p2, p3, v8}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public GetTmp(I)Ljava/util/List;
    .locals 1
    .param p1, "groupPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/methnm/coantec/moudle/FileAdapter;->child:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public Lw_Get_Child(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 52
    const/4 v0, -0x1

    .line 53
    .local v0, "id":I
    const v1, 0x7f09002d

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 54
    return v0
.end method

.method public Lw_Get_Group(Landroid/view/View;)I
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 57
    const/4 v0, -0x1

    .line 58
    .local v0, "id":I
    const v1, 0x7f09002c

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 59
    return v0
.end method

.method public getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/methnm/coantec/moudle/FileAdapter;->child:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 71
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 86
    const/4 v4, 0x0

    .line 87
    .local v4, "view":Landroid/view/View;
    if-nez p4, :cond_0

    .line 88
    new-instance v5, Lcom/methnm/coantec/moudle/CHolder;

    invoke-direct {v5}, Lcom/methnm/coantec/moudle/CHolder;-><init>()V

    iput-object v5, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    .line 89
    sget-object v5, Lcom/methnm/coantec/moudle/FileAdapter;->mInflater_c:Landroid/view/LayoutInflater;

    const v6, 0x7f030002

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 90
    iget-object v6, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    const v5, 0x7f09002b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/methnm/coantec/moudle/CHolder;->imgView:Landroid/widget/ImageView;

    .line 91
    iget-object v6, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    const v5, 0x7f09002d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/methnm/coantec/moudle/CHolder;->Name:Landroid/widget/TextView;

    .line 92
    iget-object v6, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    const v5, 0x7f09002c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/methnm/coantec/moudle/CHolder;->date:Landroid/widget/TextView;

    .line 93
    iget-object v6, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    const v5, 0x7f09002e

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/methnm/coantec/moudle/CHolder;->size:Landroid/widget/TextView;

    .line 94
    iget-object v5, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    move-object p4, v4

    .line 100
    :goto_0
    iget-object v5, p0, Lcom/methnm/coantec/moudle/FileAdapter;->child:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 101
    .local v1, "file":Ljava/io/File;
    iget-object v5, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    iget-object v5, v5, Lcom/methnm/coantec/moudle/CHolder;->Name:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v5, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Date;-><init>(J)V

    iput-object v5, p0, Lcom/methnm/coantec/moudle/FileAdapter;->date:Ljava/sql/Date;

    .line 103
    iget-object v5, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    iget-object v5, v5, Lcom/methnm/coantec/moudle/CHolder;->date:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/methnm/coantec/moudle/FileAdapter;->date:Ljava/sql/Date;

    invoke-virtual {v6}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const v5, 0x7f09002c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 105
    const v5, 0x7f09002d

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 107
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x48

    const/16 v7, 0x48

    invoke-direct {p0, v5, v6, v7}, Lcom/methnm/coantec/moudle/FileAdapter;->getImageThumbnail(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 109
    iget-object v5, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    iget-object v5, v5, Lcom/methnm/coantec/moudle/CHolder;->imgView:Landroid/widget/ImageView;

    const v6, 0x7f02002c

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-float v2, v5

    .line 115
    .local v2, "length":F
    const/high16 v5, 0x49800000    # 1048576.0f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_2

    .line 116
    const/high16 v5, 0x49800000    # 1048576.0f

    div-float v3, v2, v5

    .line 117
    .local v3, "size":F
    iget-object v5, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    iget-object v5, v5, Lcom/methnm/coantec/moudle/CHolder;->size:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "#.00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "MB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .end local v3    # "size":F
    :goto_2
    return-object v4

    .line 97
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "length":F
    :cond_0
    move-object v4, p4

    .line 98
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/methnm/coantec/moudle/CHolder;

    iput-object v5, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    goto/16 :goto_0

    .line 110
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    .restart local v1    # "file":Ljava/io/File;
    :cond_1
    iget-object v5, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    iget-object v5, v5, Lcom/methnm/coantec/moudle/CHolder;->imgView:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 118
    .restart local v2    # "length":F
    :cond_2
    const/high16 v5, 0x44800000    # 1024.0f

    cmpl-float v5, v2, v5

    if-ltz v5, :cond_3

    .line 119
    const/high16 v5, 0x44800000    # 1024.0f

    div-float v3, v2, v5

    .line 120
    .restart local v3    # "size":F
    iget-object v5, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    iget-object v5, v5, Lcom/methnm/coantec/moudle/CHolder;->size:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "#.00"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 122
    .end local v3    # "size":F
    :cond_3
    iget-object v5, p0, Lcom/methnm/coantec/moudle/FileAdapter;->cholder:Lcom/methnm/coantec/moudle/CHolder;

    iget-object v5, v5, Lcom/methnm/coantec/moudle/CHolder;->size:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "B"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public getChildrenCount(I)I
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/methnm/coantec/moudle/FileAdapter;->child:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/methnm/coantec/moudle/FileAdapter;->group:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/methnm/coantec/moudle/FileAdapter;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 137
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    .local v0, "view":Landroid/view/View;
    if-nez p3, :cond_0

    .line 152
    new-instance v1, Lcom/methnm/coantec/moudle/GHolder;

    invoke-direct {v1}, Lcom/methnm/coantec/moudle/GHolder;-><init>()V

    iput-object v1, p0, Lcom/methnm/coantec/moudle/FileAdapter;->gholder:Lcom/methnm/coantec/moudle/GHolder;

    .line 153
    sget-object v1, Lcom/methnm/coantec/moudle/FileAdapter;->mInflater_c:Landroid/view/LayoutInflater;

    const v2, 0x7f03000e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 154
    iget-object v2, p0, Lcom/methnm/coantec/moudle/FileAdapter;->gholder:Lcom/methnm/coantec/moudle/GHolder;

    const v1, 0x7f090045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/methnm/coantec/moudle/GHolder;->gdate:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lcom/methnm/coantec/moudle/FileAdapter;->gholder:Lcom/methnm/coantec/moudle/GHolder;

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/methnm/coantec/moudle/GHolder;->count:Landroid/widget/TextView;

    .line 156
    move-object p3, v0

    .line 157
    iget-object v1, p0, Lcom/methnm/coantec/moudle/FileAdapter;->gholder:Lcom/methnm/coantec/moudle/GHolder;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    :goto_0
    const v1, 0x7f09002c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 164
    const v1, 0x7f09002d

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 165
    iget-object v1, p0, Lcom/methnm/coantec/moudle/FileAdapter;->gholder:Lcom/methnm/coantec/moudle/GHolder;

    iget-object v2, v1, Lcom/methnm/coantec/moudle/GHolder;->gdate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/methnm/coantec/moudle/FileAdapter;->group:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    return-object v0

    .line 160
    :cond_0
    move-object v0, p3

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/methnm/coantec/moudle/GHolder;

    iput-object v1, p0, Lcom/methnm/coantec/moudle/FileAdapter;->gholder:Lcom/methnm/coantec/moudle/GHolder;

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 180
    const/4 v0, 0x1

    return v0
.end method
