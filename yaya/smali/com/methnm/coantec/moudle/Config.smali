.class public Lcom/methnm/coantec/moudle/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Config;->context:Landroid/content/Context;

    .line 12
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Config;->context:Landroid/content/Context;

    .line 13
    return-void
.end method


# virtual methods
.method public ReadScreen()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 16
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Config;->context:Landroid/content/Context;

    const-string v3, "screenOrientation"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 18
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "orientation"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 19
    .local v0, "buf":I
    return v0
.end method

.method public WriteScreen(I)V
    .locals 5
    .param p1, "buf"    # I

    .prologue
    .line 26
    iget-object v2, p0, Lcom/methnm/coantec/moudle/Config;->context:Landroid/content/Context;

    const-string v3, "screenOrientation"

    .line 27
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 28
    .local v1, "user":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 29
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "orientation"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 30
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 31
    return-void
.end method
