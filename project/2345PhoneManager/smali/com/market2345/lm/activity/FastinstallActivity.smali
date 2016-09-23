.class public Lcom/market2345/lm/activity/FastinstallActivity;
.super Landroid/app/Activity;
.source "FastinstallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
.implements Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;


# instance fields
.field private adapter:Lcom/market2345/lm/activity/FastAdapter;

.field private canSelect:I

.field private data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/lm/bean/UnionAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private loading:Landroid/view/View;

.field private lsvFooterTextView:Landroid/widget/TextView;

.field private mInstallBtn:Landroid/widget/TextView;

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

.field private mList:Landroid/widget/ListView;

.field private mNodata:Landroid/view/View;

.field private mProgress:Landroid/view/View;

.field private mRecommend:Landroid/widget/ImageView;

.field private mSelectAll:Landroid/widget/ImageView;

.field private mTitle:Landroid/widget/TextView;

.field private myDialog:Landroid/app/Dialog;

.field private packagesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private recommendAll:Z

.field private selectAll:Z

.field private selectNum:I

.field private totalNum:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mNodata:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mProgress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/lm/activity/FastinstallActivity;)Lcom/market2345/lm/activity/FastAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/market2345/lm/activity/FastinstallActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/market2345/lm/activity/FastinstallActivity;->setUserName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mRecommend:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/market2345/lm/activity/FastinstallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->isStatisticApkUnInstalled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/market2345/lm/activity/FastinstallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->installStatisticApk()V

    return-void
.end method

