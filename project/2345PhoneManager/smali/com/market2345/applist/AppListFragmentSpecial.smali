.class public abstract Lcom/market2345/applist/AppListFragmentSpecial;
.super Lcom/market2345/slidemenu/SlidingBaseFragment;
.source "AppListFragmentSpecial.java"

# interfaces
.implements Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;
    }
.end annotation


# static fields
.field private static final LOOP_COUNT:I = 0x7

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_APP_ITEM:I = 0x0

.field private static final TYPE_TOPIC_ITEM:I = 0x1

.field public static showWhat:I


# instance fields
.field bannerArea:Landroid/view/View;

.field bannerTopicAdapter:Lcom/market2345/applist/ImagePagerAdapter;

.field confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

.field firstLoad:Z

.field private isLoadLocal:Z

.field private itemClick:Landroid/view/View$OnClickListener;

.field loadDelay:Z

.field private loading:Z

.field mBannerTopics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/TopicItem;",
            ">;"
        }
    .end annotation
.end field

.field mDatasNew:Lcom/market2345/model/AppListDatasNew;

.field mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

.field mInsertedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mList:Landroid/widget/ListView;

.field mListTopics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/TopicItem;",
            ">;"
        }
    .end annotation
.end field

.field mLoading:Landroid/view/View;

.field mNoData:Landroid/view/View;

.field mNoDataRetryButton:Landroid/widget/Button;

.field mPageIndicator:Landroid/widget/RadioGroup;

.field mProgress:Landroid/widget/ProgressBar;

.field mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

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

.field refreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

.field supportTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/applist/AppListFragmentSpecial;->TAG:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/market2345/applist/AppListFragmentSpecial;->showWhat:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/market2345/slidemenu/SlidingBaseFragment;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->firstLoad:Z

    .line 89
    iput-boolean v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->loadDelay:Z

    .line 91
    iput-boolean v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->loading:Z

    .line 96
    new-instance v0, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    invoke-direct {v0, p0}, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;-><init>(Lcom/market2345/applist/AppListFragmentSpecial;)V

    iput-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    .line 97
    new-instance v0, Lcom/market2345/applist/AppListFragmentSpecial$1;

    invoke-direct {v0, p0}, Lcom/market2345/applist/AppListFragmentSpecial$1;-><init>(Lcom/market2345/applist/AppListFragmentSpecial;)V

    iput-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->itemClick:Landroid/view/View$OnClickListener;

    .line 526
    iput-boolean v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->isLoadLocal:Z

    .line 694
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/applist/AppListFragmentSpecial;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/applist/AppListFragmentSpecial;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->loadData()V

    return-void
.end method

