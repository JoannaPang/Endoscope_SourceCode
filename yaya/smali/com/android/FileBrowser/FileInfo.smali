.class public Lcom/android/FileBrowser/FileInfo;
.super Ljava/lang/Object;
.source "FileInfo.java"


# instance fields
.field public FileCount:I

.field public FolderCount:I

.field public IsDirectory:Z

.field public Name:Ljava/lang/String;

.field public Path:Ljava/lang/String;

.field public Size:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-boolean v0, p0, Lcom/android/FileBrowser/FileInfo;->IsDirectory:Z

    .line 14
    iput v0, p0, Lcom/android/FileBrowser/FileInfo;->FileCount:I

    .line 15
    iput v0, p0, Lcom/android/FileBrowser/FileInfo;->FolderCount:I

    .line 9
    return-void
.end method


# virtual methods
.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/FileBrowser/FileInfo;->IsDirectory:Z

    if-eqz v0, :cond_0

    .line 20
    const v0, 0x7f02001a

    .line 23
    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020017

    goto :goto_0
.end method
