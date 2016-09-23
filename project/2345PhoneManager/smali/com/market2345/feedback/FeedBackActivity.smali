.class public Lcom/market2345/feedback/FeedBackActivity;
.super Lcom/market2345/home/BaseActivity;
.source "FeedBackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;


# instance fields
.field private adapter:Lcom/market2345/feedback/FeedbackAdapter;

.field private currentFeedbackDetail:Lcom/market2345/model/FeedbackDetail;

.field private currentPage:I

.field private etFeedbackContent:Landroid/widget/EditText;

.field private feedbackEmptyView:Landroid/view/View;

.field private lvFeedbacks:Lcom/market2345/customview/DropDownListView;

.field private mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

.field private mHandler:Landroid/os/Handler;

.field private mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/FeedbackDetail;",
            ">;"
        }
    .end annotation
.end field

.field private pbLoading:Landroid/widget/ProgressBar;

.field private rlLoadingNoData:Landroid/widget/RelativeLayout;

.field private totalPage:I

.field private tvContentSize:Landroid/widget/TextView;

.field private tvNoData:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/feedback/FeedBackActivity;->totalPage:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/market2345/feedback/FeedBackActivity;->currentPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/feedback/FeedBackActivity;)Lcom/market2345/customview/DropDownListView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/feedback/FeedBackActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/feedback/FeedBackActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/feedback/FeedBackActivity;

    .prologue
    .line 36
    iget v0, p0, Lcom/market2345/feedback/FeedBackActivity;->currentPage:I

    return v0
.end method

