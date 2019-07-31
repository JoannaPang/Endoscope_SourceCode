.class public Lcom/methnm/coantec/activity/ListViewActivity;
.super Landroid/app/Activity;
.source "ListViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;,
        Lcom/methnm/coantec/activity/ListViewActivity$GroupClicked;,
        Lcom/methnm/coantec/activity/ListViewActivity$ItemLongClicked;
    }
.end annotation


# static fields
.field static DT:Ljava/sql/Date; = null

.field public static final MENU_ADD:I = 0x1

.field public static final MENU_DELETE:I = 0x2

.field static format:Ljava/lang/String;

.field static index:I


# instance fields
.field private Tag:Ljava/lang/String;

.field activity:Landroid/app/Activity;

.field adapter:Lcom/methnm/coantec/moudle/FileAdapter;

.field child:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private curPath:Ljava/lang/String;

.field expandList:Landroid/widget/ExpandableListView;

.field private folder:Ljava/io/File;

.field group:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notice:Landroid/widget/TextView;

.field temp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, -0x1

    sput v0, Lcom/methnm/coantec/activity/ListViewActivity;->index:I

    .line 57
    const-string v0, "image/*"

    sput-object v0, Lcom/methnm/coantec/activity/ListViewActivity;->format:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    .line 55
    iput-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->notice:Landroid/widget/TextView;

    .line 56
    const-string v0, "ListViewActivity"

    iput-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->Tag:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->curPath:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private ChildAdd(ILjava/io/File;)V
    .locals 2
    .param p1, "location"    # I
    .param p2, "ph"    # Ljava/io/File;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    invoke-virtual {v0, p1}, Lcom/methnm/coantec/moudle/FileAdapter;->GetTmp(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->temp:Ljava/util/List;

    .line 86
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->temp:Ljava/util/List;

    invoke-virtual {p0, p2, v0}, Lcom/methnm/coantec/activity/ListViewActivity;->addInfo(Ljava/io/File;Ljava/util/List;)V

    .line 88
    return-void
.end method

