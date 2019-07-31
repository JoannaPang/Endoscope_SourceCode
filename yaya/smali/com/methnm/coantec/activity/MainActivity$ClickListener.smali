.class Lcom/methnm/coantec/activity/MainActivity$ClickListener;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/MainActivity;


# direct methods
.method private constructor <init>(Lcom/methnm/coantec/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 472
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v7, 0x7d0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const-wide/16 v3, 0x1f4

    const/4 v2, 0x0

    .line 477
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 923
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 481
    :pswitch_1
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v5}, Lcom/methnm/coantec/activity/MainActivity;->access$29(Lcom/methnm/coantec/activity/MainActivity;Z)V

    .line 482
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$4(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$7(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$8(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$10(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$12(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$13(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$15(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 500
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$17(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$18(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 502
    :cond_3
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$20(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 505
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$22(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$23(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 512
    :cond_4
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$30(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 513
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$31(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$32(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$33(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 556
    :pswitch_2
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v2}, Lcom/methnm/coantec/activity/MainActivity;->access$29(Lcom/methnm/coantec/activity/MainActivity;Z)V

    .line 557
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$4(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 560
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$9(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$8(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 562
    :cond_5
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$10(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 565
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$14(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$13(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 572
    :cond_6
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$15(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 575
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$19(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$18(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 577
    :cond_7
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$20(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 580
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$24(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$23(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 587
    :cond_8
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$30(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 588
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$31(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 589
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$32(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 590
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$33(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 593
    :pswitch_3
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$34(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Media;->Play()V

    .line 594
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->setPhotoPath()V

    .line 595
    sget-boolean v0, Lcom/methnm/coantec/moudle/Wifi;->isConnect:Z

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$4(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 597
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$35(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$4(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$36(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$38(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 600
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "11111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 602
    :cond_9
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v2}, Lcom/methnm/coantec/activity/MainActivity;->access$39(Lcom/methnm/coantec/activity/MainActivity;I)V

    .line 603
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$35(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$40(Lcom/methnm/coantec/activity/MainActivity;)V

    .line 606
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2222222222222"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 615
    :pswitch_4
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$34(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Media;->Play()V

    .line 616
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->setPhotoPath()V

    .line 617
    sget-boolean v0, Lcom/methnm/coantec/moudle/Wifi;->isConnect:Z

    if-eqz v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$10(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 619
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$41(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$10(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$42(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$43(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "11111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 624
    :cond_a
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v5}, Lcom/methnm/coantec/activity/MainActivity;->access$39(Lcom/methnm/coantec/activity/MainActivity;I)V

    .line 625
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$41(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$40(Lcom/methnm/coantec/activity/MainActivity;)V

    .line 628
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2222222222222"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 653
    :pswitch_5
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$34(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Media;->Play()V

    .line 654
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->setPhotoPath()V

    .line 655
    sget-boolean v0, Lcom/methnm/coantec/moudle/Wifi;->isConnect:Z

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$15(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 657
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$44(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$15(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$45(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$46(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 660
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "11111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 662
    :cond_b
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$39(Lcom/methnm/coantec/activity/MainActivity;I)V

    .line 663
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$44(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$40(Lcom/methnm/coantec/activity/MainActivity;)V

    .line 666
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2222222222222"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 672
    :pswitch_6
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$34(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Media;->Play()V

    .line 673
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->setPhotoPath()V

    .line 674
    sget-boolean v0, Lcom/methnm/coantec/moudle/Wifi;->isConnect:Z

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$20(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 676
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$47(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$20(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$48(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$49(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 679
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "11111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 681
    :cond_c
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$39(Lcom/methnm/coantec/activity/MainActivity;I)V

    .line 682
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$47(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 684
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$40(Lcom/methnm/coantec/activity/MainActivity;)V

    .line 685
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2222222222222"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 710
    :pswitch_7
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$34(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Media;->Play()V

    .line 711
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->setPhotoPath()V

    .line 712
    sget-boolean v0, Lcom/methnm/coantec/moudle/Wifi;->isConnect:Z

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$4(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 714
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$35(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$4(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$36(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$38(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 717
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "aaaaaa"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 719
    :cond_d
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v2}, Lcom/methnm/coantec/activity/MainActivity;->access$39(Lcom/methnm/coantec/activity/MainActivity;I)V

    .line 720
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$35(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$40(Lcom/methnm/coantec/activity/MainActivity;)V

    .line 723
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bbbbbbbb"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 729
    :pswitch_8
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$34(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Media;->Play()V

    .line 730
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->setPhotoPath()V

    .line 731
    sget-boolean v0, Lcom/methnm/coantec/moudle/Wifi;->isConnect:Z

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$10(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 733
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$41(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$10(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$42(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 735
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$43(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 736
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "11111111111"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 738
    :cond_e
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v5}, Lcom/methnm/coantec/activity/MainActivity;->access$39(Lcom/methnm/coantec/activity/MainActivity;I)V

    .line 739
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$41(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$40(Lcom/methnm/coantec/activity/MainActivity;)V

    .line 742
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2222222222222"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 767
    :pswitch_9
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$34(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Media;->Play()V

    .line 768
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->setPhotoPath()V

    .line 769
    sget-boolean v0, Lcom/methnm/coantec/moudle/Wifi;->isConnect:Z

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$15(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 771
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$44(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$15(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$45(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$46(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 776
    :cond_f
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$39(Lcom/methnm/coantec/activity/MainActivity;I)V

    .line 777
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$44(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$40(Lcom/methnm/coantec/activity/MainActivity;)V

    goto/16 :goto_0

    .line 786
    :pswitch_a
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$34(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Media;->Play()V

    .line 787
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->setPhotoPath()V

    .line 788
    sget-boolean v0, Lcom/methnm/coantec/moudle/Wifi;->isConnect:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$20(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "path5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 790
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$47(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$20(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$48(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$49(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 795
    :cond_10
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$39(Lcom/methnm/coantec/activity/MainActivity;I)V

    .line 796
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    sget-object v1, Lcom/methnm/coantec/moudle/Wifi;->photoPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$47(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 798
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$40(Lcom/methnm/coantec/activity/MainActivity;)V

    goto/16 :goto_0

    .line 824
    :pswitch_b
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Photo Key Down!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$34(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Media;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Media;->Play()V

    .line 827
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->setPhotoPath()V

    goto/16 :goto_0

    .line 832
    :pswitch_c
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Video Key Down!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$50(Lcom/methnm/coantec/activity/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 834
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$51(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 835
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$52(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 836
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->startCaptureVideo()V

    .line 839
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v5}, Lcom/methnm/coantec/activity/MainActivity;->access$53(Lcom/methnm/coantec/activity/MainActivity;Z)V

    goto/16 :goto_0

    .line 841
    :cond_11
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v2}, Lcom/methnm/coantec/activity/MainActivity;->access$53(Lcom/methnm/coantec/activity/MainActivity;Z)V

    .line 842
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$51(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 843
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$52(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 844
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 846
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->CaptureStop()V

    goto/16 :goto_0

    .line 852
    :pswitch_d
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$50(Lcom/methnm/coantec/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 853
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    .line 854
    const-string v1, "Please Stop Record Video!"

    .line 853
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 854
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 857
    :cond_12
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    const-class v1, Lcom/methnm/coantec/activity/AudioSelectActivity;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$54(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 861
    :pswitch_e
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$50(Lcom/methnm/coantec/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 862
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    .line 863
    const-string v1, "Please Stop Record Video!"

    .line 862
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 863
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 866
    :cond_13
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    const-class v1, Lcom/methnm/coantec/activity/FileActivity;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$54(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 887
    :pswitch_f
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$50(Lcom/methnm/coantec/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 888
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    .line 889
    const-string v1, "Please Stop Record Video!"

    .line 888
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 889
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 892
    :cond_14
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$55(Lcom/methnm/coantec/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 893
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v2}, Lcom/methnm/coantec/activity/MainActivity;->access$56(Lcom/methnm/coantec/activity/MainActivity;Z)V

    .line 894
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$57(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 895
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$55(Lcom/methnm/coantec/activity/MainActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/methnm/coantec/moudle/Wifi;->Pause_Video(Z)V

    goto/16 :goto_0

    .line 897
    :cond_15
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v5}, Lcom/methnm/coantec/activity/MainActivity;->access$56(Lcom/methnm/coantec/activity/MainActivity;Z)V

    .line 898
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$57(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 899
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$55(Lcom/methnm/coantec/activity/MainActivity;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/methnm/coantec/moudle/Wifi;->Pause_Video(Z)V

    goto/16 :goto_0

    .line 904
    :pswitch_10
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$50(Lcom/methnm/coantec/activity/MainActivity;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 905
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    .line 906
    const-string v1, "Please Stop Record Video!"

    .line 905
    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 909
    :cond_16
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$ClickListener;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    const-class v1, Lcom/methnm/coantec/activity/Help;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$58(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/Class;)V

    goto/16 :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x7f090003
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