.method static synthetic access$200(Lcom/market2345/feedback/FeedBackActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/feedback/FeedBackActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/feedback/FeedBackActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/feedback/FeedBackActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->tvContentSize:Landroid/widget/TextView;

    return-object v0
.end method

.method private hasNoFeedbacks(Z)V
    .locals 3
    .param p1, "isClickable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 374
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->rlLoadingNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->pbLoading:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->feedbackEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 377
    if-nez p1, :cond_0

    .line 378
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->rlLoadingNoData:Landroid/widget/RelativeLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 379
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->tvNoData:Landroid/widget/TextView;

    const-string v1, "\u6682\u65e0\u7559\u8a00!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :cond_0
    return-void
.end method

.method private initFeedbacks(Lcom/market2345/model/FeedbackInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/market2345/model/FeedbackInfo;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->rlLoadingNoData:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 344
    iget v0, p0, Lcom/market2345/feedback/FeedBackActivity;->totalPage:I

    if-nez v0, :cond_0

    .line 345
    iget-object v0, p1, Lcom/market2345/model/FeedbackInfo;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v0, v0, Lcom/market2345/model/PageInfo;->pagecount:I

    iput v0, p0, Lcom/market2345/feedback/FeedBackActivity;->totalPage:I

    .line 348
    :cond_0
    iget v0, p0, Lcom/market2345/feedback/FeedBackActivity;->currentPage:I

    iget v1, p0, Lcom/market2345/feedback/FeedBackActivity;->totalPage:I

    if-le v0, v1, :cond_1

    .line 349
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/customview/DropDownListView;->setHasMore(Z)V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/market2345/model/FeedbackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->adapter:Lcom/market2345/feedback/FeedbackAdapter;

    if-nez v0, :cond_3

    .line 357
    new-instance v0, Lcom/market2345/feedback/FeedbackAdapter;

    iget-object v1, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/market2345/feedback/FeedbackAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->adapter:Lcom/market2345/feedback/FeedbackAdapter;

    .line 358
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    iget-object v1, p0, Lcom/market2345/feedback/FeedBackActivity;->adapter:Lcom/market2345/feedback/FeedbackAdapter;

    invoke-virtual {v0, v1}, Lcom/market2345/customview/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 363
    :goto_0
    invoke-direct {p0}, Lcom/market2345/feedback/FeedBackActivity;->onBottomComplete()V

    .line 364
    return-void

    .line 360
    :cond_3
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->adapter:Lcom/market2345/feedback/FeedbackAdapter;

    invoke-virtual {v0}, Lcom/market2345/feedback/FeedbackAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 146
    const v0, 0x7f09009e

    invoke-virtual {p0, v0}, Lcom/market2345/feedback/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f090259

    invoke-virtual {p0, v0}, Lcom/market2345/feedback/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->tvNoData:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    new-instance v1, Lcom/market2345/feedback/FeedBackActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/feedback/FeedBackActivity$1;-><init>(Lcom/market2345/feedback/FeedBackActivity;)V

    invoke-virtual {v0, v1}, Lcom/market2345/customview/DropDownListView;->setOnBottomListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->etFeedbackContent:Landroid/widget/EditText;

    new-instance v1, Lcom/market2345/feedback/FeedBackActivity$2;

    invoke-direct {v1, p0}, Lcom/market2345/feedback/FeedBackActivity$2;-><init>(Lcom/market2345/feedback/FeedBackActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    return-void
.end method

.method private initView()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 111
    const v4, 0x7f030058

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 113
    .local v1, "header":Landroid/widget/LinearLayout;
    const v4, 0x7f090254

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->etFeedbackContent:Landroid/widget/EditText;

    .line 114
    const v4, 0x7f090257

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->tvContentSize:Landroid/widget/TextView;

    .line 115
    const v4, 0x7f0900a2

    invoke-virtual {p0, v4}, Lcom/market2345/feedback/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->rlLoadingNoData:Landroid/widget/RelativeLayout;

    .line 116
    const v4, 0x7f0900a3

    invoke-virtual {p0, v4}, Lcom/market2345/feedback/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->pbLoading:Landroid/widget/ProgressBar;

    .line 117
    const v4, 0x7f0900a4

    invoke-virtual {p0, v4}, Lcom/market2345/feedback/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->feedbackEmptyView:Landroid/view/View;

    .line 118
    iget-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->feedbackEmptyView:Landroid/view/View;

    const v5, 0x7f0900a5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->tvNoData:Landroid/widget/TextView;

    .line 120
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    .line 121
    const v4, 0x7f0900a1

    invoke-virtual {p0, v4}, Lcom/market2345/feedback/FeedBackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/market2345/customview/DropDownListView;

    iput-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    .line 122
    iget-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v4, v7}, Lcom/market2345/customview/DropDownListView;->setDropDownStyle(Z)V

    .line 123
    iget-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v4, v6}, Lcom/market2345/customview/DropDownListView;->setOnBottomStyle(Z)V

    .line 124
    iget-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v4, v7}, Lcom/market2345/customview/DropDownListView;->setAutoLoadOnBottom(Z)V

    .line 125
    iget-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    const-string v5, "\u67e5\u770b\u66f4\u591a\u7559\u8a00"

    invoke-virtual {v4, v5, v6}, Lcom/market2345/customview/DropDownListView;->setFooterDefaultText(Ljava/lang/String;Z)V

    .line 126
    iget-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    const-string v5, "\u62fc\u547d\u52a0\u8f7d\u4e2d"

    invoke-virtual {v4, v5}, Lcom/market2345/customview/DropDownListView;->setFooterLoadingText(Ljava/lang/String;)V

    .line 127
    iget-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v4, v1}, Lcom/market2345/customview/DropDownListView;->addHeaderView(Landroid/view/View;)V

    .line 128
    iget-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v4}, Lcom/market2345/customview/DropDownListView;->getFooterButton()Landroid/widget/Button;

    move-result-object v4

    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070062

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 129
    new-instance v4, Lcom/market2345/feedback/FeedbackAdapter;

    iget-object v5, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    invoke-direct {v4, p0, v5}, Lcom/market2345/feedback/FeedbackAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->adapter:Lcom/market2345/feedback/FeedbackAdapter;

    .line 130
    iget-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    iget-object v5, p0, Lcom/market2345/feedback/FeedBackActivity;->adapter:Lcom/market2345/feedback/FeedbackAdapter;

    invoke-virtual {v4, v5}, Lcom/market2345/customview/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 132
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->mHandler:Landroid/os/Handler;

    .line 134
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 135
    .local v0, "h":I
    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 136
    .local v3, "w":I
    invoke-virtual {v1, v3, v0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 137
    iget-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->rlLoadingNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 138
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 139
    iget-object v4, p0, Lcom/market2345/feedback/FeedBackActivity;->rlLoadingNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-void
.end method

.method private loadFeedbacks()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->rlLoadingNoData:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->pbLoading:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->feedbackEmptyView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 191
    iget v0, p0, Lcom/market2345/feedback/FeedBackActivity;->currentPage:I

    iget-object v1, p0, Lcom/market2345/feedback/FeedBackActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, p0, v0, v1}, Lcom/market2345/http/MarketAPI;->getFeedbacks(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;ILandroid/os/Handler;)V

    .line 192
    return-void
