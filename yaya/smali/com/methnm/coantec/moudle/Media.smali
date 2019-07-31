.class public Lcom/methnm/coantec/moudle/Media;
.super Ljava/lang/Object;
.source "Media.java"


# instance fields
.field private mp:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Media;->mp:Landroid/media/MediaPlayer;

    .line 23
    const v0, 0x7f020050

    invoke-static {p1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/methnm/coantec/moudle/Media;->mp:Landroid/media/MediaPlayer;

    .line 24
    return-void
.end method


# virtual methods
.method public Play()V
    .locals 2

    .prologue
    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Media;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Media;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Media;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 32
    iget-object v1, p0, Lcom/methnm/coantec/moudle/Media;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public Stop()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Media;->mp:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Media;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 42
    :cond_0
    return-void
.end method
