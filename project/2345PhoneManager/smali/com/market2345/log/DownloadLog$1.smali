.class final Lcom/market2345/log/DownloadLog$1;
.super Ljava/lang/Thread;
.source "DownloadLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/log/DownloadLog;->downloadEvent(IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$downloadId:J

.field final synthetic val$type:I


# direct methods
.method constructor <init>(JI)V
    .locals 1

    .prologue
    .line 63
    iput-wide p1, p0, Lcom/market2345/log/DownloadLog$1;->val$downloadId:J

    iput p3, p0, Lcom/market2345/log/DownloadLog$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 67
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v6

    .line 69
    .local v6, "context":Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v1

    iget-wide v4, p0, Lcom/market2345/log/DownloadLog$1;->val$downloadId:J

    invoke-virtual {v1, v4, v5}, Lcom/market2345/download/DownloadManager;->getDownloadUriWithID(J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 71
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 72
    new-instance v8, Lcom/market2345/download/DownloadInfo$Reader;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v6}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v1

    invoke-direct {v8, v0, v7, v1}, Lcom/market2345/download/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/market2345/download/DownloadManager;)V

    .line 73
    .local v8, "reader":Lcom/market2345/download/DownloadInfo$Reader;
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget v0, p0, Lcom/market2345/log/DownloadLog$1;->val$type:I

    new-instance v1, Lcom/market2345/download/StorageManager;

    invoke-direct {v1, v6}, Lcom/market2345/download/StorageManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v6, v1}, Lcom/market2345/download/DownloadInfo$Reader;->newDownloadInfo(Landroid/content/Context;Lcom/market2345/download/StorageManager;)Lcom/market2345/download/DownloadInfo;

    move-result-object v1

    # invokes: Lcom/market2345/log/DownloadLog;->downloadEvent(ILcom/market2345/download/DownloadInfo;)V
    invoke-static {v0, v1}, Lcom/market2345/log/DownloadLog;->access$000(ILcom/market2345/download/DownloadInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 78
    .end local v8    # "reader":Lcom/market2345/download/DownloadInfo$Reader;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_0

    .line 79
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 78
    :cond_1
    if-eqz v7, :cond_2

    .line 79
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 84
    :cond_2
    return-void
.end method
