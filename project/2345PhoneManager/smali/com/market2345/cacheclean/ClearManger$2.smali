.class Lcom/market2345/cacheclean/ClearManger$2;
.super Ljava/lang/Thread;
.source "ClearManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/ClearManger;->delaySetNotify(Landroid/content/pm/PackageManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/ClearManger;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/ClearManger;Landroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/market2345/cacheclean/ClearManger$2;->this$0:Lcom/market2345/cacheclean/ClearManger;

    iput-object p2, p0, Lcom/market2345/cacheclean/ClearManger$2;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/32 v10, 0x300000

    .line 131
    iget-object v3, p0, Lcom/market2345/cacheclean/ClearManger$2;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v3}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanResidual;->getRamCacheSize()J

    move-result-wide v6

    .line 132
    .local v6, "total":J
    const/4 v2, 0x0

    .line 133
    .local v2, "notifyNum":I
    const-wide/16 v4, 0x0

    .line 134
    .local v4, "per":J
    const-wide/32 v8, 0x1f400000

    cmp-long v3, v6, v8

    if-lez v3, :cond_1

    .line 136
    const-wide/32 v4, 0x18ffa00

    .line 137
    const-wide/32 v8, 0x1900000

    div-long v8, v6, v8

    long-to-int v2, v8

    .line 159
    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-le v2, v3, :cond_5

    .line 161
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_5

    .line 163
    sub-long/2addr v6, v4

    .line 164
    iget-object v3, p0, Lcom/market2345/cacheclean/ClearManger$2;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v3}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lcom/market2345/cacheclean/ScanResidual;->setRamCacheSize(J)V

    .line 165
    iget-object v3, p0, Lcom/market2345/cacheclean/ClearManger$2;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v3}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v3

    const/16 v8, 0xa

    invoke-virtual {v3, v8}, Lcom/market2345/cacheclean/ScanResidual;->setNotify(I)V

    .line 168
    const-wide/16 v8, 0x32

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 139
    .end local v1    # "i":I
    :cond_1
    const-wide/32 v8, 0xc800000

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    .line 141
    const-wide/32 v4, 0x13ffa00

    .line 142
    const-wide/32 v8, 0x1400000

    div-long v8, v6, v8

    long-to-int v2, v8

    goto :goto_0

    .line 144
    :cond_2
    const-wide/32 v8, 0x6400000

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    .line 146
    const-wide/32 v4, 0xeffa00

    .line 147
    const-wide/32 v8, 0xf00000

    div-long v8, v6, v8

    long-to-int v2, v8

    goto :goto_0

    .line 149
    :cond_3
    const-wide/32 v8, 0x1e00000

    cmp-long v3, v6, v8

    if-ltz v3, :cond_4

    .line 151
    const-wide/32 v4, 0x5ffa00

    .line 152
    const-wide/32 v8, 0x600000

    div-long v8, v6, v8

    long-to-int v2, v8

    goto :goto_0

    .line 154
    :cond_4
    cmp-long v3, v6, v10

    if-ltz v3, :cond_0

    .line 156
    const-wide/32 v4, 0x2ffa00

    .line 157
    div-long v8, v6, v10

    long-to-int v2, v8

    goto :goto_0

    .line 170
    .restart local v1    # "i":I
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 178
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    :cond_5
    iget-object v3, p0, Lcom/market2345/cacheclean/ClearManger$2;->this$0:Lcom/market2345/cacheclean/ClearManger;

    iget-object v8, p0, Lcom/market2345/cacheclean/ClearManger$2;->val$pm:Landroid/content/pm/PackageManager;

    # invokes: Lcom/market2345/cacheclean/ClearManger;->notifyEnd(Landroid/content/pm/PackageManager;)V
    invoke-static {v3, v8}, Lcom/market2345/cacheclean/ClearManger;->access$100(Lcom/market2345/cacheclean/ClearManger;Landroid/content/pm/PackageManager;)V

    .line 180
    return-void
.end method