.method static synthetic access$102(Lcom/market2345/applist/AppListFragmentSpecial;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/applist/AppListFragmentSpecial;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->loading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/market2345/applist/AppListFragmentSpecial;Lcom/market2345/model/AppListDatasNew;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/applist/AppListFragmentSpecial;
    .param p1, "x1"    # Lcom/market2345/model/AppListDatasNew;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/market2345/applist/AppListFragmentSpecial;->initTopics(Lcom/market2345/model/AppListDatasNew;)V

    return-void
.end method

.method static synthetic access$300(Lcom/market2345/applist/AppListFragmentSpecial;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/applist/AppListFragmentSpecial;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/market2345/applist/AppListFragmentSpecial;->setListViewDisplay(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/applist/AppListFragmentSpecial;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/applist/AppListFragmentSpecial;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/market2345/applist/AppListFragmentSpecial;->showError(I)V

    return-void
.end method

.method private initAdapter()V
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->recommendlist:Ljava/util/ArrayList;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Lcom/market2345/applist/AppListWithTopicAdapter;

    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/market2345/applist/AppListWithTopicAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    .line 270
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    iget-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v1, v1, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/applist/AppListWithTopicAdapter;->setTag(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    iget-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->itemClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/market2345/applist/AppListWithTopicAdapter;->setItemClick(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    invoke-virtual {v0, p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->setmLazyloadListener(Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;)V

    .line 273
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    iget-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-boolean v1, v1, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->showRankTag:Z

    invoke-virtual {v0, v1}, Lcom/market2345/applist/AppListWithTopicAdapter;->setShowRankTag(Z)V

    .line 274
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->refreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    :cond_0
    return-void
.end method

.method private initDateLocal(Lcom/market2345/model/AppListDatasNew;)V
    .locals 14
    .param p1, "pageApp"    # Lcom/market2345/model/AppListDatasNew;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 549
    if-nez p1, :cond_1

    .line 600
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-virtual {p1}, Lcom/market2345/model/AppListDatasNew;->sort()Ljava/util/ArrayList;

    move-result-object v7

    .line 552
    .local v7, "localdata":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    if-eqz v7, :cond_0

    .line 555
    iget-object v12, p1, Lcom/market2345/model/AppListDatasNew;->topic:Lcom/market2345/model/Topic;

    if-eqz v12, :cond_2

    iget-object v12, p1, Lcom/market2345/model/AppListDatasNew;->topic:Lcom/market2345/model/Topic;

    iget-object v12, v12, Lcom/market2345/model/Topic;->list:Ljava/util/ArrayList;

    if-eqz v12, :cond_2

    .line 556
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    iget-object v13, p1, Lcom/market2345/model/AppListDatasNew;->topic:Lcom/market2345/model/Topic;

    iget-object v13, v13, Lcom/market2345/model/Topic;->list:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 559
    :cond_2
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-boolean v12, v12, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->ignoreInstalledApp:Z

    if-eqz v12, :cond_4

    .line 560
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v12

    invoke-static {v12}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    .line 561
    .local v3, "data":Lcom/market2345/datacenter/DataCenterObserver;
    invoke-virtual {v3}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v5

    .line 563
    .local v5, "installedApps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 564
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 565
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v12, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 566
    iget-object v12, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_3

    .line 567
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 574
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v3    # "data":Lcom/market2345/datacenter/DataCenterObserver;
    .end local v5    # "installedApps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    .end local v6    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    :cond_4
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->recommendlist:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 575
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->recommendlist:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 576
    .local v1, "appCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v1, :cond_7

    .line 577
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 578
    .local v2, "current":I
    add-int/lit8 v12, v2, 0x1

    rem-int/lit8 v12, v12, 0x7

    if-nez v12, :cond_6

    move v8, v10

    .line 580
    .local v8, "next_type":I
    :goto_3
    if-ne v8, v10, :cond_5

    .line 581
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 582
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/model/TopicItem;

    .line 583
    .local v9, "topic":Lcom/market2345/model/TopicItem;
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 588
    .end local v9    # "topic":Lcom/market2345/model/TopicItem;
    :cond_5
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/market2345/applist/AppListFragmentSpecial;->recommendlist:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v8    # "next_type":I
    :cond_6
    move v8, v11

    .line 578
    goto :goto_3

    .line 590
    .end local v2    # "current":I
    :cond_7
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->recommendlist:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 591
    invoke-direct {p0, p1}, Lcom/market2345/applist/AppListFragmentSpecial;->initTopics(Lcom/market2345/model/AppListDatasNew;)V

    .line 592
    invoke-direct {p0, v10}, Lcom/market2345/applist/AppListFragmentSpecial;->setListViewDisplay(Z)V

    .line 593
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mLoading:Landroid/view/View;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 594
    iget-object v12, p0, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    invoke-virtual {v12}, Lcom/market2345/applist/AppListWithTopicAdapter;->setProductList()V

    .line 595
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v12

    invoke-static {v12}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_8

    .line 596
    invoke-virtual {p0, v11, v10, v11, v11}, Lcom/market2345/applist/AppListFragmentSpecial;->changeVisiable(IIII)V

    .line 598
    :cond_8
    iget-object v10, p0, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    invoke-virtual {v10}, Lcom/market2345/applist/AppListWithTopicAdapter;->notifyDataSetChanged()V

    .line 599
    iget-object v10, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v10}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    goto/16 :goto_0
.end method

.method private initHttp()V
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v0

    .line 283
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    if-eqz v0, :cond_0

    .line 284
    invoke-direct {p0, v0}, Lcom/market2345/applist/AppListFragmentSpecial;->setHttpCallback(Lcom/market2345/httpnew/HttpTransactionBuilder;)V

    .line 285
    invoke-virtual {v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    .line 288
    .end local v0    # "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    :cond_0
    return-void
.end method

.method private initTopics(Lcom/market2345/model/AppListDatasNew;)V
    .locals 13
    .param p1, "data"    # Lcom/market2345/model/AppListDatasNew;

    .prologue
    const/4 v12, -0x2

    const/16 v7, 0x8

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 391
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->isAdded()Z

    move-result v6

    if-nez v6, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mBannerTopics:Ljava/util/ArrayList;

    if-nez v6, :cond_2

    .line 395
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mBannerTopics:Ljava/util/ArrayList;

    .line 397
    :cond_2
    if-eqz p1, :cond_b

    iget-object v6, p1, Lcom/market2345/model/AppListDatasNew;->topic:Lcom/market2345/model/Topic;

    if-eqz v6, :cond_b

    .line 398
    iget-object v6, p1, Lcom/market2345/model/AppListDatasNew;->topic:Lcom/market2345/model/Topic;

    iget-object v4, v6, Lcom/market2345/model/Topic;->banner:Ljava/util/ArrayList;

    .line 399
    .local v4, "topicItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/TopicItem;>;"
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerArea:Landroid/view/View;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mPageIndicator:Landroid/widget/RadioGroup;

    if-eqz v6, :cond_0

    .line 400
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mBannerTopics:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 401
    if-eqz v4, :cond_3

    .line 402
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mBannerTopics:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v6}, Lcom/market2345/applist/AppListFragmentSpecial;->isBannerTopicDataChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    .line 403
    .local v0, "dataChanged":Z
    if-eqz v0, :cond_3

    .line 404
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mBannerTopics:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 405
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mBannerTopics:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 406
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerTopicAdapter:Lcom/market2345/applist/ImagePagerAdapter;

    if-eqz v6, :cond_3

    .line 407
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerTopicAdapter:Lcom/market2345/applist/ImagePagerAdapter;

    invoke-virtual {v6}, Lcom/market2345/applist/ImagePagerAdapter;->notifyDataSetChanged()V

    .line 411
    .end local v0    # "dataChanged":Z
    :cond_3
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v6}, Lcom/market2345/customview/AutoScrollViewPager;->startAutoScroll()V

    goto :goto_0

    .line 414
    :cond_4
    if-eqz v4, :cond_5

    .line 415
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mBannerTopics:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 417
    :cond_5
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mBannerTopics:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 418
    .local v3, "size":I
    if-lez v3, :cond_a

    .line 419
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerTopicAdapter:Lcom/market2345/applist/ImagePagerAdapter;

    if-nez v6, :cond_6

    .line 420
    new-instance v6, Lcom/market2345/applist/ImagePagerAdapter;

    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mBannerTopics:Ljava/util/ArrayList;

    invoke-direct {v6, v7, v8}, Lcom/market2345/applist/ImagePagerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerTopicAdapter:Lcom/market2345/applist/ImagePagerAdapter;

    .line 421
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f0a0000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v6, v8, v9}, Lcom/market2345/customview/AutoScrollViewPager;->setInterval(J)V

    .line 424
    :cond_6
    if-le v3, v11, :cond_7

    .line 425
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerTopicAdapter:Lcom/market2345/applist/ImagePagerAdapter;

    invoke-virtual {v6, v11}, Lcom/market2345/applist/ImagePagerAdapter;->setInfiniteLoop(Z)Lcom/market2345/applist/ImagePagerAdapter;

    .line 429
    :goto_1
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerTopicAdapter:Lcom/market2345/applist/ImagePagerAdapter;

    iget-object v7, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/market2345/applist/ImagePagerAdapter;->setTag(Ljava/lang/String;)V

    .line 430
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    iget-object v7, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerTopicAdapter:Lcom/market2345/applist/ImagePagerAdapter;

    invoke-virtual {v6, v7}, Lcom/market2345/customview/AutoScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 437
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    new-instance v7, Lcom/market2345/applist/CircleIndicatorChangeListener;

    iget-object v8, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mPageIndicator:Landroid/widget/RadioGroup;

    invoke-direct {v7, v3, v8}, Lcom/market2345/applist/CircleIndicatorChangeListener;-><init>(ILandroid/widget/RadioGroup;)V

    invoke-virtual {v6, v7}, Lcom/market2345/customview/AutoScrollViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 438
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mPageIndicator:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 439
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v3, :cond_8

    if-le v3, v11, :cond_8

    .line 440
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f030022

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 441
    .local v5, "v":Landroid/view/View;
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setId(I)V

    .line 442
    new-instance v2, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v2, v12, v12}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 444
    .local v2, "params":Landroid/widget/RadioGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080039

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v2, Landroid/widget/RadioGroup$LayoutParams;->leftMargin:I

    .line 445
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mPageIndicator:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v5, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 439
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 427
    .end local v1    # "i":I
    .end local v2    # "params":Landroid/widget/RadioGroup$LayoutParams;
    .end local v5    # "v":Landroid/view/View;
    :cond_7
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerTopicAdapter:Lcom/market2345/applist/ImagePagerAdapter;

    invoke-virtual {v6, v10}, Lcom/market2345/applist/ImagePagerAdapter;->setInfiniteLoop(Z)Lcom/market2345/applist/ImagePagerAdapter;

    goto :goto_1

    .line 448
    .restart local v1    # "i":I
    :cond_8
    if-le v3, v11, :cond_9

    .line 449
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    mul-int/lit16 v7, v3, 0x2710

    invoke-virtual {v6, v7}, Lcom/market2345/customview/AutoScrollViewPager;->setCurrentItem(I)V

    .line 450
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v6}, Lcom/market2345/customview/AutoScrollViewPager;->startAutoScroll()V

    .line 453
    :cond_9
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerArea:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    .line 454
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v6, v10}, Lcom/market2345/customview/AutoScrollViewPager;->setVisibility(I)V

    .line 455
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mPageIndicator:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v10}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 456
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {v6}, Lcom/market2345/home/HomeTabActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v6

    iget-object v7, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerArea:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->addIgnoredView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 458
    .end local v1    # "i":I
    :cond_a
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v6, v7}, Lcom/market2345/customview/AutoScrollViewPager;->setVisibility(I)V

    .line 459
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mPageIndicator:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 460
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerArea:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 465
    .end local v3    # "size":I
    .end local v4    # "topicItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/TopicItem;>;"
    :cond_b
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mBannerTopics:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_0

    .line 466
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial;->bannerArea:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private isBannerTopicDataChanged(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/TopicItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/TopicItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "d1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/TopicItem;>;"
    .local p2, "d2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/TopicItem;>;"
    const/4 v3, 0x1

    .line 478
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 479
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 480
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 481
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/model/TopicItem;

    .line 482
    .local v1, "t1":Lcom/market2345/model/TopicItem;
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/model/TopicItem;

    .line 483
    .local v2, "t2":Lcom/market2345/model/TopicItem;
    iget v4, v1, Lcom/market2345/model/TopicItem;->topicId:I

    iget v5, v2, Lcom/market2345/model/TopicItem;->topicId:I

    if-eq v4, v5, :cond_1

    .line 490
    .end local v0    # "i":I
    .end local v1    # "t1":Lcom/market2345/model/TopicItem;
    .end local v2    # "t2":Lcom/market2345/model/TopicItem;
    :cond_0
    :goto_1
    return v3

    .line 480
    .restart local v0    # "i":I
    .restart local v1    # "t1":Lcom/market2345/model/TopicItem;
    .restart local v2    # "t2":Lcom/market2345/model/TopicItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "t1":Lcom/market2345/model/TopicItem;
    .end local v2    # "t2":Lcom/market2345/model/TopicItem;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private loadData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->initHttp()V

    .line 251
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-eqz v0, :cond_2

    .line 252
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->isFastConnection()Z

    move-result v0

    if-nez v0, :cond_4

    .line 253
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->loadLocalData()Z

    move-result v0

    if-nez v0, :cond_3

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 262
    :cond_2
    :goto_0
    return-void

    .line 256
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/market2345/applist/AppListFragmentSpecial;->changeVisiable(IIII)V

    goto :goto_0

    .line 259
    :cond_4
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    goto :goto_0
.end method

.method private loadLocalData()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 529
    iget-boolean v5, p0, Lcom/market2345/applist/AppListFragmentSpecial;->isLoadLocal:Z

    if-eqz v5, :cond_0

    .line 530
    iget-boolean v3, p0, Lcom/market2345/applist/AppListFragmentSpecial;->isLoadLocal:Z

    .line 544
    :goto_0
    return v3

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getCacheData()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 535
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 536
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v4, Lcom/market2345/model/AppListDatasNew;

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/model/AppListDatasNew;

    .line 537
    .local v2, "pageApp":Lcom/market2345/model/AppListDatasNew;
    invoke-direct {p0, v2}, Lcom/market2345/applist/AppListFragmentSpecial;->initDateLocal(Lcom/market2345/model/AppListDatasNew;)V

    .line 538
    iput-boolean v3, p0, Lcom/market2345/applist/AppListFragmentSpecial;->isLoadLocal:Z

    goto :goto_0

    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "pageApp":Lcom/market2345/model/AppListDatasNew;
    :cond_1
    move v3, v4

    .line 541
    goto :goto_0

    .end local v0    # "data":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 544
    goto :goto_0
.end method

.method private setHttpCallback(Lcom/market2345/httpnew/HttpTransactionBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/market2345/httpnew/HttpTransactionBuilder;

    .prologue
    .line 291
    const-class v0, Lcom/market2345/model/AppListDatasNew;

    invoke-virtual {p1, v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v0

    new-instance v1, Lcom/market2345/applist/AppListFragmentSpecial$6;

    invoke-direct {v1, p0}, Lcom/market2345/applist/AppListFragmentSpecial$6;-><init>(Lcom/market2345/applist/AppListFragmentSpecial;)V

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 388
    return-void
.end method

.method private setListViewDisplay(Z)V
    .locals 3
    .param p1, "display"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->refreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->refreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showError(I)V
    .locals 3
    .param p1, "currentPage"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 494
    if-ne p1, v1, :cond_2

    .line 495
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->loadLocalData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    invoke-direct {p0, v2}, Lcom/market2345/applist/AppListFragmentSpecial;->setListViewDisplay(Z)V

    .line 497
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 498
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mNoData:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    invoke-virtual {p0, v1, v2, v2, v2}, Lcom/market2345/applist/AppListFragmentSpecial;->changeVisiable(IIII)V

    .line 502
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-eqz v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    goto :goto_0

    .line 507
    :cond_2
    invoke-virtual {p0, v2, v1, v2, v2}, Lcom/market2345/applist/AppListFragmentSpecial;->changeVisiable(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public abstract confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;)V
.end method

.method public abstract createHeaderView()Landroid/view/View;
.end method

.method public abstract createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;
.end method

.method public getCacheData()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 678
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v2, v2, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->dataKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v2, v2, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->timeKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 679
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 680
    .local v0, "preferences":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v2, v2, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->dataKey:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 682
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-object v1
.end method

.method public getSupportTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->supportTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->supportTag:Ljava/lang/String;

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->supportTag:Ljava/lang/String;

    return-object v0
.end method

.method public isEnd()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 605
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-nez v2, :cond_1

    move v0, v1

    .line 618
    :cond_0
    :goto_0
    return v0

    .line 608
    :cond_1
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v2}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 612
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    if-nez v2, :cond_2

    move v0, v1

    .line 613
    goto :goto_0

    .line 615
    :cond_2
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mRetry:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 616
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    invoke-virtual {v2}, Lcom/market2345/model/AppListDatasNew;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isLoadOver()Z
    .locals 1

    .prologue
    .line 636
    iget-boolean v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->loading:Z

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
    .line 624
    iget-boolean v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->loading:Z

    if-eqz v0, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x96

    if-ge v0, v1, :cond_0

    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->loading:Z

    .line 630
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->loadData()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 224
    iget-boolean v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->loadDelay:Z

    if-eqz v0, :cond_0

    .line 225
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->loadData()V

    .line 228
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

    .line 137
    invoke-super {p0, p1, p2, p3}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 138
    sget-object v2, Lcom/market2345/applist/AppListFragmentSpecial;->TAG:Ljava/lang/String;

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    invoke-virtual {p0, v2}, Lcom/market2345/applist/AppListFragmentSpecial;->confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;)V

    .line 140
    const v2, 0x7f0300b7

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f09015a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->refreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 142
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->refreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    sget-object v3, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 143
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->refreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v3, Lcom/market2345/applist/AppListFragmentSpecial$2;

    invoke-direct {v3, p0}, Lcom/market2345/applist/AppListFragmentSpecial$2;-><init>(Lcom/market2345/applist/AppListFragmentSpecial;)V

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 162
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->refreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v2, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setShowIndicator(Z)V

    .line 164
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->refreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mList:Landroid/widget/ListView;

    .line 166
    invoke-direct {p0, v4}, Lcom/market2345/applist/AppListFragmentSpecial;->setListViewDisplay(Z)V

    .line 167
    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mLoading:Landroid/view/View;

    .line 168
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mRetry:Landroid/view/View;

    new-instance v3, Lcom/market2345/applist/AppListFragmentSpecial$3;

    invoke-direct {v3, p0}, Lcom/market2345/applist/AppListFragmentSpecial$3;-><init>(Lcom/market2345/applist/AppListFragmentSpecial;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mLoadMore:Landroid/view/View;

    new-instance v3, Lcom/market2345/applist/AppListFragmentSpecial$4;

    invoke-direct {v3, p0}, Lcom/market2345/applist/AppListFragmentSpecial$4;-><init>(Lcom/market2345/applist/AppListFragmentSpecial;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mLoading:Landroid/view/View;

    const v3, 0x7f09012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mProgress:Landroid/widget/ProgressBar;

    .line 198
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 199
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->createHeaderView()Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 201
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/market2345/applist/AppListFragmentSpecial;->foot:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 205
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->initAdapter()V

    .line 206
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v4, v4, v4}, Lcom/market2345/applist/AppListFragmentSpecial;->changeVisiable(IIII)V

    .line 207
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mLoading:Landroid/view/View;

    const v3, 0x7f09012b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mNoData:Landroid/view/View;

    .line 208
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mNoData:Landroid/view/View;

    const v3, 0x7f09012d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mNoDataRetryButton:Landroid/widget/Button;

    .line 209
    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mNoDataRetryButton:Landroid/widget/Button;

    new-instance v3, Lcom/market2345/applist/AppListFragmentSpecial$5;

    invoke-direct {v3, p0}, Lcom/market2345/applist/AppListFragmentSpecial$5;-><init>(Lcom/market2345/applist/AppListFragmentSpecial;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    return-object v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onPause()V

    .line 244
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->stopAutoScroll()V

    .line 247
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    invoke-virtual {v0}, Lcom/market2345/applist/AppListWithTopicAdapter;->notifyDataSetChanged()V

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->isCurrentAutoScroll()Z

    move-result v0

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->startAutoScroll()V

    .line 238
    :cond_1
    invoke-super {p0}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onResume()V

    .line 239
    return-void
.end method

.method public saveCacheData(Ljava/lang/String;)V
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 668
    iget-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v1, v1, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->dataKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v1, v1, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->timeKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    iget-object v1, v1, Lcom/market2345/model/AppListDatasNew;->pageAppString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 671
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v2, v2, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->dataKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    iget-object v3, v3, Lcom/market2345/model/AppListDatasNew;->pageAppString:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 672
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v2, v2, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->timeKey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 675
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 641
    iput-object p1, p0, Lcom/market2345/applist/AppListFragmentSpecial;->supportTag:Ljava/lang/String;

    .line 642
    return-void
.end method

.method public showSelf()V
    .locals 2

    .prologue
    .line 655
    sget-object v0, Lcom/market2345/applist/AppListFragmentSpecial;->TAG:Ljava/lang/String;

    const-string v1, "showSelf"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    invoke-virtual {p0, v0}, Lcom/market2345/applist/AppListFragmentSpecial;->confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;)V

    .line 657
    invoke-virtual {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->loadDelay:Z

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-boolean v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->firstLoad:Z

    if-eqz v0, :cond_0

    .line 661
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragmentSpecial;->loadData()V

    .line 662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/applist/AppListFragmentSpecial;->firstLoad:Z

    goto :goto_0
.end method
