.class public Lcom/methnm/coantec/activity/Applications;
.super Landroid/app/Application;
.source "Applications.java"


# static fields
.field public static isSetDefaultPath:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-boolean v0, Lcom/methnm/coantec/activity/Applications;->isSetDefaultPath:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method
