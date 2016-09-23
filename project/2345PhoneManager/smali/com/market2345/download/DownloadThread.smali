.class public Lcom/market2345/download/DownloadThread;
.super Ljava/lang/Object;
.source "DownloadThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/download/DownloadThread$State;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x4e20

.field private static final HTTP_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field private static final HTTP_TEMP_REDIRECT:I = 0x133

.field private static final MAX_DEL_NUM:I = 0x14

.field private static final MAX_RETRY_NUM:I = 0x13

.field private static final RETRY_FIRST_STAGE:I = 0x3

.field private static final RETRY_SECOND_STAGE:I = 0x10

.field private static final TAG:Ljava/lang/String;

.field private static final releaseExecutor:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private final mInfo:Lcom/market2345/download/DownloadInfo;

.field private mNumDeleted:I

.field private mNumFailed:I

.field private mState:Lcom/market2345/download/DownloadThread$State;

.field private final mStorageManager:Lcom/market2345/download/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 119
    const-class v0, Lcom/market2345/download/DownloadThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    .line 131
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/market2345/download/DownloadThread;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;Lcom/market2345/download/StorageManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/market2345/download/DownloadInfo;
    .param p3, "storageManager"    # Lcom/market2345/download/StorageManager;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    .line 145
    iput-object p2, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    .line 146
    iput-object p3, p0, Lcom/market2345/download/DownloadThread;->mStorageManager:Lcom/market2345/download/StorageManager;

    .line 147
    invoke-static {p1}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/download/DownloadThread;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 148
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/download/DownloadThread;)Lcom/market2345/download/DownloadInfo;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadThread;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/download/DownloadThread;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadThread;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addRequestHeaders(Lcom/market2345/download/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 6
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;
    .param p2, "conn"    # Ljava/net/HttpURLConnection;

    .prologue
    .line 1492
    iget-object v2, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/market2345/download/DownloadInfo;->getHeaders()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1493
    .local v0, "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1497
    .end local v0    # "header":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v2, "User-Agent"

    invoke-virtual {p2, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1498
    const-string v2, "User-Agent"

    invoke-direct {p0}, Lcom/market2345/download/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    :cond_1
    const-string v2, "Accept-Encoding"

    const-string v3, "identity"

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    iget-boolean v2, p1, Lcom/market2345/download/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v2, :cond_3

    .line 1506
    iget-object v2, p1, Lcom/market2345/download/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1507
    const-string v2, "If-Match"

    iget-object v3, p1, Lcom/market2345/download/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    :cond_2
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    :cond_3
    return-void
.end method

.method private cannotResume(Lcom/market2345/download/DownloadThread$State;)Z
    .locals 4
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;

    .prologue
    .line 1280
    iget-wide v0, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p1, Lcom/market2345/download/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkConnectivity()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v7, 0xc4

    const/4 v6, 0x1

    .line 1063
    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v3}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1064
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1066
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1067
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "speed"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1068
    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v4}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1071
    monitor-enter p0

    .line 1073
    const-wide/16 v4, 0xbb8

    :try_start_0
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1077
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1079
    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v3}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1080
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1082
    :cond_1
    monitor-enter p0

    .line 1084
    const-wide/16 v4, 0x7d0

    :try_start_2
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1088
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1090
    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v3}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1091
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1092
    :cond_2
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0xc3

    const-string v5, "waiting_for_network"

    invoke-direct {v3, v4, v5}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 1077
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 1085
    :catch_1
    move-exception v0

    .line 1086
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1088
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v3

    .line 1093
    :cond_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v6, v3, :cond_6

    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget v3, v3, Lcom/market2345/download/DownloadInfo;->mAllowedNetworkTypes:I

    if-ne v3, v6, :cond_6

    .line 1094
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const-string v4, "queued_for_wifi"

    invoke-direct {v3, v7, v4}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1097
    :cond_4
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v6, v3, :cond_6

    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget v3, v3, Lcom/market2345/download/DownloadInfo;->mAllowedNetworkTypes:I

    if-ne v3, v6, :cond_6

    .line 1098
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const-string v4, "queued_for_wifi"

    invoke-direct {v3, v7, v4}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1100
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-eq v6, v3, :cond_6

    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget v3, v3, Lcom/market2345/download/DownloadInfo;->mAllowedNetworkTypes:I

    if-ne v3, v6, :cond_6

    .line 1101
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const-string v4, "queued_for_wifi"

    invoke-direct {v3, v7, v4}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1103
    :cond_6
    return-void
.end method

