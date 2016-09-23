.class Lcom/market2345/download/DownloadManager$1;
.super Ljava/lang/Thread;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/download/DownloadManager;->loadDownloadInfos(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$1;->this$0:Lcom/market2345/download/DownloadManager;

    iput-object p2, p0, Lcom/market2345/download/DownloadManager$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 624
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v16, "patchingList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/download/DownloadInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/download/DownloadManager$1;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;
    invoke-static {v2}, Lcom/market2345/download/DownloadManager;->access$000(Lcom/market2345/download/DownloadManager;)Ljava/util/Map;

    move-result-object v18

    monitor-enter v18

    .line 628
    :try_start_0
    const-string v7, "lastModified ASC "

    .line 630
    .local v7, "sortOrder":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/download/DownloadManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/market2345/download/Downloads$Impl;->INIT_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    .line 632
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 633
    new-instance v17, Lcom/market2345/download/DownloadInfo$Reader;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/download/DownloadManager$1;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/market2345/download/DownloadManager;->access$100(Lcom/market2345/download/DownloadManager;)Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/download/DownloadManager$1;->this$0:Lcom/market2345/download/DownloadManager;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v9, v3}, Lcom/market2345/download/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/market2345/download/DownloadManager;)V

    .line 634
    .local v17, "reader":Lcom/market2345/download/DownloadInfo$Reader;
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 635
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/download/DownloadManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/download/DownloadManager$1;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mStorageManager:Lcom/market2345/download/StorageManager;
    invoke-static {v3}, Lcom/market2345/download/DownloadManager;->access$200(Lcom/market2345/download/DownloadManager;)Lcom/market2345/download/StorageManager;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3, v4}, Lcom/market2345/download/DownloadInfo$Reader;->newDownloadInfo(Landroid/content/Context;Lcom/market2345/download/StorageManager;Z)Lcom/market2345/download/DownloadInfo;

    move-result-object v12

    .line 637
    .local v12, "info":Lcom/market2345/download/DownloadInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/download/DownloadManager$1;->this$0:Lcom/market2345/download/DownloadManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/download/DownloadManager$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, v16

    # invokes: Lcom/market2345/download/DownloadManager;->handleStatus(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;Ljava/util/List;)V
    invoke-static {v2, v3, v12, v0}, Lcom/market2345/download/DownloadManager;->access$300(Lcom/market2345/download/DownloadManager;Landroid/content/Context;Lcom/market2345/download/DownloadInfo;Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 644
    .end local v12    # "info":Lcom/market2345/download/DownloadInfo;
    .end local v17    # "reader":Lcom/market2345/download/DownloadInfo$Reader;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_0

    .line 645
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    .line 648
    .end local v7    # "sortOrder":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    monitor-exit v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 641
    .restart local v7    # "sortOrder":Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/download/DownloadManager$1;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getMarketHandler()Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 644
    if-eqz v9, :cond_2

    .line 645
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 648
    :cond_2
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 650
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/market2345/download/DownloadInfo;

    .line 651
    .restart local v12    # "info":Lcom/market2345/download/DownloadInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/download/DownloadManager$1;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    iget-object v3, v12, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v13

    .line 652
    .local v13, "installedApp":Lcom/market2345/model/InstalledApp;
    if-eqz v13, :cond_4

    .line 654
    iget-object v15, v12, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 655
    .local v15, "patchPath":Ljava/lang/String;
    const-string v2, "."

    invoke-virtual {v15, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    .line 656
    .local v11, "index":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v15, v3, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_full.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 658
    .local v14, "newPath":Ljava/lang/String;
    iget-object v2, v13, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    invoke-static {v2, v14, v15}, Lcom/market2345/util/PatchUtils;->patch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    .line 659
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 660
    .local v8, "contentValues":Landroid/content/ContentValues;
    const-string v2, "fileName"

    invoke-virtual {v8, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/download/DownloadManager$1;->this$0:Lcom/market2345/download/DownloadManager;

    # getter for: Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/download/DownloadManager;->access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v12}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v8, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 663
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 666
    .end local v8    # "contentValues":Landroid/content/ContentValues;
    .end local v11    # "index":I
    .end local v14    # "newPath":Ljava/lang/String;
    .end local v15    # "patchPath":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/market2345/download/DownloadManager$1;->this$0:Lcom/market2345/download/DownloadManager;

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    iget-wide v0, v12, Lcom/market2345/download/DownloadInfo;->mId:J

    move-wide/from16 v18, v0

    aput-wide v18, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/market2345/download/DownloadManager;->deleteDownload(Z[J)V

    goto/16 :goto_1

    .line 669
    .end local v12    # "info":Lcom/market2345/download/DownloadInfo;
    .end local v13    # "installedApp":Lcom/market2345/model/InstalledApp;
    :cond_5
    return-void
.end method
