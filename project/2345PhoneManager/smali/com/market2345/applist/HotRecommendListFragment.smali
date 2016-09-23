.class public Lcom/market2345/applist/HotRecommendListFragment;
.super Lcom/market2345/applist/AppListFragment;
.source "HotRecommendListFragment.java"


# instance fields
.field private galleryView:Landroid/view/View;

.field private recommendListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragment;-><init>()V

    .line 24
    new-instance v0, Lcom/market2345/applist/HotRecommendListFragment$1;

    invoke-direct {v0, p0}, Lcom/market2345/applist/HotRecommendListFragment$1;-><init>(Lcom/market2345/applist/HotRecommendListFragment;)V

    iput-object v0, p0, Lcom/market2345/applist/HotRecommendListFragment;->recommendListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private localTopAdData()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/RecommendAd;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/RecommendAd;>;"
    new-instance v2, Lcom/market2345/model/RecommendAd;

    invoke-direct {v2}, Lcom/market2345/model/RecommendAd;-><init>()V

    .line 71
    .local v2, "second":Lcom/market2345/model/RecommendAd;
    const/4 v3, 0x1

    iput v3, v2, Lcom/market2345/model/RecommendAd;->position:I

    .line 72
    const v3, 0x7f0b007f

    invoke-virtual {p0, v3}, Lcom/market2345/applist/HotRecommendListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/market2345/model/RecommendAd;->title:Ljava/lang/String;

    .line 73
    const-string v3, "game"

    iput-object v3, v2, Lcom/market2345/model/RecommendAd;->type:Ljava/lang/String;

    .line 74
    iput v4, v2, Lcom/market2345/model/RecommendAd;->sort:I

    .line 75
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    new-instance v0, Lcom/market2345/model/RecommendAd;

    invoke-direct {v0}, Lcom/market2345/model/RecommendAd;-><init>()V

    .line 80
    .local v0, "first":Lcom/market2345/model/RecommendAd;
    const/4 v3, 0x2

    iput v3, v0, Lcom/market2345/model/RecommendAd;->position:I

    .line 81
    const v3, 0x7f0b000f

    invoke-virtual {p0, v3}, Lcom/market2345/applist/HotRecommendListFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/market2345/model/RecommendAd;->title:Ljava/lang/String;

    .line 82
    const-string v3, "soft"

    iput-object v3, v0, Lcom/market2345/model/RecommendAd;->type:Ljava/lang/String;

    .line 83
    iput v4, v0, Lcom/market2345/model/RecommendAd;->sort:I

    .line 84
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    return-object v1
.end method


# virtual methods
.method public confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragment$ConfirmData;)V
    .locals 1
    .param p1, "confirmData"    # Lcom/market2345/applist/AppListFragment$ConfirmData;

    .prologue
    .line 103
    const-string v0, "recommend_hot_data"

    iput-object v0, p1, Lcom/market2345/applist/AppListFragment$ConfirmData;->dataKey:Ljava/lang/String;

    .line 104
    const-string v0, "recommend_hot_time"

    iput-object v0, p1, Lcom/market2345/applist/AppListFragment$ConfirmData;->timeKey:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/market2345/applist/AppListFragment$ConfirmData;->ignoreInstalledApp:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/market2345/applist/AppListFragment$ConfirmData;->showRankTag:Z

    .line 107
    return-void
.end method

.method public createHeaderView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/market2345/applist/HotRecommendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0300a8

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/market2345/applist/HotRecommendListFragment;->galleryView:Landroid/view/View;

    .line 41
    invoke-direct {p0}, Lcom/market2345/applist/HotRecommendListFragment;->localTopAdData()Ljava/util/ArrayList;

    move-result-object v3

    .line 42
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/RecommendAd;>;"
    iget-object v5, p0, Lcom/market2345/applist/HotRecommendListFragment;->galleryView:Landroid/view/View;

    const v6, 0x7f090344

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 43
    .local v1, "first":Landroid/widget/ImageView;
    iget-object v5, p0, Lcom/market2345/applist/HotRecommendListFragment;->galleryView:Landroid/view/View;

    const v6, 0x7f090345

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 45
    .local v4, "second":Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    .line 46
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/RecommendAd;

    .line 47
    .local v0, "ad":Lcom/market2345/model/RecommendAd;
    iget v5, v0, Lcom/market2345/model/RecommendAd;->position:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 49
    :pswitch_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 50
    iget-object v5, p0, Lcom/market2345/applist/HotRecommendListFragment;->recommendListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 54
    :pswitch_1
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 55
    iget-object v5, p0, Lcom/market2345/applist/HotRecommendListFragment;->recommendListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 63
    .end local v0    # "ad":Lcom/market2345/model/RecommendAd;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v5, p0, Lcom/market2345/applist/HotRecommendListFragment;->galleryView:Landroid/view/View;

    return-object v5

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-virtual {p0}, Lcom/market2345/applist/HotRecommendListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 93
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=ardV3&d=getRecomRank"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 94
    const-string v1, "authKey"

    const-string v2, "duotetomobile20120903"

    invoke-virtual {v0, v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 97
    const-string v1, "page"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 98
    return-object v0
.end method