.method private ChildDelete(II)V
    .locals 3
    .param p1, "grouplocation"    # I
    .param p2, "childlocation"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    invoke-virtual {v0, p1}, Lcom/methnm/coantec/moudle/FileAdapter;->GetTmp(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->temp:Ljava/util/List;

    .line 92
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->temp:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 94
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->temp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->child:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/FileAdapter;->notifyDataSetChanged()V

    .line 101
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/ListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No File!"

    const/16 v2, 0xbb8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 104
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->notice:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    :cond_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->child:Ljava/util/List;

    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->temp:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private Delete_Dialog(II)V
    .locals 4
    .param p1, "childlocation"    # I
    .param p2, "grouplocation"    # I

    .prologue
    .line 248
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u63d0\u793a\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 251
    const-string v2, "\u5220\u9664\u6587\u4ef6\uff01"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 252
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/methnm/coantec/activity/ListViewActivity$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/methnm/coantec/activity/ListViewActivity$1;-><init>(Lcom/methnm/coantec/activity/ListViewActivity;II)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 280
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/methnm/coantec/activity/ListViewActivity$2;

    invoke-direct {v3, p0}, Lcom/methnm/coantec/activity/ListViewActivity$2;-><init>(Lcom/methnm/coantec/activity/ListViewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 288
    return-void
.end method

.method private FilterFile(Ljava/io/File;I)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "n"    # I

    .prologue
    .line 163
    const/4 v0, 0x1

    .line 164
    .local v0, "Is_right_format":Z
    packed-switch p2, :pswitch_data_0

    .line 228
    :goto_0
    return v0

    .line 166
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "soay-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".m4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 170
    const-string v2, ".m3u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, ".m4b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 174
    const-string v2, ".m4p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 176
    const-string v2, ".mp2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 178
    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 180
    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 182
    const-string v2, ".wma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x1

    .line 185
    goto/16 :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    .line 189
    goto/16 :goto_0

    .line 191
    :pswitch_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 192
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "soay-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 194
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 197
    :cond_2
    const/4 v0, 0x1

    .line 198
    goto/16 :goto_0

    .line 199
    :cond_3
    const/4 v0, 0x0

    .line 201
    goto/16 :goto_0

    .line 203
    :pswitch_2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "soay-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 205
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".avi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 206
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 207
    const-string v2, ".m4v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 208
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 209
    const-string v2, ".m4u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 210
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 211
    const-string v2, ".mpe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 212
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 213
    const-string v2, ".mpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 214
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v2, ".mpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 216
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 217
    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 218
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 219
    const-string v2, ".mpg4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 220
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 221
    :cond_4
    const/4 v0, 0x1

    .line 222
    goto/16 :goto_0

    .line 223
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static RootCommand(Ljava/lang/String;)Z
    .locals 6
    .param p0, "command"    # Ljava/lang/String;

    .prologue
    .line 347
    const/4 v3, 0x0

    .line 348
    .local v3, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 350
    .local v1, "os":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 351
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    .end local v1    # "os":Ljava/io/DataOutputStream;
    .local v2, "os":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 353
    const-string v4, "exit\n"

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 354
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 355
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 360
    if-eqz v2, :cond_0

    .line 361
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 363
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 368
    :goto_0
    const/4 v4, 0x1

    move-object v1, v2

    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v1    # "os":Ljava/io/DataOutputStream;
    :goto_1
    return v4

    .line 356
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v1, :cond_1

    .line 361
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 363
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 357
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 364
    :catch_1
    move-exception v0

    .line 365
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 358
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 360
    :goto_4
    if-eqz v1, :cond_2

    .line 361
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 363
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 367
    :goto_5
    throw v4

    .line 364
    :catch_2
    move-exception v0

    .line 365
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 364
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v0

    .line 365
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v1    # "os":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 356
    .end local v1    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v1    # "os":Ljava/io/DataOutputStream;
    goto :goto_2
.end method

.method private SetFormat(I)V
    .locals 1
    .param p1, "n"    # I

    .prologue
    .line 146
    packed-switch p1, :pswitch_data_0

    .line 160
    :goto_0
    return-void

    .line 148
    :pswitch_0
    const-string v0, "audio/*"

    sput-object v0, Lcom/methnm/coantec/activity/ListViewActivity;->format:Ljava/lang/String;

    goto :goto_0

    .line 152
    :pswitch_1
    const-string v0, "image/*"

    sput-object v0, Lcom/methnm/coantec/activity/ListViewActivity;->format:Ljava/lang/String;

    goto :goto_0

    .line 156
    :pswitch_2
    const-string v0, "video/*"

    sput-object v0, Lcom/methnm/coantec/activity/ListViewActivity;->format:Ljava/lang/String;

    goto :goto_0

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/methnm/coantec/activity/ListViewActivity;II)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1, p2}, Lcom/methnm/coantec/activity/ListViewActivity;->Delete_Dialog(II)V

    return-void
.end method

