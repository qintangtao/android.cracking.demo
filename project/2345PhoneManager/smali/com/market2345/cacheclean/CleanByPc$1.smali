.class Lcom/market2345/cacheclean/CleanByPc$1;
.super Landroid/os/Handler;
.source "CleanByPc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/cacheclean/CleanByPc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanByPc;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanByPc;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    .line 42
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    # getter for: Lcom/market2345/cacheclean/CleanByPc;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v3}, Lcom/market2345/cacheclean/CleanByPc;->access$100(Lcom/market2345/cacheclean/CleanByPc;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanResidual;->getRamCacheSize()J

    move-result-wide v4

    # setter for: Lcom/market2345/cacheclean/CleanByPc;->cacheSize:J
    invoke-static {v2, v4, v5}, Lcom/market2345/cacheclean/CleanByPc;->access$002(Lcom/market2345/cacheclean/CleanByPc;J)J

    .line 43
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    # getter for: Lcom/market2345/cacheclean/CleanByPc;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v3}, Lcom/market2345/cacheclean/CleanByPc;->access$100(Lcom/market2345/cacheclean/CleanByPc;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanResidual;->getTotalSize()J

    move-result-wide v4

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    # getter for: Lcom/market2345/cacheclean/CleanByPc;->cacheSize:J
    invoke-static {v3}, Lcom/market2345/cacheclean/CleanByPc;->access$000(Lcom/market2345/cacheclean/CleanByPc;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    # setter for: Lcom/market2345/cacheclean/CleanByPc;->sdSize:J
    invoke-static {v2, v4, v5}, Lcom/market2345/cacheclean/CleanByPc;->access$202(Lcom/market2345/cacheclean/CleanByPc;J)J

    .line 44
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/CleanByPc;->oneKeyClear()V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_2

    .line 49
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    # getter for: Lcom/market2345/cacheclean/CleanByPc;->clearManger:Lcom/market2345/cacheclean/ClearManger;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanByPc;->access$300(Lcom/market2345/cacheclean/CleanByPc;)Lcom/market2345/cacheclean/ClearManger;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    # getter for: Lcom/market2345/cacheclean/CleanByPc;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v4}, Lcom/market2345/cacheclean/CleanByPc;->access$100(Lcom/market2345/cacheclean/CleanByPc;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanResidual;->getSdCleanList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/market2345/cacheclean/ClearManger;->cleanSD(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 51
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 53
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    # getter for: Lcom/market2345/cacheclean/CleanByPc;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanByPc;->access$400(Lcom/market2345/cacheclean/CleanByPc;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 55
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 56
    .local v1, "mg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "cache_size"

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    # getter for: Lcom/market2345/cacheclean/CleanByPc;->cacheSize:J
    invoke-static {v3}, Lcom/market2345/cacheclean/CleanByPc;->access$000(Lcom/market2345/cacheclean/CleanByPc;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 58
    const-string v2, "sd_size"

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    # getter for: Lcom/market2345/cacheclean/CleanByPc;->sdSize:J
    invoke-static {v3}, Lcom/market2345/cacheclean/CleanByPc;->access$200(Lcom/market2345/cacheclean/CleanByPc;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 59
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 60
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    # getter for: Lcom/market2345/cacheclean/CleanByPc;->CLEAN_END:I
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanByPc;->access$500(Lcom/market2345/cacheclean/CleanByPc;)I

    move-result v2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 61
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    # getter for: Lcom/market2345/cacheclean/CleanByPc;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanByPc;->access$400(Lcom/market2345/cacheclean/CleanByPc;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 63
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "mg":Landroid/os/Message;
    :cond_3
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    # getter for: Lcom/market2345/cacheclean/CleanByPc;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanByPc;->access$100(Lcom/market2345/cacheclean/CleanByPc;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    invoke-virtual {v2, v3}, Lcom/market2345/cacheclean/ScanResidual;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 64
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanByPc$1;->this$0:Lcom/market2345/cacheclean/CleanByPc;

    # getter for: Lcom/market2345/cacheclean/CleanByPc;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanByPc;->access$100(Lcom/market2345/cacheclean/CleanByPc;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->close()V

    goto :goto_0
.end method