.end method

.method private onBottomComplete()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v0}, Lcom/market2345/customview/DropDownListView;->onBottomComplete()V

    .line 368
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v0}, Lcom/market2345/customview/DropDownListView;->getFooterButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v0}, Lcom/market2345/customview/DropDownListView;->getFooterButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 371
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    .line 196
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 249
    :goto_0
    return-void

    .line 198
    :sswitch_0
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/market2345/feedback/FeedBackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    .line 199
    .local v4, "imm1":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 200
    iget-object v5, p0, Lcom/market2345/feedback/FeedBackActivity;->etFeedbackContent:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->finish()V

    goto :goto_0

    .line 206
    .end local v4    # "imm1":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_1
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 207
    const-string v5, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/market2345/feedback/FeedBackActivity;->loadFeedbacks()V

    goto :goto_0

    .line 214
    :sswitch_2
    iget-object v5, p0, Lcom/market2345/feedback/FeedBackActivity;->etFeedbackContent:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "content":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 216
    const-string v5, "\u8bf7\u8f93\u5165\u60a8\u8981\u7559\u8a00\u7684\u5185\u5bb9\uff01"

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 220
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_3

    .line 221
    const-string v5, "\u8bf7\u8f93\u5165\u6700\u5c113\u4e2a\u5b57\u7684\u7559\u8a00\u5185\u5bb9\uff01"

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 225
    :cond_3
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/market2345/feedback/FeedBackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 226
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 227
    iget-object v5, p0, Lcom/market2345/feedback/FeedBackActivity;->etFeedbackContent:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 230
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 231
    .local v2, "curMill":J
    invoke-static {p0}, Lcom/market2345/util/SPUtil;->getLatestFeedbackTime(Landroid/content/Context;)J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/16 v8, 0x7530

    cmp-long v5, v6, v8

    if-gez v5, :cond_5

    .line 232
    const-string v5, "30\u79d2\u5185\u6700\u591a\u53ea\u80fd\u63d0\u4ea41\u6b21\uff0c\u8bf7\u7a0d\u540e\u518d\u63d0\u4ea4\uff01"

    invoke-static {p0, v5, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 236
    :cond_5
    invoke-static {p0, v2, v3}, Lcom/market2345/util/SPUtil;->setLatestFeedbackTime(Landroid/content/Context;J)V

    .line 238
    new-instance v5, Lcom/market2345/model/FeedbackDetail;

    invoke-direct {v5}, Lcom/market2345/model/FeedbackDetail;-><init>()V

    iput-object v5, p0, Lcom/market2345/feedback/FeedBackActivity;->currentFeedbackDetail:Lcom/market2345/model/FeedbackDetail;

    .line 239
    iget-object v5, p0, Lcom/market2345/feedback/FeedBackActivity;->currentFeedbackDetail:Lcom/market2345/model/FeedbackDetail;

    const-string v6, "\u6211"

    iput-object v6, v5, Lcom/market2345/model/FeedbackDetail;->name:Ljava/lang/String;

    .line 240
    iget-object v5, p0, Lcom/market2345/feedback/FeedBackActivity;->currentFeedbackDetail:Lcom/market2345/model/FeedbackDetail;

    iput-object v0, v5, Lcom/market2345/model/FeedbackDetail;->comment:Ljava/lang/String;

    .line 241
    iget-object v5, p0, Lcom/market2345/feedback/FeedBackActivity;->currentFeedbackDetail:Lcom/market2345/model/FeedbackDetail;

    const-string v6, "yyyy-MM-dd HH:mm"

    invoke-static {v2, v3, v6}, Lcom/market2345/common/util/DateFormatUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/market2345/model/FeedbackDetail;->date:Ljava/lang/String;

    .line 242
    iget-object v5, p0, Lcom/market2345/feedback/FeedBackActivity;->currentFeedbackDetail:Lcom/market2345/model/FeedbackDetail;

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/market2345/model/FeedbackDetail;->child:Lcom/market2345/model/FeedbackDetail;

    .line 244
    iget-object v5, p0, Lcom/market2345/feedback/FeedBackActivity;->mHandler:Landroid/os/Handler;

    invoke-static {p0, p0, v0, v5}, Lcom/market2345/http/MarketAPI;->commitFeedback(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Ljava/lang/String;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09009e -> :sswitch_0
        0x7f0900a5 -> :sswitch_1
        0x7f090259 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/market2345/feedback/FeedBackActivity;->setContentView(I)V

    .line 71
    invoke-direct {p0}, Lcom/market2345/feedback/FeedBackActivity;->initView()V

    .line 72
    invoke-direct {p0}, Lcom/market2345/feedback/FeedBackActivity;->initListener()V

    .line 73
    invoke-direct {p0}, Lcom/market2345/feedback/FeedBackActivity;->loadFeedbacks()V

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    iput-object v1, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    if-eqz v0, :cond_4

    .line 84
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iget-object v0, v0, Lcom/market2345/model/FeedbackInfo;->response:Lcom/market2345/model/ResponseInfo;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iput-object v1, v0, Lcom/market2345/model/FeedbackInfo;->response:Lcom/market2345/model/ResponseInfo;

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iget-object v0, v0, Lcom/market2345/model/FeedbackInfo;->pageinfo:Lcom/market2345/model/PageInfo;

    if-eqz v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iput-object v1, v0, Lcom/market2345/model/FeedbackInfo;->pageinfo:Lcom/market2345/model/PageInfo;

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iget-object v0, v0, Lcom/market2345/model/FeedbackInfo;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iget-object v0, v0, Lcom/market2345/model/FeedbackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 94
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iput-object v1, v0, Lcom/market2345/model/FeedbackInfo;->list:Ljava/util/ArrayList;

    .line 97
    :cond_3
    iput-object v1, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->currentFeedbackDetail:Lcom/market2345/model/FeedbackDetail;

    if-eqz v0, :cond_5

    .line 101
    iput-object v1, p0, Lcom/market2345/feedback/FeedBackActivity;->currentFeedbackDetail:Lcom/market2345/model/FeedbackDetail;

    .line 104
    :cond_5
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onDestroy()V

    .line 105
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    const/4 v2, 0x0

    .line 324
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=listFeedBack"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 329
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 331
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/market2345/feedback/FeedBackActivity;->hasNoFeedbacks(Z)V

    .line 335
    :goto_1
    invoke-direct {p0}, Lcom/market2345/feedback/FeedBackActivity;->onBottomComplete()V

    goto :goto_0

    .line 333
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 336
    :cond_3
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=addFeedBack"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u63d0\u4ea4\u7559\u8a00\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 253
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    .end local p2    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 257
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=addFeedBack"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 258
    const-string v0, "200"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/feedback/FeedBackActivity;->currentFeedbackDetail:Lcom/market2345/model/FeedbackDetail;

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->adapter:Lcom/market2345/feedback/FeedbackAdapter;

    invoke-virtual {v0}, Lcom/market2345/feedback/FeedbackAdapter;->notifyDataSetChanged()V

    .line 262
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v0, v2}, Lcom/market2345/customview/DropDownListView;->setSelection(I)V

    .line 275
    :goto_1
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->etFeedbackContent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 276
    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7559\u8a00\u63d0\u4ea4\u6210\u529f"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 265
    :cond_2
    new-instance v0, Lcom/market2345/model/FeedbackInfo;

    invoke-direct {v0}, Lcom/market2345/model/FeedbackInfo;-><init>()V

    iput-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    .line 266
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    new-instance v1, Lcom/market2345/model/PageInfo;

    invoke-direct {v1}, Lcom/market2345/model/PageInfo;-><init>()V

    iput-object v1, v0, Lcom/market2345/model/FeedbackInfo;->pageinfo:Lcom/market2345/model/PageInfo;

    .line 267
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iget-object v0, v0, Lcom/market2345/model/FeedbackInfo;->pageinfo:Lcom/market2345/model/PageInfo;

    iput v3, v0, Lcom/market2345/model/PageInfo;->count:I

    .line 268
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iget-object v0, v0, Lcom/market2345/model/FeedbackInfo;->pageinfo:Lcom/market2345/model/PageInfo;

    iput v3, v0, Lcom/market2345/model/PageInfo;->page:I

    .line 269
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iget-object v0, v0, Lcom/market2345/model/FeedbackInfo;->pageinfo:Lcom/market2345/model/PageInfo;

    iput v3, v0, Lcom/market2345/model/PageInfo;->pagecount:I

    .line 270
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/market2345/model/FeedbackInfo;->list:Ljava/util/ArrayList;

    .line 271
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iget-object v0, v0, Lcom/market2345/model/FeedbackInfo;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/feedback/FeedBackActivity;->currentFeedbackDetail:Lcom/market2345/model/FeedbackDetail;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    invoke-direct {p0, v0}, Lcom/market2345/feedback/FeedBackActivity;->initFeedbacks(Lcom/market2345/model/FeedbackInfo;)V

    goto :goto_1

    .line 277
    :cond_3
    const-string v0, "416"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 279
    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7559\u8a00\u63d0\u4ea4\u5931\u8d25\uff0c30\u79d2\u5185\u6700\u591a\u53ea\u80fd\u63d0\u4ea41\u6b21\uff0c\u8bf7\u7a0d\u540e\u518d\u63d0\u4ea4\uff01"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 280
    :cond_4
    const-string v0, "415"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7559\u8a00\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 284
    :cond_5
    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7559\u8a00\u63d0\u4ea4\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 286
    :cond_6
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=listFeedBack"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    if-nez p2, :cond_7

    .line 288
    invoke-direct {p0, v3}, Lcom/market2345/feedback/FeedBackActivity;->hasNoFeedbacks(Z)V

    goto/16 :goto_0

    .line 292
    :cond_7
    instance-of v0, p2, Lcom/market2345/model/FeedbackInfo;

    if-eqz v0, :cond_c

    .line 293
    check-cast p2, Lcom/market2345/model/FeedbackInfo;

    .end local p2    # "obj":Ljava/lang/Object;
    iput-object p2, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    .line 294
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iget-object v0, v0, Lcom/market2345/model/FeedbackInfo;->pageinfo:Lcom/market2345/model/PageInfo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iget-object v0, v0, Lcom/market2345/model/FeedbackInfo;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    .line 295
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iget-object v0, v0, Lcom/market2345/model/FeedbackInfo;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v0, v0, Lcom/market2345/model/PageInfo;->count:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    iget-object v0, v0, Lcom/market2345/model/FeedbackInfo;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 296
    :cond_8
    invoke-direct {p0, v2}, Lcom/market2345/feedback/FeedBackActivity;->hasNoFeedbacks(Z)V

    goto/16 :goto_0

    .line 298
    :cond_9
    iget v0, p0, Lcom/market2345/feedback/FeedBackActivity;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/market2345/feedback/FeedBackActivity;->currentPage:I

    .line 299
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mFeedbackInfo:Lcom/market2345/model/FeedbackInfo;

    invoke-direct {p0, v0}, Lcom/market2345/feedback/FeedBackActivity;->initFeedbacks(Lcom/market2345/model/FeedbackInfo;)V

    goto/16 :goto_0

    .line 302
    :cond_a
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_b

    .line 304
    invoke-direct {p0, v3}, Lcom/market2345/feedback/FeedBackActivity;->hasNoFeedbacks(Z)V

    goto/16 :goto_0

    .line 306
    :cond_b
    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 307
    invoke-direct {p0}, Lcom/market2345/feedback/FeedBackActivity;->onBottomComplete()V

    goto/16 :goto_0

    .line 310
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_c
    const-string v0, "441"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 312
    invoke-direct {p0, v2}, Lcom/market2345/feedback/FeedBackActivity;->hasNoFeedbacks(Z)V

    .line 317
    :goto_2
    invoke-direct {p0}, Lcom/market2345/feedback/FeedBackActivity;->onBottomComplete()V

    goto/16 :goto_0

    .line 314
    :cond_d
    invoke-virtual {p0}, Lcom/market2345/feedback/FeedBackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6570\u636e\u52a0\u8f7d\u5b8c\u6210\uff0c\u6ca1\u6709\u66f4\u591a\u7559\u8a00"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 315
    iget-object v0, p0, Lcom/market2345/feedback/FeedBackActivity;->lvFeedbacks:Lcom/market2345/customview/DropDownListView;

    invoke-virtual {v0, v2}, Lcom/market2345/customview/DropDownListView;->setHasMore(Z)V

    goto :goto_2
.end method
