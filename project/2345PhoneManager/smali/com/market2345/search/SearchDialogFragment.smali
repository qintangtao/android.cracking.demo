.class public Lcom/market2345/search/SearchDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/market2345/applist/AppListAdapter$LazyloadListener;
.implements Lcom/market2345/applist/AppListAdapter$OnSearchResultClickListener;
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
.implements Lcom/market2345/search/SearchDelegate$SearchListener;
.implements Lcom/market2345/search/SearchHistoryAdapter$HistoryListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility",
        "InflateParams"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/search/SearchDialogFragment$16;,
        Lcom/market2345/search/SearchDialogFragment$ClickType;,
        Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;
    }
.end annotation


# static fields
.field private static final CLASSIFY_GAME:I = 0x1

.field private static final CLASSIFY_SOFT:I = 0x0

.field private static final MAX_COLUMN:I = 0x4

.field private static final MAX_POOL_SIZE:I = 0x2

.field private static final REFRESH_HOT:I = -0x1

.field public static final SEARCH_CLICK:Ljava/lang/String; = "search_click"

.field public static final SEARCH_FROM_DESK:Ljava/lang/String; = "search_from_desk"

.field public static final SEARCH_RESULT:Ljava/lang/String; = "search_result"

.field public static final SEARCH_SUGGESTION:Ljava/lang/String; = "search_tip"

.field public static final SEARCH_WORD:Ljava/lang/String; = "search_word"

.field private static final SHOW_ASSOCIATE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private available_width_in_pix:D

.field private bFromDesk:Z

.field private classifyClickListener:Landroid/view/View$OnClickListener;

.field private data:Lcom/market2345/slidemenu/model/ClassifyItemData;

.field private expandOnClickListener:Landroid/view/View$OnClickListener;

