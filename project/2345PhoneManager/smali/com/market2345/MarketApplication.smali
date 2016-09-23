.class public Lcom/market2345/MarketApplication;
.super Landroid/app/Application;
.source "MarketApplication.java"


# static fields
.field private static final DEVELOPER_MODE:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static application:Lcom/market2345/MarketApplication; = null

.field public static channel:Ljava/lang/String; = null

.field public static final packegename:Ljava/lang/String; = "com.market2345"

.field private static processName:Ljava/lang/String; = null

.field public static final versioncode:I = 0x26

.field public static final versionname:Ljava/lang/String; = "3.0.242702"


# instance fields
.field private junkDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;"
        }
    .end annotation
.end field

.field private lastCleanRAMData:I

.field public lastScanTime:J

.field private mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private mSession:Lcom/market2345/datacenter/DataCenterObserver;

.field private refreshCleanActivity:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/market2345/MarketApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/MarketApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/MarketApplication;->refreshCleanActivity:Z

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/MarketApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/MarketApplication;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/market2345/MarketApplication;->initImageLoader()V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/MarketApplication;)Lcom/market2345/datacenter/DataCenterObserver;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/MarketApplication;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/market2345/MarketApplication;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/market2345/MarketApplication;Lcom/market2345/datacenter/DataCenterObserver;)Lcom/market2345/datacenter/DataCenterObserver;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/MarketApplication;
    .param p1, "x1"    # Lcom/market2345/datacenter/DataCenterObserver;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/market2345/MarketApplication;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    return-object p1
.end method

.method static synthetic access$200(Lcom/market2345/MarketApplication;)Lcom/market2345/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/MarketApplication;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/market2345/MarketApplication;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/market2345/MarketApplication;Lcom/market2345/download/DownloadManager;)Lcom/market2345/download/DownloadManager;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/MarketApplication;
    .param p1, "x1"    # Lcom/market2345/download/DownloadManager;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/market2345/MarketApplication;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/market2345/MarketApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/MarketApplication;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/market2345/MarketApplication;->holdService()V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/MarketApplication;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/MarketApplication;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/market2345/MarketApplication;->cleanData()V

    return-void
.end method

.method private checkSo()V
    .locals 2

    .prologue
    .line 276
    new-instance v0, Ljava/io/File;

    const-string v1, "system/lib/libapkDiff.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 281
    :cond_0
    return-void
.end method

.method private cleanData()V
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/MarketApplication;->junkDataList:Ljava/util/List;

    .line 236
    return-void
.end method

.method public static getInstance()Lcom/market2345/MarketApplication;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/market2345/MarketApplication;->application:Lcom/market2345/MarketApplication;

    return-object v0
.end method

.method public static getProcessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/market2345/MarketApplication;->processName:Ljava/lang/String;

    return-object v0
.end method

.method private holdService()V
    .locals 2

    .prologue
    .line 87
    invoke-static {p0}, Lcom/market2345/autocheck/ServiceHolder;->getHolderInstance(Landroid/content/Context;)Lcom/market2345/autocheck/ServiceHolder;

    move-result-object v0

    .line 88
    .local v0, "holder":Lcom/market2345/autocheck/ServiceHolder;
    const-class v1, Lcom/market2345/autocheck/AutoResidentService;

    invoke-virtual {v0, v1}, Lcom/market2345/autocheck/ServiceHolder;->setAndStartService(Ljava/lang/Class;)V

    .line 89
    return-void
.end method

.method private initImageLoader()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x400000

    const v4, 0x7f020032

    const/4 v3, 0x1

    .line 239
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 250
    .local v1, "defaultOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    new-instance v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-virtual {p0}, Lcom/market2345/MarketApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    const/16 v3, 0x1e0

    const/16 v4, 0x320

    invoke-virtual {v2, v3, v4, v7}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheExtraOptions(IILcom/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    new-instance v3, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache;

    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/market2345/Constants;->ImageCacheDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v5}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-direct {v3, v4, v7, v5}, Lcom/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiskCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache(Lcom/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    const/high16 v3, 0x6400000

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    new-instance v3, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    invoke-direct {v3, v6}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    new-instance v3, Lcom/market2345/MarketImageDownloader;

    invoke-direct {v3, p0}, Lcom/market2345/MarketImageDownloader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    .line 262
    .local v0, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    .line 263
    return-void
.end method


# virtual methods
.method public getJunkDataList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lcom/market2345/MarketApplication;->junkDataList:Ljava/util/List;

    return-object v0
.end method

.method public getLastCleanRAMData()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/market2345/MarketApplication;->lastCleanRAMData:I

    return v0
.end method

.method public getLastScanTime()J
    .locals 2

    .prologue
    .line 215
    iget-wide v0, p0, Lcom/market2345/MarketApplication;->lastScanTime:J

    return-wide v0
.end method

.method public isRefreshCleanActivity()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/market2345/MarketApplication;->refreshCleanActivity:Z

    return v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 112
    invoke-virtual {p0}, Lcom/market2345/MarketApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/base/C;->setContext(Landroid/content/Context;)V

    .line 113
    const-class v0, Lcom/market2345/MarketApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketApplication onCreate"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 115
    sput-object p0, Lcom/market2345/MarketApplication;->application:Lcom/market2345/MarketApplication;

    .line 116
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/market2345/common/util/ApplicationUtils;->getProcessNameByPID(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/MarketApplication;->processName:Ljava/lang/String;

    .line 119
    invoke-static {v2}, Lcom/statistic2345/log/Statistics;->setDebug(Z)V

    .line 121
    invoke-virtual {p0}, Lcom/market2345/MarketApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/statistic2345/log/Statistics;->init(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p0}, Lcom/market2345/MarketApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->setAppStartInterval(Landroid/content/Context;I)V

    .line 126
    invoke-virtual {p0}, Lcom/market2345/MarketApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->setAppActivateInterval(Landroid/content/Context;I)V

    .line 132
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lcn/jpush/android/api/JPushInterface;->setDebugMode(Z)V

    .line 133
    invoke-static {p0}, Lcn/jpush/android/api/JPushInterface;->init(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    new-instance v0, Lcom/market2345/MarketApplication$1;

    invoke-direct {v0, p0}, Lcom/market2345/MarketApplication$1;-><init>(Lcom/market2345/MarketApplication;)V

    invoke-virtual {v0}, Lcom/market2345/MarketApplication$1;->start()V

    .line 196
    return-void

    .line 134
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setJunkDataList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 223
    .local p1, "junkDataList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkGroup;>;"
    iput-object p1, p0, Lcom/market2345/MarketApplication;->junkDataList:Ljava/util/List;

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/market2345/MarketApplication$2;

    invoke-direct {v1, p0}, Lcom/market2345/MarketApplication$2;-><init>(Lcom/market2345/MarketApplication;)V

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    return-void
.end method

.method public setLastCleanRAMData(I)V
    .locals 0
    .param p1, "lastCleanRAMData"    # I

    .prologue
    .line 272
    iput p1, p0, Lcom/market2345/MarketApplication;->lastCleanRAMData:I

    .line 273
    return-void
.end method

.method public setLastScanTime(J)V
    .locals 1
    .param p1, "lastScanTime"    # J

    .prologue
    .line 219
    iput-wide p1, p0, Lcom/market2345/MarketApplication;->lastScanTime:J

    .line 220
    return-void
.end method

.method public setRefreshCleanActivity(Z)V
    .locals 0
    .param p1, "refreshCleanActivity"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lcom/market2345/MarketApplication;->refreshCleanActivity:Z

    .line 208
    return-void
.end method
