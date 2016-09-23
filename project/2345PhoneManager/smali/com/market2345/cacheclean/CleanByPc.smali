.class public Lcom/market2345/cacheclean/CleanByPc;
.super Ljava/lang/Object;
.source "CleanByPc.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;


# instance fields
.field private CLEAN_END:I

.field private cacheSize:J

.field private clearManger:Lcom/market2345/cacheclean/ClearManger;

.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbPath:Ljava/lang/String;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mScan:Lcom/market2345/cacheclean/ScanResidual;

.field private sdSize:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/16 v0, 0x40

    iput v0, p0, Lcom/market2345/cacheclean/CleanByPc;->CLEAN_END:I

    .line 34
    new-instance v0, Lcom/market2345/cacheclean/CleanByPc$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanByPc$1;-><init>(Lcom/market2345/cacheclean/CleanByPc;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanByPc;->handler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanByPc;->context:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/market2345/cacheclean/CleanByPc;->mHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcom/market2345/cacheclean/ClearManger;

    invoke-direct {v0, p1}, Lcom/market2345/cacheclean/ClearManger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanByPc;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanByPc;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanByPc;

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/market2345/cacheclean/CleanByPc;->cacheSize:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/market2345/cacheclean/CleanByPc;J)J
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanByPc;
    .param p1, "x1"    # J

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/market2345/cacheclean/CleanByPc;->cacheSize:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/CleanByPc;)Lcom/market2345/cacheclean/ScanResidual;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanByPc;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanByPc;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/cacheclean/CleanByPc;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanByPc;

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/market2345/cacheclean/CleanByPc;->sdSize:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/market2345/cacheclean/CleanByPc;J)J
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanByPc;
    .param p1, "x1"    # J

    .prologue
    .line 14
    iput-wide p1, p0, Lcom/market2345/cacheclean/CleanByPc;->sdSize:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/market2345/cacheclean/CleanByPc;)Lcom/market2345/cacheclean/ClearManger;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanByPc;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanByPc;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/cacheclean/CleanByPc;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanByPc;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanByPc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/cacheclean/CleanByPc;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanByPc;

    .prologue
    .line 14
    iget v0, p0, Lcom/market2345/cacheclean/CleanByPc;->CLEAN_END:I

    return v0
.end method


# virtual methods
.method public cleanOnBackground()V
    .locals 4

    .prologue
    .line 106
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanByPc;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanByPc;->dbPath:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanByPc;->dbPath:Ljava/lang/String;

    const-string v2, "clearpath.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanByPc;->context:Landroid/content/Context;

    const-string v2, "clearpath.db"

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanByPc;->dbPath:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/market2345/cacheclean/Util;->copyAssetData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 112
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanByPc;->dbPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "clearpath.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanByPc;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 113
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanByPc;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/market2345/cacheclean/ScanResidual;->get(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanByPc;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    .line 114
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanByPc;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanByPc;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2}, Lcom/market2345/cacheclean/ScanResidual;->setSQLiteDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 115
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanByPc;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v1, p0}, Lcom/market2345/cacheclean/ScanResidual;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 116
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanByPc;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ScanResidual;->startScan()V

    .line 117
    return-void
.end method

.method public oneKeyClear()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanByPc;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->getTotalSize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanByPc;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/ClearManger;->CleanAllCache(Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 5
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v4, 0xe

    const/16 v3, 0xb

    const/4 v2, 0x6

    .line 80
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 81
    .local v0, "mes":Landroid/os/Message;
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 84
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 86
    iput v2, v0, Landroid/os/Message;->what:I

    .line 100
    :cond_0
    :goto_0
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanByPc;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void

    :cond_1
    move-object v1, p2

    .line 89
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 91
    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 94
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 96
    iput v4, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method
