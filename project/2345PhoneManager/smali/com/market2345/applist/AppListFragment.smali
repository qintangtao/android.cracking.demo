.class public abstract Lcom/market2345/applist/AppListFragment;
.super Lcom/market2345/slidemenu/SlidingBaseFragment;
.source "AppListFragment.java"

# interfaces
.implements Lcom/market2345/applist/AppListAdapter$LazyloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/applist/AppListFragment$ConfirmData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

.field firstLoad:Z

.field private isLoadLocal:Z

.field private itemClick:Landroid/view/View$OnClickListener;

.field loadDelay:Z

.field private loading:Z

.field mDatas:Lcom/market2345/model/AppListDatas;

.field mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

.field mList:Landroid/widget/ListView;

.field mLoading:Landroid/view/View;

.field mNoData:Landroid/view/View;

.field mNoDataRetryButton:Landroid/widget/Button;

.field mProgress:Landroid/widget/ProgressBar;

.field recommendlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field specialAdapter:Lcom/market2345/applist/AppListAdapter;

.field supportTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/applist/AppListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/market2345/slidemenu/SlidingBaseFragment;-><init>()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/applist/AppListFragment;->firstLoad:Z

    .line 80
    iput-boolean v1, p0, Lcom/market2345/applist/AppListFragment;->loadDelay:Z

    .line 82
    iput-boolean v1, p0, Lcom/market2345/applist/AppListFragment;->loading:Z

    .line 84
    new-instance v0, Lcom/market2345/applist/AppListFragment$ConfirmData;

    invoke-direct {v0, p0}, Lcom/market2345/applist/AppListFragment$ConfirmData;-><init>(Lcom/market2345/applist/AppListFragment;)V

    iput-object v0, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    .line 86
    new-instance v0, Lcom/market2345/applist/AppListFragment$1;

    invoke-direct {v0, p0}, Lcom/market2345/applist/AppListFragment$1;-><init>(Lcom/market2345/applist/AppListFragment;)V

    iput-object v0, p0, Lcom/market2345/applist/AppListFragment;->itemClick:Landroid/view/View$OnClickListener;

    .line 348
    iput-boolean v1, p0, Lcom/market2345/applist/AppListFragment;->isLoadLocal:Z

    .line 493
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/applist/AppListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/applist/AppListFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;->loadData()V

    return-void
.end method

