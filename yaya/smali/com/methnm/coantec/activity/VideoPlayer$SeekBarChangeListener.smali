.class Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekBarChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/VideoPlayer;


# direct methods
.method private constructor <init>(Lcom/methnm/coantec/activity/VideoPlayer;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/methnm/coantec/activity/VideoPlayer;Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;)V
    .locals 0

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;-><init>(Lcom/methnm/coantec/activity/VideoPlayer;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    const/4 v3, 0x0

    .line 316
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-object v1, p0, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-wide v1, v1, Lcom/methnm/coantec/activity/VideoPlayer;->curtime1:J

    iput-wide v1, v0, Lcom/methnm/coantec/activity/VideoPlayer;->oldtime:J

    .line 317
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    int-to-double v1, p2

    iput-wide v1, v0, Lcom/methnm/coantec/activity/VideoPlayer;->offsettime:D

    .line 318
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->access$2(Lcom/methnm/coantec/activity/VideoPlayer;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 319
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iget-boolean v0, v0, Lcom/methnm/coantec/activity/VideoPlayer;->isOver:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    iput-boolean v3, v0, Lcom/methnm/coantec/activity/VideoPlayer;->isOver:Z

    .line 321
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-static {v0, v3}, Lcom/methnm/coantec/activity/VideoPlayer;->access$5(Lcom/methnm/coantec/activity/VideoPlayer;Z)V

    .line 322
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    int-to-double v1, p2

    iput-wide v1, v0, Lcom/methnm/coantec/activity/VideoPlayer;->offsettime:D

    .line 323
    iget-object v0, p0, Lcom/methnm/coantec/activity/VideoPlayer$SeekBarChangeListener;->this$0:Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-virtual {v0}, Lcom/methnm/coantec/activity/VideoPlayer;->Play()V

    .line 326
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 332
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 338
    return-void
.end method
