.class Lcom/market2345/cacheclean/ClearManger$4;
.super Ljava/lang/Thread;
.source "ClearManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/ClearManger;->cleanSD(ZLjava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/ClearManger;

.field final synthetic val$info:Ljava/util/ArrayList;

.field final synthetic val$thumbnai:Z


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/ClearManger;ZLjava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    iput-boolean p2, p0, Lcom/market2345/cacheclean/ClearManger$4;->val$thumbnai:Z

    iput-object p3, p0, Lcom/market2345/cacheclean/ClearManger$4;->val$info:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 239
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    const/4 v8, 0x1

    # setter for: Lcom/market2345/cacheclean/ClearManger;->isRun:Z
    invoke-static {v5, v8}, Lcom/market2345/cacheclean/ClearManger;->access$402(Lcom/market2345/cacheclean/ClearManger;Z)Z

    .line 241
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->folderFullPath:Ljava/lang/String;
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$500(Lcom/market2345/cacheclean/ClearManger;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->val$thumbnai:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 243
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    iget-object v8, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->folderFullPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/market2345/cacheclean/ClearManger;->access$500(Lcom/market2345/cacheclean/ClearManger;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/market2345/cacheclean/ClearManger;->deleteAllFiles(Ljava/lang/String;)V
    invoke-static {v5, v8}, Lcom/market2345/cacheclean/ClearManger;->access$600(Lcom/market2345/cacheclean/ClearManger;Ljava/lang/String;)V

    .line 245
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v5

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/market2345/cacheclean/ScanResidual;->setBitmapNum(I)V

    .line 246
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v5

    const-wide/16 v8, 0x0

    invoke-virtual {v5, v8, v9}, Lcom/market2345/cacheclean/ScanResidual;->setBitmapSize(J)V

    .line 247
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v5

    const/16 v8, 0xc

    invoke-virtual {v5, v8}, Lcom/market2345/cacheclean/ScanResidual;->setNotify(I)V

    .line 249
    :cond_0
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->val$info:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->val$info:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 251
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->val$info:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 253
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->isRun:Z
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$400(Lcom/market2345/cacheclean/ClearManger;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 290
    .end local v2    # "i":I
    :goto_1
    return-void

    .line 257
    .restart local v2    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->val$info:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/cacheclean/AppSDCacheInfo;

    .line 258
    .local v3, "item":Lcom/market2345/cacheclean/AppSDCacheInfo;
    invoke-virtual {v3}, Lcom/market2345/cacheclean/AppSDCacheInfo;->getCacheSize()J

    move-result-wide v6

    .line 259
    .local v6, "size":J
    invoke-virtual {v3}, Lcom/market2345/cacheclean/AppSDCacheInfo;->getCachePath()Ljava/lang/String;

    move-result-object v4

    .line 260
    .local v4, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v1, "file":Ljava/io/File;
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # invokes: Lcom/market2345/cacheclean/ClearManger;->clearFiles(Ljava/io/File;)V
    invoke-static {v5, v1}, Lcom/market2345/cacheclean/ClearManger;->access$700(Lcom/market2345/cacheclean/ClearManger;Ljava/io/File;)V

    .line 263
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 265
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 267
    :cond_2
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v5

    iget-object v8, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v8}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v8

    invoke-virtual {v8}, Lcom/market2345/cacheclean/ScanResidual;->getUnloadNum()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v5, v8}, Lcom/market2345/cacheclean/ScanResidual;->setUnloadNum(I)V

    .line 268
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v5

    iget-object v8, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v8}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v8

    invoke-virtual {v8}, Lcom/market2345/cacheclean/ScanResidual;->getUnloadSize()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-virtual {v5, v8, v9}, Lcom/market2345/cacheclean/ScanResidual;->setUnloadSize(J)V

    .line 270
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v5

    invoke-virtual {v5}, Lcom/market2345/cacheclean/ScanResidual;->getSdCleanList()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 272
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v5

    invoke-virtual {v5}, Lcom/market2345/cacheclean/ScanResidual;->getSdCleanList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 274
    :cond_3
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v5

    const/16 v8, 0xd

    invoke-virtual {v5, v8}, Lcom/market2345/cacheclean/ScanResidual;->setNotify(I)V

    .line 251
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 279
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/market2345/cacheclean/AppSDCacheInfo;
    .end local v4    # "path":Ljava/lang/String;
    .end local v6    # "size":J
    :cond_4
    const-wide/16 v8, 0x64

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_2
    iget-object v5, p0, Lcom/market2345/cacheclean/ClearManger$4;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v5}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v5

    const/16 v8, 0xe

    invoke-virtual {v5, v8}, Lcom/market2345/cacheclean/ScanResidual;->setNotify(I)V

    goto/16 :goto_1

    .line 281
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method
