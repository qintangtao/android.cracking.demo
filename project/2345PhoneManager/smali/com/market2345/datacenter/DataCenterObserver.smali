.class public Lcom/market2345/datacenter/DataCenterObserver;
.super Lcom/market2345/datacenter/MarketObservable;
.source "DataCenterObserver.java"


# static fields
.field public static final ADD_OR_REMOVE_DOWNLOAD:I = 0xf

.field private static final CURSOR_CHANGED:I = 0x1

.field private static final CURSOR_CREATED:I = 0x0

.field private static final CURSOR_UPDATE:I = 0x2

.field public static final DOWNLOADING_COUNT:I = 0x8

.field public static final DOWNLOADURL_ERROR:I = 0xe

.field public static final DOWNLOAD_LOAD_COMPLETED:I = 0x11

.field public static final DOWNLOAD_NOTIFY_URI:I = 0x13

.field public static final DOWNLOAD_STATUS_CHANGE:I = 0x10

.field public static final ERROR_DOWNLOAD:I = 0xd

.field public static final INSTALLED_REMOVE_FILE:I = 0x12

.field public static final INSTALL_APP:I = 0x9

.field public static final MANAGE_DEL_DIALOG:I = 0x14

.field public static final RECEVIRE_FILE_FROM_PC:I = 0x7

.field public static final REMOVE_APP:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field static final UPDATE_COUNT:I = 0x4

.field static final UPDATE_IGNORE:I = 0x5

.field static final UPDATE_LIST:I = 0x3

.field public static final VARIFY_MD5_END:I = 0x15

.field public static final WIFI_PC_LINK_STATUS:I = 0x6

.field private static sInstance:Lcom/market2345/datacenter/DataCenterObserver;


# instance fields
.field private appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

.field private hot_words:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private pcFromFile:Lcom/market2345/datacenter/FileRecieverFromPC;

.field private recommendationList:Lcom/market2345/model/SearchRecommendation;

.field private userInfo:Lcom/market2345/datacenter/UserInfo;

