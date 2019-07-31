.class Lcom/methnm/coantec/activity/Help$ClickListener;
.super Ljava/lang/Object;
.source "Help.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/Help;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/Help;


# direct methods
.method private constructor <init>(Lcom/methnm/coantec/activity/Help;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/methnm/coantec/activity/Help$ClickListener;->this$0:Lcom/methnm/coantec/activity/Help;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/methnm/coantec/activity/Help;Lcom/methnm/coantec/activity/Help$ClickListener;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/Help$ClickListener;-><init>(Lcom/methnm/coantec/activity/Help;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/methnm/coantec/activity/Help$ClickListener;->this$0:Lcom/methnm/coantec/activity/Help;

    const-class v1, Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/Help;->access$0(Lcom/methnm/coantec/activity/Help;Ljava/lang/Class;)V

    .line 40
    return-void
.end method
