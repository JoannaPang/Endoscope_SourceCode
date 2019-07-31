.class Lcom/methnm/coantec/moudle/PathConfig$2;
.super Ljava/lang/Object;
.source "PathConfig.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/moudle/PathConfig;->sortVideoList(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/moudle/PathConfig;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/moudle/PathConfig;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/moudle/PathConfig$2;->this$0:Lcom/methnm/coantec/moudle/PathConfig;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 5
    .param p1, "curFile"    # Ljava/io/File;
    .param p2, "nextFile"    # Ljava/io/File;

    .prologue
    .line 319
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 320
    .local v0, "firstDate":J
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 321
    .local v2, "nextDate":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/methnm/coantec/moudle/PathConfig$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method
