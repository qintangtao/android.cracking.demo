.class public Lcom/market2345/download/DownloadInfo;
.super Lcom/market2345/download/DownloadItem;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/download/DownloadInfo$Reader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final callbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/download/interfaces/IProgressCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAllowedNetworkTypes:I

.field public mCertMd5:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field public mCurrentBytes:J

.field public mDeleteFile:Z

.field public mDescription:Ljava/lang/String;

.field public mDownPartial:I

.field public mETag:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFirstMD5:Ljava/lang/String;

.field public mFirstMD5Length:J

.field public mIconUrl:Ljava/lang/String;

.field public mId:J

.field public mIsUpdate:I

.field public mLastModified:J

.field public mLowMD5:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mMinSDK:I

.field public mNumFailed:I

.field public mPackageName:Ljava/lang/String;

.field public mPatchSize:J

.field public mPatchUrl:Ljava/lang/String;

.field public mPlatform:Ljava/lang/String;

.field public mProgress:F

.field public mReferer:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSecondMD5:Ljava/lang/String;

.field public mServerMD5:Ljava/lang/String;

.field public mSid:Ljava/lang/String;

.field public mSignatureError:I

.field public mSourceFrom:I

.field public mSpeed:J

.field public mStartInstall:Z

.field public mStatus:I

.field private final mStorageManager:Lcom/market2345/download/StorageManager;

.field public mSubmittedTask:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field public mTargetSize:J

.field public mTitle:Ljava/lang/String;

.field public mTotalBytes:J

.field public mUrl:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;

.field public mVersionCode:I

.field public mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/download/DownloadInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/market2345/download/StorageManager;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storageManager"    # Lcom/market2345/download/StorageManager;

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/market2345/download/DownloadItem;-><init>()V

    .line 234
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/market2345/download/DownloadInfo;->mTotalBytes:J

    .line 237
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/download/DownloadInfo;->mCurrentBytes:J

    .line 277
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/download/DownloadInfo;->mFirstMD5:Ljava/lang/String;

    .line 283
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/download/DownloadInfo;->mSecondMD5:Ljava/lang/String;

    .line 286
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/download/DownloadInfo;->mServerMD5:Ljava/lang/String;

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/download/DownloadInfo;->mSignatureError:I

    .line 328
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    .line 341
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadInfo;->callbacks:Ljava/util/HashMap;

    .line 345
    iput-object p1, p0, Lcom/market2345/download/DownloadInfo;->mContext:Landroid/content/Context;

    .line 346
    iput-object p2, p0, Lcom/market2345/download/DownloadInfo;->mStorageManager:Lcom/market2345/download/StorageManager;

    .line 348
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/market2345/download/StorageManager;Lcom/market2345/download/DownloadInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/market2345/download/StorageManager;
    .param p3, "x2"    # Lcom/market2345/download/DownloadInfo$1;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/market2345/download/DownloadInfo;-><init>(Landroid/content/Context;Lcom/market2345/download/StorageManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/download/DownloadInfo;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    return-object v0
.end method

.method private isReadyToDownload()Z
    .locals 1

    .prologue
    .line 447
    iget v0, p0, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v0, :sswitch_data_0

    .line 452
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 450
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 447
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xbe -> :sswitch_0
    .end sparse-switch
.end method

