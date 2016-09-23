.class public Lcom/market2345/fileHandle/model/CopySchedule;
.super Ljava/lang/Object;
.source "CopySchedule.java"


# instance fields
.field public command:Ljava/lang/String;

.field public deltaSize:J

.field public error:Ljava/lang/String;

.field public error_code:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public taskFinish:Z

.field public totalSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/market2345/fileHandle/model/CopySchedule;->command:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/fileHandle/model/CopySchedule;->taskFinish:Z

    .line 21
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 24
    iput-wide v2, p0, Lcom/market2345/fileHandle/model/CopySchedule;->deltaSize:J

    .line 25
    iput-wide v2, p0, Lcom/market2345/fileHandle/model/CopySchedule;->totalSize:J

    .line 26
    iput-object v0, p0, Lcom/market2345/fileHandle/model/CopySchedule;->error:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/market2345/fileHandle/model/CopySchedule;->error_code:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/market2345/fileHandle/model/CopySchedule;->fileName:Ljava/lang/String;

    .line 29
    return-void
.end method
