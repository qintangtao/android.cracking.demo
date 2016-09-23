.class public Lcom/market2345/applist/SpecialListFragment;
.super Lcom/market2345/applist/AppListFragmentSpecial;
.source "SpecialListFragment.java"


# instance fields
.field private galleryView:Landroid/view/View;

.field private recommendListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/market2345/applist/AppListFragmentSpecial;-><init>()V

    .line 33
    new-instance v0, Lcom/market2345/applist/SpecialListFragment$1;

    invoke-direct {v0, p0}, Lcom/market2345/applist/SpecialListFragment$1;-><init>(Lcom/market2345/applist/SpecialListFragment;)V

    iput-object v0, p0, Lcom/market2345/applist/SpecialListFragment;->recommendListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private localTopAdData()Ljava/util/ArrayList;
    .locals 6
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
    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/RecommendAd;>;"
    new-instance v3, Lcom/market2345/model/RecommendAd;

    invoke-direct {v3}, Lcom/market2345/model/RecommendAd;-><init>()V

    .line 143
    .local v3, "recommendGift":Lcom/market2345/model/RecommendAd;
    const/4 v5, 0x1

    iput v5, v3, Lcom/market2345/model/RecommendAd;->position:I

    .line 144
    const v5, 0x7f0b0155

    invoke-virtual {p0, v5}, Lcom/market2345/applist/SpecialListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/market2345/model/RecommendAd;->btn_title:Ljava/lang/String;

    .line 145
    const v5, 0x7f02029b

    iput v5, v3, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    .line 146
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v4, Lcom/market2345/model/RecommendAd;

    invoke-direct {v4}, Lcom/market2345/model/RecommendAd;-><init>()V

    .line 150
    .local v4, "recommendWomen":Lcom/market2345/model/RecommendAd;
    const/4 v5, 0x2

    iput v5, v4, Lcom/market2345/model/RecommendAd;->position:I

    .line 151
    const v5, 0x7f0b015b

    invoke-virtual {p0, v5}, Lcom/market2345/applist/SpecialListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/market2345/model/RecommendAd;->title:Ljava/lang/String;

    .line 152
    const v5, 0x7f0b0158

    invoke-virtual {p0, v5}, Lcom/market2345/applist/SpecialListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/market2345/model/RecommendAd;->btn_title:Ljava/lang/String;

    .line 153
    const-string v5, "az_nsbb"

    iput-object v5, v4, Lcom/market2345/model/RecommendAd;->type:Ljava/lang/String;

    .line 154
    const v5, 0x7f0202a7

    iput v5, v4, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    .line 155
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v1, Lcom/market2345/model/RecommendAd;

    invoke-direct {v1}, Lcom/market2345/model/RecommendAd;-><init>()V

    .line 159
    .local v1, "recommendAdFresh":Lcom/market2345/model/RecommendAd;
    const/4 v5, 0x3

    iput v5, v1, Lcom/market2345/model/RecommendAd;->position:I

    .line 160
    const v5, 0x7f0b0159

    invoke-virtual {p0, v5}, Lcom/market2345/applist/SpecialListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/market2345/model/RecommendAd;->title:Ljava/lang/String;

    .line 161
    const v5, 0x7f0b0154

    invoke-virtual {p0, v5}, Lcom/market2345/applist/SpecialListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/market2345/model/RecommendAd;->btn_title:Ljava/lang/String;

    .line 162
    const-string v5, "az_jcfx"

    iput-object v5, v1, Lcom/market2345/model/RecommendAd;->type:Ljava/lang/String;

    .line 163
    const v5, 0x7f020298

    iput v5, v1, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Lcom/market2345/model/RecommendAd;

    invoke-direct {v2}, Lcom/market2345/model/RecommendAd;-><init>()V

    .line 168
    .local v2, "recommendAdNecessary":Lcom/market2345/model/RecommendAd;
    const/4 v5, 0x4

    iput v5, v2, Lcom/market2345/model/RecommendAd;->position:I

    .line 169
    invoke-virtual {p0}, Lcom/market2345/applist/SpecialListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/market2345/lm/util/ChannelUtil;->isUnionShouldShow(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 170
    const v5, 0x7f0b0156

    invoke-virtual {p0, v5}, Lcom/market2345/applist/SpecialListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/market2345/model/RecommendAd;->btn_title:Ljava/lang/String;

    .line 171
    const v5, 0x7f02029e

    iput v5, v2, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    .line 179
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    return-object v0

    .line 173
    :cond_0
    const v5, 0x7f0b015a

    invoke-virtual {p0, v5}, Lcom/market2345/applist/SpecialListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/market2345/model/RecommendAd;->title:Ljava/lang/String;

    .line 174
    const v5, 0x7f0b0157

    invoke-virtual {p0, v5}, Lcom/market2345/applist/SpecialListFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/market2345/model/RecommendAd;->btn_title:Ljava/lang/String;

    .line 175
    const-string v5, "az_zjbb"

    iput-object v5, v2, Lcom/market2345/model/RecommendAd;->type:Ljava/lang/String;

    .line 176
    const v5, 0x7f0202a1

    iput v5, v2, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    goto :goto_0
.end method


# virtual methods
.method public confirmDataSaveNeeded(Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;)V
    .locals 1
    .param p1, "confirmData"    # Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    .prologue
    .line 194
    const-string v0, "special_data_new24"

    iput-object v0, p1, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->dataKey:Ljava/lang/String;

    .line 195
    const-string v0, "special_time_new24"

    iput-object v0, p1, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->timeKey:Ljava/lang/String;

    .line 196
    const-string v0, "type_recommend"

    iput-object v0, p1, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->type:Ljava/lang/String;

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->ignoreInstalledApp:Z

    .line 198
    return-void
.end method

.method public createHeaderView()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 64
    invoke-virtual {p0}, Lcom/market2345/applist/SpecialListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0300c3

    iget-object v9, p0, Lcom/market2345/applist/SpecialListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->galleryView:Landroid/view/View;

    .line 65
    iget-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->galleryView:Landroid/view/View;

    const v8, 0x7f09013d

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->bannerArea:Landroid/view/View;

    .line 66
    iget-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->galleryView:Landroid/view/View;

    const v8, 0x7f09013e

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/market2345/customview/AutoScrollViewPager;

    iput-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    .line 67
    iget-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->galleryView:Landroid/view/View;

    const v8, 0x7f09013f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RadioGroup;

    iput-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->mPageIndicator:Landroid/widget/RadioGroup;

    .line 69
    invoke-direct {p0}, Lcom/market2345/applist/SpecialListFragment;->localTopAdData()Ljava/util/ArrayList;

    move-result-object v4

    .line 70
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/RecommendAd;>;"
    iget-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->galleryView:Landroid/view/View;

    const v8, 0x7f0903ed

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 71
    .local v1, "first":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->galleryView:Landroid/view/View;

    const v8, 0x7f0903ee

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 72
    .local v5, "second":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->galleryView:Landroid/view/View;

    const v8, 0x7f0903ef

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 73
    .local v6, "third":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->galleryView:Landroid/view/View;

    const v8, 0x7f0903f0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 75
    .local v2, "fourth":Landroid/widget/TextView;
    if-eqz v4, :cond_4

    .line 76
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/RecommendAd;

    .line 77
    .local v0, "ad":Lcom/market2345/model/RecommendAd;
    iget v7, v0, Lcom/market2345/model/RecommendAd;->position:I

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    .line 79
    :pswitch_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 80
    iget-object v7, v0, Lcom/market2345/model/RecommendAd;->btn_title:Ljava/lang/String;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iget-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->recommendListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget v7, v0, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    if-lez v7, :cond_1

    .line 84
    iget v7, v0, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    invoke-virtual {v1, v7, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 86
    :cond_1
    new-instance v7, Lcom/market2345/applist/SpecialListFragment$2;

    invoke-direct {v7, p0}, Lcom/market2345/applist/SpecialListFragment$2;-><init>(Lcom/market2345/applist/SpecialListFragment;)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 95
    iget-object v7, v0, Lcom/market2345/model/RecommendAd;->btn_title:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->recommendListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 98
    iget v7, v0, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    if-lez v7, :cond_0

    .line 99
    iget v7, v0, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    invoke-virtual {v5, v7, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 103
    :pswitch_2
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 104
    iget-object v7, v0, Lcom/market2345/model/RecommendAd;->btn_title:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->recommendListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget v7, v0, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    if-lez v7, :cond_0

    .line 108
    iget v7, v0, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    invoke-virtual {v6, v7, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0

    .line 112
    :pswitch_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 113
    iget-object v7, v0, Lcom/market2345/model/RecommendAd;->btn_title:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    iget v7, v0, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    if-lez v7, :cond_2

    .line 116
    iget v7, v0, Lcom/market2345/model/RecommendAd;->drawableLeftId:I

    invoke-virtual {v2, v7, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/applist/SpecialListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/market2345/lm/util/ChannelUtil;->isUnionShouldShow(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 119
    new-instance v7, Lcom/market2345/applist/SpecialListFragment$3;

    invoke-direct {v7, p0}, Lcom/market2345/applist/SpecialListFragment$3;-><init>(Lcom/market2345/applist/SpecialListFragment;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 127
    :cond_3
    iget-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->recommendListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "ad":Lcom/market2345/model/RecommendAd;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v7, p0, Lcom/market2345/applist/SpecialListFragment;->galleryView:Landroid/view/View;

    return-object v7

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public createLocalHttpBuilder()Lcom/market2345/httpnew/HttpTransactionBuilder;
    .locals 4

    .prologue
    .line 186
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-virtual {p0}, Lcom/market2345/applist/SpecialListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=getRecomListNew"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "authKey"

    const-string v3, "duotetomobile20120903"

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "type"

    const-string v3, "az_jp_new"

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "topic"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "reversed_list_topic"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "page"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setInitialPage(Ljava/lang/String;I)Lcom/market2345/httpnew/HttpTransactionBuilder;

    .line 189
    return-object v0
.end method
