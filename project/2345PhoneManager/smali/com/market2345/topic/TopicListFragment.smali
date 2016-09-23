.class public Lcom/market2345/topic/TopicListFragment;
.super Lcom/market2345/slidemenu/SlidingBaseFragment;
.source "TopicListFragment.java"

# interfaces
.implements Lcom/market2345/topic/TopicListAdapter$LazyloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/topic/TopicListFragment$ConfirmData;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field confirmData:Lcom/market2345/topic/TopicListFragment$ConfirmData;

.field private firstLoad:Z

.field private isLoadLocal:Z

.field loadDelay:Z

.field private loading:Z

.field mAdapter:Lcom/market2345/topic/TopicListAdapter;

.field mDatas:Lcom/market2345/topic/model/TopicListData;

.field mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

.field mList:Landroid/widget/ListView;

.field mLoading:Landroid/view/View;

.field mNoData:Landroid/view/View;

.field mNoDataRetryButton:Landroid/widget/Button;

.field mProgress:Landroid/widget/ProgressBar;

.field mTopicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/topic/model/TopicInfo;",
            ">;"
        }
    .end annotation
.end field

.field supportTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/market2345/topic/TopicListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/topic/TopicListFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/market2345/slidemenu/SlidingBaseFragment;-><init>()V

    .line 50
    iput-boolean v1, p0, Lcom/market2345/topic/TopicListFragment;->loadDelay:Z

    .line 51
    iput-boolean v1, p0, Lcom/market2345/topic/TopicListFragment;->loading:Z

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/topic/TopicListFragment;->firstLoad:Z

    .line 54
    new-instance v0, Lcom/market2345/topic/TopicListFragment$ConfirmData;

    invoke-direct {v0, p0}, Lcom/market2345/topic/TopicListFragment$ConfirmData;-><init>(Lcom/market2345/topic/TopicListFragment;)V

    iput-object v0, p0, Lcom/market2345/topic/TopicListFragment;->confirmData:Lcom/market2345/topic/TopicListFragment$ConfirmData;

    .line 282
    iput-boolean v1, p0, Lcom/market2345/topic/TopicListFragment;->isLoadLocal:Z

    .line 325
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/topic/TopicListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/topic/TopicListFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/market2345/topic/TopicListFragment;->loadData()V

    return-void
.end method

