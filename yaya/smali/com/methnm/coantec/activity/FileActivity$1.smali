.class Lcom/methnm/coantec/activity/FileActivity$1;
.super Ljava/lang/Object;
.source "FileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/methnm/coantec/activity/FileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/activity/FileActivity;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/activity/FileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/activity/FileActivity$1;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 133
    :goto_0
    return-void

    .line 107
    :sswitch_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity$1;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    sget-object v1, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/methnm/coantec/activity/FileActivity$1;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    invoke-static {v2}, Lcom/methnm/coantec/activity/FileActivity;->access$0(Lcom/methnm/coantec/activity/FileActivity;)Landroid/os/Handler;

    move-result-object v2

    .line 107
    invoke-static {v0, v1, v2}, Lcom/android/FileBrowser/FileActivityHelper;->createDir(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)V

    goto :goto_0

    .line 112
    :sswitch_1
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity$1;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    sget-object v1, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/FileActivity;->access$1(Lcom/methnm/coantec/activity/FileActivity;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity$1;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    const-string v1, "\u8bbe\u7f6e\u4fdd\u5b58\u8def\u5f84\u6210\u529f!"

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 115
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity$1;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity$1;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    const-class v2, Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/methnm/coantec/activity/FileActivity;->access$2(Lcom/methnm/coantec/activity/FileActivity;Landroid/app/Activity;Ljava/lang/Class;)V

    .line 117
    const/4 v0, 0x1

    sput-boolean v0, Lcom/methnm/coantec/activity/Applications;->isSetDefaultPath:Z

    .line 118
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity$1;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    sget-boolean v1, Lcom/methnm/coantec/activity/Applications;->isSetDefaultPath:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/methnm/coantec/activity/FileActivity;->access$3(Lcom/methnm/coantec/activity/FileActivity;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 123
    :sswitch_2
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity$1;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    iget-object v1, p0, Lcom/methnm/coantec/activity/FileActivity$1;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    const-class v2, Lcom/methnm/coantec/activity/MainActivity;

    invoke-static {v0, v1, v2}, Lcom/methnm/coantec/activity/FileActivity;->access$2(Lcom/methnm/coantec/activity/FileActivity;Landroid/app/Activity;Ljava/lang/Class;)V

    goto :goto_0

    .line 128
    :sswitch_3
    iget-object v0, p0, Lcom/methnm/coantec/activity/FileActivity$1;->this$0:Lcom/methnm/coantec/activity/FileActivity;

    invoke-static {v0}, Lcom/methnm/coantec/activity/FileActivity;->access$4(Lcom/methnm/coantec/activity/FileActivity;)V

    goto :goto_0

    .line 104
    :sswitch_data_0
    .sparse-switch
        0x7f090053 -> :sswitch_3
        0x7f09005a -> :sswitch_0
        0x7f09005b -> :sswitch_1
        0x7f09005c -> :sswitch_2
    .end sparse-switch
.end method