.method static synthetic access$102(Lcom/market2345/applist/AppListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/applist/AppListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/market2345/applist/AppListFragment;->loading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/market2345/applist/AppListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/applist/AppListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/market2345/applist/AppListFragment;->showError(I)V

    return-void
.end method

.method private initAdapter()V
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->specialAdapter:Lcom/market2345/applist/AppListAdapter;

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/applist/AppListFragment;->recommendlist:Ljava/util/ArrayList;

    .line 236
    new-instance v0, Lcom/market2345/applist/AppListAdapter;

    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/market2345/applist/AppListFragment;->recommendlist:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/market2345/applist/AppListAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v0, p0, Lcom/market2345/applist/AppListFragment;->specialAdapter:Lcom/market2345/applist/AppListAdapter;

    .line 237
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->specialAdapter:Lcom/market2345/applist/AppListAdapter;

    iget-object v1, p0, Lcom/market2345/applist/AppListFragment;->itemClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/market2345/applist/AppListAdapter;->setItemClick(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->specialAdapter:Lcom/market2345/applist/AppListAdapter;

    invoke-virtual {v0, p0}, Lcom/market2345/applist/AppListAdapter;->setmLazyloadListener(Lcom/market2345/applist/AppListAdapter$LazyloadListener;)V

    .line 239
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->specialAdapter:Lcom/market2345/applist/AppListAdapter;

    iget-object v1, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-boolean v1, v1, Lcom/market2345/applist/AppListFragment$ConfirmData;->showRankTag:Z

    invoke-virtual {v0, v1}, Lcom/market2345/applist/AppListAdapter;->setShowRankTag(Z)V

    .line 240
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->specialAdapter:Lcom/market2345/applist/AppListAdapter;

    iget-object v1, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-object v1, v1, Lcom/market2345/applist/AppListFragment$ConfirmData;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget v2, v2, Lcom/market2345/applist/AppListFragment$ConfirmData;->sort:I

    invoke-virtual {v0, v1, v2}, Lcom/market2345/applist/AppListAdapter;->setTypeAndSoft(Ljava/lang/String;I)V

    .line 241
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/applist/AppListFragment;->specialAdapter:Lcom/market2345/applist/AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    :cond_0
    return-void
.end method

.method private initDataLocal(Lcom/market2345/model/PageApp;)V
    .locals 11
    .param p1, "pageApp"    # Lcom/market2345/model/PageApp;

    .prologue
    const/4 v10, 0x0

    .line 372
    iget-object v6, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-boolean v6, v6, Lcom/market2345/applist/AppListFragment$ConfirmData;->ignoreInstalledApp:Z

    if-eqz v6, :cond_1

    .line 373
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    .line 374
    .local v1, "data":Lcom/market2345/datacenter/DataCenterObserver;
    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    .line 376
    .local v3, "installedApps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    iget-object v6, p1, Lcom/market2345/model/PageApp;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 377
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 379
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v6, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/model/InstalledApp;

    .line 381
    .local v2, "installApp":Lcom/market2345/model/InstalledApp;
    iget-object v6, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    iget v6, v2, Lcom/market2345/model/InstalledApp;->versionCode:I

    iget v7, v0, Lcom/market2345/model/App;->versionCode:I

    if-lt v6, v7, :cond_0

    .line 383
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyyMMdd"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 384
    .local v5, "sd":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    iget-wide v8, v2, Lcom/market2345/model/InstalledApp;->lastUpdateTime:J

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 385
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 391
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v1    # "data":Lcom/market2345/datacenter/DataCenterObserver;
    .end local v2    # "installApp":Lcom/market2345/model/InstalledApp;
    .end local v3    # "installedApps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    .end local v5    # "sd":Ljava/text/SimpleDateFormat;
    :cond_1
    iget-object v6, p0, Lcom/market2345/applist/AppListFragment;->recommendlist:Ljava/util/ArrayList;

    iget-object v7, p1, Lcom/market2345/model/PageApp;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 392
    iget-object v6, p0, Lcom/market2345/applist/AppListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 393
    iget-object v6, p0, Lcom/market2345/applist/AppListFragment;->mLoading:Landroid/view/View;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v6, p0, Lcom/market2345/applist/AppListFragment;->specialAdapter:Lcom/market2345/applist/AppListAdapter;

    invoke-virtual {v6}, Lcom/market2345/applist/AppListAdapter;->setProductList()V

    .line 395
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 396
    const/4 v6, 0x1

    invoke-virtual {p0, v10, v6, v10, v10}, Lcom/market2345/applist/AppListFragment;->changeVisiable(IIII)V

    .line 398
    :cond_2
    iget-object v6, p0, Lcom/market2345/applist/AppListFragment;->specialAdapter:Lcom/market2345/applist/AppListAdapter;

    invoke-virtual {v6}, Lcom/market2345/applist/AppListAdapter;->notifyDataSetChanged()V

    .line 399
    iget-object v6, p0, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v6}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    .line 400
    return-void
.end method

.method private initHttp()V
    .locals 2

    .prologue
    .line 246
    iget-object v1, p0, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v0

    .line 250
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0, v0}, Lcom/market2345/applist/AppListFragment;->setHttpCallback(Lcom/market2345/httpnew/HttpTransactionBuilder;)V

    .line 252
    invoke-virtual {v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    .line 255
    .end local v0    # "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    :cond_0
    return-void
.end method

.method private loadData()V
    .locals 1

    .prologue
    .line 222
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;->initHttp()V

    .line 223
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->isFastConnection()Z

    move-result v0

    if-nez v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->recommendlist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->recommendlist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;->loadLocalData()Z

    move-result v0

    if-nez v0, :cond_2

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 231
    :cond_2
    :goto_0
    return-void

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    goto :goto_0
.end method

.method private loadLocalData()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 351
    iget-boolean v5, p0, Lcom/market2345/applist/AppListFragment;->isLoadLocal:Z

    if-eqz v5, :cond_0

    .line 352
    iget-boolean v3, p0, Lcom/market2345/applist/AppListFragment;->isLoadLocal:Z

    .line 366
    :goto_0
    return v3

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->getCacheData()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 357
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 358
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v4, Lcom/market2345/model/PageApp;

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/model/PageApp;

    .line 359
    .local v2, "pageApp":Lcom/market2345/model/PageApp;
    invoke-direct {p0, v2}, Lcom/market2345/applist/AppListFragment;->initDataLocal(Lcom/market2345/model/PageApp;)V

    .line 360
    iput-boolean v3, p0, Lcom/market2345/applist/AppListFragment;->isLoadLocal:Z

    goto :goto_0

    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "pageApp":Lcom/market2345/model/PageApp;
    :cond_1
    move v3, v4

    .line 363
    goto :goto_0

    .end local v0    # "data":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 366
    goto :goto_0
.end method

.method private setHttpCallback(Lcom/market2345/httpnew/HttpTransactionBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/market2345/httpnew/HttpTransactionBuilder;

    .prologue
    .line 258
    const-class v0, Lcom/market2345/model/AppListDatas;

    invoke-virtual {p1, v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v0

    new-instance v1, Lcom/market2345/applist/AppListFragment$5;

    invoke-direct {v1, p0}, Lcom/market2345/applist/AppListFragment$5;-><init>(Lcom/market2345/applist/AppListFragment;)V

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 315
    return-void
.end method

.method private showError(I)V
    .locals 4
    .param p1, "currentPage"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 318
    if-ne p1, v2, :cond_2

    .line 319
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;->loadLocalData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mNoData:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    invoke-virtual {p0, v1, v2, v1, v1}, Lcom/market2345/applist/AppListFragment;->changeVisiable(IIII)V

    .line 326
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    goto :goto_0

    .line 331
    :cond_2
    invoke-virtual {p0, v2, v1, v1, v1}, Lcom/market2345/applist/AppListFragment;->changeVisiable(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public abstract confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragment$ConfirmData;)V
.end method

.method public abstract createHeaderView()Landroid/view/View;
.end method

.method public abstract createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;
.end method

.method public getCacheData()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 477
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-object v2, v2, Lcom/market2345/applist/AppListFragment$ConfirmData;->dataKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-object v2, v2, Lcom/market2345/applist/AppListFragment$ConfirmData;->timeKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 479
    .local v0, "preferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-object v2, v2, Lcom/market2345/applist/AppListFragment$ConfirmData;->dataKey:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 481
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-object v1
.end method

.method public getSupportTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->supportTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/applist/AppListFragment;->supportTag:Ljava/lang/String;

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->supportTag:Ljava/lang/String;

    return-object v0
.end method

.method public isEnd()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 405
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-nez v2, :cond_1

    move v0, v1

    .line 418
    :cond_0
    :goto_0
    return v0

    .line 408
    :cond_1
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v2}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 412
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    if-nez v2, :cond_2

    move v0, v1

    .line 413
    goto :goto_0

    .line 415
    :cond_2
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mRetry:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 416
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    invoke-virtual {v2}, Lcom/market2345/model/AppListDatas;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isLoadOver()Z
    .locals 1

    .prologue
    .line 436
    iget-boolean v0, p0, Lcom/market2345/applist/AppListFragment;->loading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lazyload()V
    .locals 2

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/market2345/applist/AppListFragment;->loading:Z

    if-eqz v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/applist/AppListFragment;->loading:Z

    .line 430
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;->loadData()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 203
    iget-boolean v0, p0, Lcom/market2345/applist/AppListFragment;->loadDelay:Z

    if-eqz v0, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;->loadData()V

    .line 207
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 145
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    invoke-virtual {p0, v2}, Lcom/market2345/applist/AppListFragment;->confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragment$ConfirmData;)V

    .line 146
    const v2, 0x7f030072

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 147
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f09015a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/market2345/applist/AppListFragment;->mList:Landroid/widget/ListView;

    .line 148
    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/applist/AppListFragment;->mLoading:Landroid/view/View;

    .line 149
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mRetry:Landroid/view/View;

    new-instance v3, Lcom/market2345/applist/AppListFragment$2;

    invoke-direct {v3, p0}, Lcom/market2345/applist/AppListFragment$2;-><init>(Lcom/market2345/applist/AppListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mLoadMore:Landroid/view/View;

    new-instance v3, Lcom/market2345/applist/AppListFragment$3;

    invoke-direct {v3, p0}, Lcom/market2345/applist/AppListFragment$3;-><init>(Lcom/market2345/applist/AppListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mLoading:Landroid/view/View;

    const v3, 0x7f09012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/market2345/applist/AppListFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 179
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 180
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->createHeaderView()Landroid/view/View;

    move-result-object v0

    .line 181
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 182
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 183
    :cond_0
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/market2345/applist/AppListFragment;->foot:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 184
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;->initAdapter()V

    .line 185
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v4, v4, v4}, Lcom/market2345/applist/AppListFragment;->changeVisiable(IIII)V

    .line 186
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mLoading:Landroid/view/View;

    const v3, 0x7f09012b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/applist/AppListFragment;->mNoData:Landroid/view/View;

    .line 187
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mNoData:Landroid/view/View;

    const v3, 0x7f09012d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/market2345/applist/AppListFragment;->mNoDataRetryButton:Landroid/widget/Button;

    .line 188
    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->mNoDataRetryButton:Landroid/widget/Button;

    new-instance v3, Lcom/market2345/applist/AppListFragment$4;

    invoke-direct {v3, p0}, Lcom/market2345/applist/AppListFragment$4;-><init>(Lcom/market2345/applist/AppListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    return-object v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 211
    invoke-super {p0}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onResume()V

    .line 213
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/BaseAdapter;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 219
    :cond_0
    return-void
.end method

.method public saveCacheData(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 467
    iget-object v1, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-object v1, v1, Lcom/market2345/applist/AppListFragment$ConfirmData;->dataKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-object v1, v1, Lcom/market2345/applist/AppListFragment$ConfirmData;->timeKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    iget-object v1, v1, Lcom/market2345/model/AppListDatas;->pageAppString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 470
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-object v2, v2, Lcom/market2345/applist/AppListFragment$ConfirmData;->dataKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    iget-object v3, v3, Lcom/market2345/model/AppListDatas;->pageAppString:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 471
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-object v2, v2, Lcom/market2345/applist/AppListFragment$ConfirmData;->timeKey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 474
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/market2345/applist/AppListFragment;->supportTag:Ljava/lang/String;

    .line 442
    return-void
.end method

.method public showSelf()V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    invoke-virtual {p0, v0}, Lcom/market2345/applist/AppListFragment;->confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragment$ConfirmData;)V

    .line 456
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/applist/AppListFragment;->loadDelay:Z

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-boolean v0, p0, Lcom/market2345/applist/AppListFragment;->firstLoad:Z

    if-eqz v0, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;->loadData()V

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/applist/AppListFragment;->firstLoad:Z

    goto :goto_0
.end method
