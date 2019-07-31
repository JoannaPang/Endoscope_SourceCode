.class Lcom/methnm/coantec/activity/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/activity/MainActivity;->dialogReplace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/MainActivity;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    .line 1095
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-wide/16 v2, 0x1f4

    .line 1098
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$63(Lcom/methnm/coantec/activity/MainActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1128
    :goto_0
    :pswitch_0
    return-void

    .line 1100
    :pswitch_1
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$4(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$36(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$38(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1104
    :pswitch_2
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$10(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$42(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 1105
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$43(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1112
    :pswitch_3
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$15(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$45(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 1113
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$46(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1116
    :pswitch_4
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$20(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/MainActivity;->access$48(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/MainActivity;->access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity$10;->this$0:Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v1}, Lcom/methnm/coantec/activity/MainActivity;->access$49(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1098
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
