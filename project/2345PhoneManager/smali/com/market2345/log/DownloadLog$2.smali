.class final Lcom/market2345/log/DownloadLog$2;
.super Ljava/lang/Thread;
.source "DownloadLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/log/DownloadLog;->downloadEvent(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$filePath:Ljava/lang/String;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/market2345/log/DownloadLog$2;->val$filePath:Ljava/lang/String;

    iput p2, p0, Lcom/market2345/log/DownloadLog$2;->val$type:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v6

    .line 98
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/download/DownloadManager;->getDownloadUri()Landroid/net/Uri;

    move-result-object v1

    const-string v3, "uri = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v9, p0, Lcom/market2345/log/DownloadLog$2;->val$filePath:Ljava/lang/String;

    aput-object v9, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 100
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 101
    new-instance v8, Lcom/market2345/download/DownloadInfo$Reader;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v1

    invoke-direct {v8, v0, v7, v1}, Lcom/market2345/download/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/market2345/download/DownloadManager;)V

    .line 102
    .local v8, "reader":Lcom/market2345/download/DownloadInfo$Reader;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    iget v0, p0, Lcom/market2345/log/DownloadLog$2;->val$type:I

    new-instance v1, Lcom/market2345/download/StorageManager;

    invoke-direct {v1, v6}, Lcom/market2345/download/StorageManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6, v1}, Lcom/market2345/download/DownloadInfo$Reader;->newDownloadInfo(Landroid/content/Context;Lcom/market2345/download/StorageManager;)Lcom/market2345/download/DownloadInfo;

    move-result-object v1

    # invokes: Lcom/market2345/log/DownloadLog;->downloadEvent(ILcom/market2345/download/DownloadInfo;)V
    invoke-static {v0, v1}, Lcom/market2345/log/DownloadLog;->access$000(ILcom/market2345/download/DownloadInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    .end local v8    # "reader":Lcom/market2345/download/DownloadInfo$Reader;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    .line 108
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 107
    :cond_1
    if-eqz v7, :cond_2

    .line 108
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_2
    return-void
.end method
