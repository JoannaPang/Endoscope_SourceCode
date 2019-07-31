.class public Lcom/methnm/coantec/activity/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/methnm/coantec/activity/MainActivity$ClickListener;,
        Lcom/methnm/coantec/activity/MainActivity$SeeekBarChange;
    }
.end annotation


# static fields
.field private static final SCAN_OK:I


# instance fields
.field private Tag:Ljava/lang/String;

.field private Wifi_Coantec_Big:Landroid/widget/ImageView;

.field private Wifi_Coantec_Capture_RelativeLayout:Landroid/widget/RelativeLayout;

.field private Wifi_Coantec_Capture_Time:Landroid/widget/TextView;

.field private Wifi_Coantec_Gallery:Landroid/widget/ImageView;

.field private Wifi_Coantec_Help:Landroid/widget/ImageView;

.field private Wifi_Coantec_LeftArea:Landroid/widget/ImageView;

.field private Wifi_Coantec_Left_Layout:Landroid/widget/RelativeLayout;

.field private Wifi_Coantec_Pause:Landroid/widget/ImageView;

.field private Wifi_Coantec_Photo:Landroid/widget/ImageView;

.field private Wifi_Coantec_Rec:Landroid/widget/ImageView;

.field private Wifi_Coantec_RightArea:Landroid/widget/ImageView;

.field private Wifi_Coantec_Right_Layout:Landroid/widget/RelativeLayout;

.field private Wifi_Coantec_Rotate:Landroid/widget/ImageView;

.field private Wifi_Coantec_Small:Landroid/widget/ImageView;

.field private Wifi_Coantec_SurfaceView:Lcom/methnm/coantec/moudle/SurfaceView;

.field private Wifi_Coantec_Video:Landroid/widget/ImageView;

.field private bm:Landroid/graphics/Bitmap;

.field private bm2:Landroid/graphics/Bitmap;

.field private bm3:Landroid/graphics/Bitmap;

.field private bm4:Landroid/graphics/Bitmap;

.field private bm5:Landroid/graphics/Bitmap;

.field private bm6:Landroid/graphics/Bitmap;

.field private capture:B

.field private capture_press_flag:Z

.field private config:Lcom/methnm/coantec/moudle/Config;

.field private curPath:Ljava/lang/String;

.field private gd_main_photos:Landroid/widget/GridView;

.field private handler:Landroid/os/Handler;

.field private height:I

.field private isZoom:Z

.field private is_screen_landscape:Z

.field private is_video_pause:Z

.field private iv1:Landroid/widget/ImageView;

.field private iv1_zoom:Landroid/widget/ImageView;

.field private iv2:Landroid/widget/ImageView;

.field private iv2_zoom:Landroid/widget/ImageView;

.field private iv4:Landroid/widget/ImageView;

.field private iv4_zoom:Landroid/widget/ImageView;

.field private iv5:Landroid/widget/ImageView;

.field private iv5_zoom:Landroid/widget/ImageView;

.field private iv_big:Landroid/widget/ImageView;

.field private iv_small:Landroid/widget/ImageView;

.field private linear_photo:Landroid/widget/LinearLayout;

.field private linear_photo_zoom:Landroid/widget/LinearLayout;

.field mHandler:Landroid/os/Handler;

.field private mKeyTime:J

.field private mPathConfig:Lcom/methnm/coantec/moudle/PathConfig;

.field private mPoint:Landroid/graphics/Point;

.field private mSwitchConfig:Lcom/methnm/coantec/moudle/SwitchConfig;

.field private main_adapter:Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;

.field main_photoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private media:Lcom/methnm/coantec/moudle/Media;

.field private myJpgPath:Ljava/lang/String;

.field private myJpgPath2:Ljava/lang/String;

.field private myJpgPath4:Ljava/lang/String;

.field private myJpgPath5:Ljava/lang/String;

.field private num:I

.field options:Landroid/graphics/BitmapFactory$Options;

.field private pic_zoom_multiple:I

.field private recording:Ljava/lang/Runnable;

.field private scale_default:F

.field private seekBars:Lcom/methnm/coantec/moudle/SeekBars;

.field private seek_height:I

.field private seek_width:I

.field private takePhotos1:Ljava/lang/Runnable;

.field private takePhotos2:Ljava/lang/Runnable;

.field private takePhotos4:Ljava/lang/Runnable;

.field private takePhotos5:Ljava/lang/Runnable;

.field private video_press_flag:Z

.field private width:I