.method public static queryCanBreak(Landroid/content/ContentResolver;J)Z
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 496
    sget-object v0, Lcom/market2345/download/Downloads$Impl;->DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "status"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 500
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/16 v1, 0xc1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0x1ea

    if-ne v0, v1, :cond_2

    :cond_0
    move v0, v7

    .line 504
    :goto_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :cond_2
    move v0, v8

    .line 500
    goto :goto_0

    .line 504
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static queryDownloadPartial(Landroid/content/Context;J)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # J

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 554
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/download/Downloads$Impl;->DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "downPartial"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 557
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 562
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static queryDownloadPaused(Landroid/content/ContentResolver;J)Z
    .locals 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 516
    sget-object v0, Lcom/market2345/download/Downloads$Impl;->DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "status"

    aput-object v0, v2, v8

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 519
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/16 v1, 0xc1

    if-ne v0, v1, :cond_1

    move v0, v7

    .line 521
    :goto_0
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return v0

    :cond_1
    move v0, v8

    .line 519
    goto :goto_0

    .line 521
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public static queryStatus(Landroid/content/ContentResolver;J)I
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "id"    # J

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 534
    sget-object v0, Lcom/market2345/download/Downloads$Impl;->DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "status"

    aput-object v0, v2, v4

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 537
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 542
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    .line 540
    :cond_1
    const/16 v0, 0x1ea

    .line 542
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public varargs declared-synchronized addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V
    .locals 8
    .param p1, "progressViews"    # [Lcom/market2345/download/interfaces/IProgressCallback;

    .prologue
    .line 351
    monitor-enter p0

    move-object v0, p1

    .local v0, "arr$":[Lcom/market2345/download/interfaces/IProgressCallback;
    :try_start_0
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 354
    .local v1, "callback":Lcom/market2345/download/interfaces/IProgressCallback;
    const v5, 0x7f09000b

    invoke-interface {v1, v5}, Lcom/market2345/download/interfaces/IProgressCallback;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 355
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    check-cast v4, Ljava/lang/CharSequence;

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 356
    iget-object v5, p0, Lcom/market2345/download/DownloadInfo;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 358
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "the callback must setTag and use R.id.download_url as the key"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    .end local v1    # "callback":Lcom/market2345/download/interfaces/IProgressCallback;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 362
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public getDownloadUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 485
    sget-object v0, Lcom/market2345/download/Downloads$Impl;->DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo;->mSubmittedTask:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/download/DownloadInfo;->mSubmittedTask:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized notifyProgress()V
    .locals 1

    .prologue
    .line 366
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    monitor-exit p0

    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized notifyProgress(Landroid/app/Activity;)V
    .locals 20
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 375
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/download/DownloadInfo;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 376
    const/4 v10, 0x1

    .line 378
    .local v10, "downloading":Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v3, :sswitch_data_0

    .line 391
    :goto_0
    move v8, v10

    .line 392
    .local v8, "finalDownloading":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v12, v0, Lcom/market2345/download/DownloadInfo;->mProgress:F

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/market2345/download/DownloadInfo;->mTotalBytes:J

    long-to-float v13, v14

    mul-float/2addr v12, v13

    float-to-long v12, v12

    invoke-static {v12, v13}, Lcom/market2345/common/util/Utils;->formatSizeToMB(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "/"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/market2345/download/DownloadInfo;->mTotalBytes:J

    invoke-static {v12, v13}, Lcom/market2345/common/util/Utils;->formatSizeToMB(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 393
    .local v9, "finalSize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/download/DownloadInfo;->mDescription:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/market2345/download/DownloadInfo;->mDescription:Ljava/lang/String;

    .line 396
    .local v6, "finalSpeedStatus":Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/market2345/download/DownloadInfo;->mProgress:F

    const/high16 v12, 0x42c80000    # 100.0f

    mul-float v7, v3, v12

    .line 397
    .local v7, "finalProgress":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/download/DownloadInfo;->callbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/market2345/download/interfaces/IProgressCallback;>;>;>;"
    :cond_0
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 398
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/market2345/download/interfaces/IProgressCallback;

    .line 399
    .local v5, "callback":Lcom/market2345/download/interfaces/IProgressCallback;
    if-nez v5, :cond_2

    .line 400
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 375
    .end local v5    # "callback":Lcom/market2345/download/interfaces/IProgressCallback;
    .end local v6    # "finalSpeedStatus":Ljava/lang/String;
    .end local v7    # "finalProgress":F
    .end local v8    # "finalDownloading":Z
    .end local v9    # "finalSize":Ljava/lang/String;
    .end local v10    # "downloading":Z
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/market2345/download/interfaces/IProgressCallback;>;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 382
    .restart local v10    # "downloading":Z
    :sswitch_0
    const/4 v10, 0x0

    goto :goto_0

    .line 393
    .restart local v8    # "finalDownloading":Z
    .restart local v9    # "finalSize":Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "%.2f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/download/DownloadInfo;->mSpeed:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4090000000000000L    # 1024.0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, "KB/s"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 405
    .restart local v5    # "callback":Lcom/market2345/download/interfaces/IProgressCallback;
    .restart local v6    # "finalSpeedStatus":Ljava/lang/String;
    .restart local v7    # "finalProgress":F
    .restart local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/market2345/download/interfaces/IProgressCallback;>;>;>;"
    :cond_2
    const v3, 0x7f09000b

    invoke-interface {v5, v3}, Lcom/market2345/download/interfaces/IProgressCallback;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    .line 406
    .local v4, "url":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 407
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 408
    new-instance v2, Lcom/market2345/download/DownloadInfo$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/market2345/download/DownloadInfo$1;-><init>(Lcom/market2345/download/DownloadInfo;Ljava/lang/Object;Lcom/market2345/download/interfaces/IProgressCallback;Ljava/lang/String;FZLjava/lang/String;)V

    .line 422
    .local v2, "run":Ljava/lang/Runnable;
    if-nez p1, :cond_3

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/download/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/datacenter/DataCenterObserver;->getMarketHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    .line 425
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 428
    .end local v2    # "run":Ljava/lang/Runnable;
    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 435
    .end local v4    # "url":Ljava/lang/Object;
    .end local v5    # "callback":Lcom/market2345/download/interfaces/IProgressCallback;
    .end local v6    # "finalSpeedStatus":Ljava/lang/String;
    .end local v7    # "finalProgress":F
    .end local v8    # "finalDownloading":Z
    .end local v9    # "finalSize":Ljava/lang/String;
    .end local v10    # "downloading":Z
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/ref/WeakReference<Lcom/market2345/download/interfaces/IProgressCallback;>;>;>;"
    :cond_5
    monitor-exit p0

    return-void

    .line 378
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x259 -> :sswitch_0
        0x25a -> :sswitch_0
    .end sparse-switch
.end method

.method public startDownloadIfReady(Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 464
    monitor-enter p0

    .line 469
    :try_start_0
    invoke-direct {p0}, Lcom/market2345/download/DownloadInfo;->isReadyToDownload()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/market2345/download/DownloadInfo;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 470
    new-instance v0, Lcom/market2345/download/DownloadThread;

    iget-object v1, p0, Lcom/market2345/download/DownloadInfo;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/market2345/download/DownloadInfo;->mStorageManager:Lcom/market2345/download/StorageManager;

    invoke-direct {v0, v1, p0, v2}, Lcom/market2345/download/DownloadThread;-><init>(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;Lcom/market2345/download/StorageManager;)V

    .line 472
    .local v0, "mTask":Lcom/market2345/download/DownloadThread;
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/download/DownloadInfo;->mSubmittedTask:Ljava/util/concurrent/Future;

    .line 474
    iget-object v1, p0, Lcom/market2345/download/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/download/DownloadManager;->getTasks()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/market2345/download/DownloadInfo;->mSubmittedTask:Ljava/util/concurrent/Future;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .end local v0    # "mTask":Lcom/market2345/download/DownloadThread;
    :cond_0
    monitor-exit p0

    .line 477
    return-void

    .line 476
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
