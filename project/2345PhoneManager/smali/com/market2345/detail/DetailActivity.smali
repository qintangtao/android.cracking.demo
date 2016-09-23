.class public Lcom/market2345/detail/DetailActivity;
.super Lcom/market2345/home/BaseFragmentActivity;
.source "DetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;
.implements Lcom/market2345/detail/ReportDialogFragment$OnReportListener;
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/detail/DetailActivity$MyPagerAdapter;,
        Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;
    }
.end annotation


# static fields
.field public static TAB_ID:I = 0x0

.field public static final TAB_ITEM:Ljava/lang/String; = "tabItem"

.field public static final TAB_NUM:I = 0x2

.field public static pair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TITLES:[Ljava/lang/String;

.field private allNum:I

.field private app:Lcom/market2345/model/App;

.field private appDetail:Lcom/market2345/model/SingleAppResp;

.field private app_detail_name:Landroid/widget/TextView;

.field private app_icon:Landroid/widget/ImageView;

.field private bFromDesk:Z

.field private callBack:Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;

.field private currentCommentPage:I

.field private currentType:I

.field private downloadBar:Landroid/view/View;

.field private downloadRight:Landroid/widget/TextView;

.field private downloaded_app_instal_btn:Lcom/market2345/customview/DetailDownloadProgressView;

.field public flTop:Landroid/widget/FrameLayout;

.field private ibDownloadDown:Landroid/widget/ImageButton;

.field private ibDownloadUp:Landroid/widget/ImageButton;

.field private ibMenuDownload:Landroid/widget/ImageButton;

.field private ibTopBack:Landroid/widget/ImageButton;

.field private ibTopShare:Landroid/widget/ImageButton;

.field private llAd:Landroid/view/View;

.field private llCharge:Landroid/view/View;

.field private llDesc:Landroid/view/View;

.field private llSafety:Landroid/view/View;

.field private llSecurity:Landroid/view/View;

.field private loading:Landroid/view/View;

.field private mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private mSafe:Landroid/widget/TextView;

.field private mark:Landroid/widget/TextView;

.field private mhander:Landroid/os/Handler;

.field private noData:Landroid/view/View;

.field private noDataRetryButton:Landroid/widget/Button;

.field private openDetailType:Ljava/lang/String;

.field private progress:Landroid/view/View;

.field public rlTop:Landroid/widget/RelativeLayout;

.field private scroll:Lcom/market2345/customview/StickyNavLayout;

.field private sid:I

.field private size:Landroid/widget/TextView;

.field private subCommentsFragment:Lcom/market2345/detail/SubCommentsFragment;

.field private subDetailFragment:Lcom/market2345/detail/SubDetailFragment;

.field private subGiftFragment:Lcom/market2345/detail/SubGiftFragment;

.field private tabs:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

.field private ttIcon:Lcom/market2345/customview/ToggleText;

.field private tvAd:Landroid/widget/TextView;

.field private tvAdDown:Landroid/widget/TextView;

.field private tvAdDownDesc:Landroid/widget/TextView;

.field private tvCharge:Landroid/widget/TextView;

.field private tvChargeDown:Landroid/widget/TextView;

.field private tvChargeDownDesc:Landroid/widget/TextView;

.field private tvSimpleDescription:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;

.field private viewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    sput v0, Lcom/market2345/detail/DetailActivity;->TAB_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Lcom/market2345/home/BaseFragmentActivity;-><init>()V

    .line 117
    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->subCommentsFragment:Lcom/market2345/detail/SubCommentsFragment;

    .line 118
    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->subDetailFragment:Lcom/market2345/detail/SubDetailFragment;

    .line 119
    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->subGiftFragment:Lcom/market2345/detail/SubGiftFragment;

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/market2345/detail/DetailActivity;->currentCommentPage:I

    .line 125
    const/4 v0, 0x4

    iput v0, p0, Lcom/market2345/detail/DetailActivity;->currentType:I

    .line 129
    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->TITLES:[Ljava/lang/String;

    .line 595
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/detail/DetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/DetailActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->openDetailType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/detail/DetailActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/DetailActivity;

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/market2345/detail/DetailActivity;->bFromDesk:Z

    return v0
.end method

.method static synthetic access$200(Lcom/market2345/detail/DetailActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/DetailActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->TITLES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/detail/SubDetailFragment;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/DetailActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->subDetailFragment:Lcom/market2345/detail/SubDetailFragment;

    return-object v0
.end method

.method static synthetic access$302(Lcom/market2345/detail/DetailActivity;Lcom/market2345/detail/SubDetailFragment;)Lcom/market2345/detail/SubDetailFragment;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/detail/DetailActivity;
    .param p1, "x1"    # Lcom/market2345/detail/SubDetailFragment;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/market2345/detail/DetailActivity;->subDetailFragment:Lcom/market2345/detail/SubDetailFragment;

    return-object p1
.end method

.method static synthetic access$400(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/model/App;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/DetailActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/model/SingleAppResp;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/DetailActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/detail/SubCommentsFragment;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/DetailActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->subCommentsFragment:Lcom/market2345/detail/SubCommentsFragment;

    return-object v0
.end method

.method static synthetic access$602(Lcom/market2345/detail/DetailActivity;Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/detail/SubCommentsFragment;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/detail/DetailActivity;
    .param p1, "x1"    # Lcom/market2345/detail/SubCommentsFragment;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/market2345/detail/DetailActivity;->subCommentsFragment:Lcom/market2345/detail/SubCommentsFragment;

    return-object p1
.end method

.method static synthetic access$700(Lcom/market2345/detail/DetailActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/DetailActivity;

    .prologue
    .line 72
    iget v0, p0, Lcom/market2345/detail/DetailActivity;->sid:I

    return v0
.end method

.method static synthetic access$800(Lcom/market2345/detail/DetailActivity;)Lcom/market2345/detail/SubGiftFragment;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/detail/DetailActivity;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->subGiftFragment:Lcom/market2345/detail/SubGiftFragment;

    return-object v0
.end method

.method static synthetic access$802(Lcom/market2345/detail/DetailActivity;Lcom/market2345/detail/SubGiftFragment;)Lcom/market2345/detail/SubGiftFragment;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/detail/DetailActivity;
    .param p1, "x1"    # Lcom/market2345/detail/SubGiftFragment;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/market2345/detail/DetailActivity;->subGiftFragment:Lcom/market2345/detail/SubGiftFragment;

    return-object p1
.end method

.method private getMyDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "resID"    # I

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private initAppstate(Lcom/market2345/model/App;)V
    .locals 7
    .param p1, "app"    # Lcom/market2345/model/App;

    .prologue
    const v3, 0x7f07005a

    const v4, 0x7f020186

    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 533
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v2, p1, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v6

    .line 534
    .local v6, "info":Lcom/market2345/download/DownloadInfo;
    if-eqz v6, :cond_0

    .line 535
    new-array v0, v1, [Lcom/market2345/download/interfaces/IProgressCallback;

    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->downloaded_app_instal_btn:Lcom/market2345/customview/DetailDownloadProgressView;

    aput-object v1, v0, v5

    invoke-virtual {v6, v0}, Lcom/market2345/download/DownloadInfo;->addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V

    .line 536
    invoke-virtual {v6, p0}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V

    .line 548
    :goto_0
    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->downloaded_app_instal_btn:Lcom/market2345/customview/DetailDownloadProgressView;

    invoke-virtual {v0, v1}, Lcom/market2345/customview/DetailDownloadProgressView;->setEnabled(Z)V

    .line 539
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v0

    iget-object v2, p1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->downloaded_app_instal_btn:Lcom/market2345/customview/DetailDownloadProgressView;

    const v2, 0x7f0b0058

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/customview/DetailDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v0

    iget-object v2, p1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/market2345/datacenter/AppsInfoHandler;->checkIsHasInatall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->downloaded_app_instal_btn:Lcom/market2345/customview/DetailDownloadProgressView;

    const v2, 0x7f0b0056

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/customview/DetailDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_0

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->downloaded_app_instal_btn:Lcom/market2345/customview/DetailDownloadProgressView;

    const v2, 0x7f0b0054

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07001e

    const v4, 0x7f0200e0

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/customview/DetailDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_0
.end method

.method private initData()V
    .locals 10

    .prologue
    const v9, 0x7f0b0046

    const v8, 0x7f020032

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 409
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->downloaded_app_instal_btn:Lcom/market2345/customview/DetailDownloadProgressView;

    const v3, 0x7f090007

    iget-object v4, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    invoke-virtual {v2, v3, v4}, Lcom/market2345/customview/DetailDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 410
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->downloaded_app_instal_btn:Lcom/market2345/customview/DetailDownloadProgressView;

    const v3, 0x7f090012

    invoke-virtual {v2, v3, p0}, Lcom/market2345/customview/DetailDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 411
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->downloaded_app_instal_btn:Lcom/market2345/customview/DetailDownloadProgressView;

    const v3, 0x7f09000b

    iget-object v4, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v4, v4, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/market2345/customview/DetailDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 412
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->downloaded_app_instal_btn:Lcom/market2345/customview/DetailDownloadProgressView;

    const v3, 0x7f090009

    iget-object v4, p0, Lcom/market2345/detail/DetailActivity;->callBack:Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;

    invoke-virtual {v2, v3, v4}, Lcom/market2345/customview/DetailDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 413
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v3, p0, Lcom/market2345/detail/DetailActivity;->downloaded_app_instal_btn:Lcom/market2345/customview/DetailDownloadProgressView;

    invoke-virtual {v2, v3}, Lcom/market2345/download/DownloadManager;->setOnClickListener(Landroid/view/View;)V

    .line 414
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget v2, v2, Lcom/market2345/model/App;->giftTotal:I

    if-lez v2, :cond_0

    .line 415
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const v3, 0x7f0b0053

    invoke-virtual {p0, v3}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v9}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const v3, 0x7f0b0084

    invoke-virtual {p0, v3}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    iput-object v2, p0, Lcom/market2345/detail/DetailActivity;->TITLES:[Ljava/lang/String;

    .line 420
    :goto_0
    const v2, 0x7f09002a

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/market2345/detail/DetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    .line 421
    new-instance v0, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;

    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/market2345/detail/DetailActivity$MyPagerAdapter;-><init>(Lcom/market2345/detail/DetailActivity;Landroid/support/v4/app/FragmentManager;)V

    .line 422
    .local v0, "adapter":Lcom/market2345/detail/DetailActivity$MyPagerAdapter;
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 423
    const v2, 0x7f090010

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iput-object v2, p0, Lcom/market2345/detail/DetailActivity;->tabs:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    .line 424
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->tabs:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v3, p0, Lcom/market2345/detail/DetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 425
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    sget v3, Lcom/market2345/detail/DetailActivity;->TAB_ID:I

    invoke-virtual {v2, v3, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 426
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->viewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v6}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 427
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    invoke-direct {p0, v2}, Lcom/market2345/detail/DetailActivity;->initAppstate(Lcom/market2345/model/App;)V

    .line 431
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->app_detail_name:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v3, v3, Lcom/market2345/model/App;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v2, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v1

    .line 443
    .local v1, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v3, v3, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    iget-object v4, p0, Lcom/market2345/detail/DetailActivity;->app_icon:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 445
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->mark:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v4, v4, Lcom/market2345/model/App;->mark:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0b00b5

    invoke-virtual {p0, v4}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->size:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0b0057

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v6, v6, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/market2345/detail/DetailActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->tvSimpleDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v3, v3, Lcom/market2345/model/App;->oneword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->downloadRight:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v4, v4, Lcom/market2345/model/App;->totalDowns:Ljava/lang/String;

    invoke-static {v4}, Lcom/market2345/common/util/ApplicationUtils;->getFormatDownloads(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  |"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    return-void

    .line 417
    .end local v0    # "adapter":Lcom/market2345/detail/DetailActivity$MyPagerAdapter;
    .end local v1    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_0
    new-array v2, v6, [Ljava/lang/String;

    const v3, 0x7f0b0053

    invoke-virtual {p0, v3}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {p0, v9}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/market2345/detail/DetailActivity;->TITLES:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private initDatas()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x1

    const/16 v5, 0x8

    const v4, 0x7f02003d

    const/4 v3, 0x0

    .line 454
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget v1, v1, Lcom/market2345/model/App;->safe:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget v1, v1, Lcom/market2345/model/App;->ad:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget v1, v1, Lcom/market2345/model/App;->charge:I

    if-ne v1, v2, :cond_1

    .line 457
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->llSecurity:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget v1, v1, Lcom/market2345/model/App;->safe:I

    if-ne v1, v6, :cond_3

    .line 466
    :goto_1
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget v1, v1, Lcom/market2345/model/App;->charge:I

    if-nez v1, :cond_4

    .line 503
    :goto_2
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget v1, v1, Lcom/market2345/model/App;->ad:I

    if-ne v1, v6, :cond_a

    .line 505
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvAd:Landroid/widget/TextView;

    const v2, 0x7f0b0002

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvAd:Landroid/widget/TextView;

    const v2, 0x7f02003c

    invoke-direct {p0, v2}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvAdDown:Landroid/widget/TextView;

    const v2, 0x7f02003c

    invoke-direct {p0, v2}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 510
    const v1, 0x7f0b0002

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, "strAd":Ljava/lang/String;
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v1, v1, Lcom/market2345/model/App;->adverType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 512
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget-object v0, v1, Lcom/market2345/model/App;->adverType:Ljava/lang/String;

    .line 514
    :cond_2
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvAdDownDesc:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 462
    .end local v0    # "strAd":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->mSafe:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->llSafety:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 468
    :cond_4
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget v1, v1, Lcom/market2345/model/App;->charge:I

    if-ne v1, v6, :cond_5

    .line 470
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvCharge:Landroid/widget/TextView;

    const v2, 0x7f0b00fa

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvCharge:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 472
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvChargeDown:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 473
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvChargeDownDesc:Landroid/widget/TextView;

    const v2, 0x7f0b00fa

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 474
    :cond_5
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget v1, v1, Lcom/market2345/model/App;->charge:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 476
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvCharge:Landroid/widget/TextView;

    const v2, 0x7f0b007d

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvCharge:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 478
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvChargeDown:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 479
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvChargeDownDesc:Landroid/widget/TextView;

    const v2, 0x7f0b007d

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 480
    :cond_6
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget v1, v1, Lcom/market2345/model/App;->charge:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7

    .line 482
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvCharge:Landroid/widget/TextView;

    const v2, 0x7f0b0099

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvCharge:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 484
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvChargeDown:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 485
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvChargeDownDesc:Landroid/widget/TextView;

    const v2, 0x7f0b0099

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 486
    :cond_7
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget v1, v1, Lcom/market2345/model/App;->charge:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_8

    .line 488
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvCharge:Landroid/widget/TextView;

    const v2, 0x7f0b00fb

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvCharge:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 490
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvChargeDown:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 491
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvChargeDownDesc:Landroid/widget/TextView;

    const v2, 0x7f0b00fb

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 492
    :cond_8
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget v1, v1, Lcom/market2345/model/App;->charge:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    .line 494
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvCharge:Landroid/widget/TextView;

    const v2, 0x7f0b015f

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvCharge:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 496
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvChargeDown:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 497
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvChargeDownDesc:Landroid/widget/TextView;

    const v2, 0x7f0b015f

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 499
    :cond_9
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvCharge:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->llCharge:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 515
    :cond_a
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v1, v1, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iget v1, v1, Lcom/market2345/model/App;->ad:I

    if-eqz v1, :cond_0

    .line 518
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvAd:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 519
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->llAd:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private initListener()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->ibTopBack:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->ibTopShare:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->noDataRetryButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 364
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->llSecurity:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    const v0, 0x7f090130

    invoke-virtual {p0, v0}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    const v0, 0x7f090129

    invoke-virtual {p0, v0}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 367
    new-instance v0, Lcom/market2345/detail/DetailActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/detail/DetailActivity$1;-><init>(Lcom/market2345/detail/DetailActivity;)V

    iput-object v0, p0, Lcom/market2345/detail/DetailActivity;->callBack:Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;

    .line 384
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    const v1, 0x7f09009e

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->ibTopBack:Landroid/widget/ImageButton;

    .line 305
    const v1, 0x7f090131

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->ibMenuDownload:Landroid/widget/ImageButton;

    .line 306
    const v1, 0x7f09012f

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->ibTopShare:Landroid/widget/ImageButton;

    .line 307
    const v1, 0x7f090133

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->ibDownloadUp:Landroid/widget/ImageButton;

    .line 308
    const v1, 0x7f090134

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->ibDownloadDown:Landroid/widget/ImageButton;

    .line 310
    const v1, 0x7f09009f

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvTitle:Landroid/widget/TextView;

    .line 312
    const v1, 0x7f09011c

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->llSecurity:Landroid/view/View;

    .line 313
    const v1, 0x7f090121

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->llDesc:Landroid/view/View;

    .line 315
    const v1, 0x7f090122

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->llSafety:Landroid/view/View;

    .line 316
    const v1, 0x7f090126

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->llAd:Landroid/view/View;

    .line 317
    const v1, 0x7f090123

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->llCharge:Landroid/view/View;

    .line 318
    const v1, 0x7f090120

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/ToggleText;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->ttIcon:Lcom/market2345/customview/ToggleText;

    .line 319
    const v1, 0x7f09011d

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->mSafe:Landroid/widget/TextView;

    .line 320
    const v1, 0x7f09011f

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvAd:Landroid/widget/TextView;

    .line 321
    const v1, 0x7f090127

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvAdDown:Landroid/widget/TextView;

    .line 322
    const v1, 0x7f090128

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvAdDownDesc:Landroid/widget/TextView;

    .line 323
    const v1, 0x7f09011e

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvCharge:Landroid/widget/TextView;

    .line 324
    const v1, 0x7f090124

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvChargeDown:Landroid/widget/TextView;

    .line 325
    const v1, 0x7f090125

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvChargeDownDesc:Landroid/widget/TextView;

    .line 326
    const v1, 0x7f09011b

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->tvSimpleDescription:Landroid/widget/TextView;

    .line 329
    const v1, 0x7f09010e

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/DetailDownloadProgressView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->downloaded_app_instal_btn:Lcom/market2345/customview/DetailDownloadProgressView;

    .line 331
    const v1, 0x7f09012e

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->flTop:Landroid/widget/FrameLayout;

    .line 332
    const v1, 0x7f0900e5

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->rlTop:Landroid/widget/RelativeLayout;

    .line 334
    const v1, 0x7f0900f4

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->loading:Landroid/view/View;

    .line 335
    const v1, 0x7f09012a

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->progress:Landroid/view/View;

    .line 336
    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->noData:Landroid/view/View;

    .line 337
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->noData:Landroid/view/View;

    const v2, 0x7f09012d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->noDataRetryButton:Landroid/widget/Button;

    .line 339
    const v1, 0x7f090118

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->size:Landroid/widget/TextView;

    .line 340
    const v1, 0x7f09011a

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->mark:Landroid/widget/TextView;

    .line 341
    const v1, 0x7f090117

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->app_detail_name:Landroid/widget/TextView;

    .line 342
    const v1, 0x7f090116

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->app_icon:Landroid/widget/ImageView;

    .line 343
    const v1, 0x7f09010f

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/StickyNavLayout;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->scroll:Lcom/market2345/customview/StickyNavLayout;

    .line 345
    const v1, 0x7f09010c

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->downloadBar:Landroid/view/View;

    .line 346
    const v1, 0x7f090119

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->downloadRight:Landroid/widget/TextView;

    .line 348
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->mhander:Landroid/os/Handler;

    .line 350
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 351
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/market2345/model/App;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/market2345/model/App;

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    .line 352
    const-string v1, "sid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/market2345/detail/DetailActivity;->sid:I

    .line 353
    const-string v1, "tabItem"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/market2345/detail/DetailActivity;->TAB_ID:I

    .line 354
    const-string v1, "openDetailType"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/detail/DetailActivity;->openDetailType:Ljava/lang/String;

    .line 355
    const-string v1, "bFromDesk"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/market2345/detail/DetailActivity;->bFromDesk:Z

    .line 357
    return-void
.end method

.method private loadData()V
    .locals 6

    .prologue
    .line 390
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    if-nez v0, :cond_1

    .line 391
    iget v0, p0, Lcom/market2345/detail/DetailActivity;->sid:I

    if-gtz v0, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0150

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 393
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->finish()V

    .line 406
    :goto_0
    return-void

    .line 395
    :cond_0
    iget v2, p0, Lcom/market2345/detail/DetailActivity;->sid:I

    iget v3, p0, Lcom/market2345/detail/DetailActivity;->currentCommentPage:I

    iget v4, p0, Lcom/market2345/detail/DetailActivity;->currentType:I

    iget-object v5, p0, Lcom/market2345/detail/DetailActivity;->mhander:Landroid/os/Handler;

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/market2345/http/MarketAPI;->getComments(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;IIILandroid/os/Handler;)V

    .line 396
    iget v0, p0, Lcom/market2345/detail/DetailActivity;->sid:I

    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->mhander:Landroid/os/Handler;

    invoke-static {p0, p0, v0, v1}, Lcom/market2345/http/MarketAPI;->getAppInfo(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;ILandroid/os/Handler;)V

    goto :goto_0

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget v0, v0, Lcom/market2345/model/App;->sid:I

    iput v0, p0, Lcom/market2345/detail/DetailActivity;->sid:I

    .line 401
    iget v2, p0, Lcom/market2345/detail/DetailActivity;->sid:I

    iget v3, p0, Lcom/market2345/detail/DetailActivity;->currentCommentPage:I

    iget v4, p0, Lcom/market2345/detail/DetailActivity;->currentType:I

    iget-object v5, p0, Lcom/market2345/detail/DetailActivity;->mhander:Landroid/os/Handler;

    move-object v0, p0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/market2345/http/MarketAPI;->getComments(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;IIILandroid/os/Handler;)V

    .line 402
    iget v0, p0, Lcom/market2345/detail/DetailActivity;->sid:I

    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->mhander:Landroid/os/Handler;

    invoke-static {p0, p0, v0, v1}, Lcom/market2345/http/MarketAPI;->getAppInfo(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;ILandroid/os/Handler;)V

    goto :goto_0
.end method

.method private shareURL()V
    .locals 4

    .prologue
    .line 555
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    if-nez v2, :cond_0

    .line 560
    :goto_0
    return-void

    .line 557
    :cond_0
    const-string v1, "http://download.2345.cn/2345yidong/2345shoujizhushou.apk"

    .line 558
    .local v1, "market2345url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0091

    invoke-virtual {p0, v3}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v3, v3, Lcom/market2345/model/App;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b013c

    invoke-virtual {p0, v3}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v3, v3, Lcom/market2345/model/App;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b013d

    invoke-virtual {p0, v3}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v3, v3, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b013e

    invoke-virtual {p0, v3}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b000c

    invoke-virtual {p0, v3}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "info":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v2, v2, Lcom/market2345/model/App;->title:Ljava/lang/String;

    invoke-static {p0, v0, v2}, Lcom/market2345/util/ShareUtil;->share(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 186
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->finish()V

    goto :goto_0

    .line 189
    :sswitch_1
    const-string v2, "AppDetail_Share_11"

    invoke-static {p0, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    invoke-direct {p0}, Lcom/market2345/detail/DetailActivity;->shareURL()V

    goto :goto_0

    .line 193
    :sswitch_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/market2345/home/HomeTabActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    const-string v2, "notification"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 200
    .end local v1    # "intent":Landroid/content/Intent;
    :sswitch_3
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    const v2, 0x7f0b0055

    invoke-virtual {p0, v2}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->noData:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->downloadBar:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 206
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->loading:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 207
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->progress:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 208
    invoke-direct {p0}, Lcom/market2345/detail/DetailActivity;->loadData()V

    goto :goto_0

    .line 211
    :sswitch_4
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->ttIcon:Lcom/market2345/customview/ToggleText;

    invoke-virtual {v2}, Lcom/market2345/customview/ToggleText;->toggle()V

    .line 212
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->ttIcon:Lcom/market2345/customview/ToggleText;

    invoke-virtual {v2}, Lcom/market2345/customview/ToggleText;->isClick()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->ttIcon:Lcom/market2345/customview/ToggleText;

    const v3, 0x7f0200f6

    invoke-direct {p0, v3}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v4, v4, v3, v4}, Lcom/market2345/customview/ToggleText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 215
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->llDesc:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_1
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->ttIcon:Lcom/market2345/customview/ToggleText;

    const v3, 0x7f0200f5

    invoke-direct {p0, v3}, Lcom/market2345/detail/DetailActivity;->getMyDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v4, v4, v3, v4}, Lcom/market2345/customview/ToggleText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v2, p0, Lcom/market2345/detail/DetailActivity;->llDesc:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 223
    :sswitch_5
    new-instance v0, Lcom/market2345/detail/ReportDialogFragment;

    invoke-direct {v0}, Lcom/market2345/detail/ReportDialogFragment;-><init>()V

    .line 224
    .local v0, "f":Lcom/market2345/detail/ReportDialogFragment;
    invoke-virtual {v0, p0}, Lcom/market2345/detail/ReportDialogFragment;->setOnReportListener(Lcom/market2345/detail/ReportDialogFragment$OnReportListener;)V

    .line 225
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "ReportDialogFragment"

    invoke-virtual {v0, v2, v3}, Lcom/market2345/detail/ReportDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09009e -> :sswitch_0
        0x7f09011c -> :sswitch_4
        0x7f090129 -> :sswitch_5
        0x7f09012d -> :sswitch_3
        0x7f09012f -> :sswitch_1
        0x7f090130 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcom/market2345/home/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    const-string v0, "onCreate"

    const-string v1, "onCreate....."

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/market2345/detail/DetailActivity;->setContentView(I)V

    .line 140
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 141
    invoke-direct {p0}, Lcom/market2345/detail/DetailActivity;->initView()V

    .line 142
    invoke-direct {p0}, Lcom/market2345/detail/DetailActivity;->initListener()V

    .line 144
    invoke-direct {p0}, Lcom/market2345/detail/DetailActivity;->loadData()V

    .line 146
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 147
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/detail/DetailActivity;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 148
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 158
    const-string v0, "onDestroy"

    const-string v1, "onDestroy....."

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 161
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v0, v0, Lcom/market2345/model/SingleAppResp;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iput-object v2, v0, Lcom/market2345/model/SingleAppResp;->response:Lcom/market2345/model/ResponseInfo;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v0, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iput-object v2, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    .line 170
    :cond_1
    iput-object v2, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    .line 172
    :cond_2
    sget-object v0, Lcom/market2345/detail/DetailActivity;->pair:Landroid/util/Pair;

    if-eqz v0, :cond_3

    .line 173
    sput-object v2, Lcom/market2345/detail/DetailActivity;->pair:Landroid/util/Pair;

    .line 175
    :cond_3
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->scroll:Lcom/market2345/customview/StickyNavLayout;

    if-eqz v0, :cond_4

    .line 177
    iput-object v2, p0, Lcom/market2345/detail/DetailActivity;->scroll:Lcom/market2345/customview/StickyNavLayout;

    .line 179
    :cond_4
    invoke-super {p0}, Lcom/market2345/home/BaseFragmentActivity;->onDestroy()V

    .line 180
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 289
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 293
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->showError()V

    goto :goto_0

    .line 294
    :cond_2
    const-string v0, "http://zhushou.2345.com/index.php?c=comment&d=listAndroid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->showError()V

    goto :goto_0

    .line 298
    :cond_3
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=addReport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b012c

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onEventMainThread(Ljava/lang/Object;)V
    .locals 12
    .param p1, "event"    # Ljava/lang/Object;

    .prologue
    .line 645
    instance-of v7, p1, Lcom/market2345/detail/event/CommentNumEvent;

    if-eqz v7, :cond_3

    .line 646
    check-cast p1, Lcom/market2345/detail/event/CommentNumEvent;

    .end local p1    # "event":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/market2345/detail/event/CommentNumEvent;->getAllNum()I

    move-result v7

    iput v7, p0, Lcom/market2345/detail/DetailActivity;->allNum:I

    .line 647
    iget v7, p0, Lcom/market2345/detail/DetailActivity;->allNum:I

    if-lez v7, :cond_0

    .line 648
    iget v7, p0, Lcom/market2345/detail/DetailActivity;->allNum:I

    const/16 v8, 0x2710

    if-ge v7, v8, :cond_2

    .line 649
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->TITLES:[Ljava/lang/String;

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0b0046

    invoke-virtual {p0, v10}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/market2345/detail/DetailActivity;->allNum:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 656
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->tabs:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    if-eqz v7, :cond_1

    .line 657
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->tabs:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    invoke-virtual {v7}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->notifyDataSetChanged()V

    .line 706
    :cond_1
    :goto_1
    return-void

    .line 651
    :cond_2
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v7, "0.00"

    invoke-direct {v4, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 652
    .local v4, "df":Ljava/text/DecimalFormat;
    new-instance v7, Ljava/math/BigDecimal;

    iget v8, p0, Lcom/market2345/detail/DetailActivity;->allNum:I

    int-to-double v8, v8

    const-wide v10, 0x40c3880000000000L    # 10000.0

    div-double/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    .line 653
    .local v2, "commentsNum":D
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->TITLES:[Ljava/lang/String;

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0b0046

    invoke-virtual {p0, v10}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u4e07)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_0

    .line 659
    .end local v2    # "commentsNum":D
    .end local v4    # "df":Ljava/text/DecimalFormat;
    .restart local p1    # "event":Ljava/lang/Object;
    :cond_3
    instance-of v7, p1, Lcom/market2345/download/event/DownStartEvent;

    if-eqz v7, :cond_4

    .line 660
    const v7, 0x7f090132

    invoke-virtual {p0, v7}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 661
    const v7, 0x7f090131

    invoke-virtual {p0, v7}, Lcom/market2345/detail/DetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 662
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 663
    .local v1, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x42700000    # 60.0f

    invoke-direct {v0, v7, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 664
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v8, 0x3e8

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 665
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/view/animation/TranslateAnimation;->setRepeatCount(I)V

    .line 666
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 667
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->ibDownloadUp:Landroid/widget/ImageButton;

    invoke-virtual {v7, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    .line 668
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "animationSet":Landroid/view/animation/AnimationSet;
    :cond_4
    instance-of v7, p1, Lcom/market2345/detail/event/TopLayoutEvent;

    if-eqz v7, :cond_7

    move-object v7, p1

    .line 669
    check-cast v7, Lcom/market2345/detail/event/TopLayoutEvent;

    invoke-virtual {v7}, Lcom/market2345/detail/event/TopLayoutEvent;->getDy()F

    move-result v5

    .line 670
    .local v5, "dy":F
    check-cast p1, Lcom/market2345/detail/event/TopLayoutEvent;

    .end local p1    # "event":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/market2345/detail/event/TopLayoutEvent;->getTopHeight()I

    move-result v6

    .line 671
    .local v6, "mTopViewHeight":I
    int-to-float v7, v6

    cmpl-float v7, v5, v7

    if-nez v7, :cond_6

    .line 672
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->llSecurity:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setClickable(Z)V

    .line 673
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->ibDownloadUp:Landroid/widget/ImageButton;

    const v8, 0x7f020173

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 674
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->ibDownloadDown:Landroid/widget/ImageButton;

    const v8, 0x7f020171

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 675
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->ibTopShare:Landroid/widget/ImageButton;

    const v8, 0x7f020227

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 676
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->ibTopBack:Landroid/widget/ImageButton;

    const v8, 0x7f02021a

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 677
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->ibMenuDownload:Landroid/widget/ImageButton;

    const v8, 0x7f020220

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 687
    :goto_2
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    int-to-float v8, v6

    div-float/2addr v7, v8

    float-to-int v7, v7

    int-to-double v8, v7

    const-wide v10, 0x4066666666666666L    # 179.2

    cmpl-double v7, v8, v10

    if-lez v7, :cond_5

    .line 688
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->tvTitle:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v8, v8, Lcom/market2345/model/App;->title:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    :cond_5
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->flTop:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/high16 v9, 0x437f0000    # 255.0f

    mul-float/2addr v8, v9

    int-to-float v9, v6

    div-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 691
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->flTop:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->invalidate()V

    goto/16 :goto_1

    .line 679
    :cond_6
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->llSecurity:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setClickable(Z)V

    .line 680
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->tvTitle:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->ibDownloadUp:Landroid/widget/ImageButton;

    const v8, 0x7f020174

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 682
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->ibDownloadDown:Landroid/widget/ImageButton;

    const v8, 0x7f020172

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 683
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->ibTopShare:Landroid/widget/ImageButton;

    const v8, 0x7f020225

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 684
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->ibTopBack:Landroid/widget/ImageButton;

    const v8, 0x7f020218

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 685
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->ibMenuDownload:Landroid/widget/ImageButton;

    const v8, 0x7f02021d

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_2

    .line 692
    .end local v5    # "dy":F
    .end local v6    # "mTopViewHeight":I
    .restart local p1    # "event":Ljava/lang/Object;
    :cond_7
    instance-of v7, p1, Lcom/market2345/detail/event/CommentEvent;

    if-eqz v7, :cond_1

    .line 693
    iget v7, p0, Lcom/market2345/detail/DetailActivity;->allNum:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/market2345/detail/DetailActivity;->allNum:I

    .line 694
    iget v7, p0, Lcom/market2345/detail/DetailActivity;->allNum:I

    if-lez v7, :cond_8

    .line 695
    iget v7, p0, Lcom/market2345/detail/DetailActivity;->allNum:I

    const/16 v8, 0x2710

    if-ge v7, v8, :cond_9

    .line 696
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->TITLES:[Ljava/lang/String;

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0b0046

    invoke-virtual {p0, v10}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/market2345/detail/DetailActivity;->allNum:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 703
    :cond_8
    :goto_3
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->tabs:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    invoke-virtual {v7}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 698
    :cond_9
    new-instance v4, Ljava/text/DecimalFormat;

    const-string v7, "0.00"

    invoke-direct {v4, v7}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 699
    .restart local v4    # "df":Ljava/text/DecimalFormat;
    new-instance v7, Ljava/math/BigDecimal;

    iget v8, p0, Lcom/market2345/detail/DetailActivity;->allNum:I

    int-to-double v8, v8

    const-wide v10, 0x40c3880000000000L    # 10000.0

    div-double/2addr v8, v10

    invoke-virtual {v4, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    .line 700
    .restart local v2    # "commentsNum":D
    iget-object v7, p0, Lcom/market2345/detail/DetailActivity;->TITLES:[Ljava/lang/String;

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f0b0046

    invoke-virtual {p0, v10}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\u4e07)"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    goto :goto_3
.end method

.method public onReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "cause"    # Ljava/lang/String;
    .param p2, "report"    # Ljava/lang/String;
    .param p3, "contacts"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    const-string p1, ""

    .line 583
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 584
    const-string p2, ""

    .line 586
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    const-string p3, ""

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    if-eqz v0, :cond_3

    .line 591
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v4, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    iget-object v5, v0, Lcom/market2345/model/App;->version:Ljava/lang/String;

    iget v6, p0, Lcom/market2345/detail/DetailActivity;->sid:I

    iget-object v8, p0, Lcom/market2345/detail/DetailActivity;->mhander:Landroid/os/Handler;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p0

    invoke-static/range {v0 .. v8}, Lcom/market2345/http/MarketAPI;->detailReport(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/market2345/http/ApiAsyncTask$ApiRequestListener;Landroid/os/Handler;)V

    .line 593
    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/market2345/home/BaseFragmentActivity;->onStop()V

    .line 153
    const-string v0, "onStop"

    const-string v1, "onStop....."

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 254
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 258
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    if-eqz p2, :cond_3

    instance-of v0, p2, Lcom/market2345/model/SingleAppResp;

    if-eqz v0, :cond_3

    .line 260
    check-cast p2, Lcom/market2345/model/SingleAppResp;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    .line 261
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->noData:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->downloadBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->progress:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->flTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 266
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->flTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 268
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v0, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->appDetail:Lcom/market2345/model/SingleAppResp;

    iget-object v0, v0, Lcom/market2345/model/SingleAppResp;->list:Lcom/market2345/model/App;

    iput-object v0, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    .line 270
    invoke-direct {p0}, Lcom/market2345/detail/DetailActivity;->initData()V

    .line 272
    :cond_2
    invoke-direct {p0}, Lcom/market2345/detail/DetailActivity;->initDatas()V

    goto :goto_0

    .line 274
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    const-string v0, "detail"

    const-string v1, "detail success:null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 276
    :cond_4
    const-string v0, "http://zhushou.2345.com/index.php?c=comment&d=listAndroid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 277
    check-cast p2, Landroid/util/Pair;

    .end local p2    # "obj":Ljava/lang/Object;
    sput-object p2, Lcom/market2345/detail/DetailActivity;->pair:Landroid/util/Pair;

    goto :goto_0

    .line 278
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=addReport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    const-string v0, "200"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 280
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b012d

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 282
    :cond_6
    invoke-virtual {p0}, Lcom/market2345/detail/DetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b012c

    invoke-virtual {p0, v1}, Lcom/market2345/detail/DetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method public showError()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 563
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->noData:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->downloadBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->loading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/market2345/detail/DetailActivity;->progress:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 567
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    if-nez v1, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_3

    move-object v0, p2

    .line 239
    check-cast v0, Landroid/util/Pair;

    .line 240
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.app.install"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 241
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    invoke-direct {p0, v1}, Lcom/market2345/detail/DetailActivity;->initAppstate(Lcom/market2345/model/App;)V

    goto :goto_0

    .line 242
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.downloading.list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    invoke-direct {p0, v1}, Lcom/market2345/detail/DetailActivity;->initAppstate(Lcom/market2345/model/App;)V

    goto :goto_0

    .line 245
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 246
    const-string v1, "pref.add.new.download"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    iget-object v1, p0, Lcom/market2345/detail/DetailActivity;->app:Lcom/market2345/model/App;

    invoke-direct {p0, v1}, Lcom/market2345/detail/DetailActivity;->initAppstate(Lcom/market2345/model/App;)V

    goto :goto_0
.end method
