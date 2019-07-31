.class Lcom/methnm/coantec/moudle/Timer1s$1;
.super Ljava/util/TimerTask;
.source "Timer1s.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/methnm/coantec/moudle/Timer1s;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/methnm/coantec/moudle/Timer1s;


# direct methods
.method constructor <init>(Lcom/methnm/coantec/moudle/Timer1s;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/methnm/coantec/moudle/Timer1s$1;->this$0:Lcom/methnm/coantec/moudle/Timer1s;

    .line 41
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/methnm/coantec/moudle/Timer1s$1;->this$0:Lcom/methnm/coantec/moudle/Timer1s;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/methnm/coantec/moudle/Timer1s;->access$0(Lcom/methnm/coantec/moudle/Timer1s;I)V

    .line 47
    return-void
.end method