.field private wifi:Lcom/methnm/coantec/moudle/Wifi;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->mPoint:Landroid/graphics/Point;

    .line 81
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->curPath:Ljava/lang/String;

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/methnm/coantec/activity/MainActivity;->num:I

    .line 93
    const-string v0, "path"

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath:Ljava/lang/String;

    .line 94
    const-string v0, "path2"

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath2:Ljava/lang/String;

    .line 96
    const-string v0, "path4"

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath4:Ljava/lang/String;

    .line 97
    const-string v0, "path5"

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath5:Ljava/lang/String;

    .line 117
    iput-boolean v2, p0, Lcom/methnm/coantec/activity/MainActivity;->isZoom:Z

    .line 120
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Photo:Landroid/widget/ImageView;

    .line 121
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Video:Landroid/widget/ImageView;

    .line 122
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Gallery:Landroid/widget/ImageView;

    .line 123
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_SurfaceView:Lcom/methnm/coantec/moudle/SurfaceView;

    .line 124
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Rotate:Landroid/widget/ImageView;

    .line 125
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Pause:Landroid/widget/ImageView;

    .line 126
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Help:Landroid/widget/ImageView;

    .line 127
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Big:Landroid/widget/ImageView;

    .line 128
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Small:Landroid/widget/ImageView;

    .line 129
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_LeftArea:Landroid/widget/ImageView;

    .line 130
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_RightArea:Landroid/widget/ImageView;

    .line 131
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Rec:Landroid/widget/ImageView;

    .line 132
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->wifi:Lcom/methnm/coantec/moudle/Wifi;

    .line 133
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->media:Lcom/methnm/coantec/moudle/Media;

    .line 134
    iput-boolean v2, p0, Lcom/methnm/coantec/activity/MainActivity;->video_press_flag:Z

    .line 135
    iput-boolean v2, p0, Lcom/methnm/coantec/activity/MainActivity;->capture_press_flag:Z

    .line 136
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Capture_RelativeLayout:Landroid/widget/RelativeLayout;

    .line 137
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Capture_Time:Landroid/widget/TextView;

    .line 138
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Left_Layout:Landroid/widget/RelativeLayout;

    .line 139
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Right_Layout:Landroid/widget/RelativeLayout;

    .line 140
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->seekBars:Lcom/methnm/coantec/moudle/SeekBars;

    .line 141
    iput-byte v2, p0, Lcom/methnm/coantec/activity/MainActivity;->capture:B

    .line 142
    iput-boolean v2, p0, Lcom/methnm/coantec/activity/MainActivity;->is_video_pause:Z

    .line 143
    iput v2, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    .line 144
    iput v2, p0, Lcom/methnm/coantec/activity/MainActivity;->height:I

    .line 145
    iput v2, p0, Lcom/methnm/coantec/activity/MainActivity;->seek_width:I

    .line 146
    iput v2, p0, Lcom/methnm/coantec/activity/MainActivity;->seek_height:I

    .line 147
    const-string v0, "MainActivity"

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->Tag:Ljava/lang/String;

    .line 148
    iput v2, p0, Lcom/methnm/coantec/activity/MainActivity;->pic_zoom_multiple:I

    .line 149
    iput-boolean v2, p0, Lcom/methnm/coantec/activity/MainActivity;->is_screen_landscape:Z

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/methnm/coantec/activity/MainActivity;->scale_default:F

    .line 151
    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->config:Lcom/methnm/coantec/moudle/Config;

    .line 950
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/methnm/coantec/activity/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/methnm/coantec/activity/MainActivity$1;-><init>(Lcom/methnm/coantec/activity/MainActivity;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->handler:Landroid/os/Handler;

    .line 973
    new-instance v0, Lcom/methnm/coantec/activity/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/MainActivity$2;-><init>(Lcom/methnm/coantec/activity/MainActivity;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->takePhotos1:Ljava/lang/Runnable;

    .line 990
    new-instance v0, Lcom/methnm/coantec/activity/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/MainActivity$3;-><init>(Lcom/methnm/coantec/activity/MainActivity;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->takePhotos2:Ljava/lang/Runnable;

    .line 1020
    new-instance v0, Lcom/methnm/coantec/activity/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/MainActivity$4;-><init>(Lcom/methnm/coantec/activity/MainActivity;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->takePhotos4:Ljava/lang/Runnable;

    .line 1035
    new-instance v0, Lcom/methnm/coantec/activity/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/MainActivity$5;-><init>(Lcom/methnm/coantec/activity/MainActivity;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->takePhotos5:Ljava/lang/Runnable;

    .line 1066
    new-instance v0, Lcom/methnm/coantec/activity/MainActivity$6;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/MainActivity$6;-><init>(Lcom/methnm/coantec/activity/MainActivity;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->recording:Ljava/lang/Runnable;

    .line 1075
    new-instance v0, Lcom/methnm/coantec/activity/MainActivity$7;

    invoke-direct {v0, p0}, Lcom/methnm/coantec/activity/MainActivity$7;-><init>(Lcom/methnm/coantec/activity/MainActivity;)V

    iput-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->gd_main_photos:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity;->main_adapter:Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;

    return-void
.end method

.method static synthetic access$10(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath2:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/methnm/coantec/activity/MainActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity;->bm2:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$12(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->iv2_zoom:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$13(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->bm2:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$14(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->iv2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$15(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath4:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/methnm/coantec/activity/MainActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity;->bm4:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$17(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->iv4_zoom:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$18(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->bm4:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$19(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->iv4:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->main_adapter:Lcom/methnm/coantec/moudle/GridViewMainPhotosAdapter;

    return-object v0
.end method

.method static synthetic access$20(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath5:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$21(Lcom/methnm/coantec/activity/MainActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity;->bm5:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$22(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->iv5_zoom:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$23(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->bm5:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$24(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->iv5:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$25(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Wifi;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->wifi:Lcom/methnm/coantec/moudle/Wifi;

    return-object v0
.end method

.method static synthetic access$26(Lcom/methnm/coantec/activity/MainActivity;)F
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/methnm/coantec/activity/MainActivity;->scale_default:F

    return v0
.end method

.method static synthetic access$27(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/SurfaceView;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_SurfaceView:Lcom/methnm/coantec/moudle/SurfaceView;

    return-object v0
.end method

.method static synthetic access$28(Lcom/methnm/coantec/activity/MainActivity;FII)V
    .locals 0

    .prologue
    .line 413
    invoke-direct {p0, p1, p2, p3}, Lcom/methnm/coantec/activity/MainActivity;->setArea1(FII)V

    return-void
.end method

.method static synthetic access$29(Lcom/methnm/coantec/activity/MainActivity;Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/methnm/coantec/activity/MainActivity;->isZoom:Z

    return-void
.end method

.method static synthetic access$3(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->Tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$30(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->linear_photo:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$31(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->linear_photo_zoom:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$32(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->iv_big:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$33(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->iv_small:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$34(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/Media;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->media:Lcom/methnm/coantec/moudle/Media;

    return-object v0
.end method

.method static synthetic access$35(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$36(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1252
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/MainActivity;->savePhotoPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$37(Lcom/methnm/coantec/activity/MainActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$38(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->takePhotos1:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$39(Lcom/methnm/coantec/activity/MainActivity;I)V
    .locals 0

    .prologue
    .line 91
    iput p1, p0, Lcom/methnm/coantec/activity/MainActivity;->num:I

    return-void
.end method

.method static synthetic access$4(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$40(Lcom/methnm/coantec/activity/MainActivity;)V
    .locals 0

    .prologue
    .line 1086
    invoke-direct {p0}, Lcom/methnm/coantec/activity/MainActivity;->dialogReplace()V

    return-void
.end method

.method static synthetic access$41(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath2:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$42(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1269
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/MainActivity;->savePhotoPath2(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$43(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->takePhotos2:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$44(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath4:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$45(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1303
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/MainActivity;->savePhotoPath4(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$46(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->takePhotos4:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$47(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath5:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$48(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1320
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/MainActivity;->savePhotoPath5(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$49(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->takePhotos5:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5(Lcom/methnm/coantec/activity/MainActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/methnm/coantec/activity/MainActivity;->bm:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$50(Lcom/methnm/coantec/activity/MainActivity;)Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/methnm/coantec/activity/MainActivity;->video_press_flag:Z

    return v0
.end method

.method static synthetic access$51(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Video:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$52(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Capture_RelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$53(Lcom/methnm/coantec/activity/MainActivity;Z)V
    .locals 0

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/methnm/coantec/activity/MainActivity;->video_press_flag:Z

    return-void
.end method

.method static synthetic access$54(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1144
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/MainActivity;->startIntent(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$55(Lcom/methnm/coantec/activity/MainActivity;)Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/methnm/coantec/activity/MainActivity;->is_video_pause:Z

    return v0
.end method

.method static synthetic access$56(Lcom/methnm/coantec/activity/MainActivity;Z)V
    .locals 0

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/methnm/coantec/activity/MainActivity;->is_video_pause:Z

    return-void
.end method

.method static synthetic access$57(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Pause:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$58(Lcom/methnm/coantec/activity/MainActivity;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 1152
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/MainActivity;->startIntent1(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$59(Lcom/methnm/coantec/activity/MainActivity;)Z
    .locals 1

    .prologue
    .line 1243
    invoke-direct {p0}, Lcom/methnm/coantec/activity/MainActivity;->getAdapterIsSetDefaultPath()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/methnm/coantec/activity/MainActivity;)Z
    .locals 1

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/methnm/coantec/activity/MainActivity;->isZoom:Z

    return v0
.end method

.method static synthetic access$60(Lcom/methnm/coantec/activity/MainActivity;)Lcom/methnm/coantec/moudle/PathConfig;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->mPathConfig:Lcom/methnm/coantec/moudle/PathConfig;

    return-object v0
.end method

.method static synthetic access$61(Lcom/methnm/coantec/activity/MainActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->curPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$62(Lcom/methnm/coantec/activity/MainActivity;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 925
    invoke-direct {p0, p1}, Lcom/methnm/coantec/activity/MainActivity;->getPhotoVideoList(Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$63(Lcom/methnm/coantec/activity/MainActivity;)I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/methnm/coantec/activity/MainActivity;->num:I

    return v0
.end method

.method static synthetic access$7(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->iv1_zoom:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8(Lcom/methnm/coantec/activity/MainActivity;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->bm:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$9(Lcom/methnm/coantec/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->iv1:Landroid/widget/ImageView;

    return-object v0
.end method

.method private dialogReplace()V
    .locals 5

    .prologue
    .line 1088
    const v3, 0x7f06002d

    invoke-virtual {p0, v3}, Lcom/methnm/coantec/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1089
    .local v2, "title":Ljava/lang/String;
    const v3, 0x7f06002e

    invoke-virtual {p0, v3}, Lcom/methnm/coantec/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "msg":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1091
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1092
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1094
    const v3, 0x7f06000e

    .line 1095
    new-instance v4, Lcom/methnm/coantec/activity/MainActivity$10;

    invoke-direct {v4, p0}, Lcom/methnm/coantec/activity/MainActivity$10;-><init>(Lcom/methnm/coantec/activity/MainActivity;)V

    .line 1094
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1131
    const v3, 0x7f06000f

    .line 1132
    new-instance v4, Lcom/methnm/coantec/activity/MainActivity$11;

    invoke-direct {v4, p0}, Lcom/methnm/coantec/activity/MainActivity$11;-><init>(Lcom/methnm/coantec/activity/MainActivity;)V

    .line 1131
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 1142
    return-void
.end method

.method private getAdapterIsSetDefaultPath()Z
    .locals 5

    .prologue
    .line 1244
    const/4 v0, 0x0

    .line 1245
    .local v0, "bool":Z
    const-string v2, "IsSetDefaultPath"

    .line 1246
    const/4 v3, 0x0

    .line 1245
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1247
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "IsSetDefaultPath"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1248
    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity;->Tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bool="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    return v0
.end method

.method private getPhotoVideoList(Ljava/io/File;)V
    .locals 2
    .param p1, "photoPath"    # Ljava/io/File;

    .prologue
    .line 926
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/methnm/coantec/activity/MainActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/methnm/coantec/activity/MainActivity$9;-><init>(Lcom/methnm/coantec/activity/MainActivity;Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 948
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 949
    return-void
.end method

.method private init()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 229
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 230
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 231
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    .line 232
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, p0, Lcom/methnm/coantec/activity/MainActivity;->height:I

    .line 234
    const v7, 0x7f090013

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/GridView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->gd_main_photos:Landroid/widget/GridView;

    .line 236
    const v7, 0x7f090014

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->linear_photo:Landroid/widget/LinearLayout;

    .line 237
    const v7, 0x7f09001d

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->linear_photo_zoom:Landroid/widget/LinearLayout;

    .line 238
    const v7, 0x7f090015

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv1:Landroid/widget/ImageView;

    .line 239
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv1:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    const v7, 0x7f090016

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv2:Landroid/widget/ImageView;

    .line 241
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv2:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    const v7, 0x7f090018

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv4:Landroid/widget/ImageView;

    .line 245
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv4:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    const v7, 0x7f090019

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv5:Landroid/widget/ImageView;

    .line 247
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv5:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    const v7, 0x7f09001b

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv_big:Landroid/widget/ImageView;

    .line 251
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv_big:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const v7, 0x7f09001c

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv_small:Landroid/widget/ImageView;

    .line 253
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv_small:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    const v7, 0x7f09001f

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv1_zoom:Landroid/widget/ImageView;

    .line 257
    const v7, 0x7f090020

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv2_zoom:Landroid/widget/ImageView;

    .line 259
    const v7, 0x7f090023

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv4_zoom:Landroid/widget/ImageView;

    .line 260
    const v7, 0x7f090024

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv5_zoom:Landroid/widget/ImageView;

    .line 262
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv1_zoom:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv2_zoom:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv4_zoom:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv5_zoom:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    const v7, 0x7f090004

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Photo:Landroid/widget/ImageView;

    .line 270
    const v7, 0x7f090005

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Video:Landroid/widget/ImageView;

    .line 271
    const v7, 0x7f090003

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Gallery:Landroid/widget/ImageView;

    .line 272
    const/high16 v7, 0x7f090000

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/methnm/coantec/moudle/SurfaceView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_SurfaceView:Lcom/methnm/coantec/moudle/SurfaceView;

    .line 273
    const v7, 0x7f09000c

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Capture_RelativeLayout:Landroid/widget/RelativeLayout;

    .line 274
    const v7, 0x7f09000e

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Capture_Time:Landroid/widget/TextView;

    .line 275
    const v7, 0x7f090001

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Left_Layout:Landroid/widget/RelativeLayout;

    .line 276
    const v7, 0x7f09000a

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Right_Layout:Landroid/widget/RelativeLayout;

    .line 277
    const v7, 0x7f09000d

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Rec:Landroid/widget/ImageView;

    .line 278
    const v7, 0x7f090008

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/methnm/coantec/moudle/SeekBars;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->seekBars:Lcom/methnm/coantec/moudle/SeekBars;

    .line 279
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->seekBars:Lcom/methnm/coantec/moudle/SeekBars;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$SeeekBarChange;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$SeeekBarChange;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$SeeekBarChange;)V

    invoke-virtual {v7, v8}, Lcom/methnm/coantec/moudle/SeekBars;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 280
    const v7, 0x7f090007

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Big:Landroid/widget/ImageView;

    .line 281
    const v7, 0x7f090009

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Small:Landroid/widget/ImageView;

    .line 282
    const v7, 0x7f090002

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_LeftArea:Landroid/widget/ImageView;

    .line 283
    const v7, 0x7f09000b

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_RightArea:Landroid/widget/ImageView;

    .line 285
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Big:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Small:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Photo:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Video:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Gallery:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v7, 0x7f090010

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Rotate:Landroid/widget/ImageView;

    .line 293
    const v7, 0x7f090011

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Pause:Landroid/widget/ImageView;

    .line 294
    const v7, 0x7f090012

    invoke-virtual {p0, v7}, Lcom/methnm/coantec/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Help:Landroid/widget/ImageView;

    .line 295
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Pause:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Rotate:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Help:Landroid/widget/ImageView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$ClickListener;

    invoke-direct {v8, p0, v9}, Lcom/methnm/coantec/activity/MainActivity$ClickListener;-><init>(Lcom/methnm/coantec/activity/MainActivity;Lcom/methnm/coantec/activity/MainActivity$ClickListener;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    new-instance v7, Lcom/methnm/coantec/moudle/Media;

    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/methnm/coantec/moudle/Media;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->media:Lcom/methnm/coantec/moudle/Media;

    .line 300
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 301
    const v8, 0x7f020007

    .line 300
    invoke-static {v7, v8}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 302
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iput v7, p0, Lcom/methnm/coantec/activity/MainActivity;->seek_width:I

    .line 303
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iput v7, p0, Lcom/methnm/coantec/activity/MainActivity;->seek_height:I

    .line 305
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 307
    .local v4, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->seek_width:I

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 308
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->seek_height:I

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 310
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->seekBars:Lcom/methnm/coantec/moudle/SeekBars;

    invoke-virtual {v7, v4}, Lcom/methnm/coantec/moudle/SeekBars;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 312
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->height:I

    iget v8, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    if-le v7, v8, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/methnm/coantec/activity/MainActivity;->setPortScale()V

    .line 314
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_SurfaceView:Lcom/methnm/coantec/moudle/SurfaceView;

    invoke-virtual {v7}, Lcom/methnm/coantec/moudle/SurfaceView;->setRect()V

    .line 316
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    iget v8, p0, Lcom/methnm/coantec/activity/MainActivity;->scale_default:F

    add-float/2addr v7, v8

    invoke-direct {p0, v7, v11, v11}, Lcom/methnm/coantec/activity/MainActivity;->setArea1(FII)V

    .line 329
    new-instance v7, Lcom/methnm/coantec/moudle/PathConfig;

    invoke-direct {v7, p0}, Lcom/methnm/coantec/moudle/PathConfig;-><init>(Landroid/app/Activity;)V

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->mPathConfig:Lcom/methnm/coantec/moudle/PathConfig;

    .line 330
    new-instance v7, Lcom/methnm/coantec/moudle/SwitchConfig;

    invoke-direct {v7, p0}, Lcom/methnm/coantec/moudle/SwitchConfig;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->mSwitchConfig:Lcom/methnm/coantec/moudle/SwitchConfig;

    .line 331
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->main_photoList:Ljava/util/List;

    .line 332
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->getCurPath()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->curPath:Ljava/lang/String;

    .line 334
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 336
    .local v5, "rl_linear":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v7, -0x1

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 337
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    mul-int/lit16 v7, v7, 0xc8

    div-int/lit16 v7, v7, 0x3c0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 338
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->height:I

    mul-int/lit16 v7, v7, 0x30c

    div-int/lit16 v7, v7, 0x3c0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 339
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    mul-int/lit16 v7, v7, 0xd2

    div-int/lit16 v7, v7, 0x3c0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 340
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    mul-int/lit16 v7, v7, 0xd2

    div-int/lit16 v7, v7, 0x3c0

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 341
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->linear_photo:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v6, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 345
    .local v6, "rl_linear_zoom":Landroid/widget/RelativeLayout$LayoutParams;
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 346
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->height:I

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 347
    const/16 v7, 0xa

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 348
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    mul-int/lit8 v7, v7, 0x64

    div-int/lit16 v7, v7, 0x3c0

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 349
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    mul-int/lit16 v7, v7, 0x82

    div-int/lit16 v7, v7, 0x3c0

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 350
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->linear_photo_zoom:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 352
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 354
    .local v3, "ll_zoom":Landroid/widget/RelativeLayout$LayoutParams;
    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 355
    iput v10, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 356
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->height:I

    mul-int/lit16 v7, v7, 0x375

    div-int/lit16 v7, v7, 0x3c0

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 357
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    mul-int/lit16 v7, v7, 0x2f8

    div-int/lit16 v7, v7, 0x3c0

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 358
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv_big:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 360
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 362
    .local v2, "ll_small":Landroid/widget/RelativeLayout$LayoutParams;
    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 363
    iput v10, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 364
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->height:I

    mul-int/lit16 v7, v7, 0x375

    div-int/lit16 v7, v7, 0x3c0

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 365
    iget v7, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    mul-int/lit16 v7, v7, 0x33e

    div-int/lit16 v7, v7, 0x3c0

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 366
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->iv_small:Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    iget-object v7, p0, Lcom/methnm/coantec/activity/MainActivity;->gd_main_photos:Landroid/widget/GridView;

    new-instance v8, Lcom/methnm/coantec/activity/MainActivity$8;

    invoke-direct {v8, p0}, Lcom/methnm/coantec/activity/MainActivity$8;-><init>(Lcom/methnm/coantec/activity/MainActivity;)V

    invoke-virtual {v7, v8}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 394
    return-void
.end method

.method private savePhotoPath(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1253
    const-string v2, "myJpgPath"

    .line 1254
    const/4 v3, 0x0

    .line 1253
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1255
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1256
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "myJpgPath"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1257
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1259
    return-void
.end method

.method private savePhotoPath2(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1270
    const-string v2, "myJpgPath2"

    .line 1271
    const/4 v3, 0x0

    .line 1270
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1272
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1273
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "myJpgPath2"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1274
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1276
    return-void
.end method

.method private savePhotoPath3(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1287
    const-string v2, "myJpgPath3"

    .line 1288
    const/4 v3, 0x0

    .line 1287
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1289
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1290
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "myJpgPath3"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1291
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1293
    return-void
.end method

.method private savePhotoPath4(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1304
    const-string v2, "myJpgPath4"

    .line 1305
    const/4 v3, 0x0

    .line 1304
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1306
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1307
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "myJpgPath4"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1308
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1310
    return-void
.end method

.method private savePhotoPath5(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1321
    const-string v2, "myJpgPath5"

    .line 1322
    const/4 v3, 0x0

    .line 1321
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1323
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1324
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "myJpgPath5"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1325
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1327
    return-void
.end method

.method private savePhotoPath6(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1338
    const-string v2, "myJpgPath6"

    .line 1339
    const/4 v3, 0x0

    .line 1338
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1340
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1341
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "myJpgPath6"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1342
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1344
    return-void
.end method

.method private setArea1(FII)V
    .locals 1
    .param p1, "scale_f"    # F
    .param p2, "offset_x"    # I
    .param p3, "offset_y"    # I

    .prologue
    .line 414
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_SurfaceView:Lcom/methnm/coantec/moudle/SurfaceView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/methnm/coantec/moudle/SurfaceView;->setNew(FII)V

    .line 415
    return-void
.end method

.method private setPortScale()V
    .locals 4

    .prologue
    const/4 v1, -0x1

    const/4 v3, -0x2

    .line 447
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 449
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 450
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 451
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 452
    const/4 v1, 0x3

    const v2, 0x7f09000a

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 453
    const/4 v1, 0x2

    const v2, 0x7f090001

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 454
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_SurfaceView:Lcom/methnm/coantec/moudle/SurfaceView;

    invoke-virtual {v1, v0}, Lcom/methnm/coantec/moudle/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 456
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 458
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 459
    iget v1, p0, Lcom/methnm/coantec/activity/MainActivity;->height:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit16 v1, v1, 0x280

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 460
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 461
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_LeftArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 463
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 465
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/methnm/coantec/activity/MainActivity;->width:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 466
    iget v1, p0, Lcom/methnm/coantec/activity/MainActivity;->height:I

    mul-int/lit8 v1, v1, 0x50

    div-int/lit16 v1, v1, 0x280

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 467
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 468
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_RightArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    iget v1, p0, Lcom/methnm/coantec/activity/MainActivity;->height:I

    iget v2, p0, Lcom/methnm/coantec/activity/MainActivity;->height:I

    mul-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x4

    sub-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x1e0

    int-to-float v1, v1

    iput v1, p0, Lcom/methnm/coantec/activity/MainActivity;->scale_default:F

    .line 470
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1190
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1191
    return-void
.end method

.method private startIntent(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->wifi:Lcom/methnm/coantec/moudle/Wifi;

    invoke-virtual {v1}, Lcom/methnm/coantec/moudle/Wifi;->stop()V

    .line 1146
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->finish()V

    .line 1147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1148
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1149
    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1150
    return-void
.end method

.method private startIntent1(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1153
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1154
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1155
    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 1156
    return-void
.end method


# virtual methods
.method public getCurPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1235
    const-string v2, "CurPath"

    .line 1236
    const/4 v3, 0x0

    .line 1235
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1237
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "CurPath"

    sget-object v3, Lcom/methnm/coantec/activity/FileActivity;->_currentPath:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1239
    .local v0, "path":Ljava/lang/String;
    return-object v0
.end method

.method public getImageHead(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 398
    const/4 v1, 0x0

    .line 401
    .local v1, "inpustream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    .local v2, "is":Ljava/io/FileInputStream;
    move-object v1, v2

    .line 409
    .end local v2    # "is":Ljava/io/FileInputStream;
    :goto_0
    return-object v1

    .line 405
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getPhotoPath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1261
    const-string v0, "path"

    .line 1262
    .local v0, "path":Ljava/lang/String;
    const-string v2, "myJpgPath"

    .line 1263
    const/4 v3, 0x0

    .line 1262
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1264
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "myJpgPath"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1266
    return-object v0
.end method

.method public getPhotoPath2()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1278
    const-string v0, "path2"

    .line 1279
    .local v0, "path":Ljava/lang/String;
    const-string v2, "myJpgPath2"

    .line 1280
    const/4 v3, 0x0

    .line 1279
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1281
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "myJpgPath2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1283
    return-object v0
.end method

.method public getPhotoPath3()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1295
    const-string v0, "path3"

    .line 1296
    .local v0, "path":Ljava/lang/String;
    const-string v2, "myJpgPath3"

    .line 1297
    const/4 v3, 0x0

    .line 1296
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1298
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "myJpgPath3"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1300
    return-object v0
.end method

.method public getPhotoPath4()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1312
    const-string v0, "path4"

    .line 1313
    .local v0, "path":Ljava/lang/String;
    const-string v2, "myJpgPath4"

    .line 1314
    const/4 v3, 0x0

    .line 1313
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1315
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "myJpgPath4"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1317
    return-object v0
.end method

.method public getPhotoPath5()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1329
    const-string v0, "path5"

    .line 1330
    .local v0, "path":Ljava/lang/String;
    const-string v2, "myJpgPath5"

    .line 1331
    const/4 v3, 0x0

    .line 1330
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1332
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "myJpgPath5"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1334
    return-object v0
.end method

.method public getPhotoPath6()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1346
    const-string v0, "path6"

    .line 1347
    .local v0, "path":Ljava/lang/String;
    const-string v2, "myJpgPath6"

    .line 1348
    const/4 v3, 0x0

    .line 1347
    invoke-virtual {p0, v2, v3}, Lcom/methnm/coantec/activity/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1349
    .local v1, "user":Landroid/content/SharedPreferences;
    const-string v2, "myJpgPath6"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1351
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x2

    .line 155
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 156
    const/16 v2, 0x80

    .line 155
    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 157
    new-instance v1, Lcom/methnm/coantec/moudle/Config;

    invoke-direct {v1, p0}, Lcom/methnm/coantec/moudle/Config;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->config:Lcom/methnm/coantec/moudle/Config;

    .line 158
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->config:Lcom/methnm/coantec/moudle/Config;

    invoke-virtual {v1}, Lcom/methnm/coantec/moudle/Config;->ReadScreen()I

    move-result v0

    .line 159
    .local v0, "orientation":I
    if-ne v0, v4, :cond_0

    .line 160
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/methnm/coantec/activity/MainActivity;->setRequestedOrientation(I)V

    .line 162
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/methnm/coantec/activity/MainActivity;->setContentView(I)V

    .line 164
    invoke-direct {p0}, Lcom/methnm/coantec/activity/MainActivity;->init()V

    .line 165
    new-instance v1, Lcom/methnm/coantec/moudle/Wifi;

    invoke-direct {v1, p0}, Lcom/methnm/coantec/moudle/Wifi;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->wifi:Lcom/methnm/coantec/moudle/Wifi;

    .line 166
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->wifi:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_SurfaceView:Lcom/methnm/coantec/moudle/SurfaceView;

    iget-object v3, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Rec:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/methnm/coantec/moudle/Wifi;->setWidget(Lcom/methnm/coantec/moudle/SurfaceView;Landroid/widget/ImageView;)V

    .line 167
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->wifi:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Photo:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Video:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3}, Lcom/methnm/coantec/moudle/Wifi;->setKeyValue(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 168
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->wifi:Lcom/methnm/coantec/moudle/Wifi;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity;->Wifi_Coantec_Capture_Time:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Lcom/methnm/coantec/moudle/Wifi;->setTime(Landroid/widget/TextView;)V

    .line 169
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->wifi:Lcom/methnm/coantec/moudle/Wifi;

    iget-boolean v2, p0, Lcom/methnm/coantec/activity/MainActivity;->is_video_pause:Z

    invoke-virtual {v1, v2}, Lcom/methnm/coantec/moudle/Wifi;->Pause_Video(Z)V

    .line 173
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->options:Landroid/graphics/BitmapFactory$Options;

    .line 174
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->options:Landroid/graphics/BitmapFactory$Options;

    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 175
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath:Ljava/lang/String;

    .line 176
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->getPhotoPath2()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath2:Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->getPhotoPath4()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath4:Ljava/lang/String;

    .line 179
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->getPhotoPath5()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath5:Ljava/lang/String;

    .line 181
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->bm:Landroid/graphics/Bitmap;

    .line 182
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath2:Ljava/lang/String;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->bm2:Landroid/graphics/Bitmap;

    .line 184
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath4:Ljava/lang/String;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->bm4:Landroid/graphics/Bitmap;

    .line 185
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath5:Ljava/lang/String;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity;->options:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->bm5:Landroid/graphics/Bitmap;

    .line 187
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->iv1:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath2:Ljava/lang/String;

    const-string v2, "path2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->iv2:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity;->bm2:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath4:Ljava/lang/String;

    const-string v2, "path4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 208
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->iv4:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity;->bm4:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath5:Ljava/lang/String;

    const-string v2, "path5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 214
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->iv5:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/methnm/coantec/activity/MainActivity;->bm5:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 224
    :cond_4
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "==\u521d\u59cb\u5316\u65f6myJpgPath=="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/methnm/coantec/activity/MainActivity;->myJpgPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/methnm/coantec/activity/MainActivity;->Tag:Ljava/lang/String;

    const-string v2, "--\u53c8\u52a0\u8f7d\u4e86\u4e00\u6b21--"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1172
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/methnm/coantec/activity/MainActivity;->mKeyTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/methnm/coantec/activity/MainActivity;->mKeyTime:J

    .line 1177
    const v0, 0x7f06002c

    invoke-virtual {p0, v0}, Lcom/methnm/coantec/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1176
    invoke-direct {p0, v0}, Lcom/methnm/coantec/activity/MainActivity;->showToast(Ljava/lang/String;)V

    .line 1184
    :goto_0
    const/4 v0, 0x1

    .line 1186
    :goto_1
    return v0

    .line 1179
    :cond_0
    iget-object v0, p0, Lcom/methnm/coantec/activity/MainActivity;->wifi:Lcom/methnm/coantec/moudle/Wifi;

    invoke-virtual {v0}, Lcom/methnm/coantec/moudle/Wifi;->stop()V

    .line 1180
    invoke-virtual {p0}, Lcom/methnm/coantec/activity/MainActivity;->finish()V

    .line 1181
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 1186
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method