.field private footerViews:[Landroid/view/View;

.field private hint:Ljava/lang/String;

.field private histories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hotOnClickListener:Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;

.field private final itemClick:Landroid/view/View$OnClickListener;

.field private localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

.field private final mActionViews:[Landroid/view/View;

.field private mAvailableColumn:I

.field private mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mContentLeftRightMargin:I

.field private mCriticalNum:I

.field private volatile mCurrentSearchWord:Ljava/lang/String;

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mGameClassify:Lcom/market2345/customview/GridLayout;

.field private mGameClassifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHasFooter:Z

.field private mHasHeader:Z

.field private mHistoryView:Landroid/view/View;

.field private volatile mHttpPost:Lorg/apache/http/client/methods/HttpPost;

.field private mInSuggesting:Z

.field private mLeftBtn:Landroid/widget/ImageView;

.field private final mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadError:Landroid/view/View;

.field private mLoaded:Z

.field private mLoading:Landroid/view/View;

.field private mMenuSearch:Landroid/widget/ImageView;

.field private mMoreData:Landroid/view/View;

.field private mNoData:Landroid/view/View;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgressbar:Landroid/widget/ProgressBar;

.field private mRecommendationContent:Lcom/market2345/customview/GridLayout;

.field private mRecommendationGridLayout:Lcom/market2345/customview/GridLayout;

.field private mRecommendationRootView:Landroid/view/View;

.field private mRefreshIcon:Landroid/widget/ImageView;

.field private mRefreshView:Landroid/widget/LinearLayout;

.field private mResultAdapter:Lcom/market2345/search/SearchAppListAdapter;

.field private mResultView:Landroid/widget/ListView;

.field private mRetry:Landroid/widget/TextView;

.field private final mSearchCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSearchClear:Landroid/widget/ImageView;

.field private mSearchDelegate:Lcom/market2345/search/SearchDelegate;

.field private mSearchEditext:Landroid/widget/EditText;

.field private mSearchResultPage:Lcom/market2345/model/AppListDatas;

.field private mSearchWord:Ljava/lang/String;

.field private mSearching:Z

.field private mSession:Lcom/market2345/datacenter/DataCenterObserver;

.field private mShowResult:Z

.field private mSoftClassify:Lcom/market2345/customview/GridLayout;

.field private mSoftClassifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionAdapter:Lcom/market2345/search/SuggestionAdapter;

.field private mSuggestionView:Landroid/widget/ListView;

.field private mType:Lcom/market2345/search/SearchDialogFragment$ClickType;

.field private mVsRecommendation:Landroid/view/ViewStub;

.field private mhander:Landroid/os/Handler;

.field private rootView:Landroid/view/View;

.field private searchHistoryAdapter:Lcom/market2345/search/SearchHistoryAdapter;

.field private searchHistoryListView:Landroid/widget/ListView;

.field private search_progressBar:Landroid/view/View;

.field private search_retry:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/search/SearchDialogFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    .line 140
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mList:Ljava/util/ArrayList;

    .line 168
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    .line 173
    sget-object v0, Lcom/market2345/search/SearchDialogFragment$ClickType;->SUGGESTION:Lcom/market2345/search/SearchDialogFragment$ClickType;

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mType:Lcom/market2345/search/SearchDialogFragment$ClickType;

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLoaded:Z

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mGameClassifyList:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSoftClassifyList:Ljava/util/ArrayList;

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->histories:Ljava/util/ArrayList;

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mhander:Landroid/os/Handler;

    .line 664
    new-instance v0, Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;

    invoke-direct {v0, p0}, Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->hotOnClickListener:Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;

    .line 933
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->footerViews:[Landroid/view/View;

    .line 1020
    new-instance v0, Lcom/market2345/search/SearchDialogFragment$13;

    invoke-direct {v0, p0}, Lcom/market2345/search/SearchDialogFragment$13;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->itemClick:Landroid/view/View$OnClickListener;

    .line 1049
    new-instance v0, Lcom/market2345/search/SearchDialogFragment$14;

    invoke-direct {v0, p0}, Lcom/market2345/search/SearchDialogFragment$14;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->expandOnClickListener:Landroid/view/View$OnClickListener;

    .line 1141
    new-instance v0, Lcom/market2345/search/SearchDialogFragment$15;

    invoke-direct {v0, p0}, Lcom/market2345/search/SearchDialogFragment$15;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->classifyClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/search/SearchDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->searchEvent()V

    return-void
.end method

.method static synthetic access$1000(Lcom/market2345/search/SearchDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mShowResult:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/market2345/search/SearchDialogFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/market2345/search/SearchDialogFragment;->showRecommendation(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/market2345/search/SearchDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/market2345/search/SearchDialogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchWord:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/market2345/search/SearchDialogFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/market2345/search/SearchDialogFragment;->startSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/market2345/search/SearchDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->histories:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/market2345/search/SearchDialogFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment;->histories:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/market2345/search/SearchDialogFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/market2345/search/SearchDialogFragment;->clearHistoryDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/search/SearchHistoryAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryAdapter:Lcom/market2345/search/SearchHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/market2345/search/SearchDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->resumeRecommendation()V

    return-void
.end method

.method static synthetic access$1800(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/market2345/search/SearchDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    return v0
.end method

.method static synthetic access$200(Lcom/market2345/search/SearchDialogFragment;Landroid/widget/EditText;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;
    .param p1, "x1"    # Landroid/widget/EditText;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/market2345/search/SearchDialogFragment;->startSearch(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->search_progressBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/market2345/search/SearchDialogFragment;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->footerViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/search/SearchDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchDelegate:Lcom/market2345/search/SearchDelegate;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/market2345/search/SearchDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mCurrentSearchWord:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/market2345/search/SearchDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/market2345/search/SearchDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSoftClassifyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/market2345/search/SearchDialogFragment;Ljava/util/ArrayList;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/market2345/search/SearchDialogFragment;->fillClassifyItem(Ljava/util/ArrayList;IZ)V

    return-void
.end method

.method static synthetic access$2700(Lcom/market2345/search/SearchDialogFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mGameClassifyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/slidemenu/model/ClassifyItemData;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->data:Lcom/market2345/slidemenu/model/ClassifyItemData;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/market2345/search/SearchDialogFragment;Lcom/market2345/slidemenu/model/ClassifyItemData;)Lcom/market2345/slidemenu/model/ClassifyItemData;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;
    .param p1, "x1"    # Lcom/market2345/slidemenu/model/ClassifyItemData;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment;->data:Lcom/market2345/slidemenu/model/ClassifyItemData;

    return-object p1
.end method

.method static synthetic access$300(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/search/SearchDialogFragment;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/search/SearchDialogFragment;Landroid/view/View;[Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # [Landroid/view/View;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/market2345/search/SearchDialogFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->hideRecommendation()V

    return-void
.end method

.method static synthetic access$700(Lcom/market2345/search/SearchDialogFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/market2345/search/SearchDialogFragment;->showSearchHistory(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/search/SearchDialogFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLoading:Landroid/view/View;

    return-object v0
.end method

.method private addFooterView()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 936
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mMoreData:Landroid/view/View;

    if-nez v1, :cond_0

    .line 937
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ac

    invoke-virtual {v1, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mMoreData:Landroid/view/View;

    .line 939
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->footerViews:[Landroid/view/View;

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mMoreData:Landroid/view/View;

    const v3, 0x7f09034d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->search_progressBar:Landroid/view/View;

    aput-object v2, v1, v4

    .line 940
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->footerViews:[Landroid/view/View;

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mMoreData:Landroid/view/View;

    const v3, 0x7f09034f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->search_retry:Landroid/view/View;

    aput-object v2, v1, v5

    .line 941
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->search_progressBar:Landroid/view/View;

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->footerViews:[Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    .line 943
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->search_retry:Landroid/view/View;

    new-instance v2, Lcom/market2345/search/SearchDialogFragment$12;

    invoke-direct {v2, p0}, Lcom/market2345/search/SearchDialogFragment$12;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 952
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v1

    const v2, 0x1090003

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 954
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 955
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mMoreData:Landroid/view/View;

    invoke-virtual {v1, v2, v6, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 956
    iput-boolean v5, p0, Lcom/market2345/search/SearchDialogFragment;->mHasFooter:Z

    .line 957
    return-void
.end method

.method private addNoSearchResultHeaderView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 913
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mNoData:Landroid/view/View;

    if-nez v0, :cond_0

    .line 914
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ad

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mNoData:Landroid/view/View;

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 918
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mNoData:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 919
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHasHeader:Z

    .line 920
    return-void
.end method

.method private calcAvailableColumn()I
    .locals 8

    .prologue
    const/4 v2, 0x4

    .line 1175
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Lcom/market2345/search/SearchDialogFragment;->mContentLeftRightMargin:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/market2345/search/SearchDialogFragment;->available_width_in_pix:D

    .line 1176
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v1, v3

    .line 1177
    .local v1, "mHalfSpaceBetweenTwoColumn":F
    iget-wide v4, p0, Lcom/market2345/search/SearchDialogFragment;->available_width_in_pix:D

    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment;->mPaint:Landroid/graphics/Paint;

    const-string v6, "\u56db\u4e2a\u6c49\u5b57"

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v3, v1

    float-to-double v6, v3

    div-double/2addr v4, v6

    double-to-int v0, v4

    .line 1178
    .local v0, "mGridLayoutColumn":I
    if-le v0, v2, :cond_0

    move v0, v2

    .end local v0    # "mGridLayoutColumn":I
    :cond_0
    return v0
.end method

.method private clearHistoryDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 812
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 813
    .local v1, "myDialog":Landroid/app/Dialog;
    new-instance v0, Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;-><init>(Landroid/content/Context;)V

    .line 814
    .local v0, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 815
    invoke-virtual {v0, p1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setMessage(Ljava/lang/CharSequence;)V

    .line 816
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/market2345/search/SearchDialogFragment$9;

    invoke-direct {v3, p0, v1}, Lcom/market2345/search/SearchDialogFragment$9;-><init>(Lcom/market2345/search/SearchDialogFragment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 823
    const-string v2, "\u6e05\u9664"

    new-instance v3, Lcom/market2345/search/SearchDialogFragment$10;

    invoke-direct {v3, p0, v1, p2}, Lcom/market2345/search/SearchDialogFragment$10;-><init>(Lcom/market2345/search/SearchDialogFragment;Landroid/app/Dialog;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 847
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 848
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 849
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 850
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 851
    return-void
.end method

.method private doLoad()V
    .locals 2

    .prologue
    .line 1326
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->initLocalDatas()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    :goto_0
    return-void

    .line 1329
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mhander:Landroid/os/Handler;

    invoke-static {v0, p0, v1}, Lcom/market2345/http/MarketAPI;->getClassifyTag(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private fillClassifyItem(Ljava/util/ArrayList;IZ)V
    .locals 17
    .param p2, "classifyType"    # I
    .param p3, "expand"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1264
    .local p1, "classifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;>;"
    if-nez p2, :cond_0

    .line 1265
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/search/SearchDialogFragment;->mSoftClassify:Lcom/market2345/customview/GridLayout;

    .line 1270
    .local v12, "classifyItemContainer":Lcom/market2345/customview/GridLayout;
    :goto_0
    invoke-virtual {v12}, Lcom/market2345/customview/GridLayout;->getChildCount()I

    move-result v13

    .line 1272
    .local v13, "count":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v13, :cond_1

    .line 1273
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/market2345/customview/GridLayout;->removeViewAt(I)V

    .line 1272
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1267
    .end local v12    # "classifyItemContainer":Lcom/market2345/customview/GridLayout;
    .end local v13    # "count":I
    .end local v14    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/search/SearchDialogFragment;->mGameClassify:Lcom/market2345/customview/GridLayout;

    .restart local v12    # "classifyItemContainer":Lcom/market2345/customview/GridLayout;
    goto :goto_0

    .line 1275
    .restart local v13    # "count":I
    .restart local v14    # "i":I
    :cond_1
    const/4 v14, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_5

    .line 1276
    move-object/from16 v0, p0

    iget v1, v0, Lcom/market2345/search/SearchDialogFragment;->mAvailableColumn:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/market2345/search/SearchDialogFragment;->getGridItemLayoutParams(I)Lcom/market2345/customview/GridLayout$LayoutParams;

    move-result-object v3

    .line 1277
    .local v3, "layoutParams":Lcom/market2345/customview/GridLayout$LayoutParams;
    if-nez v14, :cond_2

    .line 1278
    const/4 v1, 0x0

    iput v1, v3, Lcom/market2345/customview/GridLayout$LayoutParams;->rightMargin:I

    .line 1280
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/market2345/search/SearchDialogFragment;->mAvailableColumn:I

    rem-int v1, v14, v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_3

    .line 1281
    const/4 v1, 0x0

    iput v1, v3, Lcom/market2345/customview/GridLayout$LayoutParams;->leftMargin:I

    .line 1283
    :cond_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;

    .line 1285
    .local v2, "item":Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;
    iget-object v4, v2, Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/market2345/search/SearchDialogFragment;->classifyClickListener:Landroid/view/View$OnClickListener;

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/market2345/search/SearchDialogFragment;->initClassifyItem(Ljava/lang/Object;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v11

    .line 1286
    .local v11, "app":Landroid/view/View;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/market2345/search/SearchDialogFragment;->mCriticalNum:I

    if-le v14, v1, :cond_4

    if-eqz p3, :cond_6

    .line 1287
    :cond_4
    invoke-virtual {v12}, Lcom/market2345/customview/GridLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v12, v11, v1}, Lcom/market2345/customview/GridLayout;->addView(Landroid/view/View;I)V

    .line 1288
    move-object/from16 v0, p0

    iget v1, v0, Lcom/market2345/search/SearchDialogFragment;->mCriticalNum:I

    if-ne v14, v1, :cond_6

    if-nez p3, :cond_6

    .line 1294
    .end local v2    # "item":Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;
    .end local v3    # "layoutParams":Lcom/market2345/customview/GridLayout$LayoutParams;
    .end local v11    # "app":Landroid/view/View;
    :cond_5
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/market2345/search/SearchDialogFragment;->mAvailableColumn:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/market2345/search/SearchDialogFragment;->getGridItemLayoutParams(I)Lcom/market2345/customview/GridLayout$LayoutParams;

    move-result-object v6

    if-nez p3, :cond_7

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0b0136

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/market2345/search/SearchDialogFragment;->expandOnClickListener:Landroid/view/View$OnClickListener;

    const/4 v9, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/market2345/search/SearchDialogFragment;->initClassifyItem(Ljava/lang/Object;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object v10

    .line 1296
    .local v10, "additionalView":Landroid/view/View;
    const v1, 0x7f09000e

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v1, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1297
    const v1, 0x7f090356

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1298
    .local v15, "iv":Landroid/widget/ImageView;
    const v1, 0x7f090355

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 1299
    .local v16, "tv":Landroid/widget/TextView;
    if-eqz p3, :cond_8

    .line 1300
    const v1, 0x7f02003b

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1301
    const v1, 0x7f0b014b

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1306
    :goto_4
    invoke-virtual {v12}, Lcom/market2345/customview/GridLayout;->getChildCount()I

    move-result v1

    invoke-virtual {v12, v10, v1}, Lcom/market2345/customview/GridLayout;->addView(Landroid/view/View;I)V

    .line 1309
    return-void

    .line 1275
    .end local v10    # "additionalView":Landroid/view/View;
    .end local v15    # "iv":Landroid/widget/ImageView;
    .end local v16    # "tv":Landroid/widget/TextView;
    .restart local v2    # "item":Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;
    .restart local v3    # "layoutParams":Lcom/market2345/customview/GridLayout$LayoutParams;
    .restart local v11    # "app":Landroid/view/View;
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_2

    .line 1294
    .end local v2    # "item":Lcom/market2345/slidemenu/model/ClassifyFragmentChildListItem;
    .end local v3    # "layoutParams":Lcom/market2345/customview/GridLayout$LayoutParams;
    .end local v11    # "app":Landroid/view/View;
    :cond_7
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0b0135

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 1303
    .restart local v10    # "additionalView":Landroid/view/View;
    .restart local v15    # "iv":Landroid/widget/ImageView;
    .restart local v16    # "tv":Landroid/widget/TextView;
    :cond_8
    const v1, 0x7f020011

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1304
    const v1, 0x7f0b0074

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_4
.end method

.method private getGridItemLayoutParams(I)Lcom/market2345/customview/GridLayout$LayoutParams;
    .locals 4
    .param p1, "columnCount"    # I

    .prologue
    const v3, 0x7f080033

    .line 1244
    new-instance v0, Lcom/market2345/customview/GridLayout$LayoutParams;

    invoke-direct {v0}, Lcom/market2345/customview/GridLayout$LayoutParams;-><init>()V

    .line 1245
    .local v0, "layoutParams":Lcom/market2345/customview/GridLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1246
    .local v1, "margin":I
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/market2345/customview/GridLayout$LayoutParams;->rightMargin:I

    iput v2, v0, Lcom/market2345/customview/GridLayout$LayoutParams;->topMargin:I

    iput v2, v0, Lcom/market2345/customview/GridLayout$LayoutParams;->leftMargin:I

    iput v2, v0, Lcom/market2345/customview/GridLayout$LayoutParams;->bottomMargin:I

    .line 1250
    invoke-direct {p0, p1, v1}, Lcom/market2345/search/SearchDialogFragment;->getItemWidth(II)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v0, Lcom/market2345/customview/GridLayout$LayoutParams;->width:I

    .line 1251
    return-object v0
.end method

.method private getItemWidth(II)D
    .locals 4
    .param p1, "columnCount"    # I
    .param p2, "margin"    # I

    .prologue
    .line 907
    iget-wide v0, p0, Lcom/market2345/search/SearchDialogFragment;->available_width_in_pix:D

    add-int/lit8 v2, p1, -0x1

    mul-int/lit8 v2, v2, 0x2

    mul-int/2addr v2, p2

    int-to-double v2, v2

    sub-double/2addr v0, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getRecommendation()V
    .locals 1

    .prologue
    .line 998
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->showLoading()V

    .line 999
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchDelegate:Lcom/market2345/search/SearchDelegate;

    invoke-virtual {v0}, Lcom/market2345/search/SearchDelegate;->getRecommendation()V

    .line 1000
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->doLoad()V

    .line 1001
    return-void
.end method

.method private hideRecommendation()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 337
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const v1, 0x7f0902de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const v1, 0x7f0902db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const v1, 0x7f09034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 340
    :cond_0
    return-void
.end method

.method private initClassifyItem(Ljava/lang/Object;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Landroid/view/View$OnClickListener;Z)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "onClickListener"    # Landroid/view/View$OnClickListener;
    .param p5, "additionalImageView"    # Z

    .prologue
    const/4 v5, 0x0

    .line 1311
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300b1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1312
    .local v0, "hotItem":Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1313
    const v2, 0x7f090355

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1314
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1315
    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1316
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1317
    if-eqz p5, :cond_0

    .line 1318
    const v2, 0x7f090356

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    :cond_0
    return-object v0
.end method

.method private initLoading()V
    .locals 4

    .prologue
    .line 970
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090297

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 971
    .local v0, "vsSearchLoading":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mLoading:Landroid/view/View;

    .line 972
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment;->mLoading:Landroid/view/View;

    aput-object v3, v1, v2

    .line 973
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mLoading:Landroid/view/View;

    const v2, 0x7f09012a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mProgressbar:Landroid/widget/ProgressBar;

    .line 974
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mLoading:Landroid/view/View;

    const v2, 0x7f0901f0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mLoadError:Landroid/view/View;

    .line 975
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mLoadError:Landroid/view/View;

    const v2, 0x7f0901f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRetry:Landroid/widget/TextView;

    .line 976
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRetry:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 977
    return-void
.end method

.method private initLocalDatas()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1336
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1346
    :goto_0
    return v4

    .line 1338
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1339
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "recommandclassifydata"

    const-string v5, ""

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1340
    .local v2, "str":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1342
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1343
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    iput-object v3, p0, Lcom/market2345/search/SearchDialogFragment;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    .line 1346
    .end local v0    # "gson":Lcom/google/gson/Gson;
    :cond_1
    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 352
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mPaint:Landroid/graphics/Paint;

    .line 353
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 354
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090298

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mVsRecommendation:Landroid/view/ViewStub;

    .line 355
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mVsRecommendation:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    .line 356
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    aput-object v3, v1, v2

    .line 357
    iget-boolean v1, p0, Lcom/market2345/search/SearchDialogFragment;->mShowResult:Z

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->isResultViewShown()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->isAssociateViewShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    .line 363
    :goto_0
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const v2, 0x7f0902dd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRefreshIcon:Landroid/widget/ImageView;

    .line 364
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const v2, 0x7f0902dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRefreshView:Landroid/widget/LinearLayout;

    .line 366
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const v2, 0x7f0902de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/GridLayout;

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationGridLayout:Lcom/market2345/customview/GridLayout;

    .line 367
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/market2345/search/SearchDialogFragment;->mContentLeftRightMargin:I

    .line 368
    new-instance v1, Lcom/market2345/search/SearchHistoryAdapter;

    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment;->histories:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lcom/market2345/search/SearchHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryAdapter:Lcom/market2345/search/SearchHistoryAdapter;

    .line 369
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryAdapter:Lcom/market2345/search/SearchHistoryAdapter;

    invoke-virtual {v1, p0}, Lcom/market2345/search/SearchHistoryAdapter;->setHistoryListener(Lcom/market2345/search/SearchHistoryAdapter$HistoryListener;)V

    .line 370
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mHistoryView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->rootView:Landroid/view/View;

    const v2, 0x7f0902df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 372
    .local v0, "vs":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 373
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090351

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mHistoryView:Landroid/view/View;

    .line 374
    iget-boolean v1, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mHistoryView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 376
    .end local v0    # "vs":Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->rootView:Landroid/view/View;

    const v2, 0x7f090299

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 377
    .restart local v0    # "vs":Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionView:Landroid/widget/ListView;

    .line 378
    iget-boolean v1, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    if-eqz v1, :cond_1

    .line 379
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const v2, 0x7f0902d9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 381
    :cond_1
    return-void

    .line 360
    .end local v0    # "vs":Landroid/view/ViewStub;
    :cond_2
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private isAssociateViewShown()Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    .line 648
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInSuggesting()Z
    .locals 1

    .prologue
    .line 659
    iget-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mInSuggesting:Z

    return v0
.end method

.method private isResultViewShown()Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->isShown()Z

    move-result v0

    .line 655
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance()Lcom/market2345/search/SearchDialogFragment;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {v0}, Lcom/market2345/search/SearchDialogFragment;-><init>()V

    .line 240
    .local v0, "f":Lcom/market2345/search/SearchDialogFragment;
    return-object v0
.end method

.method private removeFooterView()V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 961
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mMoreData:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 963
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHasFooter:Z

    .line 964
    return-void
.end method

.method private removeHeaderView()V
    .locals 2

    .prologue
    .line 923
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mNoData:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 924
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHasHeader:Z

    .line 925
    return-void
.end method

.method private resumeRecommendation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 346
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const v1, 0x7f0902de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const v1, 0x7f0902db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 348
    iget-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const v1, 0x7f09034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    :cond_0
    return-void
.end method

.method private searchEvent()V
    .locals 2

    .prologue
    .line 1111
    iget-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    if-eqz v0, :cond_0

    .line 1112
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Search_Out_13"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1116
    :goto_0
    return-void

    .line 1114
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Search_In_14"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showApps(Lcom/market2345/model/PageApp;)V
    .locals 12
    .param p1, "pageCategoryApp"    # Lcom/market2345/model/PageApp;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 562
    if-eqz p1, :cond_10

    .line 564
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    if-nez v6, :cond_0

    .line 565
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->rootView:Landroid/view/View;

    const v8, 0x7f09029a

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    .line 566
    .local v5, "vs":Landroid/view/ViewStub;
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    .line 567
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    aput-object v9, v6, v8

    .line 569
    new-instance v6, Lcom/market2345/search/SearchAppListAdapter;

    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    iget-object v9, p0, Lcom/market2345/search/SearchDialogFragment;->mList:Ljava/util/ArrayList;

    invoke-direct {v6, v8, v7, v9}, Lcom/market2345/search/SearchAppListAdapter;-><init>(Landroid/app/Activity;ILjava/util/List;)V

    iput-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultAdapter:Lcom/market2345/search/SearchAppListAdapter;

    .line 570
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultAdapter:Lcom/market2345/search/SearchAppListAdapter;

    invoke-virtual {v6, p0}, Lcom/market2345/search/SearchAppListAdapter;->setSearchResultClickListener(Lcom/market2345/applist/AppListAdapter$OnSearchResultClickListener;)V

    .line 571
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultAdapter:Lcom/market2345/search/SearchAppListAdapter;

    iget-boolean v8, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    const-string v9, "searchDialog"

    invoke-virtual {v6, v8, v9}, Lcom/market2345/search/SearchAppListAdapter;->setFromDeskTag(ZLjava/lang/String;)V

    .line 572
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultAdapter:Lcom/market2345/search/SearchAppListAdapter;

    iget-object v8, p0, Lcom/market2345/search/SearchDialogFragment;->itemClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Lcom/market2345/search/SearchAppListAdapter;->setItemClick(Landroid/view/View$OnClickListener;)V

    .line 575
    .end local v5    # "vs":Landroid/view/ViewStub;
    :cond_0
    iget-object v6, p1, Lcom/market2345/model/PageApp;->listRise:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    iget-object v6, p1, Lcom/market2345/model/PageApp;->listRise:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_a

    .line 577
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultAdapter:Lcom/market2345/search/SearchAppListAdapter;

    invoke-virtual {v6, v11}, Lcom/market2345/search/SearchAppListAdapter;->setmLazyloadListener(Lcom/market2345/applist/AppListAdapter$LazyloadListener;)V

    .line 579
    iget-boolean v6, p0, Lcom/market2345/search/SearchDialogFragment;->mHasHeader:Z

    if-nez v6, :cond_1

    .line 580
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->addNoSearchResultHeaderView()V

    .line 582
    :cond_1
    iget-object v6, p1, Lcom/market2345/model/PageApp;->listRise:Ljava/util/ArrayList;

    if-eqz v6, :cond_6

    iget-object v6, p1, Lcom/market2345/model/PageApp;->listRise:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    .line 586
    iget-boolean v6, p0, Lcom/market2345/search/SearchDialogFragment;->mHasFooter:Z

    if-eqz v6, :cond_2

    .line 587
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->removeFooterView()V

    .line 590
    :cond_2
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 591
    iget-object v6, p1, Lcom/market2345/model/PageApp;->listRise:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 592
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 593
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 594
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v6}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v6

    iget-object v8, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v6}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v6

    iget-object v8, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/market2345/datacenter/AppsInfoHandler;->checkIsHasInatall(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 595
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 599
    .end local v0    # "app":Lcom/market2345/model/App;
    :cond_5
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mList:Ljava/util/ArrayList;

    iget-object v8, p1, Lcom/market2345/model/PageApp;->listRise:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 623
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultAdapter:Lcom/market2345/search/SearchAppListAdapter;

    invoke-virtual {v6}, Lcom/market2345/search/SearchAppListAdapter;->notifyDataSetChanged()V

    .line 624
    iget-boolean v6, p0, Lcom/market2345/search/SearchDialogFragment;->mShowResult:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mLoading:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->isShown()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 626
    :cond_7
    const/4 v3, 0x0

    .line 627
    .local v3, "scroll_top":I
    const/4 v2, 0x0

    .line 628
    .local v2, "scroll_pos":I
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchResultPage:Lcom/market2345/model/AppListDatas;

    iget-object v6, v6, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    iget-object v6, v6, Lcom/market2345/model/PageApp;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v6, v6, Lcom/market2345/model/PageInfo;->page:I

    if-le v6, v10, :cond_8

    .line 629
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 630
    .local v4, "v":Landroid/view/View;
    if-nez v4, :cond_f

    move v3, v7

    .line 631
    :goto_2
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 633
    .end local v4    # "v":Landroid/view/View;
    :cond_8
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/market2345/search/SearchDialogFragment;->mResultAdapter:Lcom/market2345/search/SearchAppListAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 636
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    invoke-virtual {v6, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 637
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    invoke-direct {p0, v6, v7}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    .line 642
    .end local v2    # "scroll_pos":I
    .end local v3    # "scroll_top":I
    :cond_9
    :goto_3
    return-void

    .line 602
    :cond_a
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mResultAdapter:Lcom/market2345/search/SearchAppListAdapter;

    invoke-virtual {v6, p0}, Lcom/market2345/search/SearchAppListAdapter;->setmLazyloadListener(Lcom/market2345/applist/AppListAdapter$LazyloadListener;)V

    .line 604
    iget-boolean v6, p0, Lcom/market2345/search/SearchDialogFragment;->mHasHeader:Z

    if-eqz v6, :cond_b

    .line 605
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->removeHeaderView()V

    .line 607
    :cond_b
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchResultPage:Lcom/market2345/model/AppListDatas;

    invoke-virtual {v6}, Lcom/market2345/model/AppListDatas;->hasMore()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 608
    iget-boolean v6, p0, Lcom/market2345/search/SearchDialogFragment;->mHasFooter:Z

    if-nez v6, :cond_c

    .line 609
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->addFooterView()V

    .line 610
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->search_progressBar:Landroid/view/View;

    iget-object v8, p0, Lcom/market2345/search/SearchDialogFragment;->footerViews:[Landroid/view/View;

    invoke-direct {p0, v6, v8}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    .line 618
    :cond_c
    :goto_4
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchResultPage:Lcom/market2345/model/AppListDatas;

    iget-object v6, v6, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    iget-object v6, v6, Lcom/market2345/model/PageApp;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v6, v6, Lcom/market2345/model/PageInfo;->page:I

    if-ne v6, v10, :cond_d

    .line 619
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 621
    :cond_d
    iget-object v6, p0, Lcom/market2345/search/SearchDialogFragment;->mList:Ljava/util/ArrayList;

    iget-object v8, p1, Lcom/market2345/model/PageApp;->list:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 613
    :cond_e
    iget-boolean v6, p0, Lcom/market2345/search/SearchDialogFragment;->mHasFooter:Z

    if-eqz v6, :cond_c

    .line 614
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->removeFooterView()V

    goto :goto_4

    .line 630
    .restart local v2    # "scroll_pos":I
    .restart local v3    # "scroll_top":I
    .restart local v4    # "v":Landroid/view/View;
    :cond_f
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    goto :goto_2

    .line 640
    .end local v2    # "scroll_pos":I
    .end local v3    # "scroll_top":I
    .end local v4    # "v":Landroid/view/View;
    :cond_10
    invoke-virtual {p0, v11, v7}, Lcom/market2345/search/SearchDialogFragment;->onError(Ljava/lang/String;I)V

    goto :goto_3
.end method

.method private showContent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 736
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    invoke-direct {p0, v1, v2}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    .line 737
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->calcAvailableColumn()I

    move-result v1

    iput v1, p0, Lcom/market2345/search/SearchDialogFragment;->mAvailableColumn:I

    .line 738
    invoke-direct {p0, v3}, Lcom/market2345/search/SearchDialogFragment;->showRecommendation(Z)V

    .line 739
    invoke-direct {p0, v3}, Lcom/market2345/search/SearchDialogFragment;->showSearchHistory(Z)V

    .line 740
    iget v1, p0, Lcom/market2345/search/SearchDialogFragment;->mAvailableColumn:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/market2345/search/SearchDialogFragment;->mCriticalNum:I

    .line 741
    iget-boolean v1, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    if-eqz v1, :cond_0

    .line 742
    new-instance v0, Lcom/market2345/slidemenu/model/ClassifyConstant;

    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/slidemenu/model/ClassifyConstant;-><init>(Landroid/content/Context;)V

    .line 743
    .local v0, "classifyConstant":Lcom/market2345/slidemenu/model/ClassifyConstant;
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mGameClassifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/market2345/slidemenu/model/ClassifyConstant;->fillGameClassifyData(Ljava/util/ArrayList;)V

    .line 744
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mSoftClassifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/market2345/slidemenu/model/ClassifyConstant;->fillSoftClassifyData(Ljava/util/ArrayList;)V

    .line 746
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const v2, 0x7f09034c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/GridLayout;

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mGameClassify:Lcom/market2345/customview/GridLayout;

    .line 747
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    const v2, 0x7f09034b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/GridLayout;

    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mSoftClassify:Lcom/market2345/customview/GridLayout;

    .line 750
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mSoftClassify:Lcom/market2345/customview/GridLayout;

    iget v2, p0, Lcom/market2345/search/SearchDialogFragment;->mAvailableColumn:I

    invoke-virtual {v1, v2}, Lcom/market2345/customview/GridLayout;->setColumnCount(I)V

    .line 751
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mGameClassify:Lcom/market2345/customview/GridLayout;

    iget v2, p0, Lcom/market2345/search/SearchDialogFragment;->mAvailableColumn:I

    invoke-virtual {v1, v2}, Lcom/market2345/customview/GridLayout;->setColumnCount(I)V

    .line 753
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mSoftClassifyList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3, v3}, Lcom/market2345/search/SearchDialogFragment;->fillClassifyItem(Ljava/util/ArrayList;IZ)V

    .line 754
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mGameClassifyList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/market2345/search/SearchDialogFragment;->fillClassifyItem(Ljava/util/ArrayList;IZ)V

    .line 758
    .end local v0    # "classifyConstant":Lcom/market2345/slidemenu/model/ClassifyConstant;
    :cond_0
    return-void
.end method

.method private showLoading()V
    .locals 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLoading:Landroid/view/View;

    if-nez v0, :cond_0

    .line 981
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->initLoading()V

    .line 983
    :cond_0
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLoading:Landroid/view/View;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    .line 984
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mProgressbar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLoadError:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 986
    return-void
.end method

.method private showRecommendation(Z)V
    .locals 15
    .param p1, "animate"    # Z

    .prologue
    .line 1204
    iget-object v11, p0, Lcom/market2345/search/SearchDialogFragment;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v11}, Lcom/market2345/datacenter/DataCenterObserver;->getRecommendationList()Lcom/market2345/model/SearchRecommendation;

    move-result-object v10

    .line 1205
    .local v10, "recommendationList":Lcom/market2345/model/SearchRecommendation;
    iget v11, p0, Lcom/market2345/search/SearchDialogFragment;->mAvailableColumn:I

    add-int/lit8 v3, v11, -0x1

    .line 1206
    .local v3, "columnCount":I
    iget-object v11, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationGridLayout:Lcom/market2345/customview/GridLayout;

    invoke-virtual {v11, v3}, Lcom/market2345/customview/GridLayout;->setColumnCount(I)V

    .line 1207
    iget-object v11, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationGridLayout:Lcom/market2345/customview/GridLayout;

    invoke-virtual {v11}, Lcom/market2345/customview/GridLayout;->getChildCount()I

    move-result v4

    .line 1208
    .local v4, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 1209
    iget-object v11, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationGridLayout:Lcom/market2345/customview/GridLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/market2345/customview/GridLayout;->removeViewAt(I)V

    .line 1208
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1211
    :cond_0
    iget-object v11, v10, Lcom/market2345/model/SearchRecommendation;->hot:Ljava/util/ArrayList;

    invoke-direct {p0, v11}, Lcom/market2345/search/SearchDialogFragment;->shuffleSort(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1212
    .local v2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/SearchHotRecommendation;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    mul-int/lit8 v12, v3, 0x4

    if-le v11, v12, :cond_3

    mul-int/lit8 v8, v3, 0x4

    .line 1213
    .local v8, "limit":I
    :goto_1
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_4

    .line 1214
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0300b1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1215
    .local v5, "hotItem":Landroid/view/View;
    invoke-direct {p0, v3}, Lcom/market2345/search/SearchDialogFragment;->getGridItemLayoutParams(I)Lcom/market2345/customview/GridLayout$LayoutParams;

    move-result-object v7

    .line 1216
    .local v7, "layoutParams":Lcom/market2345/customview/GridLayout$LayoutParams;
    if-nez v6, :cond_1

    .line 1217
    const/4 v11, 0x0

    iput v11, v7, Lcom/market2345/customview/GridLayout$LayoutParams;->rightMargin:I

    .line 1219
    :cond_1
    rem-int v11, v6, v3

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 1220
    const/4 v11, 0x0

    iput v11, v7, Lcom/market2345/customview/GridLayout$LayoutParams;->leftMargin:I

    .line 1222
    :cond_2
    invoke-virtual {v5, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1223
    const v11, 0x7f090355

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1224
    .local v1, "app":Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/market2345/model/SearchHotRecommendation;

    iget-object v11, v11, Lcom/market2345/model/SearchHotRecommendation;->title:Ljava/lang/String;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1225
    const v12, 0x7f090021

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/market2345/model/SearchHotRecommendation;

    iget v11, v11, Lcom/market2345/model/SearchHotRecommendation;->softid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v12, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1226
    const v12, 0x7f090023

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/market2345/model/SearchHotRecommendation;

    iget-object v11, v11, Lcom/market2345/model/SearchHotRecommendation;->title:Ljava/lang/String;

    invoke-virtual {v5, v12, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1227
    iget-object v11, p0, Lcom/market2345/search/SearchDialogFragment;->hotOnClickListener:Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;

    invoke-virtual {v5, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1228
    iget-object v11, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationGridLayout:Lcom/market2345/customview/GridLayout;

    iget-object v12, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationGridLayout:Lcom/market2345/customview/GridLayout;

    invoke-virtual {v12}, Lcom/market2345/customview/GridLayout;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v5, v12}, Lcom/market2345/customview/GridLayout;->addView(Landroid/view/View;I)V

    .line 1213
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1212
    .end local v1    # "app":Landroid/widget/TextView;
    .end local v5    # "hotItem":Landroid/view/View;
    .end local v7    # "layoutParams":Lcom/market2345/customview/GridLayout$LayoutParams;
    .end local v8    # "limit":I
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_1

    .line 1230
    .restart local v8    # "limit":I
    :cond_4
    iget-object v11, p0, Lcom/market2345/search/SearchDialogFragment;->mRefreshView:Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/market2345/search/SearchDialogFragment;->hotOnClickListener:Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    iget-object v11, p0, Lcom/market2345/search/SearchDialogFragment;->mRefreshView:Landroid/widget/LinearLayout;

    const v12, 0x7f090021

    const/4 v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 1232
    iget-object v11, p0, Lcom/market2345/search/SearchDialogFragment;->mRefreshView:Landroid/widget/LinearLayout;

    const v12, 0x7f090022

    iget-object v13, v10, Lcom/market2345/model/SearchRecommendation;->hot:Ljava/util/ArrayList;

    invoke-virtual {v11, v12, v13}, Landroid/widget/LinearLayout;->setTag(ILjava/lang/Object;)V

    .line 1233
    if-eqz p1, :cond_5

    .line 1235
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const v12, 0x7f04000b

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1236
    .local v0, "aAnim":Landroid/view/animation/Animation;
    iget-object v11, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationGridLayout:Lcom/market2345/customview/GridLayout;

    invoke-virtual {v11, v0}, Lcom/market2345/customview/GridLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1238
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const v12, 0x7f04000c

    invoke-static {v11, v12}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 1239
    .local v9, "rAnim":Landroid/view/animation/Animation;
    iget-object v11, p0, Lcom/market2345/search/SearchDialogFragment;->mRefreshIcon:Landroid/widget/ImageView;

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1241
    .end local v0    # "aAnim":Landroid/view/animation/Animation;
    .end local v9    # "rAnim":Landroid/view/animation/Animation;
    :cond_5
    return-void
.end method

.method private showRetry()V
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLoading:Landroid/view/View;

    if-nez v0, :cond_0

    .line 990
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->initLoading()V

    .line 992
    :cond_0
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLoading:Landroid/view/View;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    .line 993
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mProgressbar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLoadError:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 995
    return-void
.end method

.method private showSearchHistory(Z)V
    .locals 2
    .param p1, "forceShow"    # Z

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 810
    :goto_0
    return-void

    .line 762
    :cond_0
    new-instance v0, Lcom/market2345/search/SearchHistoryManager;

    invoke-direct {v0}, Lcom/market2345/search/SearchHistoryManager;-><init>()V

    invoke-virtual {v0}, Lcom/market2345/search/SearchHistoryManager;->loadAll()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->histories:Ljava/util/ArrayList;

    .line 763
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->histories:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->histories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHistoryView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 765
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->resumeRecommendation()V

    goto :goto_0

    .line 768
    :cond_2
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHistoryView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 769
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryAdapter:Lcom/market2345/search/SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/market2345/search/SearchHistoryAdapter;->getHistories()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 770
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryAdapter:Lcom/market2345/search/SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/market2345/search/SearchHistoryAdapter;->getHistories()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->histories:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 771
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryAdapter:Lcom/market2345/search/SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/market2345/search/SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 773
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHistoryView:Landroid/view/View;

    const v1, 0x7f090352

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryListView:Landroid/widget/ListView;

    .line 774
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryAdapter:Lcom/market2345/search/SearchHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 775
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryListView:Landroid/widget/ListView;

    new-instance v1, Lcom/market2345/search/SearchDialogFragment$6;

    invoke-direct {v1, p0}, Lcom/market2345/search/SearchDialogFragment$6;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 782
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryListView:Landroid/widget/ListView;

    new-instance v1, Lcom/market2345/search/SearchDialogFragment$7;

    invoke-direct {v1, p0}, Lcom/market2345/search/SearchDialogFragment$7;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 800
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHistoryView:Landroid/view/View;

    const v1, 0x7f090354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/market2345/search/SearchDialogFragment$8;

    invoke-direct {v1, p0}, Lcom/market2345/search/SearchDialogFragment$8;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 806
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->searchHistoryListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/market2345/search/SearchDialogFragment;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    goto :goto_0
.end method

.method private showSingleView(Landroid/view/View;[Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 1009
    move-object v0, p2

    .local v0, "arr$":[Landroid/view/View;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1010
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 1011
    if-ne v3, p1, :cond_1

    .line 1012
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1009
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1014
    :cond_1
    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1018
    .end local v3    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private showSuggestion(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "searchWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 859
    .local p2, "associates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionAdapter:Lcom/market2345/search/SuggestionAdapter;

    if-nez v0, :cond_0

    .line 860
    new-instance v0, Lcom/market2345/search/SuggestionAdapter;

    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v1

    const v2, 0x7f0300aa

    invoke-direct {v0, v1, v2, p2}, Lcom/market2345/search/SuggestionAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionAdapter:Lcom/market2345/search/SuggestionAdapter;

    .line 863
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 902
    :cond_1
    :goto_0
    return-void

    .line 870
    :cond_2
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mCurrentSearchWord:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 871
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionView:Landroid/widget/ListView;

    aput-object v2, v0, v1

    .line 872
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionAdapter:Lcom/market2345/search/SuggestionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 873
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionView:Landroid/widget/ListView;

    new-instance v1, Lcom/market2345/search/SearchDialogFragment$11;

    invoke-direct {v1, p0}, Lcom/market2345/search/SearchDialogFragment$11;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 897
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionAdapter:Lcom/market2345/search/SuggestionAdapter;

    invoke-virtual {v0, p2}, Lcom/market2345/search/SuggestionAdapter;->setSuggestions(Ljava/util/ArrayList;)V

    .line 898
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionAdapter:Lcom/market2345/search/SuggestionAdapter;

    invoke-virtual {v0}, Lcom/market2345/search/SuggestionAdapter;->notifyDataSetChanged()V

    .line 899
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    .line 900
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mInSuggesting:Z

    goto :goto_0
.end method

.method private shuffleSort(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "list"    # Ljava/util/ArrayList;

    .prologue
    .line 1124
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 1125
    .local v2, "rd":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 1126
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 1127
    .local v1, "j":I
    if-ne v0, v1, :cond_0

    .line 1125
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1130
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1131
    .local v3, "temp":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1132
    invoke-virtual {p1, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1134
    .end local v1    # "j":I
    .end local v3    # "temp":Ljava/lang/Object;
    :cond_1
    return-object p1
.end method

.method private startSearch(Landroid/widget/EditText;)V
    .locals 1
    .param p1, "searchEditText"    # Landroid/widget/EditText;

    .prologue
    .line 459
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchWord:Ljava/lang/String;

    .line 460
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchWord:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/market2345/search/SearchDialogFragment;->startSearch(Ljava/lang/String;)V

    .line 461
    return-void
.end method

.method private startSearch(Ljava/lang/String;)V
    .locals 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 469
    iput-boolean v4, p0, Lcom/market2345/search/SearchDialogFragment;->mLoaded:Z

    .line 470
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 472
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->hint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 474
    iget-object p1, p0, Lcom/market2345/search/SearchDialogFragment;->hint:Ljava/lang/String;

    .line 475
    iput-boolean v5, p0, Lcom/market2345/search/SearchDialogFragment;->mSearching:Z

    .line 476
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->hint:Ljava/lang/String;

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchWord:Ljava/lang/String;

    .line 477
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->hint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Search_In_Hotwords"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 481
    :cond_0
    iput-boolean v5, p0, Lcom/market2345/search/SearchDialogFragment;->mSearching:Z

    .line 483
    new-instance v0, Lcom/market2345/search/SearchHistoryManager;

    invoke-direct {v0}, Lcom/market2345/search/SearchHistoryManager;-><init>()V

    new-instance v1, Lcom/market2345/search/SearchHistory;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Lcom/market2345/search/SearchHistory;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lcom/market2345/search/SearchHistoryManager;->save(Lcom/market2345/search/SearchHistory;)V

    .line 485
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 486
    iput-boolean v5, p0, Lcom/market2345/search/SearchDialogFragment;->mShowResult:Z

    .line 488
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->isAborted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 489
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchDelegate:Lcom/market2345/search/SearchDelegate;

    invoke-virtual {v0, p1}, Lcom/market2345/search/SearchDelegate;->search(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 495
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->showLoading()V

    .line 496
    invoke-direct {p0, v4}, Lcom/market2345/search/SearchDialogFragment;->showSearchHistory(Z)V

    .line 497
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 499
    :cond_2
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 558
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 513
    return-void
.end method

.method public isEnd()Z
    .locals 2

    .prologue
    .line 1085
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->search_retry:Landroid/view/View;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->footerViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchResultPage:Lcom/market2345/model/AppListDatas;

    invoke-virtual {v0}, Lcom/market2345/model/AppListDatas;->hasMore()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1089
    const/4 v0, 0x1

    .line 1091
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadOver()Z
    .locals 1

    .prologue
    .line 1106
    iget-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLoaded:Z

    return v0
.end method

.method public lazyload()V
    .locals 2

    .prologue
    .line 1096
    iget-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLoaded:Z

    if-nez v0, :cond_1

    .line 1102
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLoaded:Z

    .line 1100
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchWord:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1101
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchDelegate:Lcom/market2345/search/SearchDelegate;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/search/SearchDelegate;->searchNextPage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 257
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 258
    .local v0, "arguments":Landroid/os/Bundle;
    move-object v1, v0

    .line 259
    .local v1, "b":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 260
    const-string v2, "search_from_desk"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    .line 263
    :cond_0
    iget-boolean v2, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    if-eqz v2, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 267
    :cond_1
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->initView()V

    .line 269
    if-eqz v0, :cond_2

    const-string v2, "hint"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 270
    const-string v2, "hint"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->hint:Ljava/lang/String;

    .line 271
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    const-string v3, "hint"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 274
    :cond_2
    new-instance v2, Lcom/market2345/search/SearchDelegate;

    invoke-direct {v2, p0, p0}, Lcom/market2345/search/SearchDelegate;-><init>(Lcom/market2345/search/SearchDialogFragment;Lcom/market2345/search/SearchDelegate$SearchListener;)V

    iput-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchDelegate:Lcom/market2345/search/SearchDelegate;

    .line 275
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    .line 277
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mLeftBtn:Landroid/widget/ImageView;

    new-instance v3, Lcom/market2345/search/SearchDialogFragment$1;

    invoke-direct {v3, p0}, Lcom/market2345/search/SearchDialogFragment$1;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getRecommendationList()Lcom/market2345/model/SearchRecommendation;

    move-result-object v2

    if-nez v2, :cond_3

    .line 292
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->getRecommendation()V

    .line 300
    :goto_0
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 301
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 302
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    new-instance v3, Lcom/market2345/search/SearchDialogFragment$2;

    invoke-direct {v3, p0}, Lcom/market2345/search/SearchDialogFragment$2;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 313
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchClear:Landroid/widget/ImageView;

    new-instance v3, Lcom/market2345/search/SearchDialogFragment$3;

    invoke-direct {v3, p0}, Lcom/market2345/search/SearchDialogFragment$3;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mMenuSearch:Landroid/widget/ImageView;

    new-instance v3, Lcom/market2345/search/SearchDialogFragment$4;

    invoke-direct {v3, p0}, Lcom/market2345/search/SearchDialogFragment$4;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    return-void

    .line 294
    :cond_3
    iget-boolean v2, p0, Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z

    if-nez v2, :cond_4

    .line 295
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 297
    :cond_4
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->showContent()V

    goto :goto_0
.end method

.method public onArrowClick(Ljava/lang/String;)V
    .locals 2
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 701
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearching:Z

    .line 702
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 703
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 705
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1069
    sget-object v0, Lcom/market2345/search/SearchDialogFragment$16;->$SwitchMap$com$market2345$search$SearchDialogFragment$ClickType:[I

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mType:Lcom/market2345/search/SearchDialogFragment$ClickType;

    invoke-virtual {v1}, Lcom/market2345/search/SearchDialogFragment$ClickType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1077
    :goto_0
    return-void

    .line 1071
    :pswitch_0
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/market2345/search/SearchDialogFragment;->startSearch(Landroid/widget/EditText;)V

    goto :goto_0

    .line 1074
    :pswitch_1
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->getRecommendation()V

    goto :goto_0

    .line 1069
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 386
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0c000b

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 387
    .local v0, "dialog":Landroid/app/Dialog;
    new-instance v1, Lcom/market2345/search/SearchDialogFragment$5;

    invoke-direct {v1, p0}, Lcom/market2345/search/SearchDialogFragment$5;-><init>(Lcom/market2345/search/SearchDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 410
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 245
    const v0, 0x7f030071

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->rootView:Landroid/view/View;

    .line 246
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0902e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    .line 247
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->rootView:Landroid/view/View;

    const v1, 0x7f090051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLeftBtn:Landroid/widget/ImageView;

    .line 248
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0902e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchClear:Landroid/widget/ImageView;

    .line 249
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->rootView:Landroid/view/View;

    const v1, 0x7f0902e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mMenuSearch:Landroid/widget/ImageView;

    .line 250
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->doLoad()V

    .line 251
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->rootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 415
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    .line 416
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->isAborted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    .line 418
    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mHttpPost:Lorg/apache/http/client/methods/HttpPost;

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 422
    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 425
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 426
    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 429
    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=getDataBeforeSearch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    sget-object v0, Lcom/market2345/search/SearchDialogFragment$ClickType;->SUGGESTION:Lcom/market2345/search/SearchDialogFragment$ClickType;

    iput-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mType:Lcom/market2345/search/SearchDialogFragment$ClickType;

    .line 453
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->showRetry()V

    .line 456
    :cond_0
    return-void
.end method

.method public onSearchResult(Lcom/market2345/model/AppListDatas;)V
    .locals 2
    .param p1, "response"    # Lcom/market2345/model/AppListDatas;

    .prologue
    .line 668
    if-eqz p1, :cond_0

    .line 669
    const-string v0, "onSearchResult"

    const-string v1, "response not null"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 671
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mLoaded:Z

    .line 672
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchResultPage:Lcom/market2345/model/AppListDatas;

    .line 673
    const-string v0, "onSearchResult mSearchResultPage.bufferApps"

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchResultPage:Lcom/market2345/model/AppListDatas;

    iget-object v1, v1, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    iget-object v1, v1, Lcom/market2345/model/PageApp;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 675
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchResultPage:Lcom/market2345/model/AppListDatas;

    iget-object v0, v0, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    invoke-direct {p0, v0}, Lcom/market2345/search/SearchDialogFragment;->showApps(Lcom/market2345/model/PageApp;)V

    .line 682
    :goto_0
    return-void

    .line 677
    :cond_0
    const-string v0, "onSearchResult"

    const-string v1, "response is null"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 678
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mResultAdapter:Lcom/market2345/search/SearchAppListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mResultAdapter:Lcom/market2345/search/SearchAppListAdapter;

    invoke-virtual {v0}, Lcom/market2345/search/SearchAppListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->search_retry:Landroid/view/View;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->footerViews:[Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    goto :goto_0

    .line 680
    :cond_1
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->showRetry()V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/market2345/search/SearchDialogFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 438
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=getDataBeforeSearch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/market2345/model/SearchSuggestionList;

    if-eqz v0, :cond_2

    .line 440
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    check-cast p2, Lcom/market2345/model/SearchSuggestionList;

    .end local p2    # "obj":Ljava/lang/Object;
    iget-object v1, p2, Lcom/market2345/model/SearchSuggestionList;->list:Lcom/market2345/model/SearchRecommendation;

    invoke-virtual {v0, v1}, Lcom/market2345/datacenter/DataCenterObserver;->setRecommendationList(Lcom/market2345/model/SearchRecommendation;)V

    .line 441
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->showContent()V

    goto :goto_0

    .line 442
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_2
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=getRecomCate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    if-eqz v0, :cond_0

    .line 443
    check-cast p2, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lcom/market2345/search/SearchDialogFragment;->localData:Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    goto :goto_0
.end method

.method public onSuggestion(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "searchWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p2, "strings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 687
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    :cond_0
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 690
    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->isInSuggesting()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/market2345/search/SearchDialogFragment;->isResultViewShown()Z

    move-result v0

    if-nez v0, :cond_2

    .line 691
    invoke-direct {p0, p1, p2}, Lcom/market2345/search/SearchDialogFragment;->showSuggestion(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 696
    :cond_1
    :goto_0
    return-void

    .line 693
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/search/SearchDialogFragment;->mInSuggesting:Z

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 517
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 518
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchClear:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    iget-boolean v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearching:Z

    if-eqz v2, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 524
    .local v1, "searchWord":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "associates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 525
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionAdapter:Lcom/market2345/search/SuggestionAdapter;

    invoke-virtual {v2, v0}, Lcom/market2345/search/SuggestionAdapter;->setSuggestions(Ljava/util/ArrayList;)V

    .line 526
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionAdapter:Lcom/market2345/search/SuggestionAdapter;

    invoke-virtual {v2}, Lcom/market2345/search/SuggestionAdapter;->notifyDataSetChanged()V

    .line 527
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionView:Landroid/widget/ListView;

    const-string v3, "mSuggestionView"

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    .line 528
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSuggestionView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    .line 529
    iput-boolean v4, p0, Lcom/market2345/search/SearchDialogFragment;->mInSuggesting:Z

    goto :goto_0

    .line 533
    :cond_2
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 537
    iput-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mCurrentSearchWord:Ljava/lang/String;

    .line 538
    iget-boolean v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearching:Z

    if-nez v2, :cond_0

    .line 539
    iput-boolean v5, p0, Lcom/market2345/search/SearchDialogFragment;->mInSuggesting:Z

    .line 540
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchDelegate:Lcom/market2345/search/SearchDelegate;

    invoke-virtual {v2, v1}, Lcom/market2345/search/SearchDelegate;->searchSuggestion(Ljava/lang/String;)V

    goto :goto_0

    .line 543
    .end local v0    # "associates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "searchWord":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchClear:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 544
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 545
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;

    invoke-direct {p0, v2, v3}, Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V

    .line 546
    iput-boolean v4, p0, Lcom/market2345/search/SearchDialogFragment;->mSearching:Z

    .line 547
    iput-boolean v4, p0, Lcom/market2345/search/SearchDialogFragment;->mShowResult:Z

    .line 549
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/market2345/MarketApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 503
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 504
    iput-boolean v1, p0, Lcom/market2345/search/SearchDialogFragment;->mSearching:Z

    .line 505
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 507
    :cond_0
    return v1
.end method

.method public resultClick()V
    .locals 4

    .prologue
    .line 1046
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment;->mCurrentSearchWord:Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, p0, v1, v2, v3}, Lcom/market2345/http/MarketAPI;->searchResultClick(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1047
    return-void
.end method

.method public setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 9
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    const/4 v8, 0x0

    .line 1181
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 1182
    .local v2, "listAdapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_0

    .line 1197
    :goto_0
    return-void

    .line 1186
    :cond_0
    const/4 v6, 0x0

    .line 1187
    .local v6, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .local v1, "len":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1188
    const/4 v7, 0x0

    invoke-interface {v2, v0, v7, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1189
    .local v3, "listItem":Landroid/view/View;
    invoke-virtual {v3, v8, v8}, Landroid/view/View;->measure(II)V

    .line 1190
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 1191
    .local v4, "measuredHeight":I
    add-int/2addr v6, v4

    .line 1187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1194
    .end local v3    # "listItem":Landroid/view/View;
    .end local v4    # "measuredHeight":I
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1195
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p1}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v7

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v7, v8

    add-int/2addr v7, v6

    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1196
    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
