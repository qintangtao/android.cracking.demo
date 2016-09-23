.class public abstract Lcom/market2345/account/gift/GiftListFragment;
.super Lcom/market2345/account/gift/GiftGetFragment;
.source "GiftListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/market2345/account/gift/LazyLoadListener;


# instance fields
.field private loading:Z

.field private mData:Lcom/market2345/account/model/GiftList$GiftListData;

.field private mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mLoadMore:Landroid/view/View;

.field private mPageIndicator:Landroid/widget/RadioGroup;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mReachBottom:Landroid/view/View;

.field private mRetry:Landroid/view/View;

.field private mViewPager:Lcom/market2345/customview/AutoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/market2345/account/gift/GiftGetFragment;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/account/gift/GiftListFragment;->loading:Z

    return-void
.end method

.method private hasBanner(Lcom/market2345/account/model/GiftList;)Z
    .locals 1
    .param p1, "giftList"    # Lcom/market2345/account/model/GiftList;

    .prologue
    .line 185
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/market2345/account/model/GiftList;->picList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inflateListView()Landroid/widget/ListView;
    .locals 5

    .prologue
    .line 169
    iget-object v3, p0, Lcom/market2345/account/gift/GiftListFragment;->mListView:Landroid/widget/ListView;

    if-nez v3, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090252

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 171
    .local v2, "vs":Landroid/view/ViewStub;
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 172
    .local v0, "contentView":Landroid/view/View;
    const v3, 0x7f090414

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 173
    .local v1, "emptyView":Landroid/view/View;
    const v3, 0x7f090415

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/market2345/account/gift/GiftListFragment;->mListView:Landroid/widget/ListView;

    .line 174
    iget-object v3, p0, Lcom/market2345/account/gift/GiftListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 176
    .end local v0    # "contentView":Landroid/view/View;
    .end local v1    # "emptyView":Landroid/view/View;
    .end local v2    # "vs":Landroid/view/ViewStub;
    :cond_0
    iget-object v3, p0, Lcom/market2345/account/gift/GiftListFragment;->mListView:Landroid/widget/ListView;

    return-object v3
.end method

.method private isMultiPager(Lcom/market2345/account/model/GiftList;)Z
    .locals 1
    .param p1, "giftList"    # Lcom/market2345/account/model/GiftList;

    .prologue
    .line 242
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/market2345/account/model/GiftList;->pageinfo:Lcom/market2345/model/PageInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBannerIndicator(I)V
    .locals 7
    .param p1, "size"    # I

    .prologue
    const/4 v6, -0x2

    .line 222
    iget-object v3, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    new-instance v4, Lcom/market2345/applist/CircleIndicatorChangeListener;

    iget-object v5, p0, Lcom/market2345/account/gift/GiftListFragment;->mPageIndicator:Landroid/widget/RadioGroup;

    invoke-direct {v4, p1, v5}, Lcom/market2345/applist/CircleIndicatorChangeListener;-><init>(ILandroid/widget/RadioGroup;)V

    invoke-virtual {v3, v4}, Lcom/market2345/customview/AutoScrollViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    const/4 v3, 0x1

    if-le p1, v3, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f030022

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 226
    .local v2, "v":Landroid/view/View;
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 227
    new-instance v1, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    .line 229
    .local v1, "params":Landroid/widget/RadioGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/RadioGroup$LayoutParams;->leftMargin:I

    .line 230
    iget-object v3, p0, Lcom/market2345/account/gift/GiftListFragment;->mPageIndicator:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "params":Landroid/widget/RadioGroup$LayoutParams;
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method protected changeVisiable(IIII)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "m"    # I
    .param p4, "n"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1, v0}, Lcom/market2345/account/gift/GiftListFragment;->changeVisiable(ILandroid/view/View;)V

    .line 256
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mRetry:Landroid/view/View;

    invoke-virtual {p0, p2, v0}, Lcom/market2345/account/gift/GiftListFragment;->changeVisiable(ILandroid/view/View;)V

    .line 257
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mLoadMore:Landroid/view/View;

    invoke-virtual {p0, p3, v0}, Lcom/market2345/account/gift/GiftListFragment;->changeVisiable(ILandroid/view/View;)V

    .line 258
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mReachBottom:Landroid/view/View;

    invoke-virtual {p0, p4, v0}, Lcom/market2345/account/gift/GiftListFragment;->changeVisiable(ILandroid/view/View;)V

    .line 259
    return-void
.end method