.field private wifiStatus:Lcom/market2345/datacenter/WifiConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/datacenter/DataCenterObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/market2345/datacenter/MarketObservable;-><init>()V

    .line 134
    new-instance v0, Lcom/market2345/datacenter/DataCenterObserver$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/market2345/datacenter/DataCenterObserver$1;-><init>(Lcom/market2345/datacenter/DataCenterObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->mHandler:Landroid/os/Handler;

    .line 253
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->mContext:Landroid/content/Context;

    .line 254
    new-instance v0, Lcom/market2345/datacenter/UserInfo;

    invoke-direct {v0}, Lcom/market2345/datacenter/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->userInfo:Lcom/market2345/datacenter/UserInfo;

    .line 255
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->userInfo:Lcom/market2345/datacenter/UserInfo;

    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/market2345/datacenter/UserInfo;->init(Landroid/content/Context;)V

    .line 256
    new-instance v0, Lcom/market2345/datacenter/FileRecieverFromPC;

    invoke-direct {v0}, Lcom/market2345/datacenter/FileRecieverFromPC;-><init>()V

    iput-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->pcFromFile:Lcom/market2345/datacenter/FileRecieverFromPC;

    .line 257
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->pcFromFile:Lcom/market2345/datacenter/FileRecieverFromPC;

    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/market2345/datacenter/DataCenterObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/datacenter/FileRecieverFromPC;->init(Landroid/os/Handler;Landroid/content/Context;)V

    .line 258
    new-instance v0, Lcom/market2345/datacenter/AppsInfoHandler;

    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/market2345/datacenter/DataCenterObserver;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/market2345/datacenter/AppsInfoHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    .line 259
    const-string v0, "com.market2345"

    invoke-static {}, Lcom/market2345/MarketApplication;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lcom/market2345/datacenter/WifiConnectionStatus;

    invoke-direct {v0}, Lcom/market2345/datacenter/WifiConnectionStatus;-><init>()V

    iput-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->wifiStatus:Lcom/market2345/datacenter/WifiConnectionStatus;

    .line 261
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->wifiStatus:Lcom/market2345/datacenter/WifiConnectionStatus;

    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/market2345/datacenter/DataCenterObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/datacenter/WifiConnectionStatus;->init(Landroid/os/Handler;Landroid/content/Context;)V

    .line 263
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/datacenter/DataCenterObserver;)Lcom/market2345/datacenter/WifiConnectionStatus;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/datacenter/DataCenterObserver;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->wifiStatus:Lcom/market2345/datacenter/WifiConnectionStatus;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/datacenter/DataCenterObserver;)Lcom/market2345/datacenter/FileRecieverFromPC;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/datacenter/DataCenterObserver;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->pcFromFile:Lcom/market2345/datacenter/FileRecieverFromPC;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/datacenter/DataCenterObserver;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/datacenter/DataCenterObserver;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    sget-object v0, Lcom/market2345/datacenter/DataCenterObserver;->sInstance:Lcom/market2345/datacenter/DataCenterObserver;

    if-nez v0, :cond_1

    .line 267
    const-class v1, Lcom/market2345/datacenter/DataCenterObserver;

    monitor-enter v1

    .line 268
    :try_start_0
    sget-object v0, Lcom/market2345/datacenter/DataCenterObserver;->sInstance:Lcom/market2345/datacenter/DataCenterObserver;

    if-nez v0, :cond_0

    .line 269
    new-instance v0, Lcom/market2345/datacenter/DataCenterObserver;

    invoke-direct {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/market2345/datacenter/DataCenterObserver;->sInstance:Lcom/market2345/datacenter/DataCenterObserver;

    .line 271
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_1
    sget-object v0, Lcom/market2345/datacenter/DataCenterObserver;->sInstance:Lcom/market2345/datacenter/DataCenterObserver;

    return-object v0

    .line 271
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public addInstalledApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v1, p1}, Lcom/market2345/datacenter/AppsInfoHandler;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/market2345/datacenter/AppsInfoHandler;->addInstalledApp(Ljava/lang/String;Lcom/market2345/model/InstalledApp;)V

    .line 450
    return-void
.end method

.method public checkInUpdateListForInstalled(Ljava/lang/String;)Lcom/market2345/model/App;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 537
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;Z)Lcom/market2345/model/App;

    move-result-object v0

    return-object v0
.end method

