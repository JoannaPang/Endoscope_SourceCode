.class Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;
.super Ljava/lang/Object;
.source "PhotoPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/PhotoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/PhotoPlayer;


# direct methods
.method private constructor <init>(Lcom/methnm/coantec/activity/PhotoPlayer;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/PhotoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/methnm/coantec/activity/PhotoPlayer;Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;-><init>(Lcom/methnm/coantec/activity/PhotoPlayer;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 68
    :sswitch_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/PhotoPlayer;

    invoke-static {v0}, Lcom/methnm/coantec/activity/PhotoPlayer;->access$0(Lcom/methnm/coantec/activity/PhotoPlayer;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 73
    :sswitch_1
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoPlayer$ClickListener;->this$0:Lcom/methnm/coantec/activity/PhotoPlayer;

    invoke-virtual {v0}, Lcom/methnm/coantec/activity/PhotoPlayer;->finish()V

    goto :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090032 -> :sswitch_1
        0x7f090034 -> :sswitch_1
        0x7f09005e -> :sswitch_0
    .end sparse-switch
.end method
