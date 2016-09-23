.class public Lcom/market2345/applist/AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppListAdapter.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ResourceAsColor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/applist/AppListAdapter$LazyloadListener;,
        Lcom/market2345/applist/AppListAdapter$OnSearchResultClickListener;,
        Lcom/market2345/applist/AppListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/market2345/model/App;",
        ">;",
        "Lcom/market2345/datacenter/MarketObserver;"
    }
.end annotation


# static fields
.field private static final RANK_TAG_BG:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field private bFromDesk:Z

.field private color:I

.field private itemClick:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private mLazyloadListener:Lcom/market2345/applist/AppListAdapter$LazyloadListener;

.field private resultClickListener:Lcom/market2345/applist/AppListAdapter$OnSearchResultClickListener;

.field private searchDialogFragment:Ljava/lang/String;

.field private session:Lcom/market2345/datacenter/DataCenterObserver;

.field private showRanking:Z

.field private sort:I

.field private topic:Lcom/market2345/model/Topic;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/market2345/applist/AppListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/applist/AppListAdapter;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/market2345/applist/AppListAdapter;->RANK_TAG_BG:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f020270
        0x7f020271
        0x7f020272
    .end array-data
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/applist/AppListAdapter;->showRanking:Z

    .line 110
    iput-object p1, p0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    .line 111
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/applist/AppListAdapter;->color:I

    .line 112
    iput-object p3, p0, Lcom/market2345/applist/AppListAdapter;->apps:Ljava/util/List;

    .line 113
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/applist/AppListAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    .line 114
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 115
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/applist/AppListAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 116
    return-void
.end method

.method private setTitleIcon(ILandroid/widget/ImageView;)V
    .locals 2
    .param p1, "recomIco"    # I
    .param p2, "iv_recommend_icon"    # Landroid/widget/ImageView;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 304
    packed-switch p1, :pswitch_data_0

    .line 325
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    :goto_0
    return-void

    .line 306
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 309
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    const v0, 0x7f020241

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 313
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    const v0, 0x7f020131

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 317
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    const v0, 0x7f0202ab

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 321
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 322
    const v0, 0x7f0202f2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 304
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private wrapView(Landroid/view/View;Lcom/market2345/model/App;)Lcom/market2345/download/interfaces/IProgressCallback;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "app"    # Lcom/market2345/model/App;

    .prologue
    .line 295
    instance-of v0, p1, Lcom/market2345/download/interfaces/IProgressCallback;

    if-eqz v0, :cond_0

    .line 296
    const v0, 0x7f09000b

    iget-object v1, p2, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 297
    check-cast p1, Lcom/market2345/download/interfaces/IProgressCallback;

    .end local p1    # "view":Landroid/view/View;
    return-object p1

    .line 299
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "the view isn\'t the instance of IProgressCallback!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addData(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p1, "newData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->apps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/market2345/applist/AppListAdapter;->getCount()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 400
    invoke-virtual {p0}, Lcom/market2345/applist/AppListAdapter;->notifyDataSetChanged()V

    .line 402
    :cond_0
    return-void
.end method

.method public changeData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/model/App;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p1, "mRise":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    if-eqz p1, :cond_0

    .line 406
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 407
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->apps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 408
    invoke-virtual {p0}, Lcom/market2345/applist/AppListAdapter;->notifyDataSetChanged()V

    .line 410
    :cond_0
    return-void
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->apps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 393
    invoke-virtual {p0}, Lcom/market2345/applist/AppListAdapter;->notifyDataSetChanged()V

    .line 395
    :cond_0
    return-void
.end method