.method protected changeVisiable(ILandroid/view/View;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 263
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 264
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected createDefaultFooterView()Landroid/view/View;
    .locals 4

    .prologue
    .line 271
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 272
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030092

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 273
    .local v0, "foot":Landroid/view/View;
    const v2, 0x7f09012a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 274
    const v2, 0x7f0901f1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mRetry:Landroid/view/View;

    .line 275
    const v2, 0x7f090303

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mReachBottom:Landroid/view/View;

    .line 276
    const v2, 0x7f090304

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mLoadMore:Landroid/view/View;

    .line 278
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mRetry:Landroid/view/View;

    new-instance v3, Lcom/market2345/account/gift/GiftListFragment$1;

    invoke-direct {v3, p0}, Lcom/market2345/account/gift/GiftListFragment$1;-><init>(Lcom/market2345/account/gift/GiftListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mLoadMore:Landroid/view/View;

    new-instance v3, Lcom/market2345/account/gift/GiftListFragment$2;

    invoke-direct {v3, p0}, Lcom/market2345/account/gift/GiftListFragment$2;-><init>(Lcom/market2345/account/gift/GiftListFragment;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 308
    return-object v0
.end method

.method public getGiftListAdapter()Lcom/market2345/account/gift/GiftListAdapter;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    return-object v0
.end method

.method protected abstract getURL()Ljava/lang/String;
.end method

.method protected getURLParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method protected handlePage(Lcom/market2345/model/PageInfo;)V
    .locals 4
    .param p1, "pageInfo"    # Lcom/market2345/model/PageInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 313
    if-eqz p1, :cond_1

    .line 314
    iget v0, p1, Lcom/market2345/model/PageInfo;->page:I

    iget v1, p1, Lcom/market2345/model/PageInfo;->pagecount:I

    if-ne v0, v1, :cond_2

    .line 315
    invoke-virtual {p0, v2, v2, v2, v3}, Lcom/market2345/account/gift/GiftListFragment;->changeVisiable(IIII)V

    .line 319
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getGiftDelegate()Lcom/market2345/account/gift/GiftDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/account/gift/GiftDelegate;->getHttpTransaction()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v0

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    .line 321
    :cond_1
    return-void

    .line 316
    :cond_2
    iget v0, p1, Lcom/market2345/model/PageInfo;->page:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 317
    invoke-virtual {p0, v2, v2, v3, v2}, Lcom/market2345/account/gift/GiftListFragment;->changeVisiable(IIII)V

    goto :goto_0
.end method

.method protected hasMore()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    invoke-virtual {v0}, Lcom/market2345/account/model/GiftList$GiftListData;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnd()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 338
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getGiftDelegate()Lcom/market2345/account/gift/GiftDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/account/gift/GiftDelegate;->getHttpTransaction()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v2

    if-nez v2, :cond_1

    .line 345
    :cond_0
    :goto_0
    return v0

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getGiftDelegate()Lcom/market2345/account/gift/GiftDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/account/gift/GiftDelegate;->getHttpTransaction()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v2

    invoke-interface {v2}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 342
    goto :goto_0

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mRetry:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mRetry:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->hasMore()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected isIconEnabled()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public isLoadOver()Z
    .locals 1

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/market2345/account/gift/GiftListFragment;->loading:Z

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
    .line 351
    iget-boolean v0, p0, Lcom/market2345/account/gift/GiftListFragment;->loading:Z

    if-eqz v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getGiftDelegate()Lcom/market2345/account/gift/GiftDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/account/gift/GiftDelegate;->getHttpTransaction()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v0

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/account/gift/GiftListFragment;->loading:Z

    .line 357
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/GiftListFragment;->loadData(Z)V

    goto :goto_0
.end method

.method protected loadData(Z)V
    .locals 3
    .param p1, "reload"    # Z

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getGiftDelegate()Lcom/market2345/account/gift/GiftDelegate;

    move-result-object v0

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getURLParams()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/market2345/account/gift/GiftDelegate;->getGiftList(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 77
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const v0, 0x7f03006d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/account/model/GameGift;

    .line 326
    .local v0, "gameGift":Lcom/market2345/account/model/GameGift;
    if-eqz v0, :cond_0

    .line 327
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/market2345/account/gift/GiftDetailActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 328
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "key.gift.id"

    iget-object v3, v0, Lcom/market2345/account/model/GameGift;->giftId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v2, "key.soft.id"

    iget-object v3, v0, Lcom/market2345/account/model/GameGift;->softId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0, v1}, Lcom/market2345/account/gift/GiftListFragment;->startActivity(Landroid/content/Intent;)V

    .line 332
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onLegacyEvent(Lcom/market2345/account/gift/event/HttpFailureEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/market2345/account/gift/event/HttpFailureEvent;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p1, Lcom/market2345/account/gift/event/HttpFailureEvent;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getGiftDelegate()Lcom/market2345/account/gift/GiftDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/account/gift/GiftDelegate;->getHttpTransaction()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v0

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/GiftListFragment;->showError(I)V

    .line 103
    :cond_0
    return-void
.end method

.method protected onLegacyEvent(Lcom/market2345/account/gift/event/HttpSuccessEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/market2345/account/gift/event/HttpSuccessEvent;

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p1, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/market2345/account/gift/GiftListFragment;->showGiftList(Lcom/market2345/account/gift/event/HttpSuccessEvent;)V

    .line 94
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lcom/market2345/account/gift/GiftGetFragment;->onPause()V

    .line 69
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->stopAutoScroll()V

    .line 72
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->isCurrentAutoScroll()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->startAutoScroll()V

    .line 62
    :cond_0
    invoke-super {p0}, Lcom/market2345/account/gift/GiftGetFragment;->onResume()V

    .line 63
    return-void
.end method

.method protected setUpBanner(Lcom/market2345/account/model/GiftList;)V
    .locals 7
    .param p1, "giftList"    # Lcom/market2345/account/model/GiftList;

    .prologue
    const/4 v6, 0x0

    .line 195
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    if-nez v2, :cond_1

    .line 196
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03001f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f09013e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/market2345/customview/AutoScrollViewPager;

    iput-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    .line 198
    const v2, 0x7f09013f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    iput-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mPageIndicator:Landroid/widget/RadioGroup;

    .line 199
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0a0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/market2345/customview/AutoScrollViewPager;->setInterval(J)V

    .line 200
    const v2, 0x7f09013d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v2, v6}, Lcom/market2345/customview/AutoScrollViewPager;->setVisibility(I)V

    .line 202
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    new-instance v3, Lcom/market2345/account/gift/GiftBannerAdapter;

    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lcom/market2345/account/model/GiftList;->picList:Ljava/util/ArrayList;

    invoke-direct {v3, v4, v5}, Lcom/market2345/account/gift/GiftBannerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/market2345/customview/AutoScrollViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 203
    iget-object v2, p1, Lcom/market2345/account/model/GiftList;->picList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 204
    .local v0, "size":I
    invoke-direct {p0, v0}, Lcom/market2345/account/gift/GiftListFragment;->setBannerIndicator(I)V

    .line 205
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    .line 206
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    mul-int/lit16 v3, v0, 0x2710

    invoke-virtual {v2, v3}, Lcom/market2345/customview/AutoScrollViewPager;->setCurrentItem(I)V

    .line 207
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v2}, Lcom/market2345/customview/AutoScrollViewPager;->startAutoScroll()V

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/market2345/account/gift/GiftListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 212
    .end local v0    # "size":I
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setUpGiftStatus(Lcom/market2345/account/model/GameGift;Lcom/market2345/account/model/GiftCode;)V
    .locals 3
    .param p1, "gift"    # Lcom/market2345/account/model/GameGift;
    .param p2, "giftCode"    # Lcom/market2345/account/model/GiftCode;

    .prologue
    .line 107
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    iget-object v2, p1, Lcom/market2345/account/model/GameGift;->giftId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/account/gift/GiftListAdapter;->getGiftById(Ljava/lang/String;)Lcom/market2345/account/model/GameGift;

    move-result-object v0

    .line 109
    .local v0, "gameGift":Lcom/market2345/account/model/GameGift;
    if-eqz v0, :cond_0

    .line 110
    iget v1, p2, Lcom/market2345/account/model/GiftCode;->code:I

    packed-switch v1, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    invoke-virtual {v1}, Lcom/market2345/account/gift/GiftListAdapter;->notifyDataSetChanged()V

    .line 125
    .end local v0    # "gameGift":Lcom/market2345/account/model/GameGift;
    :cond_0
    return-void

    .line 112
    .restart local v0    # "gameGift":Lcom/market2345/account/model/GameGift;
    :pswitch_1
    const-string v1, "4"

    iput-object v1, v0, Lcom/market2345/account/model/GameGift;->btnStatus:Ljava/lang/String;

    .line 113
    iget-object v1, p2, Lcom/market2345/account/model/GiftCode;->gift:Ljava/lang/String;

    iput-object v1, v0, Lcom/market2345/account/model/GameGift;->userGiftCode:Ljava/lang/String;

    goto :goto_0

    .line 116
    :pswitch_2
    const-string v1, "2"

    iput-object v1, v0, Lcom/market2345/account/model/GameGift;->btnStatus:Ljava/lang/String;

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v1, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    invoke-virtual {v1, v0}, Lcom/market2345/account/gift/GiftListAdapter;->removeGiftList(Lcom/market2345/account/model/GameGift;)V

    goto :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected showError(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 368
    if-ne p1, v1, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->showRetry()V

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    invoke-virtual {p0, v1, v0, v0, v0}, Lcom/market2345/account/gift/GiftListFragment;->changeVisiable(IIII)V

    goto :goto_0
.end method

.method protected showGiftList(Lcom/market2345/account/gift/event/HttpSuccessEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/market2345/account/gift/event/HttpSuccessEvent;

    .prologue
    .line 134
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/account/gift/GiftListFragment;->loading:Z

    .line 135
    iget-object v0, p1, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/market2345/account/model/GiftList$GiftListData;

    iput-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    .line 136
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    iget-object v0, v0, Lcom/market2345/account/model/GiftList$GiftListData;->mGiftList:Lcom/market2345/account/model/GiftList;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    if-nez v0, :cond_3

    .line 138
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->hideLoadView()V

    .line 139
    invoke-direct {p0}, Lcom/market2345/account/gift/GiftListFragment;->inflateListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mListView:Landroid/widget/ListView;

    .line 140
    new-instance v0, Lcom/market2345/account/gift/GiftListAdapter;

    iget-object v1, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    iget-object v1, v1, Lcom/market2345/account/model/GiftList$GiftListData;->mGiftList:Lcom/market2345/account/model/GiftList;

    iget-object v1, v1, Lcom/market2345/account/model/GiftList;->giftList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->getGiftDelegate()Lcom/market2345/account/gift/GiftDelegate;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/market2345/account/gift/GiftListAdapter;-><init>(Ljava/util/ArrayList;Lcom/market2345/account/gift/GiftDelegate;)V

    iput-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    .line 141
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    iget-object v0, v0, Lcom/market2345/account/model/GiftList$GiftListData;->mGiftList:Lcom/market2345/account/model/GiftList;

    invoke-direct {p0, v0}, Lcom/market2345/account/gift/GiftListFragment;->hasBanner(Lcom/market2345/account/model/GiftList;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    iget-object v0, v0, Lcom/market2345/account/model/GiftList$GiftListData;->mGiftList:Lcom/market2345/account/model/GiftList;

    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/GiftListFragment;->setUpBanner(Lcom/market2345/account/model/GiftList;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    iget-object v0, v0, Lcom/market2345/account/model/GiftList$GiftListData;->mGiftList:Lcom/market2345/account/model/GiftList;

    invoke-direct {p0, v0}, Lcom/market2345/account/gift/GiftListFragment;->isMultiPager(Lcom/market2345/account/model/GiftList;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->createDefaultFooterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 146
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    invoke-virtual {v0, p0}, Lcom/market2345/account/gift/GiftListAdapter;->setmLazyloadListener(Lcom/market2345/account/gift/LazyLoadListener;)V

    .line 147
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/market2345/account/gift/GiftListAdapter;->setFooterDividersEnabled(Z)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->isIconEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/market2345/account/gift/GiftListAdapter;->setIconEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 151
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 161
    :goto_0
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    iget-object v0, v0, Lcom/market2345/account/model/GiftList$GiftListData;->mGiftList:Lcom/market2345/account/model/GiftList;

    invoke-direct {p0, v0}, Lcom/market2345/account/gift/GiftListFragment;->isMultiPager(Lcom/market2345/account/model/GiftList;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    iget-object v0, v0, Lcom/market2345/account/model/GiftList$GiftListData;->mGiftList:Lcom/market2345/account/model/GiftList;

    iget-object v0, v0, Lcom/market2345/account/model/GiftList;->pageinfo:Lcom/market2345/model/PageInfo;

    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/GiftListFragment;->handlePage(Lcom/market2345/model/PageInfo;)V

    .line 165
    :cond_2
    return-void

    .line 152
    :cond_3
    iget-boolean v0, p1, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mReload:Z

    if-eqz v0, :cond_4

    .line 153
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftListFragment;->hideLoadView()V

    .line 154
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    invoke-virtual {v0}, Lcom/market2345/account/gift/GiftListAdapter;->clearGiftList()V

    .line 155
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    iget-object v1, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    iget-object v1, v1, Lcom/market2345/account/model/GiftList$GiftListData;->mGiftList:Lcom/market2345/account/model/GiftList;

    iget-object v1, v1, Lcom/market2345/account/model/GiftList;->giftList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/market2345/account/gift/GiftListAdapter;->addGiftList(Ljava/util/ArrayList;)V

    .line 156
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    invoke-virtual {v0}, Lcom/market2345/account/gift/GiftListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    iget-object v1, p0, Lcom/market2345/account/gift/GiftListFragment;->mData:Lcom/market2345/account/model/GiftList$GiftListData;

    iget-object v1, v1, Lcom/market2345/account/model/GiftList$GiftListData;->mGiftList:Lcom/market2345/account/model/GiftList;

    iget-object v1, v1, Lcom/market2345/account/model/GiftList;->giftList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/market2345/account/gift/GiftListAdapter;->addGiftList(Ljava/util/ArrayList;)V

    .line 159
    iget-object v0, p0, Lcom/market2345/account/gift/GiftListFragment;->mGiftListAdapter:Lcom/market2345/account/gift/GiftListAdapter;

    invoke-virtual {v0}, Lcom/market2345/account/gift/GiftListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