.method public deleteFilesFromPC([I[Ljava/lang/String;Z)V
    .locals 1
    .param p1, "ids"    # [I
    .param p2, "files"    # [Ljava/lang/String;
    .param p3, "deleFile"    # Z

    .prologue
    .line 503
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->pcFromFile:Lcom/market2345/datacenter/FileRecieverFromPC;

    invoke-virtual {v0, p1, p2, p3}, Lcom/market2345/datacenter/FileRecieverFromPC;->deleteFileById([I[Ljava/lang/String;Z)V

    .line 504
    return-void
.end method

.method public getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    return-object v0
.end method

.method public getConnStatus()I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->wifiStatus:Lcom/market2345/datacenter/WifiConnectionStatus;

    invoke-virtual {v0}, Lcom/market2345/datacenter/WifiConnectionStatus;->getConnStatus()I

    move-result v0

    return v0
.end method

.method public getFileFromPCCount()I
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->pcFromFile:Lcom/market2345/datacenter/FileRecieverFromPC;

    invoke-virtual {v0}, Lcom/market2345/datacenter/FileRecieverFromPC;->getFileCount()I

    move-result v0

    return v0
.end method

.method public getFilesFromPC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/FileFromPC;",
            ">;"
        }
    .end annotation

    .prologue
    .line 499
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->pcFromFile:Lcom/market2345/datacenter/FileRecieverFromPC;

    invoke-virtual {v0}, Lcom/market2345/datacenter/FileRecieverFromPC;->getFiles()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getHot_words()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->hot_words:Ljava/lang/String;

    return-object v0
.end method

.method public getIgnoreNumber()I
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0}, Lcom/market2345/datacenter/AppsInfoHandler;->getIgnoreNumber()I

    move-result v0

    return v0
.end method

.method public getIgnoreUpdateList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0}, Lcom/market2345/datacenter/AppsInfoHandler;->getIgnoreUpdateList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 405
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0, p1}, Lcom/market2345/datacenter/AppsInfoHandler;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledAppMd5(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 416
    const/4 v1, 0x0

    .line 417
    .local v1, "md5":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 418
    .local v0, "app":Lcom/market2345/model/InstalledApp;
    if-eqz v0, :cond_0

    .line 419
    iget-object v2, v0, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    invoke-static {v2}, Lcom/market2345/common/util/Utils;->getLocalFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 422
    :cond_0
    return-object v1
.end method

.method public getInstalledAppVersionCode(Ljava/lang/String;)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 432
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v1, p1}, Lcom/market2345/datacenter/AppsInfoHandler;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 433
    .local v0, "app":Lcom/market2345/model/InstalledApp;
    if-eqz v0, :cond_0

    iget v1, v0, Lcom/market2345/model/InstalledApp;->versionCode:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInstalledAppVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v1, p1}, Lcom/market2345/datacenter/AppsInfoHandler;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    .line 444
    .local v0, "app":Lcom/market2345/model/InstalledApp;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/InstalledApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 313
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0}, Lcom/market2345/datacenter/AppsInfoHandler;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledAppsJson()Ljava/lang/String;
    .locals 12

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/market2345/datacenter/DataCenterObserver;->getSysInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    .line 355
    .local v6, "syss":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    new-instance v5, Lcom/google/gson/JsonArray;

    invoke-direct {v5}, Lcom/google/gson/JsonArray;-><init>()V

    .line 356
    .local v5, "sysArray":Lcom/google/gson/JsonArray;
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/InstalledApp;

    .line 357
    .local v0, "app":Lcom/market2345/model/InstalledApp;
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 358
    .local v3, "object":Lcom/google/gson/JsonObject;
    iget-object v4, v0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    .line 359
    .local v4, "packageName":Ljava/lang/String;
    const-string v10, "pn"

    invoke-virtual {v3, v10, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget v9, v0, Lcom/market2345/model/InstalledApp;->versionCode:I

    .line 361
    .local v9, "versionCode":I
    const-string v10, "vc"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 363
    invoke-virtual {v5, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    .line 366
    .end local v0    # "app":Lcom/market2345/model/InstalledApp;
    .end local v3    # "object":Lcom/google/gson/JsonObject;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v9    # "versionCode":I
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/datacenter/DataCenterObserver;->getUserInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    .line 367
    .local v8, "users":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    new-instance v7, Lcom/google/gson/JsonArray;

    invoke-direct {v7}, Lcom/google/gson/JsonArray;-><init>()V

    .line 368
    .local v7, "userArray":Lcom/google/gson/JsonArray;
    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/InstalledApp;

    .line 369
    .restart local v0    # "app":Lcom/market2345/model/InstalledApp;
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    .line 370
    .restart local v3    # "object":Lcom/google/gson/JsonObject;
    iget-object v4, v0, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    .line 371
    .restart local v4    # "packageName":Ljava/lang/String;
    const-string v10, "pn"

    invoke-virtual {v3, v10, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget v9, v0, Lcom/market2345/model/InstalledApp;->versionCode:I

    .line 373
    .restart local v9    # "versionCode":I
    const-string v10, "vc"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 375
    invoke-virtual {v7, v3}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 378
    .end local v0    # "app":Lcom/market2345/model/InstalledApp;
    .end local v3    # "object":Lcom/google/gson/JsonObject;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v9    # "versionCode":I
    :cond_1
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 379
    .local v2, "obj":Lcom/google/gson/JsonObject;
    const-string v10, "sys"

    invoke-virtual {v2, v10, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 380
    const-string v10, "user"

    invoke-virtual {v2, v10, v7}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 382
    const/4 v5, 0x0

    .line 383
    const/4 v7, 0x0

    .line 385
    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10
.end method

.method public getMarketHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getRecommendationList()Lcom/market2345/model/SearchRecommendation;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->recommendationList:Lcom/market2345/model/SearchRecommendation;

    return-object v0
.end method

.method public getSysInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/InstalledApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0}, Lcom/market2345/datacenter/AppsInfoHandler;->getSysInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateAppsListController()Lcom/market2345/blackandwhite/UpdateAppsListController;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0}, Lcom/market2345/datacenter/AppsInfoHandler;->getUpdateAppsListController()Lcom/market2345/blackandwhite/UpdateAppsListController;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0}, Lcom/market2345/datacenter/AppsInfoHandler;->getUpdateList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getUpgradeNumber()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0}, Lcom/market2345/datacenter/AppsInfoHandler;->getUpgradeNumber()I

    move-result v0

    return v0