.method public getTopic()Lcom/market2345/model/Topic;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->topic:Lcom/market2345/model/Topic;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->mLazyloadListener:Lcom/market2345/applist/AppListAdapter$LazyloadListener;

    if-eqz v11, :cond_0

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/applist/AppListAdapter;->getCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    move/from16 v0, p1

    if-ne v0, v11, :cond_0

    .line 123
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->mLazyloadListener:Lcom/market2345/applist/AppListAdapter$LazyloadListener;

    invoke-interface {v11}, Lcom/market2345/applist/AppListAdapter$LazyloadListener;->isLoadOver()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->mLazyloadListener:Lcom/market2345/applist/AppListAdapter$LazyloadListener;

    invoke-interface {v11}, Lcom/market2345/applist/AppListAdapter$LazyloadListener;->isEnd()Z

    move-result v11

    if-nez v11, :cond_0

    .line 125
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->mLazyloadListener:Lcom/market2345/applist/AppListAdapter$LazyloadListener;

    invoke-interface {v11}, Lcom/market2345/applist/AppListAdapter$LazyloadListener;->lazyload()V

    .line 129
    :cond_0
    if-nez p2, :cond_3

    .line 130
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v11}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f0300b8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 131
    new-instance v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;

    invoke-direct {v5}, Lcom/market2345/applist/AppListAdapter$ViewHolder;-><init>()V

    .line 132
    .local v5, "holder":Lcom/market2345/applist/AppListAdapter$ViewHolder;
    const v11, 0x7f09038d

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    .line 133
    const v11, 0x7f090225

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    .line 134
    const v11, 0x7f090226

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/market2345/customview/download/RateView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    .line 135
    const v11, 0x7f090392

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->iv_recommend_icon:Landroid/widget/ImageView;

    .line 136
    const v11, 0x7f09009f

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    .line 137
    const v11, 0x7f09038f

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_label:Landroid/widget/TextView;

    .line 138
    const v11, 0x7f090390

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_gift_label:Landroid/widget/TextView;

    .line 139
    const v11, 0x7f09038c

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_signature:Landroid/widget/TextView;

    .line 141
    const v11, 0x7f090391

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/market2345/customview/download/DownloadCountLayout;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    .line 142
    const v11, 0x7f09023c

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_size:Landroid/widget/TextView;

    .line 143
    const v11, 0x7f090393

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download_count:Landroid/widget/TextView;

    .line 144
    const v11, 0x7f090395

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/market2345/customview/download/DownloadSpeedLayout;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    .line 145
    const v11, 0x7f090228

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/market2345/customview/download/SizeView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    .line 146
    const v11, 0x7f090396

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/market2345/customview/download/SpeedView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_speed:Lcom/market2345/customview/download/SpeedView;

    .line 147
    const v11, 0x7f090397

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/market2345/customview/download/IntroduceView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    .line 148
    const v11, 0x7f090229

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/market2345/customview/download/MyProgressImageView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    .line 149
    const v11, 0x7f090222

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/market2345/customview/download/DownloadStatusView;

    iput-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    .line 151
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f090012

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 152
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f090009

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/applist/AppListAdapter;->resultClickListener:Lcom/market2345/applist/AppListAdapter$OnSearchResultClickListener;

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 154
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f090001

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/market2345/applist/AppListAdapter;->bFromDesk:Z

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 155
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f090020

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/applist/AppListAdapter;->searchDialogFragment:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 157
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f090026

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/applist/AppListAdapter;->type:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 158
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f090025

    move-object/from16 v0, p0

    iget v13, v0, Lcom/market2345/applist/AppListAdapter;->sort:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v12, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    invoke-virtual {v11, v12}, Lcom/market2345/download/DownloadManager;->setOnClickListener(Landroid/view/View;)V

    .line 160
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->apps:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/model/App;

    .line 166
    .local v2, "app":Lcom/market2345/model/App;
    add-int/lit8 v10, p1, 0x1

    .line 168
    .local v10, "ranking":I
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/market2345/applist/AppListAdapter;->showRanking:Z

    if-eqz v11, :cond_1

    .line 170
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 171
    const/4 v11, 0x3

    move/from16 v0, p1

    if-ge v0, v11, :cond_4

    .line 172
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    sget-object v12, Lcom/market2345/applist/AppListAdapter;->RANK_TAG_BG:[I

    aget v12, v12, p1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 173
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    const/4 v12, -0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    :cond_1
    :goto_1
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v11

    iget-object v12, v2, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    iget-object v13, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    invoke-virtual {v11, v12, v13}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 182
    iget v11, v2, Lcom/market2345/model/App;->recomIco:I

    iget-object v12, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->iv_recommend_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12}, Lcom/market2345/applist/AppListAdapter;->setTitleIcon(ILandroid/widget/ImageView;)V

    .line 183
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v12, v2, Lcom/market2345/model/App;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v11, v2, Lcom/market2345/model/App;->sLabel:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 185
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_label:Landroid/widget/TextView;

    iget-object v12, v2, Lcom/market2345/model/App;->sLabel:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_label:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    :goto_2
    iget v11, v2, Lcom/market2345/model/App;->giftTotal:I

    if-lez v11, :cond_6

    .line 191
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_gift_label:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    :goto_3
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->requestLayout()V

    .line 196
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_size:Landroid/widget/TextView;

    iget-object v12, v2, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download_count:Landroid/widget/TextView;

    iget-object v12, v2, Lcom/market2345/model/App;->totalDowns:Ljava/lang/String;

    invoke-static {v12}, Lcom/market2345/common/util/ApplicationUtils;->getFormatDownloads(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :try_start_0
    iget-object v11, v2, Lcom/market2345/model/App;->mark:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 201
    .local v6, "m":D
    const-wide/high16 v12, 0x4024000000000000L    # 10.0

    cmpl-double v11, v6, v12

    if-lez v11, :cond_2

    .line 202
    const-string v11, "10.0"

    iput-object v11, v2, Lcom/market2345/model/App;->mark:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v6    # "m":D
    :cond_2
    :goto_4
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    iget-object v12, v2, Lcom/market2345/model/App;->oneword:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/IntroduceView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v8, v2, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    .line 213
    .local v8, "packageName":Ljava/lang/String;
    move/from16 v0, p1

    iput v0, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->position:I

    .line 214
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->itemClick:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget v11, v2, Lcom/market2345/model/App;->versionCode:I

    iput v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->versioncode:I

    .line 217
    iput-object v8, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->packageName:Ljava/lang/String;

    .line 219
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f090007

    invoke-virtual {v11, v12, v2}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 220
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const/high16 v12, 0x7f090000

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 222
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f09000b

    iget-object v13, v2, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 223
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    const v12, 0x7f09000b

    iget-object v13, v2, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/MyProgressImageView;->setTag(ILjava/lang/Object;)V

    .line 224
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    const v12, 0x7f09000b

    iget-object v13, v2, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/RateView;->setTag(ILjava/lang/Object;)V

    .line 225
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    const v12, 0x7f09000b

    iget-object v13, v2, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/IntroduceView;->setTag(ILjava/lang/Object;)V

    .line 226
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    const v12, 0x7f09000b

    iget-object v13, v2, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/DownloadCountLayout;->setTag(ILjava/lang/Object;)V

    .line 227
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    const v12, 0x7f09000b

    iget-object v13, v2, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/DownloadSpeedLayout;->setTag(ILjava/lang/Object;)V

    .line 228
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    const v12, 0x7f09000b

    iget-object v13, v2, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/SizeView;->setTag(ILjava/lang/Object;)V

    .line 229
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_speed:Lcom/market2345/customview/download/SpeedView;

    const v12, 0x7f09000b

    iget-object v13, v2, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lcom/market2345/customview/download/SpeedView;->setTag(ILjava/lang/Object;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v12, v2, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v3

    .line 232
    .local v3, "downloadInfo":Lcom/market2345/download/DownloadInfo;
    if-eqz v3, :cond_7

    .line 233
    const/16 v11, 0x8

    new-array v11, v11, [Lcom/market2345/download/interfaces/IProgressCallback;

    const/4 v12, 0x0

    iget-object v13, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    iget-object v13, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    aput-object v13, v11, v12

    const/4 v12, 0x3

    iget-object v13, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    aput-object v13, v11, v12

    const/4 v12, 0x4

    iget-object v13, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    aput-object v13, v11, v12

    const/4 v12, 0x5

    iget-object v13, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    aput-object v13, v11, v12

    const/4 v12, 0x6

    iget-object v13, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    aput-object v13, v11, v12

    const/4 v12, 0x7

    iget-object v13, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_speed:Lcom/market2345/customview/download/SpeedView;

    aput-object v13, v11, v12

    invoke-virtual {v3, v11}, Lcom/market2345/download/DownloadInfo;->addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v11}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V

    .line 291
    :goto_5
    return-object p2

    .line 162
    .end local v2    # "app":Lcom/market2345/model/App;
    .end local v3    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    .end local v5    # "holder":Lcom/market2345/applist/AppListAdapter$ViewHolder;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v10    # "ranking":I
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;

    .restart local v5    # "holder":Lcom/market2345/applist/AppListAdapter$ViewHolder;
    goto/16 :goto_0

    .line 175
    .restart local v2    # "app":Lcom/market2345/model/App;
    .restart local v10    # "ranking":I
    :cond_4
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    const v12, 0x7f020273

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 176
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070037

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1

    .line 188
    :cond_5
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_label:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 193
    :cond_6
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_gift_label:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 204
    :catch_0
    move-exception v4

    .line 205
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 245
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v3    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    .restart local v8    # "packageName":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v11}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v11

    iget-object v12, v2, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 247
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f0b0160

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/DownloadStatusView;->setText(I)V

    .line 248
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07005a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/DownloadStatusView;->setTextColor(I)V

    .line 249
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f020185

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/DownloadStatusView;->setBackgroundResource(I)V

    .line 253
    iget-object v11, v2, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    iget-object v12, v2, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v11

    iget-object v11, v11, Lcom/market2345/model/InstalledApp;->signatures:Ljava/util/HashSet;

    iget-object v12, v2, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 254
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    invoke-virtual {v11}, Lcom/market2345/customview/download/DownloadStatusView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 255
    .local v9, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    const/high16 v12, 0x41400000    # 12.0f

    invoke-static {v11, v12}, Lcom/market2345/util/SPUtil;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 256
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    invoke-virtual {v11, v9}, Lcom/market2345/customview/download/DownloadStatusView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_signature:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 281
    .end local v9    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_6
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/DownloadStatusView;->setEnabled(Z)V

    .line 282
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/market2345/customview/download/DownloadStatusView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 283
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/MyProgressImageView;->setVisibility(I)V

    .line 284
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/RateView;->setVisibility(I)V

    .line 285
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/IntroduceView;->setVisibility(I)V

    .line 286
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/DownloadCountLayout;->setVisibility(I)V

    .line 287
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/DownloadSpeedLayout;->setVisibility(I)V

    goto/16 :goto_5

    .line 259
    :cond_8
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    invoke-virtual {v11}, Lcom/market2345/customview/download/DownloadStatusView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 260
    .restart local v9    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v11, v12}, Lcom/market2345/util/SPUtil;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 261
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    invoke-virtual {v11, v9}, Lcom/market2345/customview/download/DownloadStatusView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_signature:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_6

    .line 264
    .end local v9    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v11}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v11

    iget-object v12, v2, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/market2345/datacenter/AppsInfoHandler;->checkIsHasInatall(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 266
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f0b0063

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/DownloadStatusView;->setText(I)V

    .line 267
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07005a

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/DownloadStatusView;->setTextColor(I)V

    .line 268
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f020185

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/DownloadStatusView;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 270
    :cond_a
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f0b0010

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/DownloadStatusView;->setText(I)V

    .line 271
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v12}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07004f

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/DownloadStatusView;->setTextColor(I)V

    .line 272
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    const v12, 0x7f02018b

    invoke-virtual {v11, v12}, Lcom/market2345/customview/download/DownloadStatusView;->setBackgroundResource(I)V

    .line 274
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    invoke-virtual {v11}, Lcom/market2345/customview/download/DownloadStatusView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    .restart local v9    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    const/high16 v12, 0x41a00000    # 20.0f

    invoke-static {v11, v12}, Lcom/market2345/util/SPUtil;->dip2px(Landroid/content/Context;F)I

    move-result v11

    iput v11, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 276
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    invoke-virtual {v11, v9}, Lcom/market2345/customview/download/DownloadStatusView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 277
    iget-object v11, v5, Lcom/market2345/applist/AppListAdapter$ViewHolder;->tv_signature:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public getmLazyloadListener()Lcom/market2345/applist/AppListAdapter$LazyloadListener;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->mLazyloadListener:Lcom/market2345/applist/AppListAdapter$LazyloadListener;

    return-object v0
