.class public Lcom/methnm/coantec/activity/AudioSelectActivity;
.super Landroid/app/Activity;
.source "AudioSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;
    }
.end annotation


# instance fields
.field private AudioSelect_Operator_Back:Landroid/widget/ImageView;

.field private AudioSelect_Operator_Photo:Landroid/widget/ImageView;

.field private AudioSelect_Operator_Video:Landroid/widget/ImageView;

.field private TAG:Ljava/lang/String;

.field private currSdcardItem:I

.field private layout_Actionbar:Landroid/widget/RelativeLayout;

.field private layout_Actionbar_Height:I

.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private pWindowMenu:Landroid/widget/PopupWindow;

.field private screenWidth:I

.field private set_back:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const-string v0, "AudioSelectActivity"

    iput-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->TAG:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->AudioSelect_Operator_Back:Landroid/widget/ImageView;

    .line 37
    iput-object v1, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->AudioSelect_Operator_Video:Landroid/widget/ImageView;

    .line 38
    iput-object v1, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->AudioSelect_Operator_Photo:Landroid/widget/ImageView;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->currSdcardItem:I

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/activity/AudioSelectActivity;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/AudioSelectActivity;->startIntent(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$1(Lcom/methnm/coantec/activity/AudioSelectActivity;Ljava/lang/Class;I)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lcom/methnm/coantec/activity/AudioSelectActivity;->startIntent(Ljava/lang/Class;I)V

    return-void
.end method

.method static synthetic access$2(Lcom/methnm/coantec/activity/AudioSelectActivity;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->initPopupWndMenu()V

    return-void
.end method

.method static synthetic access$3(Lcom/methnm/coantec/activity/AudioSelectActivity;)V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->showPopupWndMenu()V

    return-void
.end method

.method static synthetic access$4(Lcom/methnm/coantec/activity/AudioSelectActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->layout_Actionbar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$5(Lcom/methnm/coantec/activity/AudioSelectActivity;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->layout_Actionbar_Height:I

    return-void
.end method

.method static synthetic access$6(Lcom/methnm/coantec/activity/AudioSelectActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/methnm/coantec/activity/AudioSelectActivity;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->currSdcardItem:I

    return v0
.end method

.method static synthetic access$8(Lcom/methnm/coantec/activity/AudioSelectActivity;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->pWindowMenu:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method private getData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v1, "photo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "icon"

    const v3, 0x7f02003a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v2, "info"

    const v3, 0x7f06000b

    invoke-virtual {p0, v3}, Lcom/methnm/coantec/activity/AudioSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "photo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 178
    .restart local v1    # "photo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "icon"

    const v3, 0x7f02003b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v2, "info"

    const v3, 0x7f06000c

    invoke-virtual {p0, v3}, Lcom/methnm/coantec/activity/AudioSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->layout_Actionbar:Landroid/widget/RelativeLayout;

    .line 65
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->AudioSelect_Operator_Back:Landroid/widget/ImageView;

    .line 66
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->AudioSelect_Operator_Video:Landroid/widget/ImageView;

    .line 67
    const v0, 0x7f09002a

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->AudioSelect_Operator_Photo:Landroid/widget/ImageView;

    .line 68
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->set_back:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->AudioSelect_Operator_Back:Landroid/widget/ImageView;

    new-instance v1, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/AudioSelectActivity;Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->AudioSelect_Operator_Video:Landroid/widget/ImageView;

    new-instance v1, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/AudioSelectActivity;Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->AudioSelect_Operator_Photo:Landroid/widget/ImageView;

    new-instance v1, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/AudioSelectActivity;Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->set_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/AudioSelectActivity;Lcom/methnm/coantec/activity/AudioSelectActivity$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->layout_Actionbar:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/methnm/coantec/activity/AudioSelectActivity$1;

    invoke-direct {v1, p0}, Lcom/methnm/coantec/activity/AudioSelectActivity$1;-><init>(Lcom/methnm/coantec/activity/AudioSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method private initPopupWndMenu()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 116
    .local v6, "mInflater":Landroid/view/LayoutInflater;
    const v0, 0x7f030019

    .line 117
    const/4 v1, 0x0

    .line 116
    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 118
    .local v8, "view":Landroid/view/View;
    new-instance v0, Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->screenWidth:I

    div-int/lit8 v1, v1, 0x4

    .line 119
    const/4 v2, -0x2

    invoke-direct {v0, v8, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 118
    iput-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->pWindowMenu:Landroid/widget/PopupWindow;

    .line 121
    const v0, 0x7f090062

    invoke-virtual {v8, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 120
    check-cast v7, Landroid/widget/ListView;

    .line 122
    .local v7, "mListView":Landroid/widget/ListView;
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->getData()Ljava/util/List;

    move-result-object v2

    .line 123
    const v3, 0x7f030014

    .line 124
    new-array v4, v9, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "icon"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "info"

    aput-object v5, v4, v1

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    move-object v1, p0

    .line 125
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 122
    iput-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 126
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 127
    new-instance v0, Lcom/methnm/coantec/activity/AudioSelectActivity$2;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/AudioSelectActivity$2;-><init>(Lcom/methnm/coantec/activity/AudioSelectActivity;)V

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 157
    return-void

    .line 124
    :array_0
    .array-data 4
        0x7f09004e
        0x7f09004f
    .end array-data
.end method

.method private showPopupWndMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 160
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->pWindowMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 161
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->pWindowMenu:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 162
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 163
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040093

    .line 162
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 161
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->pWindowMenu:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 165
    iget-object v0, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->pWindowMenu:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->layout_Actionbar:Landroid/widget/RelativeLayout;

    const/16 v2, 0x35

    .line 166
    const/4 v3, 0x0

    iget v4, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->layout_Actionbar_Height:I

    .line 165
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 167
    return-void
.end method

.method private startIntent(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->finish()V

    .line 194
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 197
    return-void
.end method

.method private startIntent(Ljava/lang/Class;I)V
    .locals 2
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->finish()V

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 203
    const-string v1, "index"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 205
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 189
    const-class v0, Lcom/methnm/coantec/activity/MainActivity;

    invoke-direct {p0, v0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->startIntent(Ljava/lang/Class;)V

    .line 190
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 53
    const/16 v2, 0x80

    .line 52
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/methnm/coantec/activity/AudioSelectActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 57
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/methnm/coantec/activity/AudioSelectActivity;->screenWidth:I

    .line 59
    invoke-direct {p0}, Lcom/methnm/coantec/activity/AudioSelectActivity;->init()V

    .line 60
    return-void
.end method
