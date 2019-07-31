.class public Lcom/methnm/coantec/activity/PhotoPlayer;
.super Landroid/app/Activity;
.source "PhotoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;
    }
.end annotation


# instance fields
.field private Coantec_PhotoPlay_Back:Landroid/widget/ImageView;

.field private Coantec_PhotoPlay_Bg:Landroid/widget/ImageView;

.field private Coantec_PhotoPlay_Close:Landroid/widget/ImageView;

.field private Coantec_PhotoPlay_ImageView:Lcom/methnm/coantec/moudle/Images;

.field private Coantec_PhotoPlay_Operator:Landroid/widget/RelativeLayout;

.field private Default_Point:Landroid/graphics/Point;

.field private First_Point:Landroid/graphics/Point;

.field protected Tag:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private point_count:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_ImageView:Lcom/methnm/coantec/moudle/Images;

    .line 24
    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_Back:Landroid/widget/ImageView;

    .line 25
    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_Close:Landroid/widget/ImageView;

    .line 26
    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_Bg:Landroid/widget/ImageView;

    .line 27
    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->bitmap:Landroid/graphics/Bitmap;

    .line 28
    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_Operator:Landroid/widget/RelativeLayout;

    .line 29
    const-string v0, "PhotoPlayer"

    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Tag:Ljava/lang/String;

    .line 30
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Default_Point:Landroid/graphics/Point;

    .line 31
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->First_Point:Landroid/graphics/Point;

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->point_count:I

    .line 22
    return-void
.end method

.method private Init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    const v0, 0x7f09005f

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/PhotoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_Operator:Landroid/widget/RelativeLayout;

    .line 50
    const v0, 0x7f09005e

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/PhotoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/methnm/coantec/moudle/Images;

    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_ImageView:Lcom/methnm/coantec/moudle/Images;

    .line 51
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/PhotoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_Back:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/PhotoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_Close:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f090030

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/PhotoPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_Bg:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_Bg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_ImageView:Lcom/methnm/coantec/moudle/Images;

    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/methnm/coantec/moudle/Images;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 56
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_ImageView:Lcom/methnm/coantec/moudle/Images;

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Images;->setupView()V

    .line 57
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_ImageView:Lcom/methnm/coantec/moudle/Images;

    new-instance v1, Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;-><init>(Lcom/methnm/coantec/activity/PhotoPlayer;Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;)V

    invoke-virtual {v0, v1}, Lcom/methnm/coantec/moudle/Images;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_Back:Landroid/widget/ImageView;

    new-instance v1, Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;-><init>(Lcom/methnm/coantec/activity/PhotoPlayer;Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_Close:Landroid/widget/ImageView;

    new-instance v1, Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;-><init>(Lcom/methnm/coantec/activity/PhotoPlayer;Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/activity/PhotoPlayer;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Coantec_PhotoPlay_Operator:Landroid/widget/RelativeLayout;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 86
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/PhotoPlayer;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 37
    const/16 v4, 0x80

    .line 36
    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v3, 0x7f030017

    invoke-virtual {p0, v3}, Lcom/methnm/coantec/activity/PhotoPlayer;->setContentView(I)V

    .line 40
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/PhotoPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 41
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 42
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "path"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 43
    .local v2, "photopath":Ljava/lang/String;
    iget-object v3, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->Tag:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/methnm/coantec/activity/PhotoPlayer;->bitmap:Landroid/graphics/Bitmap;

    .line 45
    invoke-direct {p0}, Lcom/methnm/coantec/activity/PhotoPlayer;->Init()V

    .line 46
    return-void
.end method
