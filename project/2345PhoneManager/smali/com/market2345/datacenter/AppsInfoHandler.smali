.class public Lcom/market2345/datacenter/AppsInfoHandler;
.super Ljava/lang/Object;
.source "AppsInfoHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final filterSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ignoreNumber:I

.field private listController:Lcom/market2345/blackandwhite/UpdateAppsListController;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIgnoreUpdateApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field private mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/InstalledApp;",
            ">;"
        }
    .end annotation
.end field

.field private mLianMengApk:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSysInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/InstalledApp;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field private mUserInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/InstalledApp;",
            ">;"
        }
    .end annotation
.end field

.field private updateAppLock:Ljava/lang/Object;

.field private upgradeNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lcom/market2345/datacenter/AppsInfoHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/datacenter/AppsInfoHandler;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/market2345/datacenter/AppsInfoHandler;->filterSet:Ljava/util/HashSet;

    .line 53
    sget-object v0, Lcom/market2345/datacenter/AppsInfoHandler;->filterSet:Ljava/util/HashSet;

    const-string v1, "com.market2345"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/market2345/datacenter/AppsInfoHandler;->filterSet:Ljava/util/HashSet;

    const-string v1, "com.service.usbhelper"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/market2345/datacenter/AppsInfoHandler;->filterSet:Ljava/util/HashSet;

    const-string v1, "com.lenovo.gps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mIgnoreUpdateApps:Ljava/util/HashMap;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    .line 97
    iput-object p1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mContext:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;

    .line 101
    invoke-direct {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->createUpdateAppsList()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/datacenter/AppsInfoHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/datacenter/AppsInfoHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/datacenter/AppsInfoHandler;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/datacenter/AppsInfoHandler;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 6
    .param p1, "src"    # [B

    .prologue
    .line 274
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 275
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v4, p1

    if-gtz v4, :cond_1

    .line 276
    :cond_0
    const/4 v4, 0x0

    .line 286
    :goto_0
    return-object v4

    .line 278
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 279
    aget-byte v4, p1, v1

    and-int/lit16 v3, v4, 0xff

    .line 280
    .local v3, "v":I
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "hv":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_2

    .line 282
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 286
    .end local v0    # "hv":Ljava/lang/String;
    .end local v3    # "v":I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private changeUpdateApps()V
    .locals 13

    .prologue
    const/4 v11, 0x1

    .line 635
    iget-object v9, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    monitor-enter v9

    .line 636
    :try_start_0
    iget-object v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 637
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/App;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v7, "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 639
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->listController:Lcom/market2345/blackandwhite/UpdateAppsListController;

    invoke-static {v0}, Lcom/market2345/blackandwhite/model/AppBAWLocal;->createFromApp(Lcom/market2345/model/App;)Lcom/market2345/blackandwhite/model/AppBAWLocal;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/market2345/blackandwhite/UpdateAppsListController;->isInBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 640
    iget-object v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    iget-object v10, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 641
    iget-object v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mIgnoreUpdateApps:Ljava/util/HashMap;

    iget-object v10, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 673
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v1    # "coll":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/App;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 643
    .restart local v0    # "app":Lcom/market2345/model/App;
    .restart local v1    # "coll":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/App;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "updateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 646
    .end local v0    # "app":Lcom/market2345/model/App;
    :cond_1
    iget-object v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    iput v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->upgradeNumber:I

    .line 647
    iget-object v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mIgnoreUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    iput v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->ignoreNumber:I

    .line 649
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 650
    .local v5, "msg1":Landroid/os/Message;
    const/4 v8, 0x4

    iput v8, v5, Landroid/os/Message;->what:I

    .line 651
    iget v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->upgradeNumber:I

    iput v8, v5, Landroid/os/Message;->arg1:I

    .line 652
    iget-object v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 653
    iget-object v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mContext:Landroid/content/Context;

    const/4 v10, 0x1

    invoke-static {v8, v10}, Lcom/market2345/common/util/NetworkUtils;->getNetworkType(Landroid/content/Context;Z)I

    move-result v6

    .line 654
    .local v6, "networkType":I
    if-ne v6, v11, :cond_4

    .line 655
    iget-object v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/market2345/settings/SettingUtils$SETTING;->FREE_UPDATE:Lcom/market2345/settings/SettingUtils$SETTING;

    const/4 v11, 0x0

    invoke-static {v8, v10, v11}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    sget-object v8, Lcom/market2345/autocheck/AutoResidentService;->level:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v10, 0x1e

    if-le v8, v10, :cond_4

    .line 657
    iget-object v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 658
    .local v4, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/App;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v2, "downList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 660
    .restart local v0    # "app":Lcom/market2345/model/App;
    iget v8, v0, Lcom/market2345/model/App;->minSDK:I

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v8, v10, :cond_2

    .line 661
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 665
    .end local v0    # "app":Lcom/market2345/model/App;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_4

    .line 666
    iget-object v8, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v8, v8, [Lcom/market2345/model/App;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/market2345/model/App;

    invoke-virtual {v10, v11, v12, v8}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload(ZZ[Lcom/market2345/model/App;)V

    .line 672
    .end local v2    # "downList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    .end local v4    # "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/market2345/model/App;>;"
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 673
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    return-void
.end method

.method private createUpdateAppsList()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->listController:Lcom/market2345/blackandwhite/UpdateAppsListController;

    if-nez v0, :cond_0

    .line 447
    const-string v0, "updateappslist"

    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/market2345/blackandwhite/ListControllerFactory;->getListController(Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/blackandwhite/BlackAndWhiteList;

    move-result-object v0

    check-cast v0, Lcom/market2345/blackandwhite/UpdateAppsListController;

    iput-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->listController:Lcom/market2345/blackandwhite/UpdateAppsListController;

    .line 449
    :cond_0
    return-void
.end method

.method private downPartial(Lcom/market2345/model/App;)Z
    .locals 1
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 580
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

.method private isLoaded()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUserInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mSysInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized loadInstalledApps()V
    .locals 18

    .prologue
    .line 189
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/market2345/datacenter/AppsInfoHandler;->isLoaded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v15

    if-eqz v15, :cond_1

    .line 266
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :cond_1
    :try_start_1
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 196
    .local v7, "installed":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    new-instance v13, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v13}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 197
    .local v13, "sysInstalled":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    new-instance v14, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v14}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 199
    .local v14, "userInstalled":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/market2345/MarketApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 200
    .local v9, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v9, :cond_0

    .line 203
    const/16 v15, 0x40

    invoke-virtual {v9, v15}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v10

    .line 205
    .local v10, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 206
    .local v8, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_2

    iget-object v15, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_2

    iget-object v15, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/market2345/datacenter/AppsInfoHandler;->unNeedFilter(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 207
    new-instance v2, Lcom/market2345/model/InstalledApp;

    invoke-direct {v2}, Lcom/market2345/model/InstalledApp;-><init>()V

    .line 209
    .local v2, "appInfo":Lcom/market2345/model/InstalledApp;
    iget-object v3, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 210
    .local v3, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v15, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v15, v2, Lcom/market2345/model/InstalledApp;->uid:I

    .line 211
    invoke-virtual {v3, v9}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/market2345/model/InstalledApp;->appName:Ljava/lang/String;

    .line 213
    iget-object v15, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v15, :cond_3

    iget-object v15, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_2
    iput-object v15, v2, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    .line 215
    iget v15, v8, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v15, v2, Lcom/market2345/model/InstalledApp;->versionCode:I

    .line 217
    iget-object v15, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v15, v2, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    .line 219
    iget v15, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v15, v2, Lcom/market2345/model/InstalledApp;->flags:I

    .line 221
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x8

    move/from16 v0, v16

    if-gt v15, v0, :cond_4

    .line 222
    new-instance v15, Ljava/io/File;

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/market2345/model/InstalledApp;->lastUpdateTime:J

    .line 228
    :goto_3
    new-instance v15, Ljava/util/HashSet;

    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    iput-object v15, v2, Lcom/market2345/model/InstalledApp;->signatures:Ljava/util/HashSet;

    .line 230
    iget-object v15, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v15, :cond_5

    .line 231
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4
    iget-object v15, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v15, v15

    if-ge v5, v15, :cond_5

    .line 232
    iget-object v15, v8, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v15, v15, v5

    invoke-virtual {v15}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/market2345/datacenter/AppsInfoHandler;->parseSignature([B)Ljava/lang/String;

    move-result-object v12

    .line 233
    .local v12, "str":Ljava/lang/String;
    iget-object v15, v2, Lcom/market2345/model/InstalledApp;->signatures:Ljava/util/HashSet;

    invoke-virtual {v15, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 213
    .end local v5    # "i":I
    .end local v12    # "str":Ljava/lang/String;
    :cond_3
    const-string v15, ""

    goto :goto_2

    .line 224
    :cond_4
    iget-wide v0, v8, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/market2345/model/InstalledApp;->lastUpdateTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 189
    .end local v2    # "appInfo":Lcom/market2345/model/InstalledApp;
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "installed":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v9    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v10    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v13    # "sysInstalled":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    .end local v14    # "userInstalled":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 237
    .restart local v2    # "appInfo":Lcom/market2345/model/InstalledApp;
    .restart local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "installed":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    .restart local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v9    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v10    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v13    # "sysInstalled":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    .restart local v14    # "userInstalled":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    :cond_5
    :try_start_2
    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 238
    .local v4, "dir":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 239
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v11, "sourceFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 241
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v2, Lcom/market2345/model/InstalledApp;->totalFileSize:J

    .line 243
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v15

    iget-wide v0, v2, Lcom/market2345/model/InstalledApp;->totalFileSize:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v2, Lcom/market2345/model/InstalledApp;->size:Ljava/lang/String;

    .line 245
    :cond_6
    iput-object v4, v2, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    .line 246
    const-string v15, "/system/app"

    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_7

    const-string v15, "/data/app"

    invoke-virtual {v4, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    :cond_7
    const/4 v15, 0x0

    :goto_5
    iput v15, v2, Lcom/market2345/model/InstalledApp;->store:I

    .line 249
    .end local v11    # "sourceFile":Ljava/io/File;
    :cond_8
    iget v15, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v15, v15, 0x1

    if-nez v15, :cond_a

    .line 250
    const/4 v15, 0x1

    iput v15, v2, Lcom/market2345/model/InstalledApp;->flag:I

    .line 251
    iget-object v15, v2, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :goto_6
    iget-object v15, v2, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v15, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 246
    .restart local v11    # "sourceFile":Ljava/io/File;
    :cond_9
    const/4 v15, 0x1

    goto :goto_5

    .line 253
    .end local v11    # "sourceFile":Ljava/io/File;
    :cond_a
    const/4 v15, 0x0

    iput v15, v2, Lcom/market2345/model/InstalledApp;->flag:I

    .line 254
    iget-object v15, v2, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v15, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 260
    .end local v2    # "appInfo":Lcom/market2345/model/InstalledApp;
    .end local v3    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "dir":Ljava/lang/String;
    .end local v8    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/market2345/datacenter/AppsInfoHandler;->setSysInstalledApps(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 261
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/market2345/datacenter/AppsInfoHandler;->setUserInstalledApps(Ljava/util/concurrent/ConcurrentHashMap;)V

    .line 262
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/market2345/datacenter/AppsInfoHandler;->setAllInstalledApps(Ljava/util/concurrent/ConcurrentHashMap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private parseSignature([B)Ljava/lang/String;
    .locals 6
    .param p1, "signature"    # [B

    .prologue
    .line 292
    :try_start_0
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 293
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 294
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 295
    .local v3, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 296
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/market2345/datacenter/AppsInfoHandler;->bytesToHexString([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 303
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    .end local v3    # "md5":Ljava/security/MessageDigest;
    :goto_0
    return-object v4

    .line 298
    :catch_0
    move-exception v2

    .line 299
    .local v2, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->printStackTrace()V

    .line 303
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 300
    :catch_1
    move-exception v2

    .line 301
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method private setAllInstalledApps(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/InstalledApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, "installedApps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    iput-object p1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 176
    return-void
.end method

.method private setSysInstalledApps(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/InstalledApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "sysInstalledApps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    iput-object p1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mSysInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 180
    return-void
.end method

.method private setUserInstalledApps(Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/InstalledApp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p1, "userInstalledApps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    iput-object p1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUserInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 184
    return-void
.end method

.method private unNeedFilter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 270
    sget-object v0, Lcom/market2345/datacenter/AppsInfoHandler;->filterSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addInstalledApp(Ljava/lang/String;Lcom/market2345/model/InstalledApp;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "installedApp"    # Lcom/market2345/model/InstalledApp;

    .prologue
    .line 395
    if-eqz p2, :cond_0

    .line 396
    iget v1, p2, Lcom/market2345/model/InstalledApp;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    .line 397
    const/4 v1, 0x1

    iput v1, p2, Lcom/market2345/model/InstalledApp;->flag:I

    .line 398
    invoke-virtual {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->getUserInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :goto_0
    invoke-virtual {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 406
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 407
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 409
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 400
    :cond_1
    const/4 v1, 0x0

    iput v1, p2, Lcom/market2345/model/InstalledApp;->flag:I

    .line 401
    invoke-virtual {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->getSysInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public checkInupdatelist(Ljava/lang/String;Z)Lcom/market2345/model/App;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "second"    # Z

    .prologue
    const/4 v0, 0x0

    .line 622
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    monitor-enter v1

    .line 623
    :try_start_0
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 624
    monitor-exit v1

    .line 630
    :goto_0
    return-object v0

    .line 626
    :cond_0
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 627
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    monitor-exit v1

    goto :goto_0

    .line 631
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 630
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public checkInupdatelist(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 609
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    monitor-enter v1

    .line 610
    :try_start_0
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 611
    monitor-exit v1

    .line 617
    :goto_0
    return v0

    .line 613
    :cond_0
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 614
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 618
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 617
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method checkInupdatelistForInstall(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 585
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    monitor-enter v1

    .line 586
    :try_start_0
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    if-nez v2, :cond_0

    .line 587
    monitor-exit v1

    .line 593
    :goto_0
    return v0

    .line 589
    :cond_0
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 590
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 593
    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public checkIsHasInatall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 436
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getIgnoreNumber()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->ignoreNumber:I

    return v0
.end method

.method getIgnoreUpdateList()Ljava/util/HashMap;
    .locals 2
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
    .line 541
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    monitor-enter v1

    .line 542
    :try_start_0
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mIgnoreUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 543
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;
    .locals 18
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 317
    const/4 v8, 0x0

    .line 390
    :cond_0
    :goto_0
    return-object v8

    .line 320
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/datacenter/AppsInfoHandler;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/market2345/model/InstalledApp;

    .line 322
    .local v8, "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v8, :cond_0

    .line 328
    :try_start_0
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v14

    invoke-virtual {v14}, Lcom/market2345/MarketApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 330
    .local v11, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v14, 0x40

    move-object/from16 v0, p1

    invoke-virtual {v11, v0, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    .line 332
    .local v10, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v10, :cond_7

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v14, :cond_7

    .line 333
    new-instance v9, Lcom/market2345/model/InstalledApp;

    invoke-direct {v9}, Lcom/market2345/model/InstalledApp;-><init>()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 335
    .end local v8    # "installedApp":Lcom/market2345/model/InstalledApp;
    .local v9, "installedApp":Lcom/market2345/model/InstalledApp;
    :try_start_1
    iget-object v2, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 337
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v11}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/market2345/model/InstalledApp;->appName:Ljava/lang/String;

    .line 339
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v14, :cond_2

    iget-object v14, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    iput-object v14, v9, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    .line 341
    iget v14, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v14, v9, Lcom/market2345/model/InstalledApp;->versionCode:I

    .line 343
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iput-object v14, v9, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    .line 345
    iget v14, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v14, v9, Lcom/market2345/model/InstalledApp;->flags:I

    .line 347
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    iput-object v14, v9, Lcom/market2345/model/InstalledApp;->signatures:Ljava/util/HashSet;

    .line 349
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v14, :cond_3

    .line 350
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v14, v14

    if-ge v7, v14, :cond_3

    .line 351
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v14, v14, v7

    invoke-virtual {v14}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/market2345/datacenter/AppsInfoHandler;->parseSignature([B)Ljava/lang/String;

    move-result-object v13

    .line 352
    .local v13, "str":Ljava/lang/String;
    iget-object v14, v9, Lcom/market2345/model/InstalledApp;->signatures:Ljava/util/HashSet;

    invoke-virtual {v14, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 339
    .end local v7    # "i":I
    .end local v13    # "str":Ljava/lang/String;
    :cond_2
    const-string v14, ""
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 357
    :cond_3
    const/4 v3, 0x0

    .line 359
    .local v3, "canMove":I
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-string v15, "installLocation"

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 360
    .local v6, "field":Ljava/lang/reflect/Field;
    const/4 v14, 0x1

    invoke-virtual {v6, v14}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 361
    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    .line 365
    .end local v6    # "field":Ljava/lang/reflect/Field;
    :goto_3
    :try_start_3
    iput v3, v9, Lcom/market2345/model/InstalledApp;->canMove:I

    .line 366
    const/4 v14, 0x1

    iput-boolean v14, v9, Lcom/market2345/model/InstalledApp;->isCanMoveGeted:Z

    .line 368
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x8

    if-gt v14, v15, :cond_8

    .line 369
    new-instance v14, Ljava/io/File;

    iget-object v15, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    iput-wide v14, v9, Lcom/market2345/model/InstalledApp;->lastUpdateTime:J

    .line 374
    :goto_4
    iget-object v14, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v14, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 375
    .local v4, "dir":Ljava/lang/String;
    if-eqz v4, :cond_6

    .line 376
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v12, "sourceFile":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 378
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v14

    iput-wide v14, v9, Lcom/market2345/model/InstalledApp;->totalFileSize:J

    .line 379
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v14

    iget-wide v0, v9, Lcom/market2345/model/InstalledApp;->totalFileSize:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lcom/market2345/model/InstalledApp;->size:Ljava/lang/String;

    .line 381
    :cond_4
    iput-object v4, v9, Lcom/market2345/model/InstalledApp;->storeLocation:Ljava/lang/String;

    .line 382
    const-string v14, "/system/app"

    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    const-string v14, "/data/app"

    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_5
    const/4 v14, 0x0

    :goto_5
    iput v14, v9, Lcom/market2345/model/InstalledApp;->store:I

    .end local v12    # "sourceFile":Ljava/io/File;
    :cond_6
    move-object v8, v9

    .line 384
    goto/16 :goto_0

    .line 362
    .end local v4    # "dir":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 363
    .local v5, "e":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 387
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "canMove":I
    .end local v5    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v14

    move-object v8, v9

    .line 390
    .end local v9    # "installedApp":Lcom/market2345/model/InstalledApp;
    .end local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v8    # "installedApp":Lcom/market2345/model/InstalledApp;
    :cond_7
    :goto_6
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 371
    .end local v8    # "installedApp":Lcom/market2345/model/InstalledApp;
    .restart local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "canMove":I
    .restart local v9    # "installedApp":Lcom/market2345/model/InstalledApp;
    .restart local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v11    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_8
    iget-wide v14, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v14, v9, Lcom/market2345/model/InstalledApp;->lastUpdateTime:J
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 382
    .restart local v4    # "dir":Ljava/lang/String;
    .restart local v12    # "sourceFile":Ljava/io/File;
    :cond_9
    const/4 v14, 0x1

    goto :goto_5

    .line 387
    .end local v2    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "canMove":I
    .end local v4    # "dir":Ljava/lang/String;
    .end local v9    # "installedApp":Lcom/market2345/model/InstalledApp;
    .end local v10    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v11    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v12    # "sourceFile":Ljava/io/File;
    .restart local v8    # "installedApp":Lcom/market2345/model/InstalledApp;
    :catch_2
    move-exception v14

    goto :goto_6
.end method

.method public getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 2
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
    .line 136
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    .line 137
    const-class v1, Lcom/market2345/datacenter/AppsInfoHandler;

    monitor-enter v1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->loadInstalledApps()V

    .line 141
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0

    .line 141
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
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
    .line 152
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mSysInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->loadInstalledApps()V

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mSysInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getUpdateApp(Ljava/lang/String;)Lcom/market2345/model/App;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 599
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    monitor-enter v1

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    monitor-exit v1

    .line 604
    :goto_0
    return-object v0

    .line 603
    :cond_0
    monitor-exit v1

    .line 604
    const/4 v0, 0x0

    goto :goto_0

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getUpdateAppsListController()Lcom/market2345/blackandwhite/UpdateAppsListController;
    .locals 1

    .prologue
    .line 441
    invoke-direct {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->createUpdateAppsList()V

    .line 442
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->listController:Lcom/market2345/blackandwhite/UpdateAppsListController;

    return-object v0
.end method

.method getUpdateList()Ljava/util/HashMap;
    .locals 2
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
    .line 535
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    monitor-enter v1

    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getUpgradeNumber()I
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->upgradeNumber:I

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
    .line 164
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUserInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->loadInstalledApps()V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUserInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method ignoreApp(Lcom/market2345/model/App;)Z
    .locals 5
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 496
    iget-object v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    monitor-enter v3

    .line 497
    :try_start_0
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->listController:Lcom/market2345/blackandwhite/UpdateAppsListController;

    invoke-static {p1}, Lcom/market2345/blackandwhite/model/AppBAWLocal;->createFromApp(Lcom/market2345/model/App;)Lcom/market2345/blackandwhite/model/AppBAWLocal;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/market2345/blackandwhite/UpdateAppsListController;->addToBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    .line 498
    .local v0, "done":Z
    if-eqz v0, :cond_0

    .line 499
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mIgnoreUpdateApps:Ljava/util/HashMap;

    iget-object v4, p1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iput v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->upgradeNumber:I

    .line 502
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mIgnoreUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iput v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->ignoreNumber:I

    .line 503
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 504
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 505
    iget v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->upgradeNumber:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 506
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 509
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    monitor-exit v3

    return v0

    .line 510
    .end local v0    # "done":Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public isLianMengApk(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 112
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mLianMengApk:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mLianMengApk:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.service.usbhelper"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public lianMengApkSize()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mLianMengApk:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 127
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mLianMengApk:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method removeInstalledApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    invoke-virtual {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->getSysInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->getUserInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 416
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 417
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 418
    return-void
.end method

.method removeUpdateApp(Lcom/market2345/model/App;)V
    .locals 4
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 484
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    monitor-enter v2

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iput v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->upgradeNumber:I

    .line 487
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 488
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 489
    iget v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->upgradeNumber:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 490
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 491
    monitor-exit v2

    .line 492
    return-void

    .line 491
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeUpdatedApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 462
    iget-object v2, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    monitor-enter v2

    .line 463
    :try_start_0
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_0
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    iput v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->upgradeNumber:I

    .line 469
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 470
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 471
    iget v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->upgradeNumber:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 472
    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 473
    monitor-exit v2

    .line 474
    return-void

    .line 473
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setUpdateList(Ljava/util/HashMap;)V
    .locals 6
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
    .line 549
    .local p1, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 551
    .local v2, "partialApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    iget-object v4, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    monitor-enter v4

    .line 552
    :try_start_0
    iget-object v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 553
    if-eqz p1, :cond_1

    .line 554
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 555
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    iget-object v5, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-direct {p0, v0}, Lcom/market2345/datacenter/AppsInfoHandler;->downPartial(Lcom/market2345/model/App;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 557
    iget-object v3, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 561
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 562
    new-instance v3, Lcom/market2345/datacenter/AppsInfoHandler$1;

    invoke-direct {v3, p0, v2}, Lcom/market2345/datacenter/AppsInfoHandler$1;-><init>(Lcom/market2345/datacenter/AppsInfoHandler;Ljava/util/HashMap;)V

    invoke-virtual {v3}, Lcom/market2345/datacenter/AppsInfoHandler$1;->start()V

    .line 569
    invoke-direct {p0}, Lcom/market2345/datacenter/AppsInfoHandler;->changeUpdateApps()V

    .line 571
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
    .line 108
    .local p1, "mLianMengApk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mLianMengApk:Ljava/util/ArrayList;

    .line 109
    return-void
.end method

.method unIgnoreApp(Lcom/market2345/model/App;)Z
    .locals 8
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 514
    iget-object v4, p0, Lcom/market2345/datacenter/AppsInfoHandler;->updateAppLock:Ljava/lang/Object;

    monitor-enter v4

    .line 515
    :try_start_0
    iget-object v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->listController:Lcom/market2345/blackandwhite/UpdateAppsListController;

    invoke-static {p1}, Lcom/market2345/blackandwhite/model/AppBAWLocal;->createFromApp(Lcom/market2345/model/App;)Lcom/market2345/blackandwhite/model/AppBAWLocal;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/market2345/blackandwhite/UpdateAppsListController;->removeFromBlackList(Lcom/market2345/blackandwhite/model/AppBAWLocal;)Z

    move-result v0

    .line 516
    .local v0, "done":Z
    if-eqz v0, :cond_0

    .line 518
    iget-object v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mIgnoreUpdateApps:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    iget-object v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    iget-object v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mIgnoreUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iput v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->ignoreNumber:I

    .line 521
    iget-object v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iput v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->upgradeNumber:I

    .line 522
    iget-object v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 523
    .local v1, "msg":Landroid/os/Message;
    iget v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->ignoreNumber:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 524
    iget-object v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 525
    iget-object v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 526
    .local v2, "msg1":Landroid/os/Message;
    iget v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->upgradeNumber:I

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 527
    iget-object v3, p0, Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 530
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "msg1":Landroid/os/Message;
    :cond_0
    monitor-exit v4

    return v0

    .line 531
    .end local v0    # "done":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
