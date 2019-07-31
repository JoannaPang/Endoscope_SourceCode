.class public Lcom/methnm/coantec/activity/PhotoGridviewActivity;
.super Landroid/app/Activity;
.source "PhotoGridviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/activity/PhotoGridviewActivity$GroupClicked;,
        Lcom/methnm/coantec/activity/PhotoGridviewActivity$ItemLongClicked;
    }
.end annotation


# static fields
.field static DT:Ljava/sql/Date; = null

.field public static final MENU_ADD:I = 0x1

.field public static final MENU_DELETE:I = 0x2

.field private static final SCAN_OK:I

.field static format:Ljava/lang/String;

.field static index:I

.field public static photoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Tag:Ljava/lang/String;

.field activity:Landroid/app/Activity;

.field adapter:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

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

.field private folder:Ljava/io/File;

.field private gd_photo:Landroid/widget/GridView;

.field private handler:Landroid/os/Handler;

.field private mPathConfig:Lcom/methnm/coantec/moudle/PathConfig;

.field private mSwitchConfig:Lcom/methnm/coantec/moudle/SwitchConfig;

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
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->photoList:Ljava/util/List;

    .line 66
    const/4 v0, -0x1

    sput v0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->index:I

    .line 69
    const-string v0, "image/*"

    sput-object v0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->format:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->adapter:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    .line 67
    iput-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->notice:Landroid/widget/TextView;

    .line 68
    const-string v0, "ListViewActivity"

    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->Tag:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->curPath:Ljava/lang/String;

    .line 480
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/methnm/coantec/activity/PhotoGridviewActivity$1;

    invoke-direct {v1, p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity$1;-><init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->handler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method private ChildDelete(II)V
    .locals 2
    .param p1, "grouplocation"    # I
    .param p2, "childlocation"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->temp:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->temp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->child:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->adapter:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;->notifyDataSetChanged()V

    .line 122
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->child:Ljava/util/List;

    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->temp:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private Delete_Dialog(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 302
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    const-string v1, "\u63d0\u793a\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 305
    const-string v2, "\u5220\u9664\u6587\u4ef6\uff01"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 306
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/methnm/coantec/activity/PhotoGridviewActivity$4;

    invoke-direct {v3, p0, p1}, Lcom/methnm/coantec/activity/PhotoGridviewActivity$4;-><init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 335
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/methnm/coantec/activity/PhotoGridviewActivity$5;

    invoke-direct {v3, p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity$5;-><init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 342
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 343
    return-void
.end method

.method private FilterFile(Ljava/io/File;I)Z
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .param p2, "n"    # I

    .prologue
    .line 217
    const/4 v0, 0x1

    .line 218
    .local v0, "Is_right_format":Z
    packed-switch p2, :pswitch_data_0

    .line 282
    :goto_0
    return v0

    .line 220
    :pswitch_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "soay-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".m4a"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 224
    const-string v2, ".m3u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 225
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 226
    const-string v2, ".m4b"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 227
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 228
    const-string v2, ".m4p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 230
    const-string v2, ".mp2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 232
    const-string v2, ".mp3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 234
    const-string v2, ".ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 236
    const-string v2, ".wma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    const/4 v0, 0x1

    .line 239
    goto/16 :goto_0

    .line 240
    :cond_1
    const/4 v0, 0x0

    .line 243
    goto/16 :goto_0

    .line 245
    :pswitch_1
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "soay-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 247
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 248
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 249
    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 251
    :cond_2
    const/4 v0, 0x1

    .line 252
    goto/16 :goto_0

    .line 253
    :cond_3
    const/4 v0, 0x0

    .line 255
    goto/16 :goto_0

    .line 257
    :pswitch_2
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 258
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "soay-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 259
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".avi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 260
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 261
    const-string v2, ".m4v"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 262
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 263
    const-string v2, ".m4u"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 264
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 265
    const-string v2, ".mpe"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 266
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 267
    const-string v2, ".mpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 268
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 269
    const-string v2, ".mpg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 270
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 271
    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 272
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 273
    const-string v2, ".mpg4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 274
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 275
    :cond_4
    const/4 v0, 0x1

    .line 276
    goto/16 :goto_0

    .line 277
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 218
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
    .line 402
    const/4 v3, 0x0

    .line 403
    .local v3, "process":Ljava/lang/Process;
    const/4 v1, 0x0

    .line 405
    .local v1, "os":Ljava/io/DataOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const-string v5, "su"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 406
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
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

    .line 408
    const-string v4, "exit\n"

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 410
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 415
    if-eqz v2, :cond_0

    .line 416
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    .line 418
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 423
    :goto_0
    const/4 v4, 0x1

    move-object v1, v2

    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v1    # "os":Ljava/io/DataOutputStream;
    :goto_1
    return v4

    .line 411
    :catch_0
    move-exception v0

    .line 415
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    if-eqz v1, :cond_1

    .line 416
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 418
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 412
    :goto_3
    const/4 v4, 0x0

    goto :goto_1

    .line 419
    :catch_1
    move-exception v0

    .line 420
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 413
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 415
    :goto_4
    if-eqz v1, :cond_2

    .line 416
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 418
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 422
    :goto_5
    throw v4

    .line 419
    :catch_2
    move-exception v0

    .line 420
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "os":Ljava/io/DataOutputStream;
    .restart local v2    # "os":Ljava/io/DataOutputStream;
    :catch_3
    move-exception v0

    .line 420
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 413
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "os":Ljava/io/DataOutputStream;
    .restart local v1    # "os":Ljava/io/DataOutputStream;
    goto :goto_4

    .line 411
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
    .line 199
    packed-switch p1, :pswitch_data_0

    .line 213
    :goto_0
    return-void

    .line 201
    :pswitch_0
    const-string v0, "audio/*"

    sput-object v0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->format:Ljava/lang/String;

    goto :goto_0

    .line 205
    :pswitch_1
    const-string v0, "image/*"

    sput-object v0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->format:Ljava/lang/String;

    goto :goto_0

    .line 209
    :pswitch_2
    const-string v0, "video/*"

    sput-object v0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->format:Ljava/lang/String;

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->gd_photo:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/methnm/coantec/activity/PhotoGridviewActivity;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 525
    invoke-direct {p0, p1, p2}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->startIntent(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/methnm/coantec/activity/PhotoGridviewActivity;I)V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->Delete_Dialog(I)V

    return-void
.end method

.method static synthetic access$3(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->notice:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/methnm/coantec/activity/PhotoGridviewActivity;Ljava/io/File;I)Z
    .locals 1

    .prologue
    .line 215
    invoke-direct {p0, p1, p2}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->FilterFile(Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)Lcom/methnm/coantec/moudle/PathConfig;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->mPathConfig:Lcom/methnm/coantec/moudle/PathConfig;

    return-object v0
.end method

.method static synthetic access$6(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private getAdapterIsSetDefaultPath()Z
    .locals 5

    .prologue
    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "bool":Z
    const-string v2, "IsSetDefaultPath"

    .line 550
    const/4 v3, 0x0

    .line 549
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 551
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "IsSetDefaultPath"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 552
    iget-object v2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bool="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return v0
.end method

.method private getPhotoVideoList(Ljava/io/File;)V
    .locals 2
    .param p1, "photoPath"    # Ljava/io/File;

    .prologue
    .line 461
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/methnm/coantec/activity/PhotoGridviewActivity$7;

    invoke-direct {v1, p0, p1}, Lcom/methnm/coantec/activity/PhotoGridviewActivity$7;-><init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 478
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 479
    return-void
.end method

.method private initData(Ljava/io/File;)V
    .locals 9
    .param p1, "folder"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 427
    new-instance v1, Lcom/methnm/coantec/activity/PhotoGridviewActivity$6;

    invoke-direct {v1, p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity$6;-><init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)V

    .line 434
    .local v1, "filter":Ljava/io/FileFilter;
    invoke-virtual {p1, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 435
    .local v2, "filterFiles":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 436
    array-length v5, v2

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_1

    .line 444
    new-instance v4, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    sget-object v5, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->photoList:Ljava/util/List;

    iget-object v6, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->gd_photo:Landroid/widget/GridView;

    invoke-direct {v4, p0, v5, v6}, Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/widget/GridView;)V

    iput-object v4, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->adapter:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    .line 445
    iget-object v4, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->gd_photo:Landroid/widget/GridView;

    iget-object v5, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->adapter:Lcom/methnm/coantec/moudle/GridViewPhotosAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 447
    array-length v4, v2

    :goto_1
    if-lt v3, v4, :cond_2

    .line 459
    :cond_0
    return-void

    .line 436
    :cond_1
    aget-object v0, v2, v4

    .line 437
    .local v0, "file":Ljava/io/File;
    new-instance v6, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v6}, Ljava/sql/Date;->toString()Ljava/lang/String;

    .line 436
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 447
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    aget-object v0, v2, v3

    .line 448
    .restart local v0    # "file":Ljava/io/File;
    new-instance v5, Ljava/sql/Date;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/sql/Date;-><init>(J)V

    invoke-virtual {v5}, Ljava/sql/Date;->toString()Ljava/lang/String;

    .line 447
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getCurPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->curPath:Ljava/lang/String;

    .line 385
    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "curPath=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->curPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v0, 0x0

    .line 387
    .local v0, "sdcardDir":Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 390
    invoke-direct {p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getAdapterIsSetDefaultPath()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->curPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->folder:Ljava/io/File;

    .line 395
    :goto_0
    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->folder:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 398
    :cond_0
    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->folder:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->initData(Ljava/io/File;)V

    .line 399
    return-void

    .line 393
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->curPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/DCIM/SOAY/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->folder:Ljava/io/File;

    goto :goto_0
.end method

.method private openFile(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 502
    sget v0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->index:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->Tag:Ljava/lang/String;

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

    .line 504
    const-class v0, Lcom/methnm/coantec/activity/PhotoPlayer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->startIntent(Ljava/lang/Class;Ljava/lang/String;)V

    .line 509
    :goto_0
    return-void

    .line 506
    :cond_0
    const-class v0, Lcom/methnm/coantec/activity/VideoPlayer;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->startIntent(Ljava/lang/Class;Ljava/lang/String;)V

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
    .line 526
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 527
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 528
    const-string v1, "path"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 530
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
    .line 92
    .local p2, "temp1":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 93
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->child:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_0
    return-void
.end method

.method public addInfo(Ljava/lang/String;Ljava/io/File;)V
    .locals 2
    .param p1, "p"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v0, "item":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->child:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    return-void
.end method

.method public getCurPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 539
    const-string v2, "CurPath"

    .line 540
    const/4 v3, 0x0

    .line 539
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 541
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "CurPath"

    sget-object v3, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    .local v0, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "path=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    return-object v0
.end method

.method public initialData()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->child:Ljava/util/List;

    .line 82
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 129
    const/16 v3, 0x80

    .line 128
    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 130
    const v2, 0x7f03000c

    invoke-virtual {p0, v2}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 132
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 136
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->SetFormat(I)V

    .line 137
    iput-object p0, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->activity:Landroid/app/Activity;

    .line 140
    const v2, 0x7f090042

    invoke-virtual {p0, v2}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    iput-object v2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->gd_photo:Landroid/widget/GridView;

    .line 141
    new-instance v2, Lcom/methnm/coantec/moudle/PathConfig;

    invoke-direct {v2, p0}, Lcom/methnm/coantec/moudle/PathConfig;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->mPathConfig:Lcom/methnm/coantec/moudle/PathConfig;

    .line 142
    new-instance v2, Lcom/methnm/coantec/moudle/SwitchConfig;

    invoke-direct {v2, p0}, Lcom/methnm/coantec/moudle/SwitchConfig;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->mSwitchConfig:Lcom/methnm/coantec/moudle/SwitchConfig;

    .line 143
    const v2, 0x7f090043

    invoke-virtual {p0, v2}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->notice:Landroid/widget/TextView;

    .line 152
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->initialData()V

    .line 153
    invoke-direct {p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->initView()V

    .line 160
    invoke-direct {p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getAdapterIsSetDefaultPath()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 162
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->curPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getPhotoVideoList(Ljava/io/File;)V

    .line 175
    :goto_0
    iget-object v2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->gd_photo:Landroid/widget/GridView;

    new-instance v3, Lcom/methnm/coantec/activity/PhotoGridviewActivity$2;

    invoke-direct {v3, p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity$2;-><init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 184
    iget-object v2, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->gd_photo:Landroid/widget/GridView;

    new-instance v3, Lcom/methnm/coantec/activity/PhotoGridviewActivity$3;

    invoke-direct {v3, p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity$3;-><init>(Lcom/methnm/coantec/activity/PhotoGridviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 196
    return-void

    .line 165
    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->curPath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/DCIM/SOAY/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->getPhotoVideoList(Ljava/io/File;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 513
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 515
    new-instance v0, Landroid/content/Intent;

    .line 516
    const-class v1, Lcom/methnm/coantec/activity/AudioSelectActivity;

    .line 515
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->finish()V

    .line 519
    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/PhotoGridviewActivity;->startActivity(Landroid/content/Intent;)V

    .line 522
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method
