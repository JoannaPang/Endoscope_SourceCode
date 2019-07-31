.class Lcom/methnm/coantec/moudle/Wifi$4;
.super Ljava/lang/Thread;
.source "Wifi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/moudle/Wifi;->getKeyStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/moudle/Wifi;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/moudle/Wifi;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    .line 464
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x65

    const/4 v7, 0x1

    .line 466
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v5}, Lcom/methnm/coantec/moudle/Wifi;->access$7(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 514
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v5, v7}, Lcom/methnm/coantec/moudle/Wifi;->access$6(Lcom/methnm/coantec/moudle/Wifi;Z)V

    .line 515
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-virtual {v5}, Lcom/methnm/coantec/moudle/Wifi;->iCameraServerStop()V

    .line 516
    :cond_1
    return-void

    .line 467
    :cond_2
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v5}, Lcom/methnm/coantec/moudle/Wifi;->access$22(Lcom/methnm/coantec/moudle/Wifi;)V

    .line 469
    :try_start_0
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v5}, Lcom/methnm/coantec/moudle/Wifi;->access$23(Lcom/methnm/coantec/moudle/Wifi;)Ljava/net/DatagramSocket;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 472
    new-instance v3, Ljava/net/DatagramPacket;

    .line 473
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v5, v5, Lcom/methnm/coantec/moudle/Wifi;->receiver_key:[B

    iget-object v6, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v6, v6, Lcom/methnm/coantec/moudle/Wifi;->receiver_key:[B

    array-length v6, v6

    .line 472
    invoke-direct {v3, v5, v6}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 474
    .local v3, "packet":Ljava/net/DatagramPacket;
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v5}, Lcom/methnm/coantec/moudle/Wifi;->access$23(Lcom/methnm/coantec/moudle/Wifi;)Ljava/net/DatagramSocket;

    move-result-object v5

    const/16 v6, 0xf

    invoke-virtual {v5, v6}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 475
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v5

    if-eqz v5, :cond_0

    .line 476
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v5}, Lcom/methnm/coantec/moudle/Wifi;->access$23(Lcom/methnm/coantec/moudle/Wifi;)Ljava/net/DatagramSocket;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 477
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    .line 478
    .local v4, "receiver":[B
    const/4 v5, 0x0

    aget-byte v5, v4, v5

    const/16 v6, 0x6b

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    aget-byte v5, v4, v5

    if-ne v5, v8, :cond_3

    .line 479
    const/4 v5, 0x2

    aget-byte v5, v4, v5

    const/16 v6, 0x79

    if-ne v5, v6, :cond_3

    .line 480
    const/4 v5, 0x3

    aget-byte v5, v4, v5

    const/16 v6, 0x76

    if-ne v5, v6, :cond_3

    .line 481
    const/4 v5, 0x4

    aget-byte v5, v4, v5

    const/16 v6, 0x61

    if-ne v5, v6, :cond_3

    .line 482
    const/4 v5, 0x5

    aget-byte v5, v4, v5

    const/16 v6, 0x6c

    if-ne v5, v6, :cond_3

    .line 483
    const/4 v5, 0x6

    aget-byte v5, v4, v5

    const/16 v6, 0x75

    if-ne v5, v6, :cond_3

    .line 484
    const/4 v5, 0x7

    aget-byte v5, v4, v5

    if-ne v5, v8, :cond_3

    .line 485
    const/16 v5, 0x8

    aget-byte v5, v4, v5

    const/16 v6, 0x3a

    if-ne v5, v6, :cond_3

    .line 486
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v5}, Lcom/methnm/coantec/moudle/Wifi;->access$24(Lcom/methnm/coantec/moudle/Wifi;)B

    move-result v5

    const/16 v6, 0x9

    aget-byte v6, v4, v6

    if-eq v5, v6, :cond_3

    .line 487
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    const/16 v6, 0x9

    aget-byte v6, v4, v6

    invoke-static {v5, v6}, Lcom/methnm/coantec/moudle/Wifi;->access$25(Lcom/methnm/coantec/moudle/Wifi;B)V

    .line 488
    const/16 v5, 0xa

    aget-byte v2, v4, v5

    .line 489
    .local v2, "key_value":I
    const/16 v5, 0xb

    aget-byte v1, v4, v5

    .line 490
    .local v1, "key_statu":I
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v5}, Lcom/methnm/coantec/moudle/Wifi;->access$26(Lcom/methnm/coantec/moudle/Wifi;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 491
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/methnm/coantec/moudle/Wifi;->access$27(Lcom/methnm/coantec/moudle/Wifi;Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 506
    .end local v1    # "key_statu":I
    .end local v2    # "key_value":I
    .end local v3    # "packet":Ljava/net/DatagramPacket;
    .end local v4    # "receiver":[B
    :catch_0
    move-exception v0

    .line 508
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto/16 :goto_0

    .line 494
    .end local v0    # "e":Ljava/net/SocketException;
    .restart local v1    # "key_statu":I
    .restart local v2    # "key_value":I
    .restart local v3    # "packet":Ljava/net/DatagramPacket;
    .restart local v4    # "receiver":[B
    :cond_4
    :try_start_1
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v5}, Lcom/methnm/coantec/moudle/Wifi;->access$28(Lcom/methnm/coantec/moudle/Wifi;)I

    move-result v5

    if-ne v2, v5, :cond_5

    .line 495
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lcom/methnm/coantec/moudle/Wifi;->access$29(Lcom/methnm/coantec/moudle/Wifi;I)V

    .line 496
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v5, v5, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    const-string v6, "photo_key_Down"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 509
    .end local v1    # "key_statu":I
    .end local v2    # "key_value":I
    .end local v3    # "packet":Ljava/net/DatagramPacket;
    .end local v4    # "receiver":[B
    :catch_1
    move-exception v0

    .line 511
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 497
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "key_statu":I
    .restart local v2    # "key_value":I
    .restart local v3    # "packet":Ljava/net/DatagramPacket;
    .restart local v4    # "receiver":[B
    :cond_5
    :try_start_2
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    invoke-static {v5}, Lcom/methnm/coantec/moudle/Wifi;->access$30(Lcom/methnm/coantec/moudle/Wifi;)I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 498
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    const/4 v6, 0x7

    invoke-static {v5, v6}, Lcom/methnm/coantec/moudle/Wifi;->access$29(Lcom/methnm/coantec/moudle/Wifi;I)V

    .line 499
    iget-object v5, p0, Lcom/methnm/coantec/moudle/Wifi$4;->this$0:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v5, v5, Lcom/methnm/coantec/moudle/Wifi;->Tag:Ljava/lang/String;

    const-string v6, "Video_Key_Down"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method
