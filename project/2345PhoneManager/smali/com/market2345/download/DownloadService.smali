.class public Lcom/market2345/download/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# static fields
.field public static final DOWNLOAD_URI_KEY:Ljava/lang/String; = "download.uri.key"

.field private static final TAG:Ljava/lang/String;

.field public static sNotifyUriHandler:Landroid/os/Handler;


# instance fields
.field private mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private volatile mLastStartId:I

.field private mNotifyUriCallback:Landroid/os/Handler$Callback;

.field private mNotifyUriThread:Landroid/os/HandlerThread;

.field private mResolver:Landroid/content/ContentResolver;

.field private mStorageManager:Lcom/market2345/download/StorageManager;

.field private mUpdateCallback:Landroid/os/Handler$Callback;

.field private mUpdateHandler:Landroid/os/Handler;

.field private mUpdateThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/market2345/download/DownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/download/DownloadService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    invoke-static {}, Lcom/market2345/download/DownloadService;->buildDownloadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/download/DownloadService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 94
    new-instance v0, Lcom/market2345/download/DownloadService$1;

    invoke-direct {v0, p0}, Lcom/market2345/download/DownloadService$1;-><init>(Lcom/market2345/download/DownloadService;)V

    iput-object v0, p0, Lcom/market2345/download/DownloadService;->mNotifyUriCallback:Landroid/os/Handler$Callback;

    .line 203
    new-instance v0, Lcom/market2345/download/DownloadService$2;

    invoke-direct {v0, p0}, Lcom/market2345/download/DownloadService$2;-><init>(Lcom/market2345/download/DownloadService;)V

    iput-object v0, p0, Lcom/market2345/download/DownloadService;->mUpdateCallback:Landroid/os/Handler$Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/download/DownloadService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/download/DownloadService;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadService;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadService;->enqueueUpdate(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/download/DownloadService;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadService;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadService;->deleteLocked(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/market2345/download/DownloadService;Landroid/net/Uri;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadService;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadService;->updateLocked(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/download/DownloadService;)Lcom/market2345/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    return-object v0
.end method

.method private static buildDownloadExecutor()Ljava/util/concurrent/ExecutorService;
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 64
    const/4 v0, 0x2

    .line 68
    .local v0, "maxConcurrent":I
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 71
    .local v1, "executor":Ljava/util/concurrent/ThreadPoolExecutor;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 74
    :cond_0
    return-object v1
.end method

.method private deleteFile(Lcom/market2345/download/DownloadInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 330
    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v0, "file":Ljava/io/File;
    iget-boolean v1, p1, Lcom/market2345/download/DownloadInfo;->mDeleteFile:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    iget-object v1, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    const v2, 0x7f0b0147

    invoke-virtual {v1, v2}, Lcom/market2345/download/DownloadManager;->showToast(I)V

    .line 338
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private deleteLocked(Landroid/net/Uri;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 233
    iget-object v10, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    monitor-enter v10

    .line 235
    :try_start_0
    const-string v3, "status = ? "

    .line 236
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "490"

    aput-object v1, v4, v0

    .line 238
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 239
    .local v6, "cursor":Landroid/database/Cursor;
    new-instance v9, Lcom/market2345/download/DownloadInfo$Reader;

    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-direct {v9, v0, v6, v1}, Lcom/market2345/download/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/market2345/download/DownloadManager;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 241
    .local v9, "reader":Lcom/market2345/download/DownloadInfo$Reader;
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 242
    invoke-direct {p0}, Lcom/market2345/download/DownloadService;->showDelDialog()V

    .line 243
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    const-string v0, "uri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 245
    .local v7, "downloadUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v0, v7}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v8

    .line 246
    .local v8, "info":Lcom/market2345/download/DownloadInfo;
    if-eqz v8, :cond_0

    .line 247
    const/4 v0, 0x0

    invoke-virtual {v9, v8, v0}, Lcom/market2345/download/DownloadInfo$Reader;->updateFromDatabase(Lcom/market2345/download/DownloadInfo;Z)V

    .line 249
    iget v0, v8, Lcom/market2345/download/DownloadInfo;->mStatus:I

    const/16 v1, 0x25a

    if-eq v0, v1, :cond_1

    .line 250
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v8}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v0, v8}, Lcom/market2345/download/DownloadManager;->removeDownloadInfo(Lcom/market2345/download/DownloadInfo;)V

    .line 252
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v2, v8, v5}, Lcom/market2345/download/DownloadManager;->downloadsChange(ZILcom/market2345/download/DownloadInfo;Z)V

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v0}, Lcom/market2345/download/DownloadManager;->getTasks()Ljava/util/Map;

    move-result-object v0

    iget-object v1, v8, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 257
    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadService;->deleteFile(Lcom/market2345/download/DownloadInfo;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 265
    .end local v7    # "downloadUrl":Ljava/lang/String;
    .end local v8    # "info":Lcom/market2345/download/DownloadInfo;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 266
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 269
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v6    # "cursor":Landroid/database/Cursor;
    .end local v9    # "reader":Lcom/market2345/download/DownloadInfo$Reader;
    :catchall_1
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 261
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "reader":Lcom/market2345/download/DownloadInfo$Reader;
    :cond_3
    :try_start_3
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getMarketHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    invoke-direct {p0}, Lcom/market2345/download/DownloadService;->dismissDelDialog()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 265
    :cond_4
    if-eqz v6, :cond_5

    .line 266
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_5
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 270
    return-void
.end method

.method private dismissDelDialog()V
    .locals 3

    .prologue
    .line 273
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getMarketHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 274
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 275
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 276
    return-void
.end method

.method private enqueueUpdate(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 173
    monitor-enter p0

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "inverse":Z
    :try_start_0
    sget-object v4, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 176
    .local v2, "match":I
    const/4 v0, -0x1

    .line 178
    .local v0, "id":I
    packed-switch v2, :pswitch_data_0

    .line 188
    :goto_0
    :pswitch_0
    iget-object v4, p0, Lcom/market2345/download/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 189
    if-eqz v1, :cond_0

    .line 190
    neg-int v0, v0

    .line 193
    :cond_0
    iget-object v4, p0, Lcom/market2345/download/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v4, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 194
    .local v3, "msg":Landroid/os/Message;
    iget v4, p0, Lcom/market2345/download/DownloadService;->mLastStartId:I

    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 195
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 196
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 197
    monitor-exit p0

    .line 200
    return-void

    .line 180
    .end local v3    # "msg":Landroid/os/Message;
    :pswitch_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 181
    goto :goto_0

    .line 183
    :pswitch_2
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    long-to-int v0, v4

    .line 184
    const/4 v1, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "id":I
    .end local v2    # "match":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 178
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getNotifyUriHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/market2345/download/DownloadService;->sNotifyUriHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private insertDownloadLocked(Lcom/market2345/download/DownloadInfo$Reader;)Lcom/market2345/download/DownloadInfo;
    .locals 4
    .param p1, "reader"    # Lcom/market2345/download/DownloadInfo$Reader;

    .prologue
    .line 342
    iget-object v1, p0, Lcom/market2345/download/DownloadService;->mStorageManager:Lcom/market2345/download/StorageManager;

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v1, v2}, Lcom/market2345/download/DownloadInfo$Reader;->newDownloadInfo(Landroid/content/Context;Lcom/market2345/download/StorageManager;Z)Lcom/market2345/download/DownloadInfo;

    move-result-object v0

    .line 343
    .local v0, "info":Lcom/market2345/download/DownloadInfo;
    sget-object v1, Lcom/market2345/download/DownloadService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "info.mUrl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-object v0
.end method

.method private showDelDialog()V
    .locals 3

    .prologue
    .line 279
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getMarketHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 280
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 281
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 282
    return-void
.end method

.method private updateDownload(Lcom/market2345/download/DownloadInfo$Reader;Lcom/market2345/download/DownloadInfo;)V
    .locals 1
    .param p1, "reader"    # Lcom/market2345/download/DownloadInfo$Reader;
    .param p2, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 351
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/market2345/download/DownloadInfo$Reader;->updateFromDatabase(Lcom/market2345/download/DownloadInfo;Z)V

    .line 352
    return-void
.end method

.method private updateLocked(Landroid/net/Uri;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 287
    iget-object v11, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    monitor-enter v11

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v6

    .line 292
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 294
    new-instance v9, Lcom/market2345/download/DownloadInfo$Reader;

    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-direct {v9, v0, v6, v1}, Lcom/market2345/download/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/market2345/download/DownloadManager;)V

    .line 295
    .local v9, "reader":Lcom/market2345/download/DownloadInfo$Reader;
    const-string v0, "uri"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 296
    .local v10, "uriColumn":I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, "downloadUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v0, v7}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v8

    .line 301
    .local v8, "info":Lcom/market2345/download/DownloadInfo;
    if-nez v8, :cond_2

    .line 302
    invoke-direct {p0, v9}, Lcom/market2345/download/DownloadService;->insertDownloadLocked(Lcom/market2345/download/DownloadInfo$Reader;)Lcom/market2345/download/DownloadInfo;

    move-result-object v8

    .line 303
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v0, v8}, Lcom/market2345/download/DownloadManager;->putDownloadInfo(Lcom/market2345/download/DownloadInfo;)Lcom/market2345/download/DownloadInfo;

    .line 304
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getMarketHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 308
    :goto_1
    invoke-virtual {v8}, Lcom/market2345/download/DownloadInfo;->notifyProgress()V

    .line 310
    iget v0, v8, Lcom/market2345/download/DownloadInfo;->mStatus:I

    const/16 v1, 0x25a

    if-ne v0, v1, :cond_0

    iget-boolean v0, v8, Lcom/market2345/download/DownloadInfo;->mDeleteFile:Z

    if-eqz v0, :cond_0

    .line 312
    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadService;->deleteFile(Lcom/market2345/download/DownloadInfo;)V

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v8, v0}, Lcom/market2345/download/DownloadInfo;->startDownloadIfReady(Ljava/util/concurrent/ExecutorService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 322
    .end local v7    # "downloadUrl":Ljava/lang/String;
    .end local v8    # "info":Lcom/market2345/download/DownloadInfo;
    .end local v9    # "reader":Lcom/market2345/download/DownloadInfo$Reader;
    .end local v10    # "uriColumn":I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_1

    .line 323
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 326
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 306
    .restart local v6    # "cursor":Landroid/database/Cursor;
    .restart local v7    # "downloadUrl":Ljava/lang/String;
    .restart local v8    # "info":Lcom/market2345/download/DownloadInfo;
    .restart local v9    # "reader":Lcom/market2345/download/DownloadInfo$Reader;
    .restart local v10    # "uriColumn":I
    :cond_2
    :try_start_3
    invoke-direct {p0, v9, v8}, Lcom/market2345/download/DownloadService;->updateDownload(Lcom/market2345/download/DownloadInfo$Reader;Lcom/market2345/download/DownloadInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 322
    .end local v7    # "downloadUrl":Ljava/lang/String;
    .end local v8    # "info":Lcom/market2345/download/DownloadInfo;
    .end local v9    # "reader":Lcom/market2345/download/DownloadInfo$Reader;
    .end local v10    # "uriColumn":I
    :cond_3
    if-eqz v6, :cond_4

    .line 323
    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 326
    :cond_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 327
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 122
    sget-boolean v0, Lcom/market2345/download/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "DownloadManager"

    const-string v1, "Service onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    new-instance v0, Lcom/market2345/download/StorageManager;

    invoke-direct {v0, p0}, Lcom/market2345/download/StorageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/download/DownloadService;->mStorageManager:Lcom/market2345/download/StorageManager;

    .line 128
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/market2345/download/DownloadService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-UpdateThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/market2345/download/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    .line 129
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 130
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/market2345/download/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/download/DownloadService;->mUpdateCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/market2345/download/DownloadService;->mUpdateHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/market2345/download/DownloadService;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-NotifyUriThread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/market2345/download/DownloadService;->mNotifyUriThread:Landroid/os/HandlerThread;

    .line 133
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mNotifyUriThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 134
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/market2345/download/DownloadService;->mNotifyUriThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/download/DownloadService;->mNotifyUriCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/market2345/download/DownloadService;->sNotifyUriHandler:Landroid/os/Handler;

    .line 136
    invoke-static {p0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 138
    invoke-virtual {p0}, Lcom/market2345/download/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/download/DownloadService;->mResolver:Landroid/content/ContentResolver;

    .line 141
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mNotifyUriThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 163
    iget-object v0, p0, Lcom/market2345/download/DownloadService;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 164
    const/4 v0, 0x0

    sput-object v0, Lcom/market2345/download/DownloadService;->sNotifyUriHandler:Landroid/os/Handler;

    .line 165
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 166
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 145
    sget-object v1, Lcom/market2345/download/DownloadService;->TAG:Ljava/lang/String;

    const-string v2, "DownloadService onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput p3, p0, Lcom/market2345/download/DownloadService;->mLastStartId:I

    .line 147
    if-eqz p1, :cond_0

    .line 149
    const-string v1, "download.uri.key"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 150
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadService;->enqueueUpdate(Landroid/net/Uri;)V

    .line 156
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x2

    return v1

    .line 153
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Can\'t start service without uri"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