.method static synthetic access$102(Lcom/market2345/topic/TopicListFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/topic/TopicListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/market2345/topic/TopicListFragment;->loading:Z

    return p1
.end method

.method static synthetic access$200(Lcom/market2345/topic/TopicListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/topic/TopicListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/market2345/topic/TopicListFragment;->showError(I)V

    return-void
.end method

.method private createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 4

    .prologue
    .line 320
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-virtual {p0}, Lcom/market2345/topic/TopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 321
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=ardV3&d=getTopicList"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "authKey"

    const-string v3, "duotetomobile20120903"

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "page"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 322
    return-object v0
.end method

.method private initAdapter()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mAdapter:Lcom/market2345/topic/TopicListAdapter;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mTopicList:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Lcom/market2345/topic/TopicListAdapter;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mTopicList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/market2345/topic/TopicListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mAdapter:Lcom/market2345/topic/TopicListAdapter;

    .line 206
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mAdapter:Lcom/market2345/topic/TopicListAdapter;

    invoke-virtual {v0, p0}, Lcom/market2345/topic/TopicListAdapter;->setLazyLoadListener(Lcom/market2345/topic/TopicListAdapter$LazyloadListener;)V

    .line 207
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/topic/TopicListFragment;->mAdapter:Lcom/market2345/topic/TopicListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 209
    :cond_0
    return-void
.end method

.method private initDataLocal(Lcom/market2345/topic/model/PageTopicList;)V
    .locals 3
    .param p1, "pageTopicList"    # Lcom/market2345/topic/model/PageTopicList;

    .prologue
    const/4 v2, 0x0

    .line 306
    iget-object v0, p1, Lcom/market2345/topic/model/PageTopicList;->list:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mTopicList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/market2345/topic/model/PageTopicList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 309
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mLoading:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 311
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v2, v2}, Lcom/market2345/topic/TopicListFragment;->changeVisiable(IIII)V

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mAdapter:Lcom/market2345/topic/TopicListAdapter;

    invoke-virtual {v0}, Lcom/market2345/topic/TopicListAdapter;->notifyDataSetChanged()V

    .line 315
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    goto :goto_0
.end method

.method private initHttp()V
    .locals 2

    .prologue
    .line 212
    iget-object v1, p0, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/market2345/topic/TopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/market2345/topic/TopicListFragment;->createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v0

    .line 216
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    if-eqz v0, :cond_0

    .line 217
    invoke-direct {p0, v0}, Lcom/market2345/topic/TopicListFragment;->setHttpCallback(Lcom/market2345/httpnew/HttpTransactionBuilder;)V

    .line 218
    invoke-virtual {v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    .line 221
    .end local v0    # "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    :cond_0
    return-void
.end method

.method private loadData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Lcom/market2345/topic/TopicListFragment;->initHttp()V

    .line 84
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->isFastConnection()Z

    move-result v0

    if-nez v0, :cond_4

    .line 86
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mTopicList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mTopicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/market2345/topic/TopicListFragment;->loadLocalData()Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 95
    :cond_2
    :goto_0
    return-void

    .line 89
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/market2345/topic/TopicListFragment;->changeVisiable(IIII)V

    goto :goto_0

    .line 92
    :cond_4
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    goto :goto_0
.end method

.method private loadLocalData()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 285
    iget-boolean v5, p0, Lcom/market2345/topic/TopicListFragment;->isLoadLocal:Z

    if-eqz v5, :cond_0

    .line 286
    iget-boolean v3, p0, Lcom/market2345/topic/TopicListFragment;->isLoadLocal:Z

    .line 302
    :goto_0
    return v3

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/topic/TopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 290
    const/4 v0, 0x0

    .line 291
    .local v0, "data":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/market2345/topic/TopicListFragment;->getCacheData()Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 293
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 294
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v4, Lcom/market2345/topic/model/PageTopicList;

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/topic/model/PageTopicList;

    .line 295
    .local v2, "pageTopicList":Lcom/market2345/topic/model/PageTopicList;
    invoke-direct {p0, v2}, Lcom/market2345/topic/TopicListFragment;->initDataLocal(Lcom/market2345/topic/model/PageTopicList;)V

    .line 296
    iput-boolean v3, p0, Lcom/market2345/topic/TopicListFragment;->isLoadLocal:Z

    goto :goto_0

    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "pageTopicList":Lcom/market2345/topic/model/PageTopicList;
    :cond_1
    move v3, v4

    .line 299
    goto :goto_0

    .end local v0    # "data":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 302
    goto :goto_0
.end method

.method private setHttpCallback(Lcom/market2345/httpnew/HttpTransactionBuilder;)V
    .locals 2
    .param p1, "builder"    # Lcom/market2345/httpnew/HttpTransactionBuilder;

    .prologue
    .line 224
    const-class v0, Lcom/market2345/topic/model/TopicListData;

    invoke-virtual {p1, v0}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v0

    new-instance v1, Lcom/market2345/topic/TopicListFragment$4;

    invoke-direct {v1, p0}, Lcom/market2345/topic/TopicListFragment$4;-><init>(Lcom/market2345/topic/TopicListFragment;)V

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 262
    return-void
.end method

.method private showError(I)V
    .locals 4
    .param p1, "currentPage"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 265
    if-ne p1, v2, :cond_2

    .line 266
    invoke-direct {p0}, Lcom/market2345/topic/TopicListFragment;->loadLocalData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mLoading:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mNoData:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    invoke-virtual {p0, v2, v1, v1, v1}, Lcom/market2345/topic/TopicListFragment;->changeVisiable(IIII)V

    .line 273
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    goto :goto_0

    .line 279
    :cond_2
    invoke-virtual {p0, v1, v2, v1, v1}, Lcom/market2345/topic/TopicListFragment;->changeVisiable(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public confirmDataSaveNeeded(Lcom/market2345/topic/TopicListFragment$ConfirmData;)V
    .locals 1
    .param p1, "confirmData"    # Lcom/market2345/topic/TopicListFragment$ConfirmData;

    .prologue
    .line 331
    const-string v0, "topic_list_data"

    iput-object v0, p1, Lcom/market2345/topic/TopicListFragment$ConfirmData;->dataKey:Ljava/lang/String;

    .line 332
    const-string v0, "topic_list_time"

    iput-object v0, p1, Lcom/market2345/topic/TopicListFragment$ConfirmData;->timeKey:Ljava/lang/String;

    .line 333
    return-void
.end method

.method public getCacheData()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lcom/market2345/topic/TopicListFragment;->confirmData:Lcom/market2345/topic/TopicListFragment$ConfirmData;

    iget-object v1, v1, Lcom/market2345/topic/TopicListFragment$ConfirmData;->dataKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/topic/TopicListFragment;->confirmData:Lcom/market2345/topic/TopicListFragment$ConfirmData;

    iget-object v1, v1, Lcom/market2345/topic/TopicListFragment$ConfirmData;->timeKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/market2345/topic/TopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/market2345/topic/TopicListFragment;->confirmData:Lcom/market2345/topic/TopicListFragment$ConfirmData;

    iget-object v1, v1, Lcom/market2345/topic/TopicListFragment$ConfirmData;->dataKey:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/market2345/base/C;->getPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    :cond_0
    return-object v0
.end method

.method public getSupportTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->supportTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/market2345/topic/TopicListFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/TopicListFragment;->supportTag:Ljava/lang/String;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->supportTag:Ljava/lang/String;

    return-object v0
.end method

.method public isEnd()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 99
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    if-nez v2, :cond_1

    move v0, v1

    .line 112
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v2}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 106
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    if-nez v2, :cond_2

    move v0, v1

    .line 107
    goto :goto_0

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mRetry:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 110
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    invoke-virtual {v2}, Lcom/market2345/topic/model/TopicListData;->hasMore()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isLoadOver()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    sget-object v3, Lcom/market2345/topic/TopicListFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLoadOver---"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lcom/market2345/topic/TopicListFragment;->loading:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    iget-boolean v0, p0, Lcom/market2345/topic/TopicListFragment;->loading:Z

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 132
    goto :goto_0

    :cond_1
    move v1, v2

    .line 133
    goto :goto_1
.end method

.method public lazyload()V
    .locals 3

    .prologue
    .line 118
    sget-object v0, Lcom/market2345/topic/TopicListFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lazyload---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/market2345/topic/TopicListFragment;->loading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    iget-boolean v0, p0, Lcom/market2345/topic/TopicListFragment;->loading:Z

    if-eqz v0, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/topic/TopicListFragment;->loading:Z

    .line 125
    invoke-direct {p0}, Lcom/market2345/topic/TopicListFragment;->loadData()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 196
    invoke-super {p0, p1}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 197
    iget-boolean v0, p0, Lcom/market2345/topic/TopicListFragment;->loadDelay:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/market2345/topic/TopicListFragment;->loadData()V

    .line 200
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/market2345/slidemenu/SlidingBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 139
    sget-object v2, Lcom/market2345/topic/TopicListFragment;->TAG:Ljava/lang/String;

    const-string v3, "onCreateView"

    invoke-static {v2, v3}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->confirmData:Lcom/market2345/topic/TopicListFragment$ConfirmData;

    invoke-virtual {p0, v2}, Lcom/market2345/topic/TopicListFragment;->confirmDataSaveNeeded(Lcom/market2345/topic/TopicListFragment$ConfirmData;)V

    .line 141
    const v2, 0x7f03006e

    invoke-virtual {p1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 142
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f09015a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mList:Landroid/widget/ListView;

    .line 143
    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mLoading:Landroid/view/View;

    .line 144
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mRetry:Landroid/view/View;

    new-instance v3, Lcom/market2345/topic/TopicListFragment$1;

    invoke-direct {v3, p0}, Lcom/market2345/topic/TopicListFragment$1;-><init>(Lcom/market2345/topic/TopicListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mLoadMore:Landroid/view/View;

    new-instance v3, Lcom/market2345/topic/TopicListFragment$2;

    invoke-direct {v3, p0}, Lcom/market2345/topic/TopicListFragment$2;-><init>(Lcom/market2345/topic/TopicListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mLoading:Landroid/view/View;

    const v3, 0x7f09012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 171
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 174
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300c9

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 175
    .local v0, "headPlaceHolder":Landroid/view/View;
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 176
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/market2345/topic/TopicListFragment;->foot:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 177
    invoke-direct {p0}, Lcom/market2345/topic/TopicListFragment;->initAdapter()V

    .line 178
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v4, v4, v4}, Lcom/market2345/topic/TopicListFragment;->changeVisiable(IIII)V

    .line 179
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mLoading:Landroid/view/View;

    const v3, 0x7f09012b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mNoData:Landroid/view/View;

    .line 180
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mNoData:Landroid/view/View;

    const v3, 0x7f09012d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mNoDataRetryButton:Landroid/widget/Button;

    .line 181
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment;->mNoDataRetryButton:Landroid/widget/Button;

    new-instance v3, Lcom/market2345/topic/TopicListFragment$3;

    invoke-direct {v3, p0}, Lcom/market2345/topic/TopicListFragment$3;-><init>(Lcom/market2345/topic/TopicListFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    return-object v1
.end method

.method public saveCacheData(Ljava/lang/String;)V
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->confirmData:Lcom/market2345/topic/TopicListFragment$ConfirmData;

    iget-object v0, v0, Lcom/market2345/topic/TopicListFragment$ConfirmData;->dataKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->confirmData:Lcom/market2345/topic/TopicListFragment$ConfirmData;

    iget-object v0, v0, Lcom/market2345/topic/TopicListFragment$ConfirmData;->timeKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    iget-object v0, v0, Lcom/market2345/topic/model/TopicListData;->pageTopicString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/topic/TopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->confirmData:Lcom/market2345/topic/TopicListFragment$ConfirmData;

    iget-object v0, v0, Lcom/market2345/topic/TopicListFragment$ConfirmData;->dataKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    iget-object v1, v1, Lcom/market2345/topic/model/TopicListData;->pageTopicString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/market2345/base/C;->setPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment;->confirmData:Lcom/market2345/topic/TopicListFragment$ConfirmData;

    iget-object v0, v0, Lcom/market2345/topic/TopicListFragment$ConfirmData;->timeKey:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/market2345/base/C;->setPreference(Ljava/lang/String;J)V

    .line 340
    :cond_0
    return-void
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/market2345/topic/TopicListFragment;->supportTag:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public showSelf()V
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/market2345/topic/TopicListFragment;->TAG:Ljava/lang/String;

    const-string v1, "showSelf"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0}, Lcom/market2345/topic/TopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/topic/TopicListFragment;->loadDelay:Z

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-boolean v0, p0, Lcom/market2345/topic/TopicListFragment;->firstLoad:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/market2345/topic/TopicListFragment;->loadData()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/topic/TopicListFragment;->firstLoad:Z

    goto :goto_0
.end method