.end method

.method public setFromDeskTag(ZLjava/lang/String;)V
    .locals 0
    .param p1, "bFromDesk"    # Z
    .param p2, "searchDialogFragment"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/market2345/applist/AppListAdapter;->bFromDesk:Z

    .line 100
    iput-object p2, p0, Lcom/market2345/applist/AppListAdapter;->searchDialogFragment:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setItemClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "itemClick"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/market2345/applist/AppListAdapter;->itemClick:Landroid/view/View$OnClickListener;

    .line 105
    return-void
.end method

.method public setProductList()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/applist/AppListAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    .line 379
    iget-object v0, p0, Lcom/market2345/applist/AppListAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 381
    :cond_0
    return-void
.end method

.method public setSearchResultClickListener(Lcom/market2345/applist/AppListAdapter$OnSearchResultClickListener;)V
    .locals 0
    .param p1, "resultClickListener"    # Lcom/market2345/applist/AppListAdapter$OnSearchResultClickListener;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/market2345/applist/AppListAdapter;->resultClickListener:Lcom/market2345/applist/AppListAdapter$OnSearchResultClickListener;

    .line 440
    return-void
.end method

.method public setShowRankTag(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/market2345/applist/AppListAdapter;->showRanking:Z

    .line 89
    return-void
.end method

.method public setTopic(Lcom/market2345/model/Topic;)V
    .locals 0
    .param p1, "topic"    # Lcom/market2345/model/Topic;

    .prologue
    .line 466
    iput-object p1, p0, Lcom/market2345/applist/AppListAdapter;->topic:Lcom/market2345/model/Topic;

    .line 467
    return-void
.end method

.method public setTypeAndSoft(Ljava/lang/String;I)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "sort"    # I

    .prologue
    .line 93
    iput-object p1, p0, Lcom/market2345/applist/AppListAdapter;->type:Ljava/lang/String;

    .line 94
    iput p2, p0, Lcom/market2345/applist/AppListAdapter;->sort:I

    .line 96
    return-void
.end method

.method public setmLazyloadListener(Lcom/market2345/applist/AppListAdapter$LazyloadListener;)V
    .locals 0
    .param p1, "mLazyloadListener"    # Lcom/market2345/applist/AppListAdapter$LazyloadListener;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/market2345/applist/AppListAdapter;->mLazyloadListener:Lcom/market2345/applist/AppListAdapter$LazyloadListener;

    .line 85
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 415
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_4

    move-object v0, p2

    .line 416
    check-cast v0, Landroid/util/Pair;

    .line 417
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.app.install"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.app.remove"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/applist/AppListAdapter;->notifyDataSetChanged()V

    .line 431
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 419
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.upgrade.num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 420
    invoke-virtual {p0}, Lcom/market2345/applist/AppListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 421
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.downloading.list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/market2345/applist/AppListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 424
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 425
    const-string v1, "pref.add.new.download"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 426
    invoke-virtual {p0}, Lcom/market2345/applist/AppListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 427
    :cond_5
    const-string v1, "pref.download.load.completed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {p0}, Lcom/market2345/applist/AppListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
