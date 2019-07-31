.class public Lcom/methnm/coantec/activity/Home;
.super Landroid/app/Activity;
.source "Home.java"


# instance fields
.field private Coantec_Home_ImageView:Landroid/widget/ImageView;

.field private Coantec_Home_TextView:Landroid/widget/TextView;

.field handler:Landroid/os/Handler;

.field private isStop:Z

.field private is_exit:Z

.field private show_count:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    iput-boolean v0, p0, Lcom/methnm/coantec/activity/Home;->is_exit:Z

    .line 20
    iput v0, p0, Lcom/methnm/coantec/activity/Home;->show_count:I

    .line 21
    iput-boolean v0, p0, Lcom/methnm/coantec/activity/Home;->isStop:Z

    .line 22
    iput-object v1, p0, Lcom/methnm/coantec/activity/Home;->Coantec_Home_ImageView:Landroid/widget/ImageView;

    .line 23
    iput-object v1, p0, Lcom/methnm/coantec/activity/Home;->Coantec_Home_TextView:Landroid/widget/TextView;

    .line 80
    new-instance v0, Lcom/methnm/coantec/activity/Home$1;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/Home$1;-><init>(Lcom/methnm/coantec/activity/Home;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/Home;->handler:Landroid/os/Handler;

    .line 18
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/activity/Home;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/methnm/coantec/activity/Home;->Coantec_Home_ImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/methnm/coantec/activity/Home;Z)V
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/methnm/coantec/activity/Home;->isStop:Z

    return-void
.end method

.method static synthetic access$2(Lcom/methnm/coantec/activity/Home;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/Home;->startIntent(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$3(Lcom/methnm/coantec/activity/Home;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/methnm/coantec/activity/Home;->isStop:Z

    return v0
.end method

.method static synthetic access$4(Lcom/methnm/coantec/activity/Home;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/methnm/coantec/activity/Home;->show_count:I

    return v0
.end method

.method static synthetic access$5(Lcom/methnm/coantec/activity/Home;I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/methnm/coantec/activity/Home;->show_count:I

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 37
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/Home;->Coantec_Home_ImageView:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/Home;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/methnm/coantec/activity/Home;->Coantec_Home_TextView:Landroid/widget/TextView;

    .line 39
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
    .line 104
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/Home;->finish()V

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/Home;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/Home;->startActivity(Landroid/content/Intent;)V

    .line 108
    return-void
.end method

.method private startMain()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/methnm/coantec/activity/Home;->show_count:I

    .line 59
    new-instance v0, Lcom/methnm/coantec/activity/Home$2;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/Home$2;-><init>(Lcom/methnm/coantec/activity/Home;)V

    .line 77
    invoke-virtual {v0}, Lcom/methnm/coantec/activity/Home$2;->start()V

    .line 78
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/methnm/coantec/activity/Home;->is_exit:Z

    .line 46
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/Home;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 29
    const/16 v2, 0x80

    .line 28
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f030010

    invoke-virtual {p0, v1}, Lcom/methnm/coantec/activity/Home;->setContentView(I)V

    .line 32
    invoke-direct {p0}, Lcom/methnm/coantec/activity/Home;->init()V

    .line 33
    new-instance v0, Lcom/methnm/coantec/moudle/Config;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/moudle/Config;-><init>(Landroid/content/Context;)V

    .line 34
    .local v0, "config":Lcom/methnm/coantec/moudle/Config;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/methnm/coantec/moudle/Config;->WriteScreen(I)V

    .line 35
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 51
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 52
    iput-boolean v1, p0, Lcom/methnm/coantec/activity/Home;->is_exit:Z

    .line 54
    :cond_0
    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 113
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 114
    invoke-direct {p0}, Lcom/methnm/coantec/activity/Home;->startMain()V

    .line 115
    return-void
.end method
