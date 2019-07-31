.class public Lcom/methnm/coantec/activity/Help;
.super Landroid/app/Activity;
.source "Help.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/activity/Help$ClickListener;
    }
.end annotation


# instance fields
.field private Coantec_Help_Back:Landroid/widget/ImageView;

.field private Coantec_Help_Close:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/methnm/coantec/activity/Help;->Coantec_Help_Back:Landroid/widget/ImageView;

    .line 17
    iput-object v0, p0, Lcom/methnm/coantec/activity/Help;->Coantec_Help_Close:Landroid/widget/ImageView;

    .line 15
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/activity/Help;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/Help;->startIntent(Ljava/lang/Class;)V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/Help;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/Help;->Coantec_Help_Back:Landroid/widget/ImageView;

    .line 30
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/Help;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/Help;->Coantec_Help_Close:Landroid/widget/ImageView;

    .line 31
    iget-object v0, p0, Lcom/methnm/coantec/activity/Help;->Coantec_Help_Back:Landroid/widget/ImageView;

    new-instance v1, Lcom/methnm/coantec/activity/Help$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/methnm/coantec/activity/Help$ClickListener;-><init>(Lcom/methnm/coantec/activity/Help;Lcom/methnm/coantec/activity/Help$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/methnm/coantec/activity/Help;->Coantec_Help_Close:Landroid/widget/ImageView;

    new-instance v1, Lcom/methnm/coantec/activity/Help$ClickListener;

    invoke-direct {v1, p0, v2}, Lcom/methnm/coantec/activity/Help$ClickListener;-><init>(Lcom/methnm/coantec/activity/Help;Lcom/methnm/coantec/activity/Help$ClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method

.method private startIntent(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/Help;->finish()V

    .line 49
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 55
    const-class v0, Lcom/methnm/coantec/activity/MainActivity;

    invoke-direct {p0, v0}, Lcom/methnm/coantec/activity/Help;->startIntent(Ljava/lang/Class;)V

    .line 56
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/Help;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 23
    const/16 v1, 0x80

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/Help;->setContentView(I)V

    .line 26
    invoke-direct {p0}, Lcom/methnm/coantec/activity/Help;->init()V

    .line 27
    return-void
.end method
