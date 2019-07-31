.class public Lcom/methnm/coantec/moudle/GHolder;
.super Ljava/lang/Object;
.source "GHolder.java"


# instance fields
.field public count:Landroid/widget/TextView;

.field public gdate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/methnm/coantec/moudle/GHolder;->gdate:Landroid/widget/TextView;

    .line 7
    iput-object v0, p0, Lcom/methnm/coantec/moudle/GHolder;->count:Landroid/widget/TextView;

    .line 5
    return-void
.end method
