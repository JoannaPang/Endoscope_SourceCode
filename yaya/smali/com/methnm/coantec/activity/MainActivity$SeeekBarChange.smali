.class Lcom/methnm/coantec/activity/MainActivity$SeeekBarChange;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeeekBarChange"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/MainActivity;


# direct methods
.method private constructor <init>(Lcom/methnm/coantec/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity$SeeekBarChange;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$SeeekBarChange;)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/MainActivity$SeeekBarChange;-><init>(Lcom/methnm/coantec/activity/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 425
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 431
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 436
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    .line 438
    .local v2, "progress":I
    add-int/lit8 v4, v2, 0xa

    int-to-float v4, v4

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/methnm/coantec/activity/MainActivity$SeeekBarChange;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v5}, Lcom/methnm/coantec/activity/MainActivity;->access$26(Lcom/methnm/coantec/activity/MainActivity;)F

    move-result v5

    add-float v3, v4, v5

    .line 439
    .local v3, "scal_f":F
    iget-object v4, p0, Lcom/methnm/coantec/activity/MainActivity$SeeekBarChange;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v4}, Lcom/methnm/coantec/activity/MainActivity;->access$27(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/SurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/methnm/coantec/moudle/SurfaceView;->getWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 440
    .local v0, "offset_x":I
    iget-object v4, p0, Lcom/methnm/coantec/activity/MainActivity$SeeekBarChange;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v4}, Lcom/methnm/coantec/activity/MainActivity;->access$27(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/SurfaceView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/methnm/coantec/moudle/SurfaceView;->getHeight()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 441
    .local v1, "offset_y":I
    iget-object v4, p0, Lcom/methnm/coantec/activity/MainActivity$SeeekBarChange;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v4, v3, v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$28(Lcom/methnm/coantec/activity/MainActivity;FII)V

    .line 442
    return-void
.end method