.method static synthetic access$1(Lcom/methnm/coantec/activity/ListViewActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 371
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/ListViewActivity;->initData(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$2(Lcom/methnm/coantec/activity/ListViewActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/ListViewActivity;->openFile(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$3(Lcom/methnm/coantec/activity/ListViewActivity;II)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/methnm/coantec/activity/ListViewActivity;->ChildDelete(II)V

    return-void
.end method

.method static synthetic access$4(Lcom/methnm/coantec/activity/ListViewActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->notice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/methnm/coantec/activity/ListViewActivity;Ljava/io/File;I)Z
    .locals 1

    .prologue
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/methnm/coantec/activity/ListViewActivity;->FilterFile(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method private getAdapterIsSetDefaultPath()Z
    .locals 5

    .prologue
    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "bool":Z
    const-string v2, "IsSetDefaultPath"

    .line 449
    const/4 v3, 0x0

    .line 448
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/ListViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 450
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "IsSetDefaultPath"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 451
    iget-object v2, p0, Lcom/methnm/coantec/activity/ListViewActivity;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bool="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    return v0
.end method

.method private initData(Ljava/io/File;)V
    .locals 11
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    const/4 v6, 0x0

    .line 372
    new-instance v2, Lcom/methnm/coantec/activity/ListViewActivity$3;

    invoke-direct {v2, p0}, Lcom/methnm/coantec/activity/ListViewActivity$3;-><init>(Lcom/methnm/coantec/activity/ListViewActivity;)V

    .line 378
    .local v2, "filter":Ljava/io/FileFilter;
    invoke-virtual {p1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 379
    .local v3, "filterFiles":[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    .line 380
    array-length v7, v3

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_2

    .line 386
    new-instance v5, Lcom/methnm/coantec/moudle/FileAdapter;

    iget-object v7, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    iget-object v8, p0, Lcom/methnm/coantec/activity/ListViewActivity;->child:Ljava/util/List;

    sget v9, Lcom/methnm/coantec/activity/ListViewActivity;->index:I

    invoke-direct {v5, p0, v7, v8, v9}, Lcom/methnm/coantec/moudle/FileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V

    iput-object v5, p0, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    .line 387
    iget-object v5, p0, Lcom/methnm/coantec/activity/ListViewActivity;->expandList:Landroid/widget/ExpandableListView;

    iget-object v7, p0, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    invoke-virtual {v5, v7}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 388
    array-length v7, v3

    move v5, v6

    :goto_1
    if-lt v5, v7, :cond_4

    .line 397
    :cond_0
    iget-object v5, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/methnm/coantec/activity/ListViewActivity;->child:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 398
    iget-object v5, p0, Lcom/methnm/coantec/activity/ListViewActivity;->notice:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    :cond_1
    return-void

    .line 380
    :cond_2
    aget-object v1, v3, v5

    .line 381
    .local v1, "file":Ljava/io/File;
    new-instance v8, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v8}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "date":Ljava/lang/String;
    iget-object v8, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 383
    invoke-virtual {p0, v0, v1}, Lcom/methnm/coantec/activity/ListViewActivity;->addInfo(Ljava/lang/String;Ljava/io/File;)V

    .line 380
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 388
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "file":Ljava/io/File;
    :cond_4
    aget-object v1, v3, v5

    .line 389
    .restart local v1    # "file":Ljava/io/File;
    new-instance v8, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v8}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    .restart local v0    # "date":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    iget-object v8, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_5

    .line 388
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 391
    :cond_5
    iget-object v8, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 392
    invoke-direct {p0, v4, v1}, Lcom/methnm/coantec/activity/ListViewActivity;->ChildAdd(ILjava/io/File;)V

    .line 390
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/ListViewActivity;->getCurPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->curPath:Ljava/lang/String;

    .line 330
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "curPath=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/methnm/coantec/activity/ListViewActivity;->curPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, "sdcardDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 335
    invoke-direct {p0}, Lcom/methnm/coantec/activity/ListViewActivity;->getAdapterIsSetDefaultPath()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/methnm/coantec/activity/ListViewActivity;->curPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->folder:Ljava/io/File;

    .line 340
    :goto_0
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->folder:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/methnm/coantec/activity/ListViewActivity;->initData(Ljava/io/File;)V

    .line 344
    return-void

    .line 338
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/methnm/coantec/activity/ListViewActivity;->curPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/DCIM/SOAY/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->folder:Ljava/io/File;

    goto :goto_0
.end method

.method private openFile(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 403
    sget v0, Lcom/methnm/coantec/activity/ListViewActivity;->index:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 404
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "path=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-class v0, Lcom/methnm/coantec/activity/PhotoPlayer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/methnm/coantec/activity/ListViewActivity;->startIntent(Ljava/lang/Class;Ljava/lang/String;)V

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    const-class v0, Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/methnm/coantec/activity/ListViewActivity;->startIntent(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startIntent(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 425
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 426
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/ListViewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 427
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/ListViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 429
    return-void
.end method


# virtual methods
.method public addInfo(Ljava/io/File;Ljava/util/List;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "temp1":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 78
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->child:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    return-void
.end method

.method public addInfo(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v0, "item":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/methnm/coantec/activity/ListViewActivity;->child:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public getCurPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 438
    const-string v2, "CurPath"

    .line 439
    const/4 v3, 0x0

    .line 438
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/ListViewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 440
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "CurPath"

    sget-object v3, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/methnm/coantec/activity/ListViewActivity;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "path=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    return-object v0
.end method

.method public initialData()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->child:Ljava/util/List;

    .line 67
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/ListViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 114
    const/16 v5, 0x80

    .line 113
    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 115
    const v4, 0x7f030013

    invoke-virtual {p0, v4}, Lcom/methnm/coantec/activity/ListViewActivity;->setContentView(I)V

    .line 116
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/ListViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 117
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 118
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "index"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sput v4, Lcom/methnm/coantec/activity/ListViewActivity;->index:I

    .line 119
    sget v4, Lcom/methnm/coantec/activity/ListViewActivity;->index:I

    invoke-direct {p0, v4}, Lcom/methnm/coantec/activity/ListViewActivity;->SetFormat(I)V

    .line 120
    iput-object p0, p0, Lcom/methnm/coantec/activity/ListViewActivity;->activity:Landroid/app/Activity;

    .line 122
    const v4, 0x7f09004d

    invoke-virtual {p0, v4}, Lcom/methnm/coantec/activity/ListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ExpandableListView;

    iput-object v4, p0, Lcom/methnm/coantec/activity/ListViewActivity;->expandList:Landroid/widget/ExpandableListView;

    .line 125
    const v4, 0x7f090043

    invoke-virtual {p0, v4}, Lcom/methnm/coantec/activity/ListViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/methnm/coantec/activity/ListViewActivity;->notice:Landroid/widget/TextView;

    .line 126
    iget-object v4, p0, Lcom/methnm/coantec/activity/ListViewActivity;->notice:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    iget-object v4, p0, Lcom/methnm/coantec/activity/ListViewActivity;->expandList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, v6}, Landroid/widget/ExpandableListView;->setGroupIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 128
    iget-object v4, p0, Lcom/methnm/coantec/activity/ListViewActivity;->expandList:Landroid/widget/ExpandableListView;

    new-instance v5, Lcom/methnm/coantec/activity/ListViewActivity$GroupClicked;

    invoke-direct {v5, p0, v6}, Lcom/methnm/coantec/activity/ListViewActivity$GroupClicked;-><init>(Lcom/methnm/coantec/activity/ListViewActivity;Lcom/methnm/coantec/activity/ListViewActivity$GroupClicked;)V

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 129
    iget-object v4, p0, Lcom/methnm/coantec/activity/ListViewActivity;->expandList:Landroid/widget/ExpandableListView;

    new-instance v5, Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;

    invoke-direct {v5, p0, v6}, Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;-><init>(Lcom/methnm/coantec/activity/ListViewActivity;Lcom/methnm/coantec/activity/ListViewActivity$ChildClicked;)V

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 130
    iget-object v4, p0, Lcom/methnm/coantec/activity/ListViewActivity;->expandList:Landroid/widget/ExpandableListView;

    new-instance v5, Lcom/methnm/coantec/activity/ListViewActivity$ItemLongClicked;

    invoke-direct {v5, p0, v6}, Lcom/methnm/coantec/activity/ListViewActivity$ItemLongClicked;-><init>(Lcom/methnm/coantec/activity/ListViewActivity;Lcom/methnm/coantec/activity/ListViewActivity$ItemLongClicked;)V

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/ListViewActivity;->initialData()V

    .line 134
    new-instance v4, Lcom/methnm/coantec/moudle/FileAdapter;

    iget-object v5, p0, Lcom/methnm/coantec/activity/ListViewActivity;->group:Ljava/util/List;

    iget-object v6, p0, Lcom/methnm/coantec/activity/ListViewActivity;->child:Ljava/util/List;

    sget v7, Lcom/methnm/coantec/activity/ListViewActivity;->index:I

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/methnm/coantec/moudle/FileAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;I)V

    iput-object v4, p0, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    .line 135
    iget-object v4, p0, Lcom/methnm/coantec/activity/ListViewActivity;->expandList:Landroid/widget/ExpandableListView;

    iget-object v5, p0, Lcom/methnm/coantec/activity/ListViewActivity;->adapter:Lcom/methnm/coantec/moudle/FileAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 136
    invoke-direct {p0}, Lcom/methnm/coantec/activity/ListViewActivity;->initView()V

    .line 137
    iget-object v4, p0, Lcom/methnm/coantec/activity/ListViewActivity;->expandList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v1

    .line 138
    .local v1, "groupCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 143
    return-void

    .line 139
    :cond_0
    iget-object v4, p0, Lcom/methnm/coantec/activity/ListViewActivity;->expandList:Landroid/widget/ExpandableListView;

    invoke-virtual {v4, v2}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 414
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/ListViewActivity;->finish()V

    .line 416
    new-instance v0, Landroid/content/Intent;

    .line 417
    const-class v1, Lcom/methnm/coantec/activity/AudioSelectActivity;

    .line 416
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 418
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/ListViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 421
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
