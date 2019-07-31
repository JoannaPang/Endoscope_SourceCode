.class public Lcom/methnm/coantec/moudle/CHolder;
.super Ljava/lang/Object;
.source "CHolder.java"


# instance fields
.field public Name:Landroid/widget/TextView;

.field public date:Landroid/widget/TextView;

.field public imgView:Landroid/widget/ImageView;

.field public size:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/methnm/coantec/moudle/CHolder;->imgView:Landroid/widget/ImageView;

    .line 8
    iput-object v0, p0, Lcom/methnm/coantec/moudle/CHolder;->Name:Landroid/widget/TextView;

    .line 9
    iput-object v0, p0, Lcom/methnm/coantec/moudle/CHolder;->date:Landroid/widget/TextView;

    .line 10
    iput-object v0, p0, Lcom/methnm/coantec/moudle/CHolder;->size:Landroid/widget/TextView;

    .line 6
    return-void
.end method
