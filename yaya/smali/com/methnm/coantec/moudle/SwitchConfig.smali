.class public Lcom/methnm/coantec/moudle/SwitchConfig;
.super Ljava/lang/Object;
.source "SwitchConfig.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/methnm/coantec/moudle/SwitchConfig;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public readSdcardChoose()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 26
    iget-object v1, p0, Lcom/methnm/coantec/moudle/SwitchConfig;->context:Landroid/content/Context;

    const-string v2, "sdcardchoose"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 27
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "sdcardchoose"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public readTurnLeftRight()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    iget-object v1, p0, Lcom/methnm/coantec/moudle/SwitchConfig;->context:Landroid/content/Context;

    const-string v2, "isTurnLeftRight"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 41
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "isTurnLeftRight"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public writeSdcardChoose(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "sdcardState"    # Ljava/lang/Boolean;

    .prologue
    .line 18
    iget-object v2, p0, Lcom/methnm/coantec/moudle/SwitchConfig;->context:Landroid/content/Context;

    const-string v3, "sdcardchoose"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 19
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 20
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "sdcardchoose"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 21
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 22
    return-void
.end method

.method public writeTurnLeftRight(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "isTurnLeftRight"    # Ljava/lang/Boolean;

    .prologue
    .line 32
    iget-object v2, p0, Lcom/methnm/coantec/moudle/SwitchConfig;->context:Landroid/content/Context;

    const-string v3, "isTurnLeftRight"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 33
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isTurnLeftRight"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method