.method private checkJifenUrl(ZLcom/market2345/download/DownloadThread$State;)Z
    .locals 9
    .param p1, "isInstalled"    # Z
    .param p2, "state"    # Lcom/market2345/download/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x190

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1909
    sget-object v5, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1911
    if-eqz p1, :cond_1

    .line 1942
    :cond_0
    :goto_0
    return v3

    .line 1914
    :cond_1
    iget-object v5, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/market2345/datacenter/DataCenterObserver;->lianMengApkSize()I

    move-result v5

    if-lez v5, :cond_2

    .line 1915
    iget-object v5, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    iget-object v6, p2, Lcom/market2345/download/DownloadThread$State;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/market2345/datacenter/DataCenterObserver;->isLianMengApk(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1916
    iget v5, p2, Lcom/market2345/download/DownloadThread$State;->mVersionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/market2345/download/DownloadThread$State;->mPackageName:Ljava/lang/String;

    sget-object v7, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/market2345/http/UnionAPI;->getUnionAppUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 1917
    .local v1, "obj":Lcom/google/gson/JsonObject;
    if-eqz v1, :cond_0

    const-string v5, "code"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v5

    if-nez v5, :cond_0

    .line 1919
    :try_start_0
    const-string v3, "message"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 1920
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p2, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;

    .line 1921
    iput-object v2, p2, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1922
    goto :goto_0

    .line 1923
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1924
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    invoke-direct {v3, v8, v0}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v3

    .line 1929
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "obj":Lcom/google/gson/JsonObject;
    :cond_2
    iget v5, p2, Lcom/market2345/download/DownloadThread$State;->mVersionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p2, Lcom/market2345/download/DownloadThread$State;->mPackageName:Ljava/lang/String;

    sget-object v7, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-static {v5, v6, v7}, Lcom/market2345/http/UnionAPI;->getUnionAppUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 1930
    .restart local v1    # "obj":Lcom/google/gson/JsonObject;
    if-eqz v1, :cond_0

    const-string v5, "code"

    invoke-virtual {v1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v5

    if-nez v5, :cond_0

    .line 1932
    :try_start_1
    const-string v3, "message"

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 1933
    .restart local v2    # "url":Ljava/lang/String;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v3, p2, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;

    .line 1934
    iput-object v2, p2, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v4

    .line 1935
    goto/16 :goto_0

    .line 1936
    .end local v2    # "url":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 1937
    .restart local v0    # "e":Ljava/lang/Exception;
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    invoke-direct {v3, v8, v0}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v3
.end method

.method private checkPausedOrCanceled(I)V
    .locals 4
    .param p1, "mStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x1ea

    const/16 v0, 0xc1

    .line 1159
    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    monitor-enter v1

    .line 1160
    if-ne p1, v0, :cond_0

    .line 1161
    :try_start_0
    new-instance v0, Lcom/market2345/download/exception/StopRequestException;

    const/16 v2, 0xc1

    const-string v3, "download paused by owner"

    invoke-direct {v0, v2, v3}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1167
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1163
    :cond_0
    if-ne p1, v2, :cond_1

    .line 1164
    :try_start_1
    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/market2345/download/DownloadThread$State;->mDeleteFile:Z

    .line 1165
    new-instance v0, Lcom/market2345/download/exception/StopRequestException;

    const/16 v2, 0x1ea

    const-string v3, "download canceled"

    invoke-direct {v0, v2, v3}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 1167
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1168
    return-void
.end method

.method private doAfterDownload()V
    .locals 3

    .prologue
    .line 653
    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-boolean v0, v0, Lcom/market2345/download/DownloadInfo;->mStartInstall:Z

    if-nez v0, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/market2345/settings/SettingUtils$SETTING;->AUTO_INSTALL:Lcom/market2345/settings/SettingUtils$SETTING;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    new-instance v0, Lcom/market2345/download/DownloadThread$2;

    invoke-direct {v0, p0}, Lcom/market2345/download/DownloadThread$2;-><init>(Lcom/market2345/download/DownloadThread;)V

    invoke-virtual {v0}, Lcom/market2345/download/DownloadThread$2;->start()V

    goto :goto_0

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/market2345/settings/SettingUtils$SETTING;->INSTALL_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-static {v0, v1}, Lcom/market2345/download/util/PackageUtils;->installNormal(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)Z

    goto :goto_0
.end method

.method private downloadCompleted()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 640
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 641
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "status"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 642
    const-string v1, "description"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 645
    sget-object v1, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v4, v3, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finished "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-direct {p0}, Lcom/market2345/download/DownloadThread;->doAfterDownload()V

    .line 648
    return-void
.end method

.method private executeDownload(Lcom/market2345/download/DownloadThread$State;)V
    .locals 12
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    .line 825
    invoke-virtual {p1}, Lcom/market2345/download/DownloadThread$State;->resetBeforeExecute()V

    .line 826
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadThread;->setupDestinationFile(Lcom/market2345/download/DownloadThread$State;)V

    .line 829
    iget-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    iget-wide v10, p1, Lcom/market2345/download/DownloadThread$State;->mTotalBytes:J

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 830
    sget-object v8, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skipping initiating request for download "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v10, v10, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; already completed"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :goto_0
    return-void

    .line 904
    .local v2, "conn":Ljava/net/HttpURLConnection;
    .local v7, "responseCode":I
    :sswitch_0
    :try_start_0
    const-string v8, "Location"

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 907
    .local v6, "location":Ljava/lang/String;
    :try_start_1
    new-instance v8, Ljava/net/URL;

    iget-object v9, p1, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;

    invoke-direct {v8, v9, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v8, p1, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 972
    move-object v5, v2

    .line 973
    .local v5, "finalConn":Ljava/net/HttpURLConnection;
    sget-object v8, Lcom/market2345/download/DownloadThread;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/market2345/download/DownloadThread$3;

    invoke-direct {v9, p0, v5}, Lcom/market2345/download/DownloadThread$3;-><init>(Lcom/market2345/download/DownloadThread;Ljava/net/HttpURLConnection;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 835
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v5    # "finalConn":Ljava/net/HttpURLConnection;
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "responseCode":I
    :cond_0
    iget v8, p1, Lcom/market2345/download/DownloadThread$State;->mRedirectionCount:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p1, Lcom/market2345/download/DownloadThread$State;->mRedirectionCount:I

    const/4 v9, 0x5

    if-ge v8, v9, :cond_8

    .line 837
    sget-object v8, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    const-string v9, "request begin"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const/4 v2, 0x0

    .line 845
    .restart local v2    # "conn":Ljava/net/HttpURLConnection;
    :try_start_2
    invoke-direct {p0}, Lcom/market2345/download/DownloadThread;->checkConnectivity()V

    .line 846
    iget-object v8, p1, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->getEncodeURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v8

    iput-object v8, p1, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;

    .line 847
    iget-object v8, p1, Lcom/market2345/download/DownloadThread$State;->mUrl:Ljava/net/URL;

    invoke-virtual {v8}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 849
    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 850
    const/16 v8, 0x4e20

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 851
    const/16 v8, 0x4e20

    invoke-virtual {v2, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 853
    invoke-direct {p0, p1, v2}, Lcom/market2345/download/DownloadThread;->addRequestHeaders(Lcom/market2345/download/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 854
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    .line 856
    .restart local v7    # "responseCode":I
    sparse-switch v7, :sswitch_data_0

    .line 957
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unhandled HTTP response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v7, v8}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    .line 959
    .local v3, "e":Lcom/market2345/download/exception/StopRequestException;
    invoke-direct {p0, v3}, Lcom/market2345/download/DownloadThread;->reportDownloadError(Ljava/lang/Throwable;)V

    .line 961
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 964
    .end local v3    # "e":Lcom/market2345/download/exception/StopRequestException;
    .end local v7    # "responseCode":I
    :catch_0
    move-exception v3

    .line 966
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x1ef

    invoke-direct {v8, v9, v3}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 972
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    move-object v5, v2

    .line 973
    .restart local v5    # "finalConn":Ljava/net/HttpURLConnection;
    sget-object v9, Lcom/market2345/download/DownloadThread;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v10, Lcom/market2345/download/DownloadThread$3;

    invoke-direct {v10, p0, v5}, Lcom/market2345/download/DownloadThread$3;-><init>(Lcom/market2345/download/DownloadThread;Ljava/net/HttpURLConnection;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 979
    throw v8

    .line 858
    .end local v5    # "finalConn":Ljava/net/HttpURLConnection;
    .restart local v7    # "responseCode":I
    :sswitch_1
    :try_start_4
    iget-boolean v8, p1, Lcom/market2345/download/DownloadThread$State;->mContinuingDownload:Z

    if-eqz v8, :cond_3

    .line 860
    const-string v8, "text/html"

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/market2345/download/DownloadThread;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 861
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0xc3

    const-string v10, "waiting_for_network"

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 864
    :cond_1
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v8, v8, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 865
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v8, v8, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 866
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_2

    .line 867
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x1ec

    const-string v10, "The file can not be deleted!"

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 872
    .end local v4    # "file":Ljava/io/File;
    :cond_2
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x1e9

    const-string v10, "Expected partial, but received OK"

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 875
    :cond_3
    invoke-direct {p0, p1, v2}, Lcom/market2345/download/DownloadThread;->processResponseHeaders(Lcom/market2345/download/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 877
    invoke-direct {p0, p1, v2}, Lcom/market2345/download/DownloadThread;->transferData(Lcom/market2345/download/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 972
    move-object v5, v2

    .line 973
    .restart local v5    # "finalConn":Ljava/net/HttpURLConnection;
    sget-object v8, Lcom/market2345/download/DownloadThread;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/market2345/download/DownloadThread$3;

    invoke-direct {v9, p0, v5}, Lcom/market2345/download/DownloadThread$3;-><init>(Lcom/market2345/download/DownloadThread;Ljava/net/HttpURLConnection;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 881
    .end local v5    # "finalConn":Ljava/net/HttpURLConnection;
    :sswitch_2
    :try_start_5
    iget-boolean v8, p1, Lcom/market2345/download/DownloadThread$State;->mContinuingDownload:Z

    if-nez v8, :cond_5

    .line 883
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v8, v8, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 884
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v8, v8, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 885
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_4

    .line 886
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x1ec

    const-string v10, "The file can not be deleted!"

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 893
    .end local v4    # "file":Ljava/io/File;
    :cond_4
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x1e9

    const-string v10, "Expected OK, but received partial"

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 897
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/market2345/download/DownloadThread;->transferData(Lcom/market2345/download/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 972
    move-object v5, v2

    .line 973
    .restart local v5    # "finalConn":Ljava/net/HttpURLConnection;
    sget-object v8, Lcom/market2345/download/DownloadThread;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/market2345/download/DownloadThread$3;

    invoke-direct {v9, p0, v5}, Lcom/market2345/download/DownloadThread$3;-><init>(Lcom/market2345/download/DownloadThread;Ljava/net/HttpURLConnection;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 908
    .end local v5    # "finalConn":Ljava/net/HttpURLConnection;
    .restart local v6    # "location":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 909
    .local v3, "e":Ljava/net/MalformedURLException;
    :try_start_6
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x190

    invoke-direct {v8, v9, v3}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v8

    .line 916
    .end local v3    # "e":Ljava/net/MalformedURLException;
    .end local v6    # "location":Ljava/lang/String;
    :sswitch_3
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x194

    const-string v10, "The server has not found anything matching the requested URI"

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 921
    :sswitch_4
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v8, v8, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 922
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v8, v8, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 923
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_6

    .line 924
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x1ec

    const-string v10, "The file can not be deleted"

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 930
    .end local v4    # "file":Ljava/io/File;
    :cond_6
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x19c

    const-string v10, "The precondition given in one or more of the request header fields evaluated to false when it was tested on the server"

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 934
    :sswitch_5
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v8, v8, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 935
    new-instance v4, Ljava/io/File;

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v8, v8, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v4, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 936
    .restart local v4    # "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_7

    .line 937
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x1ec

    const-string v10, "The file can not be deleted!"

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 943
    .end local v4    # "file":Ljava/io/File;
    :cond_7
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x1e9

    const-string v10, "Requested range not satisfiable"

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 948
    :sswitch_6
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x1f7

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 952
    :sswitch_7
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x1f4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 982
    .end local v2    # "conn":Ljava/net/HttpURLConnection;
    .end local v7    # "responseCode":I
    :cond_8
    new-instance v8, Lcom/market2345/download/exception/StopRequestException;

    const/16 v9, 0x1f1

    const-string v10, "Too many redirects"

    invoke-direct {v8, v9, v10}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v8

    .line 856
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0xce -> :sswitch_2
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
        0x12f -> :sswitch_0
        0x133 -> :sswitch_0
        0x194 -> :sswitch_3
        0x19c -> :sswitch_4
        0x1a0 -> :sswitch_5
        0x1f4 -> :sswitch_7
        0x1f7 -> :sswitch_6
    .end sparse-switch
.end method

.method private getEncodeURL(Ljava/net/URL;)Ljava/net/URL;
    .locals 8
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 987
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    .line 988
    .local v5, "urlString":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 989
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 990
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 991
    .local v0, "c":C
    invoke-static {v0}, Lcom/market2345/common/util/Utils;->isChinese(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 992
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "utf-8"

    invoke-static {v6, v7}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 993
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 989
    .end local v3    # "s":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 995
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 999
    .end local v0    # "c":C
    .end local v2    # "i":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1000
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1001
    .end local v1    # "e":Ljava/lang/Exception;
    .end local p1    # "url":Ljava/net/URL;
    :goto_2
    return-object p1

    .line 998
    .restart local v2    # "i":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "urlString":Ljava/lang/String;
    .restart local p1    # "url":Ljava/net/URL;
    :cond_1
    :try_start_1
    new-instance v6, Ljava/net/URL;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object p1, v6

    goto :goto_2
.end method

.method private getFileMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 1735
    const-string v13, ""

    .line 1736
    .local v13, "result":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1737
    .local v7, "md5Url":Ljava/lang/String;
    const/4 v9, -0x1

    .line 1738
    .local v9, "posi":I
    const/4 v10, -0x1

    .line 1739
    .local v10, "posi1":I
    const-string v16, "http://app.2345.cn/appsoft/"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 1740
    const-string v16, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 1741
    const-string v16, "."

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 1742
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v9, v0, :cond_0

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v10, v0, :cond_0

    .line 1743
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://app.2345.cn/appsoft_md5/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".txt"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1753
    :cond_0
    :goto_0
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1755
    invoke-static {}, Lcom/market2345/http/HttpClientFactory;->get()Lcom/market2345/http/HttpClientFactory;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/market2345/http/HttpClientFactory;->getHttpClient()Lcom/market2345/http/AndroidHttpClient;

    move-result-object v2

    .line 1756
    .local v2, "client":Lcom/market2345/http/AndroidHttpClient;
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v11, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1758
    .local v11, "request":Lorg/apache/http/client/methods/HttpGet;
    const/4 v4, 0x0

    .line 1760
    .local v4, "entityStream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v2, v11}, Lcom/market2345/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 1761
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 1762
    const/16 v16, 0x20

    move/from16 v0, v16

    new-array v6, v0, [B

    .line 1763
    .local v6, "md5":[B
    const/16 v5, 0x20

    .line 1764
    .local v5, "length":I
    const/4 v8, 0x0

    .line 1765
    .local v8, "offset":I
    :goto_1
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v8, v0, :cond_2

    if-ge v8, v5, :cond_2

    .line 1766
    sub-int v16, v5, v8

    move/from16 v0, v16

    invoke-virtual {v4, v6, v8, v0}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    .line 1767
    .local v15, "t":I
    add-int/2addr v8, v15

    .line 1768
    goto :goto_1

    .line 1745
    .end local v2    # "client":Lcom/market2345/http/AndroidHttpClient;
    .end local v4    # "entityStream":Ljava/io/InputStream;
    .end local v5    # "length":I
    .end local v6    # "md5":[B
    .end local v8    # "offset":I
    .end local v11    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v15    # "t":I
    :cond_1
    const-string v16, "http://app.2345.cn/appgame/"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v9

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 1748
    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v9, v0, :cond_0

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v10, v0, :cond_0

    .line 1749
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://app.2345.cn/appgame_md5/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v9, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".txt"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 1769
    .restart local v2    # "client":Lcom/market2345/http/AndroidHttpClient;
    .restart local v4    # "entityStream":Ljava/io/InputStream;
    .restart local v5    # "length":I
    .restart local v6    # "md5":[B
    .restart local v8    # "offset":I
    .restart local v11    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_1
    new-instance v14, Ljava/lang/String;

    invoke-direct {v14, v6}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1774
    .end local v13    # "result":Ljava/lang/String;
    .local v14, "result":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 1775
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1782
    :cond_3
    :goto_2
    :try_start_3
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1783
    const/4 v11, 0x0

    .line 1788
    :goto_3
    invoke-virtual {v2}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 1789
    const/4 v2, 0x0

    move-object v13, v14

    .line 1792
    .end local v2    # "client":Lcom/market2345/http/AndroidHttpClient;
    .end local v4    # "entityStream":Ljava/io/InputStream;
    .end local v5    # "length":I
    .end local v6    # "md5":[B
    .end local v8    # "offset":I
    .end local v11    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "result":Ljava/lang/String;
    .restart local v13    # "result":Ljava/lang/String;
    :cond_4
    :goto_4
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x20

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 1793
    const-string v13, ""

    .line 1795
    :cond_5
    return-object v13

    .line 1777
    .end local v13    # "result":Ljava/lang/String;
    .restart local v2    # "client":Lcom/market2345/http/AndroidHttpClient;
    .restart local v4    # "entityStream":Ljava/io/InputStream;
    .restart local v5    # "length":I
    .restart local v6    # "md5":[B
    .restart local v8    # "offset":I
    .restart local v11    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    .restart local v14    # "result":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1778
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 1784
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 1785
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1770
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "length":I
    .end local v6    # "md5":[B
    .end local v8    # "offset":I
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    .end local v14    # "result":Ljava/lang/String;
    .restart local v13    # "result":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1771
    .local v3, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1774
    if-eqz v4, :cond_6

    .line 1775
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 1782
    .end local v3    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    :try_start_6
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 1783
    const/4 v11, 0x0

    .line 1788
    :goto_6
    invoke-virtual {v2}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 1789
    const/4 v2, 0x0

    .line 1790
    goto :goto_4

    .line 1777
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 1778
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 1784
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v3

    .line 1785
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1773
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    .line 1774
    if-eqz v4, :cond_7

    .line 1775
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1782
    :cond_7
    :goto_7
    :try_start_8
    invoke-virtual {v11}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 1783
    const/4 v11, 0x0

    .line 1788
    :goto_8
    invoke-virtual {v2}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 1789
    const/4 v2, 0x0

    throw v16

    .line 1777
    :catch_5
    move-exception v3

    .line 1778
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 1784
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v3

    .line 1785
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8
.end method

.method public static getHeaderFieldLong(Ljava/net/URLConnection;Ljava/lang/String;J)J
    .locals 2
    .param p0, "conn"    # Ljava/net/URLConnection;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 1516
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    .line 1518
    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .line 1517
    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 1518
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private getPatchUrlIfHas(Lcom/market2345/model/InstalledApp;)Lcom/market2345/model/App;
    .locals 31
    .param p1, "installedApp"    # Lcom/market2345/model/InstalledApp;

    .prologue
    .line 540
    const/4 v4, 0x0

    .line 541
    .local v4, "buffer":Ljava/io/BufferedReader;
    const/16 v20, 0x0

    .line 542
    .local v20, "out":Ljava/io/DataOutputStream;
    const/4 v8, 0x0

    .line 545
    .local v8, "conn":Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v28, Ljava/net/URL;

    const-string v29, "http://zhushou.2345.com/index.php?c=ard&d=getUpdateNew"

    invoke-direct/range {v28 .. v29}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 546
    .local v28, "url":Ljava/net/URL;
    invoke-virtual/range {v28 .. v28}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v29

    move-object/from16 v0, v29

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 547
    const-string v29, "POST"

    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 548
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 549
    const/16 v29, 0x4e20

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 550
    const/16 v29, 0x4e20

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 551
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 552
    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 553
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v17

    .line 557
    .local v17, "mac":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 559
    .local v12, "imei":Ljava/lang/String;
    new-instance v18, Lcom/google/gson/JsonObject;

    invoke-direct/range {v18 .. v18}, Lcom/google/gson/JsonObject;-><init>()V

    .line 560
    .local v18, "obj":Lcom/google/gson/JsonObject;
    new-instance v27, Lcom/google/gson/JsonArray;

    invoke-direct/range {v27 .. v27}, Lcom/google/gson/JsonArray;-><init>()V

    .line 561
    .local v27, "sysArray":Lcom/google/gson/JsonArray;
    new-instance v19, Lcom/google/gson/JsonObject;

    invoke-direct/range {v19 .. v19}, Lcom/google/gson/JsonObject;-><init>()V

    .line 562
    .local v19, "object":Lcom/google/gson/JsonObject;
    const-string v29, "pn"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v29, "vc"

    move-object/from16 v0, p1

    iget v0, v0, Lcom/market2345/model/InstalledApp;->versionCode:I

    move/from16 v30, v0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 564
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    .line 566
    move-object/from16 v0, p1

    iget v0, v0, Lcom/market2345/model/InstalledApp;->flag:I

    move/from16 v29, v0

    if-nez v29, :cond_3

    .line 567
    const-string v29, "sys"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 572
    :goto_0
    invoke-virtual/range {v18 .. v18}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v22

    .line 573
    .local v22, "packages":Ljava/lang/String;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/market2345/common/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 574
    .local v26, "sign":Ljava/lang/String;
    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v30

    add-int/lit8 v30, v30, -0x1

    move-object/from16 v0, v26

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v26

    .line 576
    new-instance v21, Ljava/io/DataOutputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    .end local v20    # "out":Ljava/io/DataOutputStream;
    .local v21, "out":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "mac="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 578
    const-string v29, "&"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 579
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "imei="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 580
    const-string v29, "&"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 581
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "packages="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 582
    const-string v29, "&"

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 583
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "sign="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->getBytes()[B

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 584
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataOutputStream;->flush()V

    .line 587
    new-instance v13, Ljava/io/InputStreamReader;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-direct {v13, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 588
    .local v13, "in":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 589
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .local v5, "buffer":Ljava/io/BufferedReader;
    const/4 v14, 0x0

    .line 590
    .local v14, "inputLine":Ljava/lang/String;
    :try_start_2
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    .line 591
    .local v25, "sb":Ljava/lang/StringBuilder;
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_4

    .line 592
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    .line 616
    .end local v25    # "sb":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    move-object/from16 v20, v21

    .end local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .line 617
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .end local v12    # "imei":Ljava/lang/String;
    .end local v13    # "in":Ljava/io/InputStreamReader;
    .end local v14    # "inputLine":Ljava/lang/String;
    .end local v17    # "mac":Ljava/lang/String;
    .end local v18    # "obj":Lcom/google/gson/JsonObject;
    .end local v19    # "object":Lcom/google/gson/JsonObject;
    .end local v22    # "packages":Ljava/lang/String;
    .end local v26    # "sign":Ljava/lang/String;
    .end local v27    # "sysArray":Lcom/google/gson/JsonArray;
    .end local v28    # "url":Ljava/net/URL;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    .local v9, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 622
    if-eqz v20, :cond_0

    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V

    .line 623
    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 628
    :cond_1
    :goto_3
    if-eqz v8, :cond_2

    .line 629
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 635
    .end local v9    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    const/16 v29, 0x0

    :goto_5
    return-object v29

    .line 569
    .restart local v12    # "imei":Ljava/lang/String;
    .restart local v17    # "mac":Ljava/lang/String;
    .restart local v18    # "obj":Lcom/google/gson/JsonObject;
    .restart local v19    # "object":Lcom/google/gson/JsonObject;
    .restart local v27    # "sysArray":Lcom/google/gson/JsonArray;
    .restart local v28    # "url":Ljava/net/URL;
    :cond_3
    :try_start_5
    const-string v29, "user"

    move-object/from16 v0, v18

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 616
    .end local v12    # "imei":Ljava/lang/String;
    .end local v17    # "mac":Ljava/lang/String;
    .end local v18    # "obj":Lcom/google/gson/JsonObject;
    .end local v19    # "object":Lcom/google/gson/JsonObject;
    .end local v27    # "sysArray":Lcom/google/gson/JsonArray;
    .end local v28    # "url":Ljava/net/URL;
    :catch_1
    move-exception v9

    goto :goto_2

    .line 596
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v12    # "imei":Ljava/lang/String;
    .restart local v13    # "in":Ljava/io/InputStreamReader;
    .restart local v14    # "inputLine":Ljava/lang/String;
    .restart local v17    # "mac":Ljava/lang/String;
    .restart local v18    # "obj":Lcom/google/gson/JsonObject;
    .restart local v19    # "object":Lcom/google/gson/JsonObject;
    .restart local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v22    # "packages":Ljava/lang/String;
    .restart local v25    # "sb":Ljava/lang/StringBuilder;
    .restart local v26    # "sign":Ljava/lang/String;
    .restart local v27    # "sysArray":Lcom/google/gson/JsonArray;
    .restart local v28    # "url":Ljava/net/URL;
    :cond_4
    :try_start_6
    new-instance v23, Lcom/google/gson/JsonParser;

    invoke-direct/range {v23 .. v23}, Lcom/google/gson/JsonParser;-><init>()V

    .line 597
    .local v23, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v16

    .line 598
    .local v16, "jObj":Lcom/google/gson/JsonObject;
    const-string v29, "response"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v24

    .line 599
    .local v24, "response1":Lcom/google/gson/JsonObject;
    const-string v29, "code"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v6

    .line 600
    .local v6, "code":I
    const/16 v29, 0xc8

    move/from16 v0, v29

    if-eq v6, v0, :cond_7

    .line 601
    new-instance v29, Ljava/lang/Exception;

    invoke-direct/range {v29 .. v29}, Ljava/lang/Exception;-><init>()V

    throw v29
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 618
    .end local v6    # "code":I
    .end local v16    # "jObj":Lcom/google/gson/JsonObject;
    .end local v23    # "parser":Lcom/google/gson/JsonParser;
    .end local v24    # "response1":Lcom/google/gson/JsonObject;
    .end local v25    # "sb":Ljava/lang/StringBuilder;
    :catch_2
    move-exception v9

    move-object/from16 v20, v21

    .end local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .line 619
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .end local v12    # "imei":Ljava/lang/String;
    .end local v13    # "in":Ljava/io/InputStreamReader;
    .end local v14    # "inputLine":Ljava/lang/String;
    .end local v17    # "mac":Ljava/lang/String;
    .end local v18    # "obj":Lcom/google/gson/JsonObject;
    .end local v19    # "object":Lcom/google/gson/JsonObject;
    .end local v22    # "packages":Ljava/lang/String;
    .end local v26    # "sign":Ljava/lang/String;
    .end local v27    # "sysArray":Lcom/google/gson/JsonArray;
    .end local v28    # "url":Ljava/net/URL;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    .local v9, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_7
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 622
    if-eqz v20, :cond_5

    :try_start_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V

    .line 623
    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 628
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_7
    if-eqz v8, :cond_2

    .line 629
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_4

    .line 603
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "code":I
    .restart local v12    # "imei":Ljava/lang/String;
    .restart local v13    # "in":Ljava/io/InputStreamReader;
    .restart local v14    # "inputLine":Ljava/lang/String;
    .restart local v16    # "jObj":Lcom/google/gson/JsonObject;
    .restart local v17    # "mac":Ljava/lang/String;
    .restart local v18    # "obj":Lcom/google/gson/JsonObject;
    .restart local v19    # "object":Lcom/google/gson/JsonObject;
    .restart local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v22    # "packages":Ljava/lang/String;
    .restart local v23    # "parser":Lcom/google/gson/JsonParser;
    .restart local v24    # "response1":Lcom/google/gson/JsonObject;
    .restart local v25    # "sb":Ljava/lang/StringBuilder;
    .restart local v26    # "sign":Ljava/lang/String;
    .restart local v27    # "sysArray":Lcom/google/gson/JsonArray;
    .restart local v28    # "url":Ljava/net/URL;
    :cond_7
    :try_start_9
    const-string v29, "list"

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v10

    .line 604
    .local v10, "element":Lcom/google/gson/JsonElement;
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v29

    if-eqz v29, :cond_b

    const/4 v15, 0x0

    .line 606
    .local v15, "itemArray":Lcom/google/gson/JsonArray;
    :goto_8
    new-instance v11, Lcom/google/gson/Gson;

    invoke-direct {v11}, Lcom/google/gson/Gson;-><init>()V

    .line 607
    .local v11, "gson":Lcom/google/gson/Gson;
    new-instance v29, Lcom/market2345/download/DownloadThread$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/market2345/download/DownloadThread$1;-><init>(Lcom/market2345/download/DownloadThread;)V

    invoke-virtual/range {v29 .. v29}, Lcom/market2345/download/DownloadThread$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 609
    .local v7, "collectionType":Ljava/lang/reflect/Type;
    invoke-virtual {v11, v15, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 611
    .local v3, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    if-eqz v3, :cond_c

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v29

    if-nez v29, :cond_c

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-static {v0, v3}, Lcom/market2345/common/util/Utils;->validateDownPartial(Landroid/content/Context;Ljava/util/Collection;)V

    .line 613
    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/market2345/model/App;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 622
    if-eqz v21, :cond_8

    :try_start_a
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataOutputStream;->close()V

    .line 623
    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 628
    :cond_9
    :goto_9
    if-eqz v8, :cond_a

    .line 629
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    move-object/from16 v20, v21

    .end local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    goto/16 :goto_5

    .line 604
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v7    # "collectionType":Ljava/lang/reflect/Type;
    .end local v11    # "gson":Lcom/google/gson/Gson;
    .end local v15    # "itemArray":Lcom/google/gson/JsonArray;
    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v21    # "out":Ljava/io/DataOutputStream;
    :cond_b
    :try_start_b
    invoke-virtual {v10}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v15

    goto :goto_8

    .line 624
    .restart local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    .restart local v7    # "collectionType":Ljava/lang/reflect/Type;
    .restart local v11    # "gson":Lcom/google/gson/Gson;
    .restart local v15    # "itemArray":Lcom/google/gson/JsonArray;
    :catch_3
    move-exception v9

    .line 625
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 622
    .end local v9    # "e":Ljava/io/IOException;
    :cond_c
    if-eqz v21, :cond_d

    :try_start_c
    invoke-virtual/range {v21 .. v21}, Ljava/io/DataOutputStream;->close()V

    .line 623
    :cond_d
    if-eqz v5, :cond_e

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 628
    :cond_e
    :goto_a
    if-eqz v8, :cond_12

    .line 629
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object/from16 v20, v21

    .end local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    goto/16 :goto_4

    .line 624
    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v21    # "out":Ljava/io/DataOutputStream;
    :catch_4
    move-exception v9

    .line 625
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 624
    .end local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .end local v6    # "code":I
    .end local v7    # "collectionType":Ljava/lang/reflect/Type;
    .end local v10    # "element":Lcom/google/gson/JsonElement;
    .end local v11    # "gson":Lcom/google/gson/Gson;
    .end local v12    # "imei":Ljava/lang/String;
    .end local v13    # "in":Ljava/io/InputStreamReader;
    .end local v14    # "inputLine":Ljava/lang/String;
    .end local v15    # "itemArray":Lcom/google/gson/JsonArray;
    .end local v16    # "jObj":Lcom/google/gson/JsonObject;
    .end local v17    # "mac":Ljava/lang/String;
    .end local v18    # "obj":Lcom/google/gson/JsonObject;
    .end local v19    # "object":Lcom/google/gson/JsonObject;
    .end local v21    # "out":Ljava/io/DataOutputStream;
    .end local v22    # "packages":Ljava/lang/String;
    .end local v23    # "parser":Lcom/google/gson/JsonParser;
    .end local v24    # "response1":Lcom/google/gson/JsonObject;
    .end local v25    # "sb":Ljava/lang/StringBuilder;
    .end local v26    # "sign":Ljava/lang/String;
    .end local v27    # "sysArray":Lcom/google/gson/JsonArray;
    .end local v28    # "url":Ljava/net/URL;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    :catch_5
    move-exception v9

    .line 625
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 624
    .local v9, "e":Ljava/lang/Exception;
    :catch_6
    move-exception v9

    .line 625
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 621
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v29

    .line 622
    :goto_b
    if-eqz v20, :cond_f

    :try_start_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/DataOutputStream;->close()V

    .line 623
    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 628
    :cond_10
    :goto_c
    if-eqz v8, :cond_11

    .line 629
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_11
    throw v29

    .line 624
    :catch_7
    move-exception v9

    .line 625
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 621
    .end local v9    # "e":Ljava/io/IOException;
    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v12    # "imei":Ljava/lang/String;
    .restart local v17    # "mac":Ljava/lang/String;
    .restart local v18    # "obj":Lcom/google/gson/JsonObject;
    .restart local v19    # "object":Lcom/google/gson/JsonObject;
    .restart local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v22    # "packages":Ljava/lang/String;
    .restart local v26    # "sign":Ljava/lang/String;
    .restart local v27    # "sysArray":Lcom/google/gson/JsonArray;
    .restart local v28    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v29

    move-object/from16 v20, v21

    .end local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    goto :goto_b

    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v13    # "in":Ljava/io/InputStreamReader;
    .restart local v14    # "inputLine":Ljava/lang/String;
    .restart local v21    # "out":Ljava/io/DataOutputStream;
    :catchall_2
    move-exception v29

    move-object/from16 v20, v21

    .end local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    goto :goto_b

    .line 618
    .end local v12    # "imei":Ljava/lang/String;
    .end local v13    # "in":Ljava/io/InputStreamReader;
    .end local v14    # "inputLine":Ljava/lang/String;
    .end local v17    # "mac":Ljava/lang/String;
    .end local v18    # "obj":Lcom/google/gson/JsonObject;
    .end local v19    # "object":Lcom/google/gson/JsonObject;
    .end local v22    # "packages":Ljava/lang/String;
    .end local v26    # "sign":Ljava/lang/String;
    .end local v27    # "sysArray":Lcom/google/gson/JsonArray;
    .end local v28    # "url":Ljava/net/URL;
    :catch_8
    move-exception v9

    goto/16 :goto_6

    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v12    # "imei":Ljava/lang/String;
    .restart local v17    # "mac":Ljava/lang/String;
    .restart local v18    # "obj":Lcom/google/gson/JsonObject;
    .restart local v19    # "object":Lcom/google/gson/JsonObject;
    .restart local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v22    # "packages":Ljava/lang/String;
    .restart local v26    # "sign":Ljava/lang/String;
    .restart local v27    # "sysArray":Lcom/google/gson/JsonArray;
    .restart local v28    # "url":Ljava/net/URL;
    :catch_9
    move-exception v9

    move-object/from16 v20, v21

    .end local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_6

    .line 616
    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v21    # "out":Ljava/io/DataOutputStream;
    :catch_a
    move-exception v9

    move-object/from16 v20, v21

    .end local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    goto/16 :goto_2

    .end local v4    # "buffer":Ljava/io/BufferedReader;
    .end local v20    # "out":Ljava/io/DataOutputStream;
    .restart local v3    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    .restart local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v6    # "code":I
    .restart local v7    # "collectionType":Ljava/lang/reflect/Type;
    .restart local v10    # "element":Lcom/google/gson/JsonElement;
    .restart local v11    # "gson":Lcom/google/gson/Gson;
    .restart local v13    # "in":Ljava/io/InputStreamReader;
    .restart local v14    # "inputLine":Ljava/lang/String;
    .restart local v15    # "itemArray":Lcom/google/gson/JsonArray;
    .restart local v16    # "jObj":Lcom/google/gson/JsonObject;
    .restart local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v23    # "parser":Lcom/google/gson/JsonParser;
    .restart local v24    # "response1":Lcom/google/gson/JsonObject;
    .restart local v25    # "sb":Ljava/lang/StringBuilder;
    :cond_12
    move-object/from16 v20, v21

    .end local v21    # "out":Ljava/io/DataOutputStream;
    .restart local v20    # "out":Ljava/io/DataOutputStream;
    move-object v4, v5

    .end local v5    # "buffer":Ljava/io/BufferedReader;
    .restart local v4    # "buffer":Ljava/io/BufferedReader;
    goto/16 :goto_4
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleEndOfStream(Lcom/market2345/download/DownloadThread$State;)V
    .locals 10
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    const/4 v6, 0x0

    .line 1250
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1251
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    iget-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1252
    iget-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    cmp-long v3, v4, v8

    if-nez v3, :cond_0

    .line 1253
    const-string v3, "total_bytes"

    iget-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1255
    :cond_0
    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v4}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1257
    iget-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    iget-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    iget-wide v6, p1, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 1259
    .local v1, "lengthMismatched":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 1260
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadThread;->cannotResume(Lcom/market2345/download/DownloadThread$State;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1262
    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v3, v3, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1263
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v3, v3, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1264
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1265
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0x1ec

    const-string v5, "The file can not be deleted!"

    invoke-direct {v3, v4, v5}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1257
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "lengthMismatched":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1270
    .restart local v1    # "lengthMismatched":Z
    :cond_2
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0x1e9

    const-string v5, "mismatched content length; unable to resume"

    invoke-direct {v3, v4, v5}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1273
    :cond_3
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0x1ef

    const-string v5, "closed socket before end of file"

    invoke-direct {v3, v4, v5}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1277
    :cond_4
    return-void
.end method

.method private handleFinalStatus(ILjava/lang/String;Z)V
    .locals 5
    .param p1, "finalStatus"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "signature"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1691
    const/4 v0, 0x0

    .line 1692
    .local v0, "values":Landroid/content/ContentValues;
    sparse-switch p1, :sswitch_data_0

    .line 1708
    :goto_0
    if-eqz v0, :cond_1

    .line 1709
    if-eqz p2, :cond_2

    .line 1710
    const-string v1, "description"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    :goto_1
    if-eqz p3, :cond_0

    .line 1715
    const-string v1, "signatureError"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1717
    :cond_0
    const-string v1, "speed"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1718
    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1721
    :cond_1
    return-void

    .line 1697
    :sswitch_0
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "values":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1698
    .restart local v0    # "values":Landroid/content/ContentValues;
    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1702
    :sswitch_1
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "values":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1703
    .restart local v0    # "values":Landroid/content/ContentValues;
    const-string v1, "current_bytes"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1712
    :cond_2
    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_1

    .line 1692
    :sswitch_data_0
    .sparse-switch
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_0
        0xc5 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x2bc -> :sswitch_1
        0x2bd -> :sswitch_1
    .end sparse-switch
.end method

.method private isInstalled()Z
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v1, v1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSignatureError(Ljava/lang/String;)Z
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v4, v4, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 801
    .local v0, "app":Lcom/market2345/model/InstalledApp;
    if-eqz v0, :cond_1

    .line 802
    iget-object v3, v0, Lcom/market2345/model/InstalledApp;->signatures:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 803
    .local v1, "cer":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/market2345/common/util/Utils;->getSignaturesFromApk(Ljava/io/File;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 804
    const/4 v3, 0x1

    .line 808
    .end local v1    # "cer":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 162
    if-nez p0, :cond_1

    .line 163
    const/4 p0, 0x0

    .line 172
    .local v0, "semicolonIndex":I
    :cond_0
    :goto_0
    return-object p0

    .line 166
    .end local v0    # "semicolonIndex":I
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 168
    const/16 v1, 0x3b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 169
    .restart local v0    # "semicolonIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 170
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private processResponseHeaders(Lcom/market2345/download/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 3
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;
    .param p2, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    .line 1327
    invoke-direct {p0, p1, p2}, Lcom/market2345/download/DownloadThread;->readResponseHeaders(Lcom/market2345/download/DownloadThread$State;Ljava/net/HttpURLConnection;)V

    .line 1329
    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mStorageManager:Lcom/market2345/download/StorageManager;

    invoke-static {v0, p1, v1}, Lcom/market2345/download/Helpers;->generateSaveFile(Lcom/market2345/download/DownloadInfo;Lcom/market2345/download/DownloadThread$State;Lcom/market2345/download/StorageManager;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 1330
    sget-object v0, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state.mFilename:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1332
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadThread;->updateDatabaseFromHeaders(Lcom/market2345/download/DownloadThread$State;)V

    .line 1334
    invoke-direct {p0}, Lcom/market2345/download/DownloadThread;->checkConnectivity()V

    .line 1335
    return-void
.end method

.method public static queryDownloadPartial(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 351
    iget-wide v0, p1, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-static {p0, v0, v1}, Lcom/market2345/download/DownloadInfo;->queryDownloadPartial(Landroid/content/Context;J)I

    move-result v0

    return v0
.end method

.method private readFromResponse(Lcom/market2345/download/DownloadThread$State;[BLjava/io/InputStream;)I
    .locals 7
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;
    .param p2, "data"    # [B
    .param p3, "entityStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1293
    :try_start_0
    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1296
    :goto_0
    return v3

    .line 1294
    :catch_0
    move-exception v0

    .line 1295
    .local v0, "ex":Ljava/io/IOException;
    const-string v3, "unexpected end of stream"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1296
    const/4 v3, -0x1

    goto :goto_0

    .line 1299
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1300
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    iget-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1301
    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v4}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1302
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadThread;->cannotResume(Lcom/market2345/download/DownloadThread$State;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1303
    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v3, v3, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1304
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v3, v3, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1305
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1306
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0x1ec

    const-string v5, "The file can not be deleted!"

    invoke-direct {v3, v4, v5}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1310
    .end local v1    # "file":Ljava/io/File;
    :cond_1
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0x1e9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed reading response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; unable to resume"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1313
    :cond_2
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0x1ef

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed reading response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private readResponseHeaders(Lcom/market2345/download/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 8
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;
    .param p2, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 1360
    const-string v3, "Content-Disposition"

    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/market2345/download/DownloadThread$State;->mContentDisposition:Ljava/lang/String;

    .line 1361
    const-string v3, "Content-Location"

    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/market2345/download/DownloadThread$State;->mContentLocation:Ljava/lang/String;

    .line 1363
    iget-object v3, p1, Lcom/market2345/download/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 1364
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/download/DownloadThread;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/market2345/download/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 1366
    const-string v3, "text/html"

    iget-object v4, p1, Lcom/market2345/download/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1367
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0xc3

    const-string v5, "waiting_for_network"

    invoke-direct {v3, v4, v5}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1371
    :cond_0
    const-string v3, "ETag"

    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/market2345/download/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    .line 1373
    const-string v3, "Transfer-Encoding"

    invoke-virtual {p2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1374
    .local v2, "transferEncoding":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 1375
    const-string v3, "Content-Length"

    invoke-static {p2, v3, v6, v7}, Lcom/market2345/download/DownloadThread;->getHeaderFieldLong(Ljava/net/URLConnection;Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    .line 1381
    :goto_0
    iget-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    iput-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mTotalBytes:J

    .line 1382
    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    iput-wide v4, v3, Lcom/market2345/download/DownloadInfo;->mTotalBytes:J

    .line 1384
    iget-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    if-eqz v2, :cond_1

    const-string v3, "chunked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const/4 v1, 0x1

    .line 1386
    .local v1, "noSizeInfo":Z
    :goto_1
    if-eqz v1, :cond_5

    .line 1389
    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v3, v3, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1390
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v3, v3, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1391
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1392
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0x1ec

    const-string v5, "The file can not be deleted!"

    invoke-direct {v3, v4, v5}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1377
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "noSizeInfo":Z
    :cond_2
    sget-object v3, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    const-string v4, "Ignoring Content-Length since Transfer-Encoding is also defined"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    iput-wide v6, p1, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    goto :goto_0

    .line 1384
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1397
    .restart local v1    # "noSizeInfo":Z
    :cond_4
    new-instance v3, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0x1e9

    const-string v5, "can\'t know size of download, giving up"

    invoke-direct {v3, v4, v5}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 1400
    :cond_5
    return-void
.end method

.method private reportDownloadError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-static {p1, v0}, Lcom/market2345/http/MarketAPI;->reportDownloadError(Ljava/lang/Throwable;Lcom/market2345/download/DownloadInfo;)V

    .line 1948
    return-void
.end method

.method private reportFWQMD5Error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "fwqmd5"    # Ljava/lang/String;
    .param p2, "secondmd5"    # Ljava/lang/String;
    .param p3, "sizeClient"    # Ljava/lang/String;
    .param p4, "sizeServer"    # Ljava/lang/String;

    .prologue
    .line 1800
    const-string v10, "http://zhushou.2345.com/index.php?c=log&d=md5update"

    .line 1801
    .local v10, "requestUrl":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1802
    .local v7, "mClient":Lcom/market2345/http/AndroidHttpClient;
    const/4 v9, 0x0

    .line 1803
    .local v9, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v11, 0x0

    .line 1805
    .local v11, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-static {}, Lcom/market2345/http/HttpClientFactory;->get()Lcom/market2345/http/HttpClientFactory;

    move-result-object v14

    invoke-virtual {v14}, Lcom/market2345/http/HttpClientFactory;->getHttpClient()Lcom/market2345/http/AndroidHttpClient;

    move-result-object v7

    .line 1806
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1807
    .local v8, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "softId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/market2345/download/DownloadInfo;->mSid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1808
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "md5Client"

    move-object/from16 v0, p2

    invoke-direct {v14, v15, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "md5Server"

    move-object/from16 v0, p1

    invoke-direct {v14, v15, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1810
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "sizeClient"

    move-object/from16 v0, p3

    invoke-direct {v14, v15, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1811
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "sizeServer"

    move-object/from16 v0, p4

    invoke-direct {v14, v15, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "version"

    const-string v16, "3.0.242702"

    invoke-direct/range {v14 .. v16}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1813
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_3

    .line 1814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1815
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 1816
    .local v1, "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v1}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1830
    .end local v1    # "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :catch_0
    move-exception v4

    .line 1831
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1835
    if-eqz v9, :cond_0

    .line 1836
    invoke-interface {v9}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1838
    :cond_0
    if-eqz v11, :cond_1

    .line 1840
    :try_start_2
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1841
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_1

    .line 1842
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1848
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    :cond_1
    :goto_1
    invoke-virtual {v7}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 1851
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 1818
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1819
    .local v12, "sign":Ljava/lang/String;
    invoke-static {v12}, Lcom/market2345/common/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1820
    .local v3, "code":Ljava/lang/String;
    const/4 v14, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v3, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1821
    new-instance v14, Lorg/apache/http/message/BasicNameValuePair;

    const-string v15, "sign"

    invoke-direct {v14, v15, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "code":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v12    # "sign":Ljava/lang/String;
    :cond_3
    sget-object v14, Lcom/market2345/http/RequestMethod;->POST:Lcom/market2345/http/RequestMethod;

    invoke-static {v10, v14, v8}, Lcom/market2345/http/ApiRequestFactory;->getRequest(Ljava/lang/String;Lcom/market2345/http/RequestMethod;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v9

    .line 1826
    invoke-virtual {v7, v9}, Lcom/market2345/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 1827
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 1829
    .local v13, "statusCode":I
    const-string v14, "statusCode"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1835
    if-eqz v9, :cond_4

    .line 1836
    invoke-interface {v9}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1838
    :cond_4
    if-eqz v11, :cond_5

    .line 1840
    :try_start_4
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1841
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_5

    .line 1842
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1848
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    :cond_5
    :goto_3
    invoke-virtual {v7}, Lcom/market2345/http/AndroidHttpClient;->close()V

    goto :goto_2

    .line 1844
    :catch_1
    move-exception v4

    .line 1845
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1844
    .end local v8    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    .end local v13    # "statusCode":I
    :catch_2
    move-exception v4

    .line 1845
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1832
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 1833
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1835
    if-eqz v9, :cond_6

    .line 1836
    invoke-interface {v9}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1838
    :cond_6
    if-eqz v11, :cond_7

    .line 1840
    :try_start_6
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1841
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_7

    .line 1842
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1848
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    :cond_7
    :goto_4
    invoke-virtual {v7}, Lcom/market2345/http/AndroidHttpClient;->close()V

    goto/16 :goto_2

    .line 1844
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 1845
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1835
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    if-eqz v9, :cond_8

    .line 1836
    invoke-interface {v9}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1838
    :cond_8
    if-eqz v11, :cond_9

    .line 1840
    :try_start_7
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1841
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_9

    .line 1842
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1848
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    :cond_9
    :goto_5
    invoke-virtual {v7}, Lcom/market2345/http/AndroidHttpClient;->close()V

    throw v14

    .line 1844
    :catch_5
    move-exception v4

    .line 1845
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method private reportMD5Error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .param p1, "fmd5"    # Ljava/lang/String;
    .param p2, "smd5"    # Ljava/lang/String;
    .param p3, "md5"    # Ljava/lang/String;
    .param p4, "sizeClient"    # Ljava/lang/String;
    .param p5, "sizeServer"    # Ljava/lang/String;

    .prologue
    .line 1854
    const-string v10, "http://zhushou.2345.com/index.php?c=log&d=md5error"

    .line 1855
    .local v10, "requestUrl":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1856
    .local v7, "mClient":Lcom/market2345/http/AndroidHttpClient;
    const/4 v9, 0x0

    .line 1857
    .local v9, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v11, 0x0

    .line 1859
    .local v11, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-static {}, Lcom/market2345/http/HttpClientFactory;->get()Lcom/market2345/http/HttpClientFactory;

    move-result-object v13

    invoke-virtual {v13}, Lcom/market2345/http/HttpClientFactory;->getHttpClient()Lcom/market2345/http/AndroidHttpClient;

    move-result-object v7

    .line 1860
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1861
    .local v8, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "softId"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v15, v15, Lcom/market2345/download/DownloadInfo;->mSid:Ljava/lang/String;

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "md5Client1"

    move-object/from16 v0, p1

    invoke-direct {v13, v14, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1863
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "md5Client2"

    move-object/from16 v0, p2

    invoke-direct {v13, v14, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1864
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "md5Server"

    move-object/from16 v0, p3

    invoke-direct {v13, v14, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1865
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "sizeClient"

    move-object/from16 v0, p4

    invoke-direct {v13, v14, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1866
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "sizeServer"

    move-object/from16 v0, p5

    invoke-direct {v13, v14, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1867
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "version"

    const-string v15, "3.0.242702"

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1868
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "deviceInfo"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/market2345/common/util/ApplicationUtils;->getFeedBackDeviceInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1869
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_3

    .line 1870
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1871
    .local v2, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/message/BasicNameValuePair;

    .line 1872
    .local v1, "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v1}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1884
    .end local v1    # "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :catch_0
    move-exception v4

    .line 1885
    .local v4, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1889
    if-eqz v9, :cond_0

    .line 1890
    invoke-interface {v9}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1892
    :cond_0
    if-eqz v11, :cond_1

    .line 1894
    :try_start_2
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1895
    .local v5, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_1

    .line 1896
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1902
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    :cond_1
    :goto_1
    invoke-virtual {v7}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 1903
    const/4 v7, 0x0

    .line 1906
    .end local v4    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 1874
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v8    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1875
    .local v12, "sign":Ljava/lang/String;
    invoke-static {v12}, Lcom/market2345/common/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1876
    .local v3, "code":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1877
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "sign"

    invoke-direct {v13, v14, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1879
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v3    # "code":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v12    # "sign":Ljava/lang/String;
    :cond_3
    sget-object v13, Lcom/market2345/http/RequestMethod;->POST:Lcom/market2345/http/RequestMethod;

    invoke-static {v10, v13, v8}, Lcom/market2345/http/ApiRequestFactory;->getRequest(Ljava/lang/String;Lcom/market2345/http/RequestMethod;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v9

    .line 1881
    invoke-virtual {v7, v9}, Lcom/market2345/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 1882
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1889
    if-eqz v9, :cond_4

    .line 1890
    invoke-interface {v9}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1892
    :cond_4
    if-eqz v11, :cond_5

    .line 1894
    :try_start_4
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1895
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_5

    .line 1896
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1902
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    :cond_5
    :goto_3
    invoke-virtual {v7}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 1903
    const/4 v7, 0x0

    .line 1904
    goto :goto_2

    .line 1898
    :catch_1
    move-exception v4

    .line 1899
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 1898
    .end local v8    # "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    :catch_2
    move-exception v4

    .line 1899
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1886
    .end local v4    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v4

    .line 1887
    .local v4, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1889
    if-eqz v9, :cond_6

    .line 1890
    invoke-interface {v9}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1892
    :cond_6
    if-eqz v11, :cond_7

    .line 1894
    :try_start_6
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1895
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_7

    .line 1896
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1902
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    :cond_7
    :goto_4
    invoke-virtual {v7}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 1903
    const/4 v7, 0x0

    .line 1904
    goto :goto_2

    .line 1898
    .restart local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 1899
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1889
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    if-eqz v9, :cond_8

    .line 1890
    invoke-interface {v9}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 1892
    :cond_8
    if-eqz v11, :cond_9

    .line 1894
    :try_start_7
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 1895
    .restart local v5    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v5, :cond_9

    .line 1896
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1902
    .end local v5    # "entity":Lorg/apache/http/HttpEntity;
    :cond_9
    :goto_5
    invoke-virtual {v7}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 1903
    const/4 v7, 0x0

    throw v13

    .line 1898
    :catch_5
    move-exception v4

    .line 1899
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5
.end method

.method private reportProgress(Lcom/market2345/download/DownloadThread$State;)V
    .locals 13
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;

    .prologue
    const/4 v12, 0x0

    .line 1175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1177
    .local v0, "now":J
    iget-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mSpeedSampleStart:J

    sub-long v2, v0, v8

    .line 1178
    .local v2, "sampleDelta":J
    const-wide/16 v8, 0x1f4

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 1179
    iget-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    iget-wide v10, p1, Lcom/market2345/download/DownloadThread$State;->mSpeedSampleBytes:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    div-long v4, v8, v2

    .line 1185
    .local v4, "sampleSpeed":J
    iget-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mSpeed:J

    const-wide/16 v10, 0x3

    mul-long/2addr v8, v10

    add-long/2addr v8, v4

    const-wide/16 v10, 0x4

    div-long/2addr v8, v10

    iput-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mSpeed:J

    .line 1195
    iput-wide v0, p1, Lcom/market2345/download/DownloadThread$State;->mSpeedSampleStart:J

    .line 1196
    iget-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    iput-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mSpeedSampleBytes:J

    .line 1199
    .end local v4    # "sampleSpeed":J
    :cond_0
    iget-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    iget-wide v10, p1, Lcom/market2345/download/DownloadThread$State;->mBytesNotified:J

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x5000

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    iget-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mTimeLastNotification:J

    sub-long v8, v0, v8

    const-wide/16 v10, 0x32

    cmp-long v7, v8, v10

    if-lez v7, :cond_1

    .line 1201
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1202
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "current_bytes"

    iget-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1203
    const-string v7, "speed"

    iget-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mSpeed:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1204
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v8}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v12, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1205
    iget-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    iput-wide v8, p1, Lcom/market2345/download/DownloadThread$State;->mBytesNotified:J

    .line 1206
    iput-wide v0, p1, Lcom/market2345/download/DownloadThread$State;->mTimeLastNotification:J

    .line 1208
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_1
    return-void
.end method

.method private runInternal()Z
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 443
    :try_start_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/market2345/download/DownloadThread;->mNumDeleted:I

    const/16 v15, 0x14

    if-le v14, v15, :cond_1

    .line 444
    new-instance v14, Lcom/market2345/download/exception/StopRequestException;

    const/16 v15, 0x2be

    const-string v16, "This download couldn\'t be completed because there were too many dels"

    invoke-direct/range {v14 .. v16}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_0
    .catch Lcom/market2345/download/exception/StopRequestException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 510
    :catch_0
    move-exception v4

    .line 512
    .local v4, "error":Lcom/market2345/download/exception/StopRequestException;
    invoke-virtual {v4}, Lcom/market2345/download/exception/StopRequestException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 513
    .local v5, "errorMsg":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Aborting request for download "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v0, v15, Lcom/market2345/download/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " \nstatus:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Lcom/market2345/download/exception/StopRequestException;->getFinalStatus()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 514
    .local v12, "msg":Ljava/lang/String;
    sget-object v14, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    invoke-static {v14, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-boolean v14, Lcom/market2345/download/Constants;->LOGV:Z

    if-eqz v14, :cond_0

    .line 516
    sget-object v14, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    invoke-static {v14, v12, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 518
    :cond_0
    invoke-virtual {v4}, Lcom/market2345/download/exception/StopRequestException;->getFinalStatus()I

    move-result v7

    .line 520
    .local v7, "finalStatus":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v4}, Lcom/market2345/download/DownloadThread;->handleDownLoadError(ILjava/lang/Throwable;)Z

    move-result v14

    .line 534
    .end local v4    # "error":Lcom/market2345/download/exception/StopRequestException;
    .end local v5    # "errorMsg":Ljava/lang/String;
    .end local v7    # "finalStatus":I
    .end local v12    # "msg":Ljava/lang/String;
    :goto_0
    return v14

    .line 447
    :cond_1
    :try_start_1
    new-instance v14, Lcom/market2345/download/DownloadThread$State;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    move-object/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Lcom/market2345/download/DownloadThread$State;-><init>(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    .line 449
    move-object/from16 v0, p0

    iget v14, v0, Lcom/market2345/download/DownloadThread;->mNumFailed:I

    if-lez v14, :cond_2

    .line 452
    move-object/from16 v0, p0

    iget v14, v0, Lcom/market2345/download/DownloadThread;->mNumFailed:I

    const/4 v15, 0x3

    if-ge v14, v15, :cond_3

    .line 453
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/market2345/download/DownloadThread;->mNumFailed:I

    shl-int/2addr v14, v15

    mul-int/lit16 v14, v14, 0x3e8

    int-to-long v10, v14

    .line 462
    .local v10, "interval":J
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    monitor-enter v15
    :try_end_1
    .catch Lcom/market2345/download/exception/StopRequestException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 464
    :try_start_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v14, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 468
    :goto_2
    :try_start_3
    monitor-exit v15
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 472
    .end local v10    # "interval":J
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v0, v15, Lcom/market2345/download/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/market2345/download/DownloadInfo;->queryCanBreak(Landroid/content/ContentResolver;J)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 473
    sget-object v14, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Download "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/market2345/download/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " already finished; skipping"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v14, 0x0

    goto :goto_0

    .line 454
    :cond_3
    move-object/from16 v0, p0

    iget v14, v0, Lcom/market2345/download/DownloadThread;->mNumFailed:I

    const/16 v15, 0x10

    if-gt v14, v15, :cond_4

    .line 455
    const-wide/16 v10, 0x1f40

    .restart local v10    # "interval":J
    goto :goto_1

    .line 456
    .end local v10    # "interval":J
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/market2345/download/DownloadThread;->mNumFailed:I

    const/16 v15, 0x13

    if-gt v14, v15, :cond_5

    .line 457
    const-wide/32 v10, 0xea60

    .restart local v10    # "interval":J
    goto :goto_1

    .line 459
    .end local v10    # "interval":J
    :cond_5
    new-instance v14, Lcom/market2345/download/exception/StopRequestException;

    const/16 v15, 0x1f3

    const-string v16, "This download couldn\'t be completed because there were too many retries"

    invoke-direct/range {v14 .. v16}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v14
    :try_end_4
    .catch Lcom/market2345/download/exception/StopRequestException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 522
    :catch_1
    move-exception v6

    .line 523
    .local v6, "ex":Ljava/lang/Throwable;
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 524
    .restart local v5    # "errorMsg":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception for id "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v0, v15, Lcom/market2345/download/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 525
    .restart local v12    # "msg":Ljava/lang/String;
    sget-object v14, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    invoke-static {v14, v12, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 526
    const/16 v7, 0x1eb

    .line 528
    .restart local v7    # "finalStatus":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/market2345/download/DownloadThread;->reportDownloadError(Ljava/lang/Throwable;)V

    .line 530
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/market2345/download/DownloadThread;->handleDownLoadError(ILjava/lang/Throwable;)Z

    move-result v14

    goto/16 :goto_0

    .line 465
    .end local v5    # "errorMsg":Ljava/lang/String;
    .end local v6    # "ex":Ljava/lang/Throwable;
    .end local v7    # "finalStatus":I
    .end local v12    # "msg":Ljava/lang/String;
    .restart local v10    # "interval":J
    :catch_2
    move-exception v3

    .line 466
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 468
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v14

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v14

    .line 478
    .end local v10    # "interval":J
    :cond_6
    const/4 v8, 0x0

    .line 479
    .local v8, "installedApp":Lcom/market2345/model/InstalledApp;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v14, v14, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v15, v15, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v8

    .line 483
    :cond_7
    if-eqz v8, :cond_a

    const/4 v9, 0x1

    .line 485
    .local v9, "isInstalled":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-static {v14, v15}, Lcom/market2345/download/DownloadThread;->queryDownloadPartial(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)I

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/market2345/download/DownloadThread;->checkJifenUrl(ZLcom/market2345/download/DownloadThread$State;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 486
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 487
    .local v13, "values":Landroid/content/ContentValues;
    const-string v14, "sourcefrom"

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v15}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v14, v15, v13, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 492
    .end local v13    # "values":Landroid/content/ContentValues;
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v0, v15, Lcom/market2345/download/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lcom/market2345/log/DownloadLog;->downloadEvent(IJ)V

    .line 495
    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v14, v14, Lcom/market2345/download/DownloadInfo;->mPatchSize:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_9

    .line 496
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/market2345/download/DownloadThread;->getPatchUrlIfHas(Lcom/market2345/model/InstalledApp;)Lcom/market2345/model/App;

    move-result-object v2

    .line 497
    .local v2, "app":Lcom/market2345/model/App;
    if-eqz v2, :cond_9

    .line 498
    new-instance v14, Lcom/market2345/download/DownloadThread$State;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v14, v15, v0, v2}, Lcom/market2345/download/DownloadThread$State;-><init>(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    .line 503
    .end local v2    # "app":Lcom/market2345/model/App;
    :cond_9
    sget-object v14, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Download "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/market2345/download/DownloadInfo;->mId:J

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " starting"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/market2345/download/DownloadThread;->executeDownload(Lcom/market2345/download/DownloadThread$State;)V

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/market2345/download/DownloadThread;->validate()V

    .line 509
    invoke-direct/range {p0 .. p0}, Lcom/market2345/download/DownloadThread;->downloadCompleted()V
    :try_end_6
    .catch Lcom/market2345/download/exception/StopRequestException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    .line 534
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 483
    .end local v9    # "isInstalled":Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_3
.end method

.method private setDownFull()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1684
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1685
    .local v0, "downValues":Landroid/content/ContentValues;
    const-string v1, "downPartial"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1686
    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1687
    return-void
.end method

.method private setupDestinationFile(Lcom/market2345/download/DownloadThread$State;)V
    .locals 10
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x1ec

    .line 1408
    iget-object v1, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1409
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGV:Z

    if-eqz v1, :cond_0

    .line 1410
    sget-object v1, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "have run thread before for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v6, v5, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", and state.mFilename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1416
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1417
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGV:Z

    if-eqz v1, :cond_1

    .line 1418
    sget-object v1, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resuming download for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v6, v5, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", and state.mFilename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 1422
    .local v2, "fileLength":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_5

    .line 1424
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGVV:Z

    if-eqz v1, :cond_2

    .line 1425
    sget-object v1, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDestinationFile() found fileLength=0, deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1430
    new-instance v1, Lcom/market2345/download/exception/StopRequestException;

    const-string v4, "The file can not be deleted!"

    invoke-direct {v1, v8, v4}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1434
    :cond_3
    iget v1, p0, Lcom/market2345/download/DownloadThread;->mNumDeleted:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/market2345/download/DownloadThread;->mNumDeleted:I

    .line 1437
    iput-object v9, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 1438
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGV:Z

    if-eqz v1, :cond_4

    .line 1439
    sget-object v1, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resuming download for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v6, v5, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", BUT starting from scratch again: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    .end local v0    # "f":Ljava/io/File;
    .end local v2    # "fileLength":J
    :cond_4
    :goto_0
    return-void

    .line 1442
    .restart local v0    # "f":Ljava/io/File;
    .restart local v2    # "fileLength":J
    :cond_5
    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v1, v1, Lcom/market2345/download/DownloadInfo;->mFirstMD5:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1443
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1444
    new-instance v1, Lcom/market2345/download/exception/StopRequestException;

    const-string v4, "The file can not be deleted!"

    invoke-direct {v1, v8, v4}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1449
    :cond_6
    iput-object v9, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    goto :goto_0

    .line 1450
    :cond_7
    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v1, v1, Lcom/market2345/download/DownloadInfo;->mETag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1452
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGVV:Z

    if-eqz v1, :cond_8

    .line 1453
    sget-object v1, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupDestinationFile() unable to resume download, deleting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :cond_8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1459
    new-instance v1, Lcom/market2345/download/exception/StopRequestException;

    const-string v4, "The file can not be deleted!"

    invoke-direct {v1, v8, v4}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1464
    :cond_9
    new-instance v1, Lcom/market2345/download/exception/StopRequestException;

    const/16 v4, 0x1e9

    const-string v5, "Trying to resume a download that can\'t be resumed"

    invoke-direct {v1, v4, v5}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1468
    :cond_a
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGV:Z

    if-eqz v1, :cond_b

    .line 1469
    sget-object v1, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resuming download for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v6, v5, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", and starting with file of length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :cond_b
    long-to-int v1, v2

    int-to-long v4, v1

    iput-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    .line 1473
    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v4, v1, Lcom/market2345/download/DownloadInfo;->mTotalBytes:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_c

    .line 1474
    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v4, v1, Lcom/market2345/download/DownloadInfo;->mTotalBytes:J

    iput-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mContentLength:J

    .line 1476
    :cond_c
    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v1, v1, Lcom/market2345/download/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v1, p1, Lcom/market2345/download/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    .line 1477
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/market2345/download/DownloadThread$State;->mContinuingDownload:Z

    .line 1478
    sget-boolean v1, Lcom/market2345/download/Constants;->LOGV:Z

    if-eqz v1, :cond_4

    .line 1479
    sget-object v1, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resuming download for id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v6, v5, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state.mCurrentBytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", and setting mContinuingDownload to true: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showToast(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/market2345/download/DownloadThread;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/market2345/download/DownloadManager;->showToast(I)V

    .line 1725
    return-void
.end method

.method private transferData(Lcom/market2345/download/DownloadThread$State;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 10
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0xc0

    .line 1112
    iget-object v4, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v6, v5, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-static {v4, v6, v7}, Lcom/market2345/download/DownloadInfo;->queryStatus(Landroid/content/ContentResolver;J)I

    move-result v2

    .line 1115
    .local v2, "status":I
    invoke-direct {p0, v2}, Lcom/market2345/download/DownloadThread;->checkPausedOrCanceled(I)V

    .line 1118
    const/4 v4, 0x0

    iput v4, p0, Lcom/market2345/download/DownloadThread;->mNumFailed:I

    .line 1121
    if-eq v2, v8, :cond_0

    .line 1123
    sget-object v4, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    const-string v5, "BE RUNNING"

    invoke-static {v4, v5}, Lcom/market2345/base/log/L;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1125
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1126
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "status"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1127
    const-string v4, "description"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1128
    iget-object v4, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v5}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1132
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    const/16 v4, 0x1000

    new-array v1, v4, [B

    .line 1134
    .local v1, "data":[B
    :goto_0
    invoke-direct {p0, p1, v1, p2}, Lcom/market2345/download/DownloadThread;->readFromResponse(Lcom/market2345/download/DownloadThread$State;[BLjava/io/InputStream;)I

    move-result v0

    .line 1135
    .local v0, "bytesRead":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 1136
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadThread;->handleEndOfStream(Lcom/market2345/download/DownloadThread$State;)V

    .line 1137
    return-void

    .line 1139
    :cond_1
    iget-object v4, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget v4, v4, Lcom/market2345/download/DownloadInfo;->mStatus:I

    invoke-direct {p0, v4}, Lcom/market2345/download/DownloadThread;->checkPausedOrCanceled(I)V

    .line 1140
    invoke-direct {p0}, Lcom/market2345/download/DownloadThread;->checkConnectivity()V

    .line 1143
    invoke-direct {p0, p1, v1, v0, p3}, Lcom/market2345/download/DownloadThread;->writeDataToDestination(Lcom/market2345/download/DownloadThread$State;[BILjava/io/OutputStream;)V

    .line 1144
    iget-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p1, Lcom/market2345/download/DownloadThread$State;->mCurrentBytes:J

    .line 1145
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadThread;->reportProgress(Lcom/market2345/download/DownloadThread$State;)V

    goto :goto_0
.end method

.method private transferData(Lcom/market2345/download/DownloadThread$State;Ljava/net/HttpURLConnection;)V
    .locals 10
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;
    .param p2, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    .line 1010
    const/4 v3, 0x0

    .line 1011
    .local v3, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 1012
    .local v4, "out":Ljava/io/OutputStream;
    const/4 v6, 0x0

    .line 1015
    .local v6, "outFd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1021
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v7, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-direct {v5, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1022
    .end local v4    # "out":Ljava/io/OutputStream;
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_2
    move-object v0, v5

    check-cast v0, Ljava/io/FileOutputStream;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v6

    .line 1030
    :try_start_3
    invoke-direct {p0, p1, v3, v5}, Lcom/market2345/download/DownloadThread;->transferData(Lcom/market2345/download/DownloadThread$State;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1034
    if-eqz v5, :cond_0

    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 1035
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V

    .line 1036
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1041
    :cond_2
    :goto_0
    move-object v2, v3

    .line 1042
    .local v2, "finalIn":Ljava/io/InputStream;
    sget-object v7, Lcom/market2345/download/DownloadThread;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcom/market2345/download/DownloadThread$4;

    invoke-direct {v8, p0, v2}, Lcom/market2345/download/DownloadThread$4;-><init>(Lcom/market2345/download/DownloadThread;Ljava/io/InputStream;)V

    invoke-interface {v7, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1055
    return-void

    .line 1016
    .end local v2    # "finalIn":Ljava/io/InputStream;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 1017
    .local v1, "e":Ljava/io/IOException;
    :try_start_5
    new-instance v7, Lcom/market2345/download/exception/StopRequestException;

    const/16 v8, 0x1ef

    invoke-direct {v7, v8, v1}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1033
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1034
    :goto_1
    if-eqz v4, :cond_3

    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 1035
    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V

    .line 1036
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1041
    :cond_5
    :goto_2
    move-object v2, v3

    .line 1042
    .restart local v2    # "finalIn":Ljava/io/InputStream;
    sget-object v8, Lcom/market2345/download/DownloadThread;->releaseExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/market2345/download/DownloadThread$4;

    invoke-direct {v9, p0, v2}, Lcom/market2345/download/DownloadThread$4;-><init>(Lcom/market2345/download/DownloadThread;Ljava/io/InputStream;)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 1054
    throw v7

    .line 1023
    .end local v2    # "finalIn":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 1024
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_7
    new-instance v7, Lcom/market2345/download/exception/StopRequestException;

    const/16 v8, 0x1ec

    invoke-direct {v7, v8, v1}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/Throwable;)V

    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1037
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_2
    move-exception v1

    .line 1038
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1037
    .end local v1    # "e":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    :catch_3
    move-exception v1

    .line 1038
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1033
    .end local v1    # "e":Ljava/io/IOException;
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_1

    .line 1023
    .end local v4    # "out":Ljava/io/OutputStream;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :catch_4
    move-exception v1

    move-object v4, v5

    .end local v5    # "out":Ljava/io/OutputStream;
    .restart local v4    # "out":Ljava/io/OutputStream;
    goto :goto_3
.end method

.method private updateDatabaseFromHeaders(Lcom/market2345/download/DownloadThread$State;)V
    .locals 5
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;

    .prologue
    const/4 v4, 0x0

    .line 1342
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1343
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "fileName"

    iget-object v2, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v1, p1, Lcom/market2345/download/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1345
    const-string v1, "etag"

    iget-object v2, p1, Lcom/market2345/download/DownloadThread$State;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    :cond_0
    iget-object v1, p1, Lcom/market2345/download/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1348
    const-string v1, "mimetype"

    iget-object v2, p1, Lcom/market2345/download/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    :cond_1
    const-string v1, "total_bytes"

    iget-object v2, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v2, v2, Lcom/market2345/download/DownloadInfo;->mTotalBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1351
    const-string v1, "description"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1352
    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v2}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1353
    return-void
.end method

.method private userAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v1, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v0, v1, Lcom/market2345/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 155
    .local v0, "userAgent":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 156
    sget-object v0, Lcom/market2345/download/Constants;->DEFAULT_USER_AGENT:Ljava/lang/String;

    .line 158
    :cond_0
    return-object v0
.end method

.method private validate()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 701
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    iget-object v7, v7, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;

    const-string v8, "http://app.2345.cn/appsoft/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    iget-object v7, v7, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;

    const-string v8, "http://app.2345.cn/appgame/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    iget-object v7, v7, Lcom/market2345/download/DownloadThread$State;->mOriginalUrl:Ljava/lang/String;

    const-string v8, "http://app.2345.cn/patch/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 704
    :cond_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 705
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "description"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v7, "status"

    const/16 v8, 0x258

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 707
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v8}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v6, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 712
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-static {v7, v8}, Lcom/market2345/download/DownloadThread;->queryDownloadPartial(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 713
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v8, v8, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v2

    .line 714
    .local v2, "installedApp":Lcom/market2345/model/InstalledApp;
    if-eqz v2, :cond_1

    .line 716
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v5, v7, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    .line 717
    .local v5, "patchPath":Ljava/lang/String;
    const-string v7, "."

    invoke-virtual {v5, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 718
    .local v1, "index":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_full.apk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 720
    .local v3, "newPath":Ljava/lang/String;
    iget-object v7, v2, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    invoke-static {v7, v3, v5}, Lcom/market2345/util/PatchUtils;->patch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 721
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 722
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v7, "fileName"

    invoke-virtual {v0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v8}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v0, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 725
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    iput-object v3, v7, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 727
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 733
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    .end local v1    # "index":I
    .end local v2    # "installedApp":Lcom/market2345/model/InstalledApp;
    .end local v3    # "newPath":Ljava/lang/String;
    .end local v5    # "patchPath":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget v7, v7, Lcom/market2345/download/DownloadInfo;->mMinSDK:I

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v7, v8, :cond_4

    .line 735
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    iget-object v8, v8, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v9, 0x100

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 737
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_3

    .line 738
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget v7, v7, Lcom/market2345/download/DownloadInfo;->mNumFailed:I

    if-nez v7, :cond_2

    .line 739
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 740
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string v7, "mNumFailed"

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget v9, v8, Lcom/market2345/download/DownloadInfo;->mNumFailed:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lcom/market2345/download/DownloadInfo;->mNumFailed:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v8}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v8, v0, v10, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 742
    new-instance v7, Lcom/market2345/download/exception/StopRequestException;

    const/16 v8, 0x2bc

    const-string v9, "validate error"

    invoke-direct {v7, v8, v9}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 744
    .end local v0    # "contentValues":Landroid/content/ContentValues;
    :cond_2
    new-instance v7, Lcom/market2345/download/exception/StopRequestException;

    const/16 v8, 0x2bd

    const-string v9, "validate error"

    invoke-direct {v7, v8, v9}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 749
    :cond_3
    invoke-direct {p0}, Lcom/market2345/download/DownloadThread;->isInstalled()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v7, v7, Lcom/market2345/download/DownloadInfo;->mCertMd5:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    iget-object v7, v7, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/market2345/download/DownloadThread;->isSignatureError(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 750
    new-instance v7, Lcom/market2345/download/exception/StopRequestException;

    const/16 v8, 0x2bf

    const-string v9, "signature error"

    invoke-direct {v7, v8, v9}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 790
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_4
    return-void
.end method

.method private writeDataToDestination(Lcom/market2345/download/DownloadThread$State;[BILjava/io/OutputStream;)V
    .locals 8
    .param p1, "state"    # Lcom/market2345/download/DownloadThread$State;
    .param p2, "data"    # [B
    .param p3, "bytesRead"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/download/exception/StopRequestException;
        }
    .end annotation

    .prologue
    .line 1219
    iget-object v2, p0, Lcom/market2345/download/DownloadThread;->mStorageManager:Lcom/market2345/download/StorageManager;

    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    int-to-long v6, p3

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/market2345/download/StorageManager;->verifySpaceBeforeWritingToFile(Landroid/content/Context;Ljava/lang/String;J)V

    .line 1221
    new-instance v2, Ljava/io/File;

    iget-object v3, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget v2, v2, Lcom/market2345/download/DownloadInfo;->mStatus:I

    const/16 v3, 0x1ea

    if-eq v2, v3, :cond_0

    .line 1222
    new-instance v2, Lcom/market2345/download/exception/StopRequestException;

    const/16 v3, 0x1f2

    const-string v4, "The file is deleted"

    invoke-direct {v2, v3, v4}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 1226
    :cond_0
    const/4 v1, 0x0

    .line 1229
    .local v1, "forceVerified":Z
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p4, p2, v2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1230
    return-void

    .line 1231
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "ex":Ljava/io/IOException;
    if-nez v1, :cond_1

    .line 1235
    iget-object v2, p0, Lcom/market2345/download/DownloadThread;->mStorageManager:Lcom/market2345/download/StorageManager;

    iget-object v3, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v4, p1, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    int-to-long v6, p3

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/market2345/download/StorageManager;->verifySpace(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    .line 1236
    const/4 v1, 0x1

    goto :goto_0

    .line 1238
    :cond_1
    new-instance v2, Lcom/market2345/download/exception/StopRequestException;

    const/16 v3, 0x1ec

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to write data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/market2345/download/exception/StopRequestException;-><init>(ILjava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public handleDownLoadError(ILjava/lang/Throwable;)Z
    .locals 13
    .param p1, "status"    # I
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1526
    move v3, p1

    .line 1527
    .local v3, "finalStatus":I
    const/4 v5, 0x0

    .line 1529
    .local v5, "retry":Z
    const/4 v1, 0x0

    .line 1530
    .local v1, "description":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1531
    .local v6, "signature":Z
    sparse-switch p1, :sswitch_data_0

    .line 1661
    const/16 v3, 0xc2

    .line 1662
    const-string v1, ""

    .line 1667
    :goto_0
    const/16 v8, 0x1ea

    if-ne v3, v8, :cond_5

    .line 1668
    iget-object v9, p0, Lcom/market2345/download/DownloadThread;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    monitor-enter v9

    .line 1670
    :try_start_0
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v10, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v10}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1671
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v10, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v8, v10}, Lcom/market2345/download/DownloadManager;->removeDownloadInfo(Lcom/market2345/download/DownloadInfo;)V

    .line 1672
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/market2345/download/DownloadThread$State;->mDeleteFile:Z

    .line 1673
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v8

    invoke-virtual {v8}, Lcom/market2345/datacenter/DataCenterObserver;->getMarketHandler()Landroid/os/Handler;

    move-result-object v8

    const/16 v10, 0xf

    invoke-virtual {v8, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1674
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    const/4 v8, 0x0

    .line 1679
    :goto_1
    return v8

    .line 1538
    :sswitch_0
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v10, v9, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-static {v8, v10, v11}, Lcom/market2345/download/DownloadInfo;->queryStatus(Landroid/content/ContentResolver;J)I

    move-result v0

    .line 1540
    .local v0, "current_status":I
    const/16 v8, 0x1ea

    if-ne v0, v8, :cond_0

    .line 1541
    move v3, v0

    .line 1543
    goto :goto_0

    .line 1544
    :cond_0
    const/16 v8, 0xc1

    if-ne v0, v8, :cond_1

    .line 1545
    const/4 v8, 0x0

    goto :goto_1

    .line 1549
    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1550
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "speed"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1551
    const-string v8, "description"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1552
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v9}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1554
    iget v8, p0, Lcom/market2345/download/DownloadThread;->mNumFailed:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/market2345/download/DownloadThread;->mNumFailed:I

    const/4 v9, 0x2

    if-le v8, v9, :cond_2

    .line 1555
    const/16 v3, 0xc5

    .line 1556
    const v8, 0x7f0b009e

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1559
    :cond_2
    const/4 v5, 0x1

    .line 1560
    goto/16 :goto_0

    .line 1563
    .end local v0    # "current_status":I
    .end local v7    # "values":Landroid/content/ContentValues;
    :sswitch_1
    const v8, 0x7f0b0146

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->showToast(I)V

    .line 1565
    iget v8, p0, Lcom/market2345/download/DownloadThread;->mNumDeleted:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/market2345/download/DownloadThread;->mNumDeleted:I

    .line 1569
    const/4 v5, 0x1

    .line 1570
    goto/16 :goto_0

    .line 1575
    :sswitch_2
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v8, v8, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1576
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1577
    :cond_3
    iget v8, p0, Lcom/market2345/download/DownloadThread;->mNumDeleted:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/market2345/download/DownloadThread;->mNumDeleted:I

    .line 1578
    const v8, 0x7f0b0142

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->showToast(I)V

    .line 1579
    const/4 v5, 0x1

    .line 1585
    :goto_2
    invoke-direct {p0}, Lcom/market2345/download/DownloadThread;->setDownFull()V

    .line 1586
    invoke-direct {p0, p2}, Lcom/market2345/download/DownloadThread;->reportDownloadError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1581
    :cond_4
    const/16 v3, 0xc2

    .line 1582
    const v8, 0x7f0b0147

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->showToast(I)V

    .line 1583
    const v8, 0x7f0b009a

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 1590
    .end local v2    # "file":Ljava/io/File;
    :sswitch_3
    const v8, 0x7f0b0145

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->showToast(I)V

    .line 1591
    const/16 v3, 0x1ea

    .line 1592
    invoke-direct {p0, p2}, Lcom/market2345/download/DownloadThread;->reportDownloadError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1596
    :sswitch_4
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    const-class v9, Lcom/market2345/download/view/SignatureErrorDialogActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1597
    .local v4, "intent":Landroid/content/Intent;
    const-string v8, "key.app.name"

    iget-object v9, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v9, v9, Lcom/market2345/download/DownloadInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1598
    const/high16 v8, 0x10000000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1599
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1600
    const/16 v3, 0xc8

    .line 1601
    const/4 v6, 0x1

    .line 1602
    const-string v1, ""

    .line 1603
    goto/16 :goto_0

    .line 1606
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_5
    const v8, 0x7f0b0141

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->showToast(I)V

    .line 1607
    const/4 v5, 0x1

    .line 1608
    iget v8, p0, Lcom/market2345/download/DownloadThread;->mNumDeleted:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/market2345/download/DownloadThread;->mNumDeleted:I

    .line 1609
    const-string v1, ""

    .line 1610
    invoke-direct {p0}, Lcom/market2345/download/DownloadThread;->setDownFull()V

    goto/16 :goto_0

    .line 1614
    :sswitch_6
    const v8, 0x7f0b0148

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->showToast(I)V

    .line 1615
    const/16 v3, 0x1ea

    .line 1616
    invoke-direct {p0, p2}, Lcom/market2345/download/DownloadThread;->reportDownloadError(Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1619
    :sswitch_7
    const v8, 0x7f0b0144

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->showToast(I)V

    .line 1620
    const/16 v3, 0xc0

    .line 1621
    const/4 v5, 0x1

    .line 1622
    iget v8, p0, Lcom/market2345/download/DownloadThread;->mNumDeleted:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/market2345/download/DownloadThread;->mNumDeleted:I

    .line 1623
    invoke-direct {p0}, Lcom/market2345/download/DownloadThread;->setDownFull()V

    goto/16 :goto_0

    .line 1626
    :sswitch_8
    const v8, 0x7f0b0149

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->showToast(I)V

    .line 1627
    const/16 v3, 0xc2

    .line 1628
    const v8, 0x7f0b009d

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1629
    goto/16 :goto_0

    .line 1631
    :sswitch_9
    const v8, 0x7f0b0147

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->showToast(I)V

    .line 1632
    const/16 v3, 0xc2

    .line 1633
    const v8, 0x7f0b009a

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1634
    goto/16 :goto_0

    .line 1636
    :sswitch_a
    const v8, 0x7f0b0143

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->showToast(I)V

    .line 1637
    const/16 v3, 0xc2

    .line 1638
    const v8, 0x7f0b009f

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1639
    goto/16 :goto_0

    .line 1641
    :sswitch_b
    const v8, 0x7f0b014a

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->showToast(I)V

    .line 1642
    const/16 v3, 0xc2

    .line 1643
    const-string v1, ""

    .line 1644
    goto/16 :goto_0

    .line 1646
    :sswitch_c
    const/16 v3, 0xc2

    .line 1647
    const-string v1, ""

    .line 1648
    goto/16 :goto_0

    .line 1650
    :sswitch_d
    const/16 v3, 0xc2

    .line 1651
    const v8, 0x7f0b009b

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1652
    goto/16 :goto_0

    .line 1654
    :sswitch_e
    const/16 v3, 0xc1

    .line 1655
    const v8, 0x7f0b009c

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1656
    goto/16 :goto_0

    .line 1659
    :sswitch_f
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 1674
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 1678
    :cond_5
    invoke-direct {p0, v3, v1, v6}, Lcom/market2345/download/DownloadThread;->handleFinalStatus(ILjava/lang/String;Z)V

    move v8, v5

    .line 1679
    goto/16 :goto_1

    .line 1531
    :sswitch_data_0
    .sparse-switch
        0xc1 -> :sswitch_f
        0xc3 -> :sswitch_d
        0xc4 -> :sswitch_e
        0xc6 -> :sswitch_a
        0x190 -> :sswitch_0
        0x194 -> :sswitch_6
        0x19c -> :sswitch_7
        0x1e9 -> :sswitch_5
        0x1ea -> :sswitch_f
        0x1ec -> :sswitch_9
        0x1ef -> :sswitch_0
        0x1f1 -> :sswitch_8
        0x1f2 -> :sswitch_1
        0x1f3 -> :sswitch_b
        0x1f4 -> :sswitch_0
        0x1f7 -> :sswitch_0
        0x2bc -> :sswitch_2
        0x2bd -> :sswitch_3
        0x2be -> :sswitch_c
        0x2bf -> :sswitch_4
    .end sparse-switch
.end method

.method public run()V
    .locals 12

    .prologue
    const v10, 0x7f0b0147

    .line 356
    const/16 v7, 0xa

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 358
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v8, v8, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-static {v7, v8, v9}, Lcom/market2345/download/DownloadInfo;->queryCanBreak(Landroid/content/ContentResolver;J)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 359
    sget-object v7, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Download "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v10, v9, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " already finished; skipping"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :goto_0
    return-void

    .line 363
    :cond_0
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v7}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 365
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_2

    .line 366
    :cond_1
    const/16 v7, 0xc2

    const v8, 0x7f0b009b

    invoke-direct {p0, v8}, Lcom/market2345/download/DownloadThread;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/market2345/download/DownloadThread;->handleFinalStatus(ILjava/lang/String;Z)V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 371
    .local v4, "pm":Landroid/os/PowerManager;
    const/4 v6, 0x0

    .line 373
    .local v6, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/4 v7, 0x1

    :try_start_0
    sget-object v8, Lcom/market2345/download/DownloadThread;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 374
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x8

    if-le v7, v8, :cond_3

    .line 375
    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7}, Landroid/os/WorkSource;-><init>()V

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 377
    :cond_3
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 379
    const/4 v5, 0x1

    .line 380
    .local v5, "retry":Z
    :goto_1
    if-eqz v5, :cond_4

    .line 381
    invoke-direct {p0}, Lcom/market2345/download/DownloadThread;->runInternal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    goto :goto_1

    .line 386
    :cond_4
    if-eqz v6, :cond_5

    .line 387
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 388
    const/4 v6, 0x0

    .line 392
    :cond_5
    invoke-static {}, Lcom/market2345/download/DownloadService;->getNotifyUriHandler()Landroid/os/Handler;

    move-result-object v1

    .line 393
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_6

    .line 394
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v8, v7, Lcom/market2345/download/DownloadInfo;->mId:J

    long-to-int v7, v8

    invoke-virtual {v1, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 395
    .local v2, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v7}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 399
    .end local v2    # "msg":Landroid/os/Message;
    :cond_6
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    iget-boolean v7, v7, Lcom/market2345/download/DownloadThread$State;->mDeleteFile:Z

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-boolean v7, v7, Lcom/market2345/download/DownloadInfo;->mDeleteFile:Z

    if-eqz v7, :cond_8

    .line 400
    :cond_7
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    iget-object v7, v7, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 401
    new-instance v0, Ljava/io/File;

    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    iget-object v7, v7, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_8

    .line 404
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v7, v10}, Lcom/market2345/download/DownloadManager;->showToast(I)V

    .line 409
    .end local v0    # "file":Ljava/io/File;
    :cond_8
    iget-object v7, p0, Lcom/market2345/download/DownloadThread;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v7}, Lcom/market2345/download/DownloadManager;->getTasks()Ljava/util/Map;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v8, v8, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 386
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v5    # "retry":Z
    :catchall_0
    move-exception v7

    if-eqz v6, :cond_9

    .line 387
    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 388
    const/4 v6, 0x0

    .line 392
    :cond_9
    invoke-static {}, Lcom/market2345/download/DownloadService;->getNotifyUriHandler()Landroid/os/Handler;

    move-result-object v1

    .line 393
    .restart local v1    # "handler":Landroid/os/Handler;
    if-eqz v1, :cond_a

    .line 394
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-wide v8, v8, Lcom/market2345/download/DownloadInfo;->mId:J

    long-to-int v8, v8

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 395
    .restart local v2    # "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    invoke-virtual {v8}, Lcom/market2345/download/DownloadInfo;->getDownloadUri()Landroid/net/Uri;

    move-result-object v8

    iput-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 396
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 399
    .end local v2    # "msg":Landroid/os/Message;
    :cond_a
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    iget-boolean v8, v8, Lcom/market2345/download/DownloadThread$State;->mDeleteFile:Z

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-boolean v8, v8, Lcom/market2345/download/DownloadInfo;->mDeleteFile:Z

    if-eqz v8, :cond_c

    .line 400
    :cond_b
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    iget-object v8, v8, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 401
    new-instance v0, Ljava/io/File;

    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mState:Lcom/market2345/download/DownloadThread$State;

    iget-object v8, v8, Lcom/market2345/download/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 402
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_c

    .line 404
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v8, v10}, Lcom/market2345/download/DownloadManager;->showToast(I)V

    .line 409
    .end local v0    # "file":Ljava/io/File;
    :cond_c
    iget-object v8, p0, Lcom/market2345/download/DownloadThread;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v8}, Lcom/market2345/download/DownloadManager;->getTasks()Ljava/util/Map;

    move-result-object v8

    iget-object v9, p0, Lcom/market2345/download/DownloadThread;->mInfo:Lcom/market2345/download/DownloadInfo;

    iget-object v9, v9, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    throw v7
.end method
