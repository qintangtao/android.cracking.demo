.class public Lcom/market2345/download/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/download/DownloadManager$ToastHandler;,
        Lcom/market2345/download/DownloadManager$Request;
    }
.end annotation


# static fields
.field public static final DOWN_ADD_DOWNLOADING:I = 0x0

.field public static final DOWN_ADD_WAIT_WIFI:I = 0x1

.field public static final DOWN_COMPLETE_TO_INSTALLED:I = 0x3

.field public static final DOWN_DELETE:I = 0x5

.field public static final DOWN_DOWNLOADING_TO_COMPLETE:I = 0x2

.field public static final DOWN_INSTALLED_TO_COMPLETE:I = 0x4

.field public static LOG_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sDownloadManager:Lcom/market2345/download/DownloadManager;


# instance fields
.field public clickList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseUri:Landroid/net/Uri;

.field private mCancelUri:Landroid/net/Uri;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private final mCompletedDownloads:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectivity:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private final mDownloadings:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mInstalledDownloads:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifyDownloadings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mResolver:Landroid/content/ContentResolver;

.field private mStorageManager:Lcom/market2345/download/StorageManager;

.field private final mTasks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final mWaitWifiDownloads:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private typeTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 85
    const-class v1, Lcom/market2345/download/DownloadManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/market2345/download/DownloadManager;->TAG:Ljava/lang/String;

    .line 87
    const/4 v1, 0x0

    sput-object v1, Lcom/market2345/download/DownloadManager;->LOG_PATH:Ljava/lang/String;

    .line 90
    const-string v1, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2345\u624b\u673a\u52a9\u624b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "downLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/market2345/download/DownloadManager;->LOG_PATH:Ljava/lang/String;

    .line 98
    .local v0, "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 93
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v0

    .line 94
    .restart local v0    # "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "downLog"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/market2345/download/DownloadManager;->LOG_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 438
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 336
    sget-object v0, Lcom/market2345/download/Downloads$Impl;->DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    .line 338
    sget-object v0, Lcom/market2345/download/Downloads$Impl;->CANCEL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mCancelUri:Landroid/net/Uri;

    .line 354
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    .line 359
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mNotifyDownloadings:Ljava/util/Map;

    .line 364
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mDownloadings:Ljava/util/LinkedHashMap;

    .line 370
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mWaitWifiDownloads:Ljava/util/LinkedHashMap;

    .line 375
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mCompletedDownloads:Ljava/util/LinkedHashMap;

    .line 380
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mInstalledDownloads:Ljava/util/LinkedHashMap;

    .line 385
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mTasks:Ljava/util/Map;

    .line 412
    new-instance v0, Lcom/market2345/download/DownloadManager$ToastHandler;

    invoke-direct {v0}, Lcom/market2345/download/DownloadManager$ToastHandler;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mHandler:Landroid/os/Handler;

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->clickList:Ljava/util/List;

    .line 779
    new-instance v0, Lcom/market2345/download/DownloadManager$2;

    invoke-direct {v0, p0}, Lcom/market2345/download/DownloadManager$2;-><init>(Lcom/market2345/download/DownloadManager;)V

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mClickListener:Landroid/view/View$OnClickListener;

    .line 440
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    .line 441
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    .line 442
    new-instance v0, Lcom/market2345/download/StorageManager;

    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/market2345/download/StorageManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mStorageManager:Lcom/market2345/download/StorageManager;

    .line 445
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/market2345/download/DownloadManager;->loadDownloadInfos(Landroid/content/Context;)V

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/download/DownloadManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/download/DownloadManager;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/download/DownloadManager;Landroid/app/Activity;Lcom/market2345/model/App;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/market2345/model/App;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/market2345/download/DownloadManager;->checkNetType(Landroid/app/Activity;Lcom/market2345/model/App;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/market2345/download/DownloadManager;Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/model/App;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/market2345/download/util/ArrayDeque;
    .param p3, "x3"    # Lcom/market2345/download/util/ArrayDeque;
    .param p4, "x4"    # Lcom/market2345/model/App;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/market2345/download/DownloadManager;->pollCheckSignatures(Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/model/App;)V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/download/DownloadManager;)Lcom/market2345/download/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mStorageManager:Lcom/market2345/download/StorageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/download/DownloadManager;Landroid/content/Context;Lcom/market2345/download/DownloadInfo;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/market2345/download/DownloadInfo;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/market2345/download/DownloadManager;->handleStatus(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/download/DownloadManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/download/DownloadManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;

    .prologue
    .line 82
    iget v0, p0, Lcom/market2345/download/DownloadManager;->position:I

    return v0
.end method

.method static synthetic access$502(Lcom/market2345/download/DownloadManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/market2345/download/DownloadManager;->position:I

    return p1
.end method

.method static synthetic access$600(Lcom/market2345/download/DownloadManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->typeTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/download/DownloadManager;Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;
    .param p1, "x1"    # Lcom/market2345/download/DownloadInfo;
    .param p2, "x2"    # Lcom/market2345/model/App;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Landroid/app/Activity;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/market2345/download/DownloadManager;->handleClick(Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800(Lcom/market2345/download/DownloadManager;Lcom/market2345/download/DownloadInfo;)Lcom/market2345/model/App;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;
    .param p1, "x1"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/market2345/download/DownloadManager;->convertApp(Lcom/market2345/download/DownloadInfo;)Lcom/market2345/model/App;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/download/DownloadManager;Landroid/app/Activity;Lcom/market2345/model/App;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/download/DownloadManager;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/market2345/model/App;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/market2345/download/DownloadManager;->checkSingleVersion(Landroid/app/Activity;Lcom/market2345/model/App;)V

    return-void
.end method

.method private checkNetType(Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/market2345/download/util/ArrayDeque",
            "<",
            "Lcom/market2345/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1303
    .local p2, "apps":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<Lcom/market2345/model/App;>;"
    invoke-virtual {p0}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1304
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1305
    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1306
    invoke-virtual {p2}, Lcom/market2345/download/util/ArrayDeque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/market2345/model/App;

    invoke-virtual {p2, v1}, Lcom/market2345/download/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/market2345/model/App;

    invoke-virtual {p0, v1}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload([Lcom/market2345/model/App;)V

    .line 1313
    :goto_0
    return-void

    .line 1308
    :cond_0
    invoke-virtual {p2}, Lcom/market2345/download/util/ArrayDeque;->size()I

    move-result v1

    new-array v1, v1, [Lcom/market2345/model/App;

    invoke-virtual {p2, v1}, Lcom/market2345/download/util/ArrayDeque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/market2345/model/App;

    invoke-direct {p0, p1, v1}, Lcom/market2345/download/DownloadManager;->checkSizeLimited(Landroid/app/Activity;[Lcom/market2345/model/App;)V

    goto :goto_0

    .line 1311
    :cond_1
    const v1, 0x7f0b00f3

    invoke-virtual {p0, v1}, Lcom/market2345/download/DownloadManager;->showToast(I)V

    goto :goto_0
.end method

.method private checkNetType(Landroid/app/Activity;Lcom/market2345/model/App;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "app"    # Lcom/market2345/model/App;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1316
    invoke-virtual {p0}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1317
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1318
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 1319
    new-array v1, v2, [Lcom/market2345/model/App;

    aput-object p2, v1, v3

    invoke-virtual {p0, v1}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload([Lcom/market2345/model/App;)V

    .line 1326
    :goto_0
    return-void

    .line 1321
    :cond_0
    new-array v1, v2, [Lcom/market2345/model/App;

    aput-object p2, v1, v3

    invoke-direct {p0, p1, v1}, Lcom/market2345/download/DownloadManager;->checkSizeLimited(Landroid/app/Activity;[Lcom/market2345/model/App;)V

    goto :goto_0

    .line 1324
    :cond_1
    const v1, 0x7f0b00f3

    invoke-virtual {p0, v1}, Lcom/market2345/download/DownloadManager;->showToast(I)V

    goto :goto_0
.end method

.method private varargs checkSignatures(Landroid/app/Activity;[Lcom/market2345/model/App;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "apps"    # [Lcom/market2345/model/App;

    .prologue
    .line 1152
    new-instance v3, Lcom/market2345/download/util/ArrayDeque;

    invoke-direct {v3}, Lcom/market2345/download/util/ArrayDeque;-><init>()V

    .line 1155
    .local v3, "downTasks":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<Lcom/market2345/model/App;>;"
    new-instance v0, Lcom/market2345/download/util/ArrayDeque;

    invoke-direct {v0}, Lcom/market2345/download/util/ArrayDeque;-><init>()V

    .line 1157
    .local v0, "allTasks":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<Lcom/market2345/model/App;>;"
    move-object v2, p2

    .local v2, "arr$":[Lcom/market2345/model/App;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v2, v4

    .line 1158
    .local v1, "app":Lcom/market2345/model/App;
    invoke-virtual {v0, v1}, Lcom/market2345/download/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1157
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1161
    .end local v1    # "app":Lcom/market2345/model/App;
    :cond_0
    invoke-virtual {v0}, Lcom/market2345/download/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/market2345/model/App;

    invoke-direct {p0, p1, v0, v3, v6}, Lcom/market2345/download/DownloadManager;->pollCheckSignatures(Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/model/App;)V

    .line 1163
    return-void
.end method

.method private checkSingleSignatures(Landroid/app/Activity;Lcom/market2345/model/App;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "app"    # Lcom/market2345/model/App;

    .prologue
    const/4 v7, 0x1

    .line 1167
    invoke-static {p1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    iget-object v4, p2, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v1

    .line 1168
    .local v1, "installedApp":Lcom/market2345/model/InstalledApp;
    if-eqz v1, :cond_1

    .line 1169
    iget-object v3, p2, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/market2345/model/InstalledApp;->signatures:Ljava/util/HashSet;

    iget-object v4, p2, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1170
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/market2345/download/DownloadManager;->checkSingleVersion(Landroid/app/Activity;Lcom/market2345/model/App;)V

    .line 1200
    :cond_1
    :goto_0
    return-void

    .line 1172
    :cond_2
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f0c0012

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1173
    .local v2, "myDialog":Landroid/app/Dialog;
    new-instance v0, Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-direct {v0, p1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;-><init>(Landroid/content/Context;)V

    .line 1174
    .local v0, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v0, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1175
    const v3, 0x7f0b0026

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p2, Lcom/market2345/model/App;->title:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setMessage(Ljava/lang/CharSequence;)V

    .line 1177
    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/market2345/download/DownloadManager$5;

    invoke-direct {v4, p0, v2}, Lcom/market2345/download/DownloadManager$5;-><init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3, v4}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1186
    const-string v3, "\u7ee7\u7eed\u5347\u7ea7"

    new-instance v4, Lcom/market2345/download/DownloadManager$6;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/market2345/download/DownloadManager$6;-><init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;Landroid/app/Activity;Lcom/market2345/model/App;)V

    invoke-virtual {v0, v3, v4}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1194
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1195
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1196
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1197
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private checkSingleVersion(Landroid/app/Activity;Lcom/market2345/model/App;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "app"    # Lcom/market2345/model/App;

    .prologue
    const/4 v6, 0x1

    .line 1203
    if-eqz p2, :cond_0

    .line 1204
    iget v3, p2, Lcom/market2345/model/App;->minSDK:I

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v3, v4, :cond_1

    .line 1205
    const v3, 0x7f0b0027

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1206
    .local v1, "message":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, p2, Lcom/market2345/model/App;->sysIng:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1208
    new-instance v2, Landroid/app/Dialog;

    const v3, 0x7f0c0012

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1209
    .local v2, "myDialog":Landroid/app/Dialog;
    new-instance v0, Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-direct {v0, p1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;-><init>(Landroid/content/Context;)V

    .line 1210
    .local v0, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v0, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1211
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setMessage(Ljava/lang/CharSequence;)V

    .line 1213
    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/market2345/download/DownloadManager$7;

    invoke-direct {v4, p0, v2}, Lcom/market2345/download/DownloadManager$7;-><init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3, v4}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1222
    const-string v3, "\u7ee7\u7eed\u4e0b\u8f7d"

    new-instance v4, Lcom/market2345/download/DownloadManager$8;

    invoke-direct {v4, p0, v2, p1, p2}, Lcom/market2345/download/DownloadManager$8;-><init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;Landroid/app/Activity;Lcom/market2345/model/App;)V

    invoke-virtual {v0, v3, v4}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1230
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1231
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1232
    invoke-virtual {v2, v6}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1233
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1238
    .end local v0    # "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "myDialog":Landroid/app/Dialog;
    :cond_0
    :goto_0
    return-void

    .line 1235
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/market2345/download/DownloadManager;->checkNetType(Landroid/app/Activity;Lcom/market2345/model/App;)V

    goto :goto_0
.end method

.method private varargs checkSizeLimited(Landroid/app/Activity;[Lcom/market2345/model/App;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "apps"    # [Lcom/market2345/model/App;

    .prologue
    .line 1335
    invoke-static {p1}, Lcom/market2345/common/util/Utils;->isSizeLimited(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1336
    const-wide/16 v4, 0x0

    .line 1337
    .local v4, "size":J
    move-object v1, p2

    .local v1, "arr$":[Lcom/market2345/model/App;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1338
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v6, v0, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/market2345/download/DownloadManager;->parseFileLength(Ljava/lang/String;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 1337
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1340
    .end local v0    # "app":Lcom/market2345/model/App;
    :cond_0
    iget-object v6, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/market2345/common/util/Utils;->getBigFileTipSize(Landroid/content/Context;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x400

    mul-int/lit16 v6, v6, 0x400

    int-to-long v6, v6

    cmp-long v6, v4, v6

    if-gtz v6, :cond_1

    .line 1341
    invoke-virtual {p0, p2}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload([Lcom/market2345/model/App;)V

    .line 1349
    .end local v1    # "arr$":[Lcom/market2345/model/App;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "size":J
    :goto_1
    return-void

    .line 1343
    .restart local v1    # "arr$":[Lcom/market2345/model/App;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "size":J
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/market2345/download/DownloadManager;->showSizeLimitedDialog(Landroid/app/Activity;[Lcom/market2345/model/App;)V

    goto :goto_1

    .line 1346
    .end local v1    # "arr$":[Lcom/market2345/model/App;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "size":J
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/market2345/download/DownloadManager;->showSizeLimitedTip(Landroid/app/Activity;[Lcom/market2345/model/App;)V

    goto :goto_1
.end method

.method private convertApp(Lcom/market2345/download/DownloadInfo;)Lcom/market2345/model/App;
    .locals 4
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 1022
    new-instance v0, Lcom/market2345/model/App;

    invoke-direct {v0}, Lcom/market2345/model/App;-><init>()V

    .line 1023
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mSid:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/market2345/model/App;->sid:I

    .line 1024
    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->title:Ljava/lang/String;

    .line 1025
    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    .line 1026
    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->version:Ljava/lang/String;

    .line 1027
    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    .line 1028
    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mIconUrl:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    .line 1029
    iget v1, p1, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    iput v1, v0, Lcom/market2345/model/App;->versionCode:I

    .line 1030
    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mPlatform:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->mPlatform:Ljava/lang/String;

    .line 1031
    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mCertMd5:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    .line 1032
    iget v1, p1, Lcom/market2345/download/DownloadInfo;->mSourceFrom:I

    iput v1, v0, Lcom/market2345/model/App;->mSourceFrom:I

    .line 1033
    iget-wide v2, p1, Lcom/market2345/download/DownloadInfo;->mTargetSize:J

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    .line 1035
    return-object v0
.end method

.method private deleteFile(Lcom/market2345/download/DownloadInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 726
    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 728
    .local v0, "file":Ljava/io/File;
    iget-boolean v1, p1, Lcom/market2345/download/DownloadInfo;->mDeleteFile:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 729
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    const v1, 0x7f0b0147

    invoke-virtual {p0, v1}, Lcom/market2345/download/DownloadManager;->showToast(I)V

    .line 734
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private down(ZZLcom/market2345/model/App;)V
    .locals 5
    .param p1, "queuedForWifi"    # Z
    .param p2, "startInstall"    # Z
    .param p3, "app"    # Lcom/market2345/model/App;

    .prologue
    const/4 v4, 0x1

    .line 1512
    sget-object v2, Lcom/market2345/download/DownloadManager;->TAG:Ljava/lang/String;

    const-string v3, "start new download"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    new-instance v1, Lcom/market2345/download/DownloadManager$Request;

    iget-object v2, p3, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/market2345/download/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    .line 1514
    .local v1, "request":Lcom/market2345/download/DownloadManager$Request;
    iget-object v2, p3, Lcom/market2345/model/App;->title:Ljava/lang/String;

    # setter for: Lcom/market2345/download/DownloadManager$Request;->mTitle:Ljava/lang/CharSequence;
    invoke-static {v1, v2}, Lcom/market2345/download/DownloadManager$Request;->access$1202(Lcom/market2345/download/DownloadManager$Request;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 1516
    invoke-direct {p0, p3}, Lcom/market2345/download/DownloadManager;->downPartial(Lcom/market2345/model/App;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1517
    iget-wide v2, p3, Lcom/market2345/model/App;->patch_size:J

    # setter for: Lcom/market2345/download/DownloadManager$Request;->mTotalBytes:J
    invoke-static {v1, v2, v3}, Lcom/market2345/download/DownloadManager$Request;->access$1302(Lcom/market2345/download/DownloadManager$Request;J)J

    .line 1522
    :goto_0
    iget-object v2, p3, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    # setter for: Lcom/market2345/download/DownloadManager$Request;->mPackageName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/market2345/download/DownloadManager$Request;->access$1402(Lcom/market2345/download/DownloadManager$Request;Ljava/lang/String;)Ljava/lang/String;

    .line 1523
    iget-object v2, p3, Lcom/market2345/model/App;->version:Ljava/lang/String;

    # setter for: Lcom/market2345/download/DownloadManager$Request;->mVersionName:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/market2345/download/DownloadManager$Request;->access$1502(Lcom/market2345/download/DownloadManager$Request;Ljava/lang/String;)Ljava/lang/String;

    .line 1524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p3, Lcom/market2345/model/App;->sid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/market2345/download/DownloadManager$Request;->mSid:Ljava/lang/String;

    .line 1525
    iget-object v2, p3, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    iput-object v2, v1, Lcom/market2345/download/DownloadManager$Request;->mIconUrl:Ljava/lang/String;

    .line 1528
    iget v2, p3, Lcom/market2345/model/App;->versionCode:I

    # setter for: Lcom/market2345/download/DownloadManager$Request;->mVersionCode:I
    invoke-static {v1, v2}, Lcom/market2345/download/DownloadManager$Request;->access$1602(Lcom/market2345/download/DownloadManager$Request;I)I

    .line 1529
    iget-object v2, p3, Lcom/market2345/model/App;->mPlatform:Ljava/lang/String;

    iput-object v2, v1, Lcom/market2345/download/DownloadManager$Request;->mPlatform:Ljava/lang/String;

    .line 1530
    iget v2, p3, Lcom/market2345/model/App;->mSourceFrom:I

    iput v2, v1, Lcom/market2345/download/DownloadManager$Request;->mSourceFrom:I

    .line 1531
    iput-boolean p2, v1, Lcom/market2345/download/DownloadManager$Request;->mStartInstall:Z

    .line 1532
    iget-object v2, p3, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    iput-object v2, v1, Lcom/market2345/download/DownloadManager$Request;->mCertMd5:Ljava/lang/String;

    .line 1533
    iget-object v2, p3, Lcom/market2345/model/App;->patch_url:Ljava/lang/String;

    iput-object v2, v1, Lcom/market2345/download/DownloadManager$Request;->mPatchUrl:Ljava/lang/String;

    .line 1534
    iget-wide v2, p3, Lcom/market2345/model/App;->patch_size:J

    iput-wide v2, v1, Lcom/market2345/download/DownloadManager$Request;->mPatchSize:J

    .line 1535
    iget-object v2, p3, Lcom/market2345/model/App;->low_md5:Ljava/lang/String;

    iput-object v2, v1, Lcom/market2345/download/DownloadManager$Request;->mLowMD5:Ljava/lang/String;

    .line 1536
    iget-object v2, p3, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    invoke-static {v2}, Lcom/market2345/download/DownloadManager;->parseFileLengthBytes(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/market2345/download/DownloadManager$Request;->mTargetSize:J

    .line 1537
    iget v2, p3, Lcom/market2345/model/App;->minSDK:I

    iput v2, v1, Lcom/market2345/download/DownloadManager$Request;->mMinSDK:I

    .line 1538
    iget v2, p3, Lcom/market2345/model/App;->mDownPartial:I

    iput v2, v1, Lcom/market2345/download/DownloadManager$Request;->mDownPartial:I

    .line 1540
    if-eqz p1, :cond_1

    .line 1541
    # setter for: Lcom/market2345/download/DownloadManager$Request;->mAllowedNetworkTypes:I
    invoke-static {v1, v4}, Lcom/market2345/download/DownloadManager$Request;->access$1702(Lcom/market2345/download/DownloadManager$Request;I)I

    .line 1542
    const/16 v2, 0xc4

    # setter for: Lcom/market2345/download/DownloadManager$Request;->mStatus:I
    invoke-static {v1, v2}, Lcom/market2345/download/DownloadManager$Request;->access$1802(Lcom/market2345/download/DownloadManager$Request;I)I

    .line 1555
    :goto_1
    invoke-virtual {p0, v1}, Lcom/market2345/download/DownloadManager;->enqueue(Lcom/market2345/download/DownloadManager$Request;)J

    .line 1556
    return-void

    .line 1519
    :cond_0
    iget-object v2, p3, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/market2345/download/DownloadManager;->parseFileLength(Ljava/lang/String;)J

    move-result-wide v2

    # setter for: Lcom/market2345/download/DownloadManager$Request;->mTotalBytes:J
    invoke-static {v1, v2, v3}, Lcom/market2345/download/DownloadManager$Request;->access$1302(Lcom/market2345/download/DownloadManager$Request;J)J

    goto :goto_0

    .line 1545
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1547
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1548
    :cond_2
    # setter for: Lcom/market2345/download/DownloadManager$Request;->mAllowedNetworkTypes:I
    invoke-static {v1, v4}, Lcom/market2345/download/DownloadManager$Request;->access$1702(Lcom/market2345/download/DownloadManager$Request;I)I

    .line 1553
    :cond_3
    :goto_2
    const/16 v2, 0xbe

    # setter for: Lcom/market2345/download/DownloadManager$Request;->mStatus:I
    invoke-static {v1, v2}, Lcom/market2345/download/DownloadManager$Request;->access$1802(Lcom/market2345/download/DownloadManager$Request;I)I

    goto :goto_1

    .line 1549
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v4, :cond_3

    .line 1550
    const/4 v2, 0x0

    # setter for: Lcom/market2345/download/DownloadManager$Request;->mAllowedNetworkTypes:I
    invoke-static {v1, v2}, Lcom/market2345/download/DownloadManager$Request;->access$1702(Lcom/market2345/download/DownloadManager$Request;I)I

    goto :goto_2
.end method

.method private downPartial(Lcom/market2345/model/App;)Z
    .locals 1
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 1507
    iget-object v0, p1, Lcom/market2345/model/App;->patch_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/market2345/model/App;->low_md5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mConnectivity:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/market2345/download/DownloadManager;->mConnectivity:Landroid/net/ConnectivityManager;

    .line 1855
    :cond_0
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mConnectivity:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 341
    sget-object v0, Lcom/market2345/download/DownloadManager;->sDownloadManager:Lcom/market2345/download/DownloadManager;

    if-nez v0, :cond_1

    .line 342
    const-class v1, Lcom/market2345/download/DownloadManager;

    monitor-enter v1

    .line 343
    :try_start_0
    sget-object v0, Lcom/market2345/download/DownloadManager;->sDownloadManager:Lcom/market2345/download/DownloadManager;

    if-nez v0, :cond_0

    .line 344
    new-instance v0, Lcom/market2345/download/DownloadManager;

    invoke-direct {v0, p0}, Lcom/market2345/download/DownloadManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/market2345/download/DownloadManager;->sDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 346
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    :cond_1
    sget-object v0, Lcom/market2345/download/DownloadManager;->sDownloadManager:Lcom/market2345/download/DownloadManager;

    return-object v0

    .line 346
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getWhereArgsForIds([J)[Ljava/lang/String;
    .locals 4
    .param p0, "ids"    # [J

    .prologue
    .line 1822
    array-length v2, p0

    new-array v1, v2, [Ljava/lang/String;

    .line 1823
    .local v1, "whereArgs":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 1824
    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1823
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1826
    :cond_0
    return-object v1
.end method

.method static getWhereClauseForIds([J)Ljava/lang/String;
    .locals 3
    .param p0, "ids"    # [J

    .prologue
    .line 1805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1806
    .local v1, "whereClause":Ljava/lang/StringBuilder;
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 1808
    if-lez v0, :cond_0

    .line 1809
    const-string v2, "OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1811
    :cond_0
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1812
    const-string v2, " = ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1807
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1814
    :cond_1
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1815
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleClick(Lcom/market2345/download/DownloadInfo;Landroid/app/Activity;Ljava/lang/String;Lcom/market2345/model/App;)V
    .locals 9
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "app"    # Lcom/market2345/model/App;

    .prologue
    const/4 v8, 0x1

    .line 1040
    const-string v4, "\u91cd\u8bd5"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1041
    iget-wide v4, p1, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {p0, v4, v5}, Lcom/market2345/download/DownloadManager;->resumeDownload(J)V

    .line 1095
    :cond_0
    :goto_0
    return-void

    .line 1042
    :cond_1
    const-string v4, "\u4e0b\u8f7d"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "\u5347\u7ea7"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "\u4e0b\u8f7d\u6e38\u620f"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "\u7acb\u5373\u4e0b\u8f7d"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1043
    :cond_2
    const-string v4, "\u5347\u7ea7"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {p0, p2, p4, v4}, Lcom/market2345/download/DownloadManager;->startSingleIfReady(Landroid/app/Activity;Lcom/market2345/model/App;Z)V

    goto :goto_0

    .line 1044
    :cond_3
    const-string v4, "\u5b89\u88c5"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1045
    if-eqz p1, :cond_0

    .line 1046
    iget v4, p1, Lcom/market2345/download/DownloadInfo;->mSignatureError:I

    if-ne v4, v8, :cond_4

    .line 1047
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/market2345/download/view/SignatureErrorDialogActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1048
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "key.app.name"

    iget-object v5, p1, Lcom/market2345/download/DownloadInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1049
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1050
    iget-object v4, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1052
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v4, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    const-string v5, ".patch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1053
    new-instance v1, Ljava/io/File;

    iget-object v4, p1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1054
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_6

    .line 1055
    :cond_5
    new-instance v3, Landroid/app/Dialog;

    const v4, 0x7f0c0012

    invoke-direct {v3, p2, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1056
    .local v3, "myDialog":Landroid/app/Dialog;
    new-instance v0, Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-direct {v0, p2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;-><init>(Landroid/content/Context;)V

    .line 1057
    .local v0, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v0, v4}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1058
    const-string v4, "\u672a\u627e\u5230\u5b89\u88c5\u5305\uff0c\u9700\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {v0, v4}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setMessage(Ljava/lang/CharSequence;)V

    .line 1059
    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/market2345/download/DownloadManager$3;

    invoke-direct {v5, p0, v3}, Lcom/market2345/download/DownloadManager$3;-><init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4, v5}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1066
    const-string v4, "\u91cd\u65b0\u4e0b\u8f7d"

    new-instance v5, Lcom/market2345/download/DownloadManager$4;

    invoke-direct {v5, p0, v3, p1, p2}, Lcom/market2345/download/DownloadManager$4;-><init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;Lcom/market2345/download/DownloadInfo;Landroid/app/Activity;)V

    invoke-virtual {v0, v4, v5}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1075
    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1076
    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1077
    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1078
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 1081
    .end local v0    # "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    .end local v3    # "myDialog":Landroid/app/Dialog;
    :cond_6
    iget-object v4, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/market2345/download/util/PackageUtils;->installNormal(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)Z

    goto/16 :goto_0

    .line 1086
    .end local v1    # "file":Ljava/io/File;
    :cond_7
    const-string v4, "\u6253\u5f00"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1087
    if-eqz p1, :cond_8

    .line 1088
    iget-object v4, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/market2345/common/util/Utils;->startAppByPackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1089
    :cond_8
    if-eqz p4, :cond_0

    .line 1090
    iget-object v4, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    iget-object v5, p4, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/market2345/common/util/Utils;->startAppByPackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleClick(Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;
    .param p2, "app"    # Lcom/market2345/model/App;
    .param p3, "status"    # Ljava/lang/String;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 959
    const-string v0, "\u5347\u7ea7"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 960
    invoke-direct {p0, p4}, Lcom/market2345/download/DownloadManager;->updateStatisticEvents(Landroid/content/Context;)V

    .line 961
    invoke-direct {p0, p1, p2, p4}, Lcom/market2345/download/DownloadManager;->reportLMUpdate(Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;Landroid/app/Activity;)V

    .line 964
    :cond_0
    if-nez p1, :cond_1

    .line 965
    const/4 v0, 0x0

    invoke-direct {p0, v0, p4, p3, p2}, Lcom/market2345/download/DownloadManager;->handleClick(Lcom/market2345/download/DownloadInfo;Landroid/app/Activity;Ljava/lang/String;Lcom/market2345/model/App;)V

    .line 991
    :goto_0
    return-void

    .line 969
    :cond_1
    iget v0, p1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 973
    :sswitch_0
    iget-wide v0, p1, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/market2345/download/DownloadManager;->pauseDownload(J)V

    goto :goto_0

    .line 976
    :sswitch_1
    iget-wide v0, p1, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/market2345/download/DownloadManager;->pauseDownload(J)V

    .line 977
    monitor-enter p1

    .line 978
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 979
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 983
    :sswitch_2
    iget-wide v0, p1, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-virtual {p0, v0, v1}, Lcom/market2345/download/DownloadManager;->resumeDownload(J)V

    goto :goto_0

    .line 988
    :sswitch_3
    invoke-direct {p0, p1, p4, p3, p2}, Lcom/market2345/download/DownloadManager;->handleClick(Lcom/market2345/download/DownloadInfo;Landroid/app/Activity;Ljava/lang/String;Lcom/market2345/model/App;)V

    goto :goto_0

    .line 969
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xbe -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_2
        0xc2 -> :sswitch_3
        0xc4 -> :sswitch_2
        0xc5 -> :sswitch_1
        0xc8 -> :sswitch_3
        0x25a -> :sswitch_3
    .end sparse-switch
.end method

.method private handleStatus(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;Ljava/util/List;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/market2345/download/DownloadInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/market2345/download/DownloadInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/download/DownloadInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "patchingList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/download/DownloadInfo;>;"
    const/16 v4, 0xc8

    const/4 v3, 0x0

    .line 682
    iget v1, p2, Lcom/market2345/download/DownloadInfo;->mStatus:I

    sparse-switch v1, :sswitch_data_0

    .line 717
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    iget-object v2, p2, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 685
    :sswitch_0
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-wide v4, p2, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 686
    invoke-direct {p0, p2}, Lcom/market2345/download/DownloadManager;->deleteFile(Lcom/market2345/download/DownloadInfo;)V

    goto :goto_0

    .line 691
    :sswitch_1
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    iget-object v2, p2, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 693
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "status"

    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 694
    const-string v1, "speed"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    const-string v1, "description"

    const v2, 0x7f0b009c

    invoke-direct {p0, v2}, Lcom/market2345/download/DownloadManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-wide v4, p2, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 700
    .end local v0    # "values":Landroid/content/ContentValues;
    :sswitch_2
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    iget-object v2, p2, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 702
    .restart local v0    # "values":Landroid/content/ContentValues;
    const-string v1, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-wide v4, p2, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 704
    iget-object v1, p2, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    const-string v2, ".patch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 709
    .end local v0    # "values":Landroid/content/ContentValues;
    :sswitch_3
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    iget-object v2, p2, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    invoke-static {p1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    iget-object v2, p2, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->isInstalled(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 711
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 712
    .restart local v0    # "values":Landroid/content/ContentValues;
    const-string v1, "status"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 713
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    iget-wide v4, p2, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 682
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xbe -> :sswitch_1
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_1
        0x1ea -> :sswitch_0
        0x258 -> :sswitch_2
        0x259 -> :sswitch_2
        0x25a -> :sswitch_3
    .end sparse-switch
.end method

.method private loadDownloadInfos(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 620
    new-instance v0, Lcom/market2345/download/DownloadManager$1;

    invoke-direct {v0, p0, p1}, Lcom/market2345/download/DownloadManager$1;-><init>(Lcom/market2345/download/DownloadManager;Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/market2345/download/DownloadManager$1;->start()V

    .line 672
    return-void
.end method

.method private notifyList(ZILcom/market2345/download/DownloadInfo;)V
    .locals 3
    .param p1, "notify"    # Z
    .param p2, "operation"    # I
    .param p3, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 576
    if-eqz p1, :cond_0

    .line 577
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getMarketHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 578
    .local v0, "msg":Landroid/os/Message;
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 579
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 580
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 582
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private parseFileLength(Ljava/lang/String;)J
    .locals 8
    .param p1, "fileLength"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/high16 v5, 0x44800000    # 1024.0f

    .line 1560
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1561
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1562
    .local v1, "fileEnd":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1563
    .local v2, "fileNum":Ljava/lang/String;
    const-string v3, "MB"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1564
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v5

    mul-float/2addr v3, v5

    float-to-double v4, v3

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1565
    .local v0, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0, v6, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1566
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    .line 1577
    .end local v0    # "bd":Ljava/math/BigDecimal;
    .end local v1    # "fileEnd":Ljava/lang/String;
    .end local v2    # "fileNum":Ljava/lang/String;
    :goto_0
    return-wide v4

    .line 1567
    .restart local v1    # "fileEnd":Ljava/lang/String;
    .restart local v2    # "fileNum":Ljava/lang/String;
    :cond_0
    const-string v3, "KB"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1568
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v5

    float-to-double v4, v3

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1569
    .restart local v0    # "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0, v6, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1570
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    goto :goto_0

    .line 1571
    .end local v0    # "bd":Ljava/math/BigDecimal;
    :cond_1
    const-string v3, "GB"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1572
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    mul-float/2addr v3, v5

    mul-float/2addr v3, v5

    mul-float/2addr v3, v5

    float-to-double v4, v3

    invoke-direct {v0, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1573
    .restart local v0    # "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0, v6, v7}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1574
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v4

    goto :goto_0

    .line 1577
    .end local v0    # "bd":Ljava/math/BigDecimal;
    .end local v1    # "fileEnd":Ljava/lang/String;
    .end local v2    # "fileNum":Ljava/lang/String;
    :cond_2
    const-wide/16 v4, -0x1

    goto :goto_0
.end method

.method private static parseFileLengthBytes(Ljava/lang/String;)J
    .locals 7
    .param p0, "fileLength"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/high16 v6, 0x44800000    # 1024.0f

    .line 1924
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_1

    .line 1936
    :cond_0
    :goto_0
    return-wide v2

    .line 1927
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1928
    .local v0, "fileEnd":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1929
    .local v1, "fileNum":Ljava/lang/String;
    const-string v4, "MB"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1930
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v2, v6

    mul-float/2addr v2, v6

    float-to-long v2, v2

    goto :goto_0

    .line 1931
    :cond_2
    const-string v4, "KB"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1932
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v2, v6

    float-to-long v2, v2

    goto :goto_0

    .line 1933
    :cond_3
    const-string v4, "GB"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1934
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v2, v6

    mul-float/2addr v2, v6

    mul-float/2addr v2, v6

    float-to-long v2, v2

    goto :goto_0
.end method

.method private pollCheckSignatures(Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/model/App;)V
    .locals 11
    .param p1, "activity"    # Landroid/app/Activity;
    .param p4, "app"    # Lcom/market2345/model/App;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/market2345/download/util/ArrayDeque",
            "<",
            "Lcom/market2345/model/App;",
            ">;",
            "Lcom/market2345/download/util/ArrayDeque",
            "<",
            "Lcom/market2345/model/App;",
            ">;",
            "Lcom/market2345/model/App;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "allTasks":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<Lcom/market2345/model/App;>;"
    .local p3, "downTasks":Lcom/market2345/download/util/ArrayDeque;, "Lcom/market2345/download/util/ArrayDeque<Lcom/market2345/model/App;>;"
    const/4 v10, 0x1

    .line 1251
    if-eqz p4, :cond_3

    .line 1252
    invoke-static {p1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iget-object v1, p4, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v8

    .line 1253
    .local v8, "installedApp":Lcom/market2345/model/InstalledApp;
    if-eqz v8, :cond_1

    .line 1254
    iget-object v0, p4, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v8, Lcom/market2345/model/InstalledApp;->signatures:Ljava/util/HashSet;

    iget-object v1, p4, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1255
    :cond_0
    invoke-virtual {p3, p4}, Lcom/market2345/download/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1256
    invoke-virtual {p2}, Lcom/market2345/download/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/market2345/download/DownloadManager;->pollCheckSignatures(Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/model/App;)V

    .line 1294
    .end local v8    # "installedApp":Lcom/market2345/model/InstalledApp;
    :cond_1
    :goto_0
    return-void

    .line 1258
    .restart local v8    # "installedApp":Lcom/market2345/model/InstalledApp;
    :cond_2
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x7f0c0012

    invoke-direct {v2, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1259
    .local v2, "myDialog":Landroid/app/Dialog;
    new-instance v7, Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-direct {v7, p1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;-><init>(Landroid/content/Context;)V

    .line 1260
    .local v7, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    const-string v0, "\u63d0\u793a"

    invoke-virtual {v7, v0}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1261
    const v0, 0x7f0b0026

    new-array v1, v10, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p4, Lcom/market2345/model/App;->title:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setMessage(Ljava/lang/CharSequence;)V

    .line 1263
    const-string v6, "\u53d6\u6d88"

    new-instance v0, Lcom/market2345/download/DownloadManager$9;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/market2345/download/DownloadManager$9;-><init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/download/util/ArrayDeque;)V

    invoke-virtual {v7, v6, v0}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1272
    const-string v9, "\u7ee7\u7eed\u5347\u7ea7"

    new-instance v0, Lcom/market2345/download/DownloadManager$10;

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/market2345/download/DownloadManager$10;-><init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/model/App;Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;)V

    invoke-virtual {v7, v9, v0}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1281
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1282
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1283
    invoke-virtual {v2, v10}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1284
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1288
    .end local v2    # "myDialog":Landroid/app/Dialog;
    .end local v7    # "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    .end local v8    # "installedApp":Lcom/market2345/model/InstalledApp;
    :cond_3
    invoke-virtual {p3}, Lcom/market2345/download/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1289
    invoke-direct {p0, p1, p3}, Lcom/market2345/download/DownloadManager;->checkNetType(Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;)V

    goto :goto_0
.end method

.method private reportLMUpdate(Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;Landroid/app/Activity;)V
    .locals 4
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;
    .param p2, "app"    # Lcom/market2345/model/App;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1001
    const/4 v0, 0x0

    .line 1002
    .local v0, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1003
    .local v2, "versionName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1004
    .local v1, "versionCode":I
    if-eqz p1, :cond_2

    .line 1005
    iget-object v0, p1, Lcom/market2345/download/DownloadInfo;->mPackageName:Ljava/lang/String;

    .line 1006
    iget-object v2, p1, Lcom/market2345/download/DownloadInfo;->mVersionName:Ljava/lang/String;

    .line 1007
    iget v1, p1, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    .line 1014
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1015
    invoke-static {v0, v2, v1, p3}, Lcom/market2345/lm/activity/AppInstallReportUtil;->reportLMUpdate(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 1017
    :cond_1
    return-void

    .line 1008
    :cond_2
    if-eqz p2, :cond_0

    .line 1009
    iget-object v0, p2, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    .line 1010
    iget-object v2, p2, Lcom/market2345/model/App;->version:Ljava/lang/String;

    .line 1011
    iget v1, p2, Lcom/market2345/model/App;->versionCode:I

    goto :goto_0
.end method

.method private resume(ZZJLandroid/net/NetworkInfo;)V
    .locals 7
    .param p1, "queuedForWifi"    # Z
    .param p2, "startInstall"    # Z
    .param p3, "id"    # J
    .param p5, "networkInfo"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1726
    const/4 v0, 0x1

    .line 1727
    .local v0, "allowedNetworkType":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1728
    .local v1, "values":Landroid/content/ContentValues;
    if-eqz p1, :cond_2

    .line 1729
    const-string v2, "status"

    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1736
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 1737
    const-string v2, "startInstall"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1742
    :goto_1
    if-eqz p5, :cond_1

    invoke-virtual {p5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1743
    const-string v2, "allowed_network_types"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1745
    :cond_1
    const-string v2, "speed"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1746
    const-string v2, "description"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 1748
    iget-object v2, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1749
    return-void

    .line 1731
    :cond_2
    const-string v2, "status"

    const/16 v3, 0xbe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1732
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p5}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v5, v2, :cond_0

    .line 1733
    const/4 v0, 0x0

    goto :goto_0

    .line 1739
    :cond_3
    const-string v2, "startInstall"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private varargs showSizeLimitedDialog(Landroid/app/Activity;[Lcom/market2345/model/App;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "apps"    # [Lcom/market2345/model/App;

    .prologue
    const/4 v4, 0x1

    .line 1358
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f0c0012

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1359
    .local v1, "myDialog":Landroid/app/Dialog;
    new-instance v0, Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-direct {v0, p1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;-><init>(Landroid/content/Context;)V

    .line 1360
    .local v0, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1361
    const v2, 0x7f0b0062

    invoke-direct {p0, v2}, Lcom/market2345/download/DownloadManager;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setMessage(Ljava/lang/CharSequence;)V

    .line 1362
    const-string v2, "WiFi\u81ea\u52a8\u4e0b\u8f7d"

    new-instance v3, Lcom/market2345/download/DownloadManager$11;

    invoke-direct {v3, p0, v1, p2}, Lcom/market2345/download/DownloadManager$11;-><init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;[Lcom/market2345/model/App;)V

    invoke-virtual {v0, v2, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1370
    const-string v2, "\u7ee7\u7eed\u4e0b\u8f7d"

    new-instance v3, Lcom/market2345/download/DownloadManager$12;

    invoke-direct {v3, p0, v1, p2}, Lcom/market2345/download/DownloadManager$12;-><init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;[Lcom/market2345/model/App;)V

    invoke-virtual {v0, v2, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1378
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1379
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1380
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1381
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1384
    return-void
.end method

.method private varargs showSizeLimitedTip(Landroid/app/Activity;[Lcom/market2345/model/App;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "apps"    # [Lcom/market2345/model/App;

    .prologue
    const/4 v4, 0x1

    .line 1394
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f0c0012

    invoke-direct {v1, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1395
    .local v1, "myDialog":Landroid/app/Dialog;
    new-instance v0, Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-direct {v0, p1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;-><init>(Landroid/content/Context;)V

    .line 1396
    .local v0, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 1397
    const-string v2, "\u68c0\u6d4b\u5230\u60a8\u5904\u4e8e\u975eWiFi\u7f51\u7edc\u73af\u5883\uff0c\u5efa\u8bae\u60a8\u8bbe\u7f6e\u5927\u6587\u4ef6\u6d41\u91cf\u63d0\u9192\uff0c\u4ee5\u8282\u7ea6\u6d41\u91cf\u3002"

    invoke-virtual {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setMessage(Ljava/lang/CharSequence;)V

    .line 1398
    const-string v2, "\u7acb\u523b\u8bbe\u7f6e"

    new-instance v3, Lcom/market2345/download/DownloadManager$13;

    invoke-direct {v3, p0, v1, p1}, Lcom/market2345/download/DownloadManager$13;-><init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;Landroid/app/Activity;)V

    invoke-virtual {v0, v2, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1409
    const-string v2, "\u76f4\u63a5\u4e0b\u8f7d"

    new-instance v3, Lcom/market2345/download/DownloadManager$14;

    invoke-direct {v3, p0, v1, p2}, Lcom/market2345/download/DownloadManager$14;-><init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;[Lcom/market2345/model/App;)V

    invoke-virtual {v0, v2, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 1417
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1418
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1419
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1420
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1421
    return-void
.end method

.method private varargs startOrResumeDownload(Z[Lcom/market2345/model/App;)V
    .locals 1
    .param p1, "queuedForWifi"    # Z
    .param p2, "apps"    # [Lcom/market2345/model/App;

    .prologue
    .line 1437
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload(ZZ[Lcom/market2345/model/App;)V

    .line 1438
    return-void
.end method

.method private updateStatisticEvents(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 954
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Update_All"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 955
    return-void
.end method


# virtual methods
.method public classifyByStatus(Lcom/market2345/download/DownloadInfo;IZ)V
    .locals 7
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;
    .param p2, "currentStatus"    # I
    .param p3, "classify"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 489
    const/4 v1, 0x0

    .line 490
    .local v1, "notify":Z
    const/4 v0, 0x0

    .line 492
    .local v0, "notificationChange":Z
    const/4 v2, -0x1

    .line 494
    .local v2, "operation":I
    iget v5, p1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    if-eq v5, p2, :cond_0

    .line 495
    iput p2, p1, Lcom/market2345/download/DownloadInfo;->mStatus:I

    .line 497
    if-nez p3, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    sparse-switch p2, :sswitch_data_0

    .line 550
    :goto_1
    invoke-virtual {p0, v1, v2, p1, v0}, Lcom/market2345/download/DownloadManager;->downloadsChange(ZILcom/market2345/download/DownloadInfo;Z)V

    goto :goto_0

    .line 507
    :sswitch_0
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mDownloadings:Ljava/util/LinkedHashMap;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    move v1, v3

    .line 508
    :goto_2
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mWaitWifiDownloads:Ljava/util/LinkedHashMap;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    move v5, v3

    :goto_3
    or-int/2addr v1, v5

    .line 509
    const/4 v2, 0x0

    .line 510
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mNotifyDownloadings:Ljava/util/Map;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v5, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    move v0, v3

    .line 511
    :goto_4
    goto :goto_1

    :cond_2
    move v1, v4

    .line 507
    goto :goto_2

    :cond_3
    move v5, v4

    .line 508
    goto :goto_3

    :cond_4
    move v0, v4

    .line 510
    goto :goto_4

    .line 513
    :sswitch_1
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mWaitWifiDownloads:Ljava/util/LinkedHashMap;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    move v1, v3

    .line 514
    :goto_5
    const/4 v2, 0x1

    .line 515
    goto :goto_1

    :cond_5
    move v1, v4

    .line 513
    goto :goto_5

    .line 518
    :sswitch_2
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mDownloadings:Ljava/util/LinkedHashMap;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_6

    move v1, v3

    .line 519
    :goto_6
    const/4 v2, 0x0

    .line 521
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mNotifyDownloadings:Ljava/util/Map;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    move v0, v3

    .line 522
    :goto_7
    goto :goto_1

    :cond_6
    move v1, v4

    .line 518
    goto :goto_6

    :cond_7
    move v0, v4

    .line 521
    goto :goto_7

    .line 528
    :sswitch_3
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mDownloadings:Ljava/util/LinkedHashMap;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_a

    move v1, v3

    .line 529
    :goto_8
    if-eqz v1, :cond_8

    .line 530
    const/4 v2, 0x2

    .line 532
    :cond_8
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mInstalledDownloads:Ljava/util/LinkedHashMap;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    move v5, v3

    :goto_9
    or-int/2addr v1, v5

    .line 533
    if-eqz v1, :cond_9

    const/4 v5, -0x1

    if-ne v2, v5, :cond_9

    .line 534
    const/4 v2, 0x4

    .line 536
    :cond_9
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mCompletedDownloads:Ljava/util/LinkedHashMap;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mNotifyDownloadings:Ljava/util/Map;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    move v0, v3

    .line 540
    :goto_a
    goto/16 :goto_1

    :cond_a
    move v1, v4

    .line 528
    goto :goto_8

    :cond_b
    move v5, v4

    .line 532
    goto :goto_9

    :cond_c
    move v0, v4

    .line 538
    goto :goto_a

    .line 542
    :sswitch_4
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mCompletedDownloads:Ljava/util/LinkedHashMap;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_d

    move v1, v3

    .line 543
    :goto_b
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mInstalledDownloads:Ljava/util/LinkedHashMap;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v5, v6, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const/4 v2, 0x3

    .line 546
    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mNotifyDownloadings:Ljava/util/Map;

    iget-object v6, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    move v0, v3

    :goto_c
    goto/16 :goto_1

    :cond_d
    move v1, v4

    .line 542
    goto :goto_b

    :cond_e
    move v0, v4

    .line 546
    goto :goto_c

    .line 501
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xbe -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_2
        0xc2 -> :sswitch_2
        0xc4 -> :sswitch_1
        0xc5 -> :sswitch_0
        0xc8 -> :sswitch_3
        0x258 -> :sswitch_0
        0x259 -> :sswitch_3
        0x25a -> :sswitch_4
    .end sparse-switch
.end method

.method public varargs deleteDownload(Z[J)V
    .locals 7
    .param p1, "deleteFile"    # Z
    .param p2, "ids"    # [J

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1648
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1649
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "status"

    const/16 v4, 0x1ea

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1650
    const-string v4, "delete_file"

    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1652
    array-length v1, p2

    if-ne v1, v2, :cond_1

    .line 1653
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/market2345/download/DownloadManager;->mCancelUri:Landroid/net/Uri;

    aget-wide v4, p2, v3

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1657
    :goto_1
    return-void

    :cond_0
    move v1, v3

    .line 1650
    goto :goto_0

    .line 1655
    :cond_1
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/market2345/download/DownloadManager;->mCancelUri:Landroid/net/Uri;

    invoke-static {p2}, Lcom/market2345/download/DownloadManager;->getWhereClauseForIds([J)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/market2345/download/DownloadManager;->getWhereArgsForIds([J)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method public varargs deleteDownload([Lcom/market2345/download/DownloadInfo;)V
    .locals 9
    .param p1, "infos"    # [Lcom/market2345/download/DownloadInfo;

    .prologue
    const/4 v8, 0x0

    .line 1661
    move-object v0, p1

    .local v0, "arr$":[Lcom/market2345/download/DownloadInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1662
    .local v2, "info":Lcom/market2345/download/DownloadInfo;
    iget-object v4, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mCancelUri:Landroid/net/Uri;

    iget-wide v6, v2, Lcom/market2345/download/DownloadInfo;->mId:J

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1663
    invoke-virtual {p0, v2}, Lcom/market2345/download/DownloadManager;->removeDownloadInfo(Lcom/market2345/download/DownloadInfo;)V

    .line 1661
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1665
    .end local v2    # "info":Lcom/market2345/download/DownloadInfo;
    :cond_0
    iget-object v4, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/datacenter/DataCenterObserver;->getMarketHandler()Landroid/os/Handler;

    move-result-object v4

    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 1666
    return-void
.end method

.method public downloadsChange(ZILcom/market2345/download/DownloadInfo;Z)V
    .locals 0
    .param p1, "notify"    # Z
    .param p2, "operation"    # I
    .param p3, "info"    # Lcom/market2345/download/DownloadInfo;
    .param p4, "notificationChange"    # Z

    .prologue
    .line 564
    invoke-virtual {p0, p4}, Lcom/market2345/download/DownloadManager;->notificationChange(Z)V

    .line 565
    invoke-direct {p0, p1, p2, p3}, Lcom/market2345/download/DownloadManager;->notifyList(ZILcom/market2345/download/DownloadInfo;)V

    .line 566
    return-void
.end method

.method public enqueue(Lcom/market2345/download/DownloadManager$Request;)J
    .locals 6
    .param p1, "request"    # Lcom/market2345/download/DownloadManager$Request;

    .prologue
    .line 1590
    invoke-virtual {p1}, Lcom/market2345/download/DownloadManager$Request;->toContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 1591
    .local v2, "values":Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/market2345/download/Downloads$Impl;->DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 1592
    .local v0, "downloadUri":Landroid/net/Uri;
    new-instance v1, Lcom/market2345/download/event/DownStartEvent;

    invoke-direct {v1}, Lcom/market2345/download/event/DownStartEvent;-><init>()V

    .line 1593
    .local v1, "event":Lcom/market2345/download/event/DownStartEvent;
    iget-object v3, p1, Lcom/market2345/download/DownloadManager$Request;->mSid:Ljava/lang/String;

    iput-object v3, v1, Lcom/market2345/download/event/DownStartEvent;->mSid:Ljava/lang/String;

    .line 1594
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v3

    invoke-virtual {v3, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 1595
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    return-wide v4
.end method

.method public freeUpdateIfReady()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1894
    iget-object v6, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/market2345/settings/SettingUtils$SETTING;->FREE_UPDATE:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {v6, v7, v8}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/market2345/autocheck/AutoResidentService;->level:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x1e

    if-le v6, v7, :cond_3

    .line 1896
    iget-object v6, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/market2345/datacenter/DataCenterObserver;->getUpdateList()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 1897
    .local v4, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/App;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1898
    .local v1, "downList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 1899
    .local v0, "app":Lcom/market2345/model/App;
    iget v6, v0, Lcom/market2345/model/App;->minSDK:I

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v6, v7, :cond_0

    .line 1900
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1904
    .end local v0    # "app":Lcom/market2345/model/App;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 1905
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v2, v5, :cond_2

    .line 1906
    iget-object v6, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/market2345/download/DownloadManager;->updateStatisticEvents(Landroid/content/Context;)V

    .line 1905
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1909
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcom/market2345/model/App;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/market2345/model/App;

    invoke-virtual {p0, v8, v8, v6}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload(ZZ[Lcom/market2345/model/App;)V

    .line 1912
    .end local v1    # "downList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/App;>;"
    .end local v5    # "size":I
    :cond_3
    return-void
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 1833
    invoke-direct {p0}, Lcom/market2345/download/DownloadManager;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 1834
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_0

    .line 1835
    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t get connectivity manager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    const/4 v1, 0x0

    .line 1838
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0
.end method

.method public getCompletedDownloads()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mCompletedDownloads:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 749
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    monitor-enter v1

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/download/DownloadInfo;

    monitor-exit v1

    return-object v0

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDownloadInfos()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 742
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    monitor-enter v1

    .line 743
    :try_start_0
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    monitor-exit v1

    return-object v0

    .line 744
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDownloadUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1798
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDownloadUriWithID(J)Landroid/net/Uri;
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadings()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mDownloadings:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getInstalledDownloads()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mInstalledDownloads:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getTasks()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 738
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mTasks:Ljava/util/Map;

    return-object v0
.end method

.method public getWaitWifiDownloads()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/download/DownloadInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 421
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mWaitWifiDownloads:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public isWifiNetwork()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1843
    invoke-virtual {p0}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1844
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1847
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public notificationChange(Z)V
    .locals 9
    .param p1, "notificationChange"    # Z

    .prologue
    const/16 v8, 0x80

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 590
    if-eqz p1, :cond_0

    .line 592
    iget-object v4, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 593
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    iget-object v4, p0, Lcom/market2345/download/DownloadManager;->mNotifyDownloadings:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 594
    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    .line 615
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_0
    :goto_0
    return-void

    .line 597
    .restart local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    const-class v5, Lcom/market2345/home/HomeTabActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 598
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "notification"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 599
    const/high16 v4, 0x4000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 600
    iget-object v4, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 602
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v5, p0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u60a8\u6709"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/market2345/download/DownloadManager;->mNotifyDownloadings:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u6b3e\u8f6f\u4ef6\u5728\u4e0b\u8f7d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const-string v5, "\u70b9\u51fb\u67e5\u770b\u4e0b\u8f7d\u5217\u8868"

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    const v5, 0x7f0202ef

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 612
    .local v1, "notification":Landroid/app/Notification;
    invoke-virtual {v2, v8, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public onConnectWifi()V
    .locals 0

    .prologue
    .line 1861
    invoke-virtual {p0}, Lcom/market2345/download/DownloadManager;->resumeAllDownloads()V

    .line 1863
    invoke-virtual {p0}, Lcom/market2345/download/DownloadManager;->freeUpdateIfReady()V

    .line 1864
    return-void
.end method

.method public onNetWorkDisconnect()V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1869
    new-array v2, v5, [Ljava/lang/String;

    const-string v0, "uri"

    aput-object v0, v2, v1

    .line 1870
    .local v2, "projection":[Ljava/lang/String;
    const-string v3, "status = ? "

    .line 1871
    .local v3, "selection":Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    const-string v0, "197"

    aput-object v0, v4, v1

    .line 1872
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1874
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1875
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1876
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1877
    .local v8, "url":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v7

    .line 1878
    .local v7, "info":Lcom/market2345/download/DownloadInfo;
    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1879
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->notifyAll()V

    .line 1880
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1884
    .end local v7    # "info":Lcom/market2345/download/DownloadInfo;
    .end local v8    # "url":Ljava/lang/String;
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_0

    .line 1885
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 1884
    :cond_1
    if-eqz v6, :cond_2

    .line 1885
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1890
    :cond_2
    return-void
.end method

.method public pauseDownload(J)V
    .locals 9
    .param p1, "id"    # J

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1611
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "status"

    aput-object v0, v2, v1

    .line 1612
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1615
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1616
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1617
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1618
    .local v7, "status":I
    sparse-switch v7, :sswitch_data_0

    goto :goto_0

    .line 1623
    :sswitch_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1624
    .local v8, "values":Landroid/content/ContentValues;
    const-string v0, "status"

    const/16 v1, 0xc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1625
    const-string v0, "startInstall"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1626
    const-string v0, "speed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1627
    const-string v0, "description"

    const v1, 0x7f0b009c

    invoke-direct {p0, v1}, Lcom/market2345/download/DownloadManager;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v8, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1636
    .end local v7    # "status":I
    .end local v8    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 1637
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 1636
    :cond_1
    if-eqz v6, :cond_2

    .line 1637
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1642
    :cond_2
    return-void

    .line 1618
    nop

    :sswitch_data_0
    .sparse-switch
        0xbe -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc5 -> :sswitch_0
    .end sparse-switch
.end method

.method public performClick(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 945
    instance-of v1, p3, Lcom/market2345/model/App;

    if-eqz v1, :cond_1

    .line 946
    invoke-virtual {p0}, Lcom/market2345/download/DownloadManager;->getDownloadInfos()Ljava/util/Map;

    move-result-object v2

    move-object v1, p3

    check-cast v1, Lcom/market2345/model/App;

    iget-object v1, v1, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/download/DownloadInfo;

    .line 947
    .local v0, "info":Lcom/market2345/download/DownloadInfo;
    check-cast p3, Lcom/market2345/model/App;

    .end local p3    # "obj":Ljava/lang/Object;
    invoke-direct {p0, v0, p3, p2, p1}, Lcom/market2345/download/DownloadManager;->handleClick(Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;Ljava/lang/String;Landroid/app/Activity;)V

    .line 951
    .end local v0    # "info":Lcom/market2345/download/DownloadInfo;
    :cond_0
    :goto_0
    return-void

    .line 948
    .restart local p3    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v1, p3, Lcom/market2345/download/DownloadInfo;

    if-eqz v1, :cond_0

    .line 949
    check-cast p3, Lcom/market2345/download/DownloadInfo;

    .end local p3    # "obj":Ljava/lang/Object;
    const/4 v1, 0x0

    invoke-direct {p0, p3, v1, p2, p1}, Lcom/market2345/download/DownloadManager;->handleClick(Lcom/market2345/download/DownloadInfo;Lcom/market2345/model/App;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public putDownloadInfo(Lcom/market2345/download/DownloadInfo;)Lcom/market2345/download/DownloadInfo;
    .locals 3
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    .line 755
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    monitor-enter v1

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    iget-object v2, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/download/DownloadInfo;

    monitor-exit v1

    return-object v0

    .line 757
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeDownloadInfo(Lcom/market2345/download/DownloadInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/market2345/download/DownloadInfo;

    .prologue
    const/4 v3, 0x1

    .line 761
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    monitor-enter v1

    .line 762
    :try_start_0
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mDownloads:Ljava/util/Map;

    iget-object v2, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 763
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mDownloadings:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mWaitWifiDownloads:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mCompletedDownloads:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mNotifyDownloadings:Ljava/util/Map;

    iget-object v2, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mInstalledDownloads:Ljava/util/LinkedHashMap;

    iget-object v2, p1, Lcom/market2345/download/DownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    const/4 v0, 0x5

    invoke-virtual {p0, v3, v0, p1, v3}, Lcom/market2345/download/DownloadManager;->downloadsChange(ZILcom/market2345/download/DownloadInfo;Z)V

    .line 770
    return-void

    .line 768
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resumeAllDownloads()V
    .locals 20

    .prologue
    .line 1754
    const/4 v4, 0x2

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v6, v4

    const/4 v4, 0x1

    const-string v5, "startInstall"

    aput-object v5, v6, v4

    .line 1755
    .local v6, "projection":[Ljava/lang/String;
    const-string v7, "status = ? "

    .line 1756
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "194"

    aput-object v5, v8, v4

    .line 1757
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/market2345/download/Downloads$Impl;->RESUME_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1759
    .local v15, "cursor":Landroid/database/Cursor;
    if-eqz v15, :cond_2

    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 1760
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1761
    const/4 v4, 0x1

    invoke-interface {v15, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v4, v1, v2}, Lcom/market2345/download/DownloadManager;->resumeDownload(ZJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1765
    :catchall_0
    move-exception v4

    if-eqz v15, :cond_0

    .line 1766
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v4

    .line 1761
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 1765
    :cond_2
    if-eqz v15, :cond_3

    .line 1766
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1771
    :cond_3
    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v11, v4

    .line 1772
    .local v11, "projection_":[Ljava/lang/String;
    const-string v12, "status = ? "

    .line 1773
    .local v12, "selection_":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "196"

    aput-object v5, v13, v4

    .line 1774
    .local v13, "selectionArgs_":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Lcom/market2345/download/Downloads$Impl;->RESUME_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 1776
    .local v16, "cursor_":Landroid/database/Cursor;
    if-eqz v16, :cond_5

    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 1777
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1778
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/market2345/download/DownloadManager;->resumeDownload(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 1782
    :catchall_1
    move-exception v4

    if-eqz v16, :cond_4

    .line 1783
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v4

    .line 1782
    :cond_5
    if-eqz v16, :cond_6

    .line 1783
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 1786
    :cond_6
    return-void
.end method

.method public resumeDownload(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 1673
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/market2345/download/DownloadManager;->resumeDownload(ZJ)V

    .line 1674
    return-void
.end method

.method public resumeDownload(ZJ)V
    .locals 2
    .param p1, "startInstall"    # Z
    .param p2, "id"    # J

    .prologue
    .line 1681
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/market2345/download/DownloadManager;->resumeDownload(ZZJ)V

    .line 1682
    return-void
.end method

.method public resumeDownload(ZZJ)V
    .locals 7
    .param p1, "queuedForWifi"    # Z
    .param p2, "startInstall"    # Z
    .param p3, "id"    # J

    .prologue
    .line 1686
    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/download/DownloadManager;->resumeDownload(ZZZJ)V

    .line 1687
    return-void
.end method

.method public resumeDownload(ZZZJ)V
    .locals 14
    .param p1, "queuedForWifi"    # Z
    .param p2, "startInstall"    # Z
    .param p3, "validateStatus"    # Z
    .param p4, "id"    # J

    .prologue
    .line 1697
    if-eqz p3, :cond_3

    .line 1698
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "status"

    aput-object v3, v4, v2

    .line 1699
    .local v4, "projection":[Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    move-wide/from16 v0, p4

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1702
    .local v11, "cursor":Landroid/database/Cursor;
    if-eqz v11, :cond_1

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 1703
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1704
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1705
    .local v12, "status":I
    packed-switch v12, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1709
    :pswitch_1
    invoke-virtual {p0}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    move-object v5, p0

    move v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v5 .. v10}, Lcom/market2345/download/DownloadManager;->resume(ZZJLandroid/net/NetworkInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1715
    .end local v12    # "status":I
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_0

    .line 1716
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v2

    .line 1715
    :cond_1
    if-eqz v11, :cond_2

    .line 1716
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1723
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v11    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-void

    .line 1720
    :cond_3
    invoke-virtual {p0}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    move-object v5, p0

    move v6, p1

    move/from16 v7, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v5 .. v10}, Lcom/market2345/download/DownloadManager;->resume(ZZJLandroid/net/NetworkInfo;)V

    goto :goto_1

    .line 1705
    nop

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAllowedNetworkTypes(Landroid/net/Uri;I)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 1600
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1601
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "allowed_network_types"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1602
    iget-object v1, p0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1603
    return-void
.end method

.method public setOnClickListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 774
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 775
    return-void
.end method

.method public setTypeAndPostion(ILjava/lang/String;)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "mTag"    # Ljava/lang/String;

    .prologue
    .line 1919
    iput p1, p0, Lcom/market2345/download/DownloadManager;->position:I

    .line 1920
    iput-object p2, p0, Lcom/market2345/download/DownloadManager;->typeTag:Ljava/lang/String;

    .line 1921
    return-void
.end method

.method public showToast(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lcom/market2345/download/DownloadManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 435
    return-void
.end method

.method public varargs startIfReady(Landroid/app/Activity;[Lcom/market2345/model/App;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "apps"    # [Lcom/market2345/model/App;

    .prologue
    .line 1105
    if-eqz p1, :cond_1

    .line 1106
    invoke-virtual {p0}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1107
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1108
    invoke-direct {p0, p1, p2}, Lcom/market2345/download/DownloadManager;->checkSignatures(Landroid/app/Activity;[Lcom/market2345/model/App;)V

    .line 1115
    :goto_0
    return-void

    .line 1110
    :cond_0
    const v1, 0x7f0b00f3

    invoke-virtual {p0, v1}, Lcom/market2345/download/DownloadManager;->showToast(I)V

    goto :goto_0

    .line 1113
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The view must hold an Activity!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public varargs startOrResumeDownload(ZZ[Lcom/market2345/model/App;)V
    .locals 25
    .param p1, "queuedForWifi"    # Z
    .param p2, "startInstall"    # Z
    .param p3, "apps"    # [Lcom/market2345/model/App;

    .prologue
    .line 1450
    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v4, v0

    if-nez v4, :cond_1

    .line 1451
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "The app is null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1454
    :cond_1
    move-object/from16 v17, p3

    .local v17, "arr$":[Lcom/market2345/model/App;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v22, v0

    .local v22, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    aget-object v16, v17, v20

    .line 1456
    .local v16, "app":Lcom/market2345/model/App;
    const-string v7, "uri = ?"

    .line 1457
    .local v7, "selection":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v16

    iget-object v5, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    aput-object v5, v8, v4

    .line 1459
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/market2345/download/DownloadManager;->mBaseUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 1462
    .local v18, "cursor":Landroid/database/Cursor;
    if-eqz v18, :cond_7

    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_7

    .line 1463
    new-instance v23, Lcom/market2345/download/DownloadInfo$Reader;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/download/DownloadManager;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-direct {v0, v4, v1, v2}, Lcom/market2345/download/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;Lcom/market2345/download/DownloadManager;)V

    .line 1464
    .local v23, "reader":Lcom/market2345/download/DownloadInfo$Reader;
    :cond_2
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1465
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/market2345/download/StorageManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/market2345/download/DownloadManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/market2345/download/StorageManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/market2345/download/DownloadInfo$Reader;->newDownloadInfo(Landroid/content/Context;Lcom/market2345/download/StorageManager;)Lcom/market2345/download/DownloadInfo;

    move-result-object v21

    .line 1466
    .local v21, "info":Lcom/market2345/download/DownloadInfo;
    move-object/from16 v0, v21

    iget v4, v0, Lcom/market2345/download/DownloadInfo;->mStatus:I

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_5

    .line 1467
    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1468
    .local v19, "file":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, v21

    iget v4, v0, Lcom/market2345/download/DownloadInfo;->mVersionCode:I

    move-object/from16 v0, v16

    iget v5, v0, Lcom/market2345/model/App;->versionCode:I

    if-ne v4, v5, :cond_4

    .line 1469
    if-eqz p2, :cond_2

    .line 1470
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lcom/market2345/download/util/PackageUtils;->installNormal(Landroid/content/Context;Lcom/market2345/download/DownloadInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1494
    .end local v19    # "file":Ljava/io/File;
    .end local v21    # "info":Lcom/market2345/download/DownloadInfo;
    .end local v23    # "reader":Lcom/market2345/download/DownloadInfo$Reader;
    :catchall_0
    move-exception v4

    if-eqz v18, :cond_3

    .line 1495
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4

    .line 1473
    .restart local v19    # "file":Ljava/io/File;
    .restart local v21    # "info":Lcom/market2345/download/DownloadInfo;
    .restart local v23    # "reader":Lcom/market2345/download/DownloadInfo$Reader;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/market2345/download/DownloadManager;->down(ZZLcom/market2345/model/App;)V

    goto :goto_1

    .line 1475
    .end local v19    # "file":Ljava/io/File;
    :cond_5
    move-object/from16 v0, v21

    iget v4, v0, Lcom/market2345/download/DownloadInfo;->mStatus:I

    const/16 v5, 0x25a

    if-ne v4, v5, :cond_6

    .line 1477
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/market2345/download/DownloadManager;->down(ZZLcom/market2345/model/App;)V

    goto :goto_1

    .line 1480
    :cond_6
    const-string v4, "status"

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 1481
    .local v24, "status":I
    packed-switch v24, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 1485
    :pswitch_1
    const/4 v13, 0x0

    move-object/from16 v0, v21

    iget-wide v14, v0, Lcom/market2345/download/DownloadInfo;->mId:J

    move-object/from16 v10, p0

    move/from16 v11, p1

    move/from16 v12, p2

    invoke-virtual/range {v10 .. v15}, Lcom/market2345/download/DownloadManager;->resumeDownload(ZZZJ)V

    goto/16 :goto_1

    .line 1491
    .end local v21    # "info":Lcom/market2345/download/DownloadInfo;
    .end local v23    # "reader":Lcom/market2345/download/DownloadInfo$Reader;
    .end local v24    # "status":I
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/market2345/download/DownloadManager;->down(ZZLcom/market2345/model/App;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1494
    :cond_8
    if-eqz v18, :cond_9

    .line 1495
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 1454
    :cond_9
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_0

    .line 1499
    .end local v7    # "selection":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v16    # "app":Lcom/market2345/model/App;
    .end local v18    # "cursor":Landroid/database/Cursor;
    :cond_a
    return-void

    .line 1481
    nop

    :pswitch_data_0
    .packed-switch 0xc1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public varargs startOrResumeDownload([Lcom/market2345/model/App;)V
    .locals 1
    .param p1, "apps"    # [Lcom/market2345/model/App;

    .prologue
    .line 1428
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload(Z[Lcom/market2345/model/App;)V

    .line 1429
    return-void
.end method

.method public startSingleIfReady(Landroid/app/Activity;Lcom/market2345/model/App;Z)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "app"    # Lcom/market2345/model/App;
    .param p3, "checkSignatures"    # Z

    .prologue
    .line 1126
    if-eqz p1, :cond_2

    .line 1127
    invoke-virtual {p0}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1128
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1129
    if-eqz p3, :cond_0

    .line 1130
    invoke-direct {p0, p1, p2}, Lcom/market2345/download/DownloadManager;->checkSingleSignatures(Landroid/app/Activity;Lcom/market2345/model/App;)V

    .line 1140
    :goto_0
    return-void

    .line 1132
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/market2345/download/DownloadManager;->checkSingleVersion(Landroid/app/Activity;Lcom/market2345/model/App;)V

    goto :goto_0

    .line 1135
    :cond_1
    const v1, 0x7f0b00f3

    invoke-virtual {p0, v1}, Lcom/market2345/download/DownloadManager;->showToast(I)V

    goto :goto_0

    .line 1138
    .end local v0    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "The view must hold an Activity!"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