.method static synthetic access$1500(Lcom/market2345/lm/activity/FastinstallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->checkStatisticInstalled()V

    return-void
.end method

.method static synthetic access$1600(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->myDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/market2345/lm/activity/FastinstallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->installAll()V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/lm/activity/FastinstallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getUnionApps()V

    return-void
.end method

.method static synthetic access$300(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->loading:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/lm/activity/FastinstallActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/lm/activity/FastinstallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->showError()V

    return-void
.end method

.method static synthetic access$600(Lcom/market2345/lm/activity/FastinstallActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->packagesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/market2345/lm/activity/FastinstallActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->packagesMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$700(Lcom/market2345/lm/activity/FastinstallActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->recommendAll:Z

    return v0
.end method

.method static synthetic access$702(Lcom/market2345/lm/activity/FastinstallActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->recommendAll:Z

    return p1
.end method

.method static synthetic access$800(Lcom/market2345/lm/activity/FastinstallActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$902(Lcom/market2345/lm/activity/FastinstallActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastinstallActivity;
    .param p1, "x1"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->totalNum:I

    return p1
.end method

.method private checkStatisticInstalled()V
    .locals 1

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->isStatisticApkUnInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    new-instance v0, Lcom/market2345/lm/activity/FastinstallActivity$6;

    invoke-direct {v0, p0}, Lcom/market2345/lm/activity/FastinstallActivity$6;-><init>(Lcom/market2345/lm/activity/FastinstallActivity;)V

    invoke-virtual {v0}, Lcom/market2345/lm/activity/FastinstallActivity$6;->start()V

    .line 427
    :cond_0
    return-void
.end method

.method private disselectAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 322
    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 324
    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 326
    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/bean/UnionAppInfo;

    .line 328
    .local v1, "info":Lcom/market2345/lm/bean/UnionAppInfo;
    iput-boolean v3, v1, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    goto :goto_0

    .line 330
    .end local v1    # "info":Lcom/market2345/lm/bean/UnionAppInfo;
    :cond_0
    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    if-eqz v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    invoke-virtual {v2}, Lcom/market2345/lm/activity/FastAdapter;->initDataFromSession()V

    .line 333
    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    invoke-virtual {v2}, Lcom/market2345/lm/activity/FastAdapter;->notifyDataSetChanged()V

    .line 334
    invoke-virtual {p0, v3}, Lcom/market2345/lm/activity/FastinstallActivity;->updateSelectNum(Z)V

    .line 339
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private getUnionApps()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/market2345/lm/activity/FastinstallActivity$3;

    invoke-direct {v0, p0}, Lcom/market2345/lm/activity/FastinstallActivity$3;-><init>(Lcom/market2345/lm/activity/FastinstallActivity;)V

    invoke-static {p0, v0}, Lcom/market2345/http/MarketAPI;->getUnionApps(Landroid/content/Context;Lcom/market2345/httpnew/HttpCallback;)V

    .line 246
    return-void
.end method

.method private installAll()V
    .locals 8

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 354
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->isStatisticApkUnInstalled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 355
    iget-object v4, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mList:Landroid/widget/ListView;

    new-instance v5, Lcom/market2345/lm/activity/FastinstallActivity$4;

    invoke-direct {v5, p0}, Lcom/market2345/lm/activity/FastinstallActivity$4;-><init>(Lcom/market2345/lm/activity/FastinstallActivity;)V

    const-wide/16 v6, 0xbb8

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 365
    :cond_0
    invoke-static {p0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v1

    .line 366
    .local v1, "downloadManager":Lcom/market2345/download/DownloadManager;
    iget-object v4, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    if-eqz v4, :cond_4

    .line 368
    iget-object v4, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 370
    iget-object v4, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/lm/bean/UnionAppInfo;

    .line 373
    .local v3, "info":Lcom/market2345/lm/bean/UnionAppInfo;
    iget-object v4, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 374
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/market2345/lm/bean/UnionAppInfo;->setUrl(Ljava/lang/String;)V

    .line 376
    :cond_2
    iget-boolean v4, v3, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 378
    :cond_3
    new-instance v0, Lcom/market2345/model/App;

    invoke-direct {v0}, Lcom/market2345/model/App;-><init>()V

    .line 379
    .local v0, "app":Lcom/market2345/model/App;
    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/market2345/model/App;->sid:I

    .line 380
    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    .line 381
    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    .line 382
    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getSoftname()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/market2345/model/App;->title:Ljava/lang/String;

    .line 383
    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getIconpath()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    .line 384
    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/market2345/model/App;->version:Ljava/lang/String;

    .line 385
    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getVersionCode()I

    move-result v4

    iput v4, v0, Lcom/market2345/model/App;->versionCode:I

    .line 386
    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getSize()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    .line 387
    const/4 v4, 0x2

    iput v4, v0, Lcom/market2345/model/App;->mSourceFrom:I

    .line 388
    invoke-static {p0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v0, v5}, Lcom/market2345/download/DownloadManager;->startSingleIfReady(Landroid/app/Activity;Lcom/market2345/model/App;Z)V

    goto :goto_0

    .line 393
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/market2345/lm/bean/UnionAppInfo;
    :cond_4
    return-void
.end method

.method private installStatisticApk()V
    .locals 8

    .prologue
    const/16 v6, 0x100

    .line 396
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "statistics.apk"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 397
    .local v2, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 398
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 400
    :try_start_0
    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x100

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/market2345/common/util/Utils;->releaseStatisticsApk(Landroid/content/pm/PackageInfo;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :cond_0
    :goto_0
    invoke-static {p0, v2}, Lcom/market2345/download/util/PackageUtils;->installNormal(Landroid/content/Context;Ljava/lang/String;)Z

    .line 407
    iget-object v3, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mList:Landroid/widget/ListView;

    new-instance v4, Lcom/market2345/lm/activity/FastinstallActivity$5;

    invoke-direct {v4, p0}, Lcom/market2345/lm/activity/FastinstallActivity$5;-><init>(Lcom/market2345/lm/activity/FastinstallActivity;)V

    const-wide/32 v6, 0xafc8

    invoke-virtual {v3, v4, v6, v7}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 413
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private isStatisticApkUnInstalled()Z
    .locals 2

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    const-string v1, "com.service.usbhelper"

    invoke-virtual {v0, v1}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private selectAll()V
    .locals 3

    .prologue
    .line 464
    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 466
    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 468
    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/bean/UnionAppInfo;

    .line 470
    .local v1, "info":Lcom/market2345/lm/bean/UnionAppInfo;
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    goto :goto_0

    .line 472
    .end local v1    # "info":Lcom/market2345/lm/bean/UnionAppInfo;
    :cond_0
    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    invoke-virtual {v2}, Lcom/market2345/lm/activity/FastAdapter;->initDataFromSession()V

    .line 475
    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    invoke-virtual {v2}, Lcom/market2345/lm/activity/FastAdapter;->notifyDataSetChanged()V

    .line 476
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/market2345/lm/activity/FastinstallActivity;->updateSelectNum(Z)V

    .line 480
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private selectRecommendAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 485
    iget-object v3, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 487
    iget-object v3, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 489
    iget-object v3, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/lm/bean/UnionAppInfo;

    .line 491
    .local v2, "info":Lcom/market2345/lm/bean/UnionAppInfo;
    invoke-virtual {v2}, Lcom/market2345/lm/bean/UnionAppInfo;->getId()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "id":Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/lm/activity/FastinstallActivity;->packagesMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    goto :goto_0

    .line 498
    :cond_0
    iput-boolean v4, v2, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    goto :goto_0

    .line 501
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "info":Lcom/market2345/lm/bean/UnionAppInfo;
    :cond_1
    iget-object v3, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    if-eqz v3, :cond_2

    .line 503
    iget-object v3, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    invoke-virtual {v3}, Lcom/market2345/lm/activity/FastAdapter;->initDataFromSession()V

    .line 504
    iget-object v3, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    invoke-virtual {v3}, Lcom/market2345/lm/activity/FastAdapter;->notifyDataSetChanged()V

    .line 505
    invoke-virtual {p0, v4}, Lcom/market2345/lm/activity/FastinstallActivity;->updateSelectNum(Z)V

    .line 509
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private setUserName(Ljava/lang/String;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 545
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 547
    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 548
    .local v0, "str":Ljava/lang/String;
    const-string v1, "USERNAME"

    invoke-static {v0, v1, p1}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->lsvFooterTextView:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 551
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private showConfirm(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 433
    new-instance v1, Landroid/app/Dialog;

    const v2, 0x7f0c0012

    invoke-direct {v1, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->myDialog:Landroid/app/Dialog;

    .line 434
    new-instance v0, Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-direct {v0, p0}, Lcom/market2345/customview/DialogSimpleTitleMessageView;-><init>(Landroid/content/Context;)V

    .line 435
    .local v0, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v0, v1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 436
    const-string v1, "\u60a8\u5f53\u524d\u5904\u4e8e\u975ewifi\u7f51\u7edc\u73af\u5883\uff0c\u786e\u5b9a\u7ee7\u7eed\u4e0b\u8f7d?"

    invoke-virtual {v0, v1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setMessage(Ljava/lang/CharSequence;)V

    .line 437
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/market2345/lm/activity/FastinstallActivity$7;

    invoke-direct {v2, p0}, Lcom/market2345/lm/activity/FastinstallActivity$7;-><init>(Lcom/market2345/lm/activity/FastinstallActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 447
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/market2345/lm/activity/FastinstallActivity$8;

    invoke-direct {v2, p0}, Lcom/market2345/lm/activity/FastinstallActivity$8;-><init>(Lcom/market2345/lm/activity/FastinstallActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 456
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->myDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 457
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->myDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 458
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->myDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 459
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->myDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 460
    return-void
.end method

.method private showError()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 626
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 627
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mProgress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 629
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mNodata:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 630
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 250
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/market2345/lm/activity/FastinstallActivity;->setResult(I)V

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 252
    return-void
.end method

.method public onChange()V
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/lm/activity/FastinstallActivity;->updateSelectNum(Z)V

    .line 637
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const v4, 0x7f020189

    const/4 v3, 0x1

    const v2, 0x7f020193

    const/4 v1, 0x0

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 318
    :goto_0
    return-void

    .line 261
    :sswitch_0
    const-string v0, "Union_All"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 263
    iget-boolean v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectAll:Z

    if-eqz v0, :cond_0

    .line 265
    iput-boolean v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectAll:Z

    .line 266
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->disselectAll()V

    .line 267
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 271
    :cond_0
    iput-boolean v3, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectAll:Z

    .line 272
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->selectAll()V

    .line 273
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    iput-boolean v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->recommendAll:Z

    .line 276
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mRecommend:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 280
    :sswitch_1
    const-string v0, "Union_Recommend"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->recommendAll:Z

    if-eqz v0, :cond_1

    .line 284
    iput-boolean v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->recommendAll:Z

    .line 285
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->disselectAll()V

    .line 286
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mRecommend:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 290
    :cond_1
    iput-boolean v3, p0, Lcom/market2345/lm/activity/FastinstallActivity;->recommendAll:Z

    .line 291
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->selectRecommendAll()V

    .line 292
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mRecommend:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 294
    iput-boolean v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectAll:Z

    .line 295
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 300
    :sswitch_2
    const-string v0, "Union_1KeyInstall"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/common/util/NetworkUtils;->isWifiNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 304
    invoke-direct {p0, v1}, Lcom/market2345/lm/activity/FastinstallActivity;->showConfirm(I)V

    goto :goto_0

    .line 308
    :cond_2
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->installAll()V

    goto :goto_0

    .line 312
    :sswitch_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/market2345/lm/activity/FastinstallActivity;->setResult(I)V

    .line 313
    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->finish()V

    goto :goto_0

    .line 257
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090051 -> :sswitch_3
        0x7f09024a -> :sswitch_0
        0x7f09024b -> :sswitch_0
        0x7f09024c -> :sswitch_1
        0x7f090250 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v1, 0x7f030056

    invoke-virtual {p0, v1}, Lcom/market2345/lm/activity/FastinstallActivity;->setContentView(I)V

    .line 106
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 107
    const v1, 0x7f09024a

    invoke-virtual {p0, v1}, Lcom/market2345/lm/activity/FastinstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mSelectAll:Landroid/widget/ImageView;

    .line 108
    const v1, 0x7f09024c

    invoke-virtual {p0, v1}, Lcom/market2345/lm/activity/FastinstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mRecommend:Landroid/widget/ImageView;

    .line 109
    const v1, 0x7f090249

    invoke-virtual {p0, v1}, Lcom/market2345/lm/activity/FastinstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mTitle:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mRecommend:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f09024b

    invoke-virtual {p0, v1}, Lcom/market2345/lm/activity/FastinstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v1, 0x7f090250

    invoke-virtual {p0, v1}, Lcom/market2345/lm/activity/FastinstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mInstallBtn:Landroid/widget/TextView;

    .line 114
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mInstallBtn:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v1, 0x7f090051

    invoke-virtual {p0, v1}, Lcom/market2345/lm/activity/FastinstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    .line 117
    const v1, 0x7f090252

    invoke-virtual {p0, v1}, Lcom/market2345/lm/activity/FastinstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mList:Landroid/widget/ListView;

    .line 118
    new-instance v1, Lcom/market2345/lm/activity/FastAdapter;

    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    invoke-direct {v1, p0, v4, v2}, Lcom/market2345/lm/activity/FastAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    .line 119
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    invoke-virtual {v1, p0}, Lcom/market2345/lm/activity/FastAdapter;->setOnchangeListener(Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;)V

    .line 120
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030057

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, "footerView":Landroid/view/View;
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 122
    const v1, 0x7f090253

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->lsvFooterTextView:Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/market2345/lm/activity/FastinstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->loading:Landroid/view/View;

    .line 125
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->loading:Landroid/view/View;

    const v2, 0x7f09012b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mNodata:Landroid/view/View;

    .line 126
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->loading:Landroid/view/View;

    const v2, 0x7f09012a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mProgress:Landroid/view/View;

    .line 127
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mProgress:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mNodata:Landroid/view/View;

    new-instance v2, Lcom/market2345/lm/activity/FastinstallActivity$1;

    invoke-direct {v2, p0}, Lcom/market2345/lm/activity/FastinstallActivity$1;-><init>(Lcom/market2345/lm/activity/FastinstallActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v1, 0x7f09012d

    invoke-virtual {p0, v1}, Lcom/market2345/lm/activity/FastinstallActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/market2345/lm/activity/FastinstallActivity$2;

    invoke-direct {v2, p0}, Lcom/market2345/lm/activity/FastinstallActivity$2;-><init>(Lcom/market2345/lm/activity/FastinstallActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getUnionApps()V

    .line 152
    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/lm/activity/AppInstallReportUtil;->reportUnReportedLog(Landroid/content/Context;)V

    .line 153
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 618
    sget-object v0, Lcom/market2345/lm/util/GlobalParams;->BASE_URL_GETLIST:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 620
    invoke-direct {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->showError()V

    .line 622
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 514
    sget-object v4, Lcom/market2345/lm/util/GlobalParams;->BASE_URL_GETUSERNAME:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 516
    if-nez p2, :cond_1

    .line 518
    const-string v4, ""

    invoke-direct {p0, v4}, Lcom/market2345/lm/activity/FastinstallActivity;->setUserName(Ljava/lang/String;)V

    .line 538
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, p2

    .line 522
    check-cast v1, Ljava/lang/String;

    .line 526
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string v4, "GBK"

    invoke-static {v1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "strGBK":Ljava/lang/String;
    const-string v4, "utf-8"

    invoke-static {v2, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 528
    .local v3, "strUTF8":Ljava/lang/String;
    move-object v1, v3

    .line 534
    .end local v2    # "strGBK":Ljava/lang/String;
    .end local v3    # "strUTF8":Ljava/lang/String;
    :goto_1
    invoke-direct {p0, v1}, Lcom/market2345/lm/activity/FastinstallActivity;->setUserName(Ljava/lang/String;)V

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    .line 532
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 1
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 641
    const-string v0, "pref.add.new.download"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity;->adapter:Lcom/market2345/lm/activity/FastAdapter;

    invoke-virtual {v0}, Lcom/market2345/lm/activity/FastAdapter;->notifyDataSetChanged()V

    .line 644
    :cond_0
    return-void
.end method

.method public updateSelectNum(Z)V
    .locals 11
    .param p1, "b"    # Z

    .prologue
    const/4 v10, 0x1

    const v9, 0x7f020193

    const/4 v8, 0x0

    .line 558
    iget-object v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 560
    iget-object v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 562
    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 563
    invoke-static {p0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/market2345/download/DownloadManager;->getDownloadInfos()Ljava/util/Map;

    move-result-object v0

    .line 564
    .local v0, "downloadInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/market2345/download/DownloadInfo;>;"
    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/market2345/datacenter/DataCenterObserver;->getUpdateList()Ljava/util/HashMap;

    move-result-object v4

    .line 565
    .local v4, "mUpdateApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    iput v8, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectNum:I

    .line 566
    iput v8, p0, Lcom/market2345/lm/activity/FastinstallActivity;->canSelect:I

    .line 567
    iget-object v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->data:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/lm/bean/UnionAppInfo;

    .line 569
    .local v3, "info":Lcom/market2345/lm/bean/UnionAppInfo;
    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/market2345/lm/bean/UnionAppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 575
    :cond_1
    iget v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->canSelect:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->canSelect:I

    .line 576
    iget-boolean v5, v3, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    if-eqz v5, :cond_0

    .line 578
    iget v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectNum:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectNum:I

    goto :goto_0

    .line 585
    .end local v0    # "downloadInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/market2345/download/DownloadInfo;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "info":Lcom/market2345/lm/bean/UnionAppInfo;
    .end local v4    # "mUpdateApps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/lm/activity/FastinstallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0075

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 586
    .local v1, "format":Ljava/lang/String;
    iget-object v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mTitle:Landroid/widget/TextView;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/market2345/lm/activity/FastinstallActivity;->totalNum:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget v7, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectNum:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    if-eqz p1, :cond_3

    .line 590
    iget v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectNum:I

    if-nez v5, :cond_4

    iget v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->canSelect:I

    if-eqz v5, :cond_4

    .line 592
    iput-boolean v8, p0, Lcom/market2345/lm/activity/FastinstallActivity;->recommendAll:Z

    .line 593
    iget-object v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mRecommend:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 595
    iput-boolean v8, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectAll:Z

    .line 597
    iget-object v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 613
    :cond_3
    :goto_1
    return-void

    .line 599
    :cond_4
    iget v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectNum:I

    iget v6, p0, Lcom/market2345/lm/activity/FastinstallActivity;->canSelect:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->canSelect:I

    if-eqz v5, :cond_5

    .line 601
    iget-boolean v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->recommendAll:Z

    if-nez v5, :cond_3

    .line 603
    iput-boolean v10, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectAll:Z

    .line 604
    iget-object v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mSelectAll:Landroid/widget/ImageView;

    const v6, 0x7f020189

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 607
    :cond_5
    iget v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectNum:I

    iget v6, p0, Lcom/market2345/lm/activity/FastinstallActivity;->canSelect:I

    if-ge v5, v6, :cond_3

    .line 609
    iput-boolean v8, p0, Lcom/market2345/lm/activity/FastinstallActivity;->selectAll:Z

    .line 610
    iget-object v5, p0, Lcom/market2345/lm/activity/FastinstallActivity;->mSelectAll:Landroid/widget/ImageView;

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method