.end method

.method public getUserInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/InstalledApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0}, Lcom/market2345/datacenter/AppsInfoHandler;->getUserInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method public getWifiStatus()Lcom/market2345/datacenter/WifiConnectionStatus;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->wifiStatus:Lcom/market2345/datacenter/WifiConnectionStatus;

    return-object v0
.end method

.method public ignoreApp(Lcom/market2345/model/App;)Z
    .locals 1
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0, p1}, Lcom/market2345/datacenter/AppsInfoHandler;->ignoreApp(Lcom/market2345/model/App;)Z

    move-result v0

    return v0
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 395
    invoke-virtual {p0, p1}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLianMengApk(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0, p1}, Lcom/market2345/datacenter/AppsInfoHandler;->isLianMengApk(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lianMengApkSize()I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0}, Lcom/market2345/datacenter/AppsInfoHandler;->lianMengApkSize()I

    move-result v0

    return v0
.end method

.method public removeInstalledApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0, p1}, Lcom/market2345/datacenter/AppsInfoHandler;->removeInstalledApp(Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method public removeUpdateApp(Lcom/market2345/model/App;)V
    .locals 1
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0, p1}, Lcom/market2345/datacenter/AppsInfoHandler;->removeUpdateApp(Lcom/market2345/model/App;)V

    .line 468
    return-void
.end method

.method public removeUpdatedApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 490
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0, p1}, Lcom/market2345/datacenter/AppsInfoHandler;->removeUpdatedApp(Ljava/lang/String;)V

    .line 491
    return-void
.end method

.method public setHot_words(Ljava/lang/String;)V
    .locals 0
    .param p1, "hot_words"    # Ljava/lang/String;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/market2345/datacenter/DataCenterObserver;->hot_words:Ljava/lang/String;

    .line 512
    return-void
.end method

.method public setRecommendationList(Lcom/market2345/model/SearchRecommendation;)V
    .locals 0
    .param p1, "recommendationList"    # Lcom/market2345/model/SearchRecommendation;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/market2345/datacenter/DataCenterObserver;->recommendationList:Lcom/market2345/model/SearchRecommendation;

    .line 520
    return-void
.end method

.method public setUpdateList(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 485
    .local p1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0, p1}, Lcom/market2345/datacenter/AppsInfoHandler;->setUpdateList(Ljava/util/HashMap;)V

    .line 486
    return-void
.end method

.method public setmLianMengApk(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p1, "mLianMengApk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0, p1}, Lcom/market2345/datacenter/AppsInfoHandler;->setmLianMengApk(Ljava/util/ArrayList;)V

    .line 287
    return-void
.end method

.method public unIgnoreApp(Lcom/market2345/model/App;)Z
    .locals 1
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 475
    iget-object v0, p0, Lcom/market2345/datacenter/DataCenterObserver;->appsInfo:Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0, p1}, Lcom/market2345/datacenter/AppsInfoHandler;->unIgnoreApp(Lcom/market2345/model/App;)Z

    move-result v0

    return v0
.end method

.method public ungesiterService()V
    .locals 0

    .prologue
    .line 525
    return-void
.end method
