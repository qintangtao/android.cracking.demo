.class public Lcom/market2345/applist/AppListWithTopicAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppListWithTopicAdapter.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;,
        Lcom/market2345/applist/AppListWithTopicAdapter$OnSearchResultClickListener;,
        Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;,
        Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/market2345/datacenter/MarketObserver;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private color:I

.field private itemClick:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private mLazyloadListener:Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mTag:Ljava/lang/String;

.field private resultClickListener:Lcom/market2345/applist/AppListWithTopicAdapter$OnSearchResultClickListener;

.field private session:Lcom/market2345/datacenter/DataCenterObserver;

.field private showRanking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/market2345/applist/AppListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/applist/AppListWithTopicAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "textViewResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const v3, 0x7f0202fe

    const/4 v2, 0x1

    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->showRanking:Z

    .line 84
    iput-object p1, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    .line 85
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->color:I

    .line 86
    iput-object p3, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->apps:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    .line 88
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 89
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 91
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 100
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/applist/AppListWithTopicAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/applist/AppListWithTopicAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/applist/AppListWithTopicAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/applist/AppListWithTopicAdapter;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private setTitleIcon(ILandroid/widget/ImageView;)V
    .locals 2
    .param p1, "recomIco"    # I
    .param p2, "iv_recommend_icon"    # Landroid/widget/ImageView;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x0

    .line 340
    packed-switch p1, :pswitch_data_0

    .line 361
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    :goto_0
    return-void

    .line 342
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 345
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    const v0, 0x7f020241

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 349
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 350
    const v0, 0x7f020131

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 353
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    const v0, 0x7f0202ab

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 357
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    const v0, 0x7f0202f2

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 340
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
    .line 331
    instance-of v0, p1, Lcom/market2345/download/interfaces/IProgressCallback;

    if-eqz v0, :cond_0

    .line 332
    const v0, 0x7f09000b

    iget-object v1, p2, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 333
    check-cast p1, Lcom/market2345/download/interfaces/IProgressCallback;

    .end local p1    # "view":Landroid/view/View;
    return-object p1

    .line 335
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
    .line 440
    .local p1, "newData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->apps:Ljava/util/List;

    invoke-virtual {p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->getCount()I

    move-result v1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 442
    invoke-virtual {p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->notifyDataSetChanged()V

    .line 444
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
    .line 447
    .local p1, "mRise":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/model/App;>;"
    if-eqz p1, :cond_0

    .line 448
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 449
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->apps:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 450
    invoke-virtual {p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->notifyDataSetChanged()V

    .line 452
    :cond_0
    return-void
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->apps:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->apps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 435
    invoke-virtual {p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->notifyDataSetChanged()V

    .line 437
    :cond_0
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mLazyloadListener:Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->getCount()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mLazyloadListener:Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;->isLoadOver()Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mLazyloadListener:Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;->isEnd()Z

    move-result v17

    if-nez v17, :cond_0

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mLazyloadListener:Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;->lazyload()V

    .line 113
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->apps:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 114
    .local v10, "o":Ljava/lang/Object;
    instance-of v0, v10, Lcom/market2345/model/TopicItem;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    move-object v15, v10

    .line 115
    check-cast v15, Lcom/market2345/model/TopicItem;

    .line 117
    .local v15, "topic":Lcom/market2345/model/TopicItem;
    if-nez p2, :cond_2

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f03008c

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 119
    new-instance v16, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;

    invoke-direct/range {v16 .. v16}, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;-><init>()V

    .line 120
    .local v16, "topicItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;
    const v17, 0x7f0902f7

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;->ll_list_topic:Landroid/view/View;

    .line 121
    const v17, 0x7f0902f9

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;->iv_topic_picture:Landroid/widget/ImageView;

    .line 122
    const v17, 0x7f0902f8

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;->tv_topic_title:Landroid/widget/TextView;

    .line 123
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    :goto_0
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v17

    iget-object v0, v15, Lcom/market2345/model/TopicItem;->img_url:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;->iv_topic_picture:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 139
    move/from16 v0, p1

    move-object/from16 v1, v16

    iput v0, v1, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;->position:I

    .line 140
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;->tv_topic_title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/market2345/model/TopicItem;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;->ll_list_topic:Landroid/view/View;

    move-object/from16 v17, v0

    new-instance v18, Lcom/market2345/applist/AppListWithTopicAdapter$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v15}, Lcom/market2345/applist/AppListWithTopicAdapter$1;-><init>(Lcom/market2345/applist/AppListWithTopicAdapter;ILcom/market2345/model/TopicItem;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    .end local v15    # "topic":Lcom/market2345/model/TopicItem;
    .end local v16    # "topicItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;
    :cond_1
    :goto_1
    return-object p2

    .line 125
    .restart local v15    # "topic":Lcom/market2345/model/TopicItem;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 126
    .local v11, "o1":Ljava/lang/Object;
    instance-of v0, v11, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;

    .restart local v16    # "topicItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;
    goto :goto_0

    .line 129
    .end local v16    # "topicItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f03008c

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 130
    new-instance v16, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;

    invoke-direct/range {v16 .. v16}, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;-><init>()V

    .line 131
    .restart local v16    # "topicItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;
    const v17, 0x7f0902f7

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;->ll_list_topic:Landroid/view/View;

    .line 132
    const v17, 0x7f0902f9

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;->iv_topic_picture:Landroid/widget/ImageView;

    .line 133
    const v17, 0x7f0902f8

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;->tv_topic_title:Landroid/widget/TextView;

    .line 134
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 159
    .end local v11    # "o1":Ljava/lang/Object;
    .end local v15    # "topic":Lcom/market2345/model/TopicItem;
    .end local v16    # "topicItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$TopicItemViewHolder;
    :cond_4
    instance-of v0, v10, Lcom/market2345/model/App;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object v4, v10

    .line 160
    check-cast v4, Lcom/market2345/model/App;

    .line 162
    .local v4, "app":Lcom/market2345/model/App;
    if-nez p2, :cond_7

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0300b8

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 164
    new-instance v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;

    invoke-direct {v5}, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;-><init>()V

    .line 165
    .local v5, "appItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;
    const v17, 0x7f09038d

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    .line 166
    const v17, 0x7f090225

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    .line 167
    const v17, 0x7f090226

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/RateView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    .line 168
    const v17, 0x7f090392

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->iv_recommend_icon:Landroid/widget/ImageView;

    .line 169
    const v17, 0x7f09009f

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_title:Landroid/widget/TextView;

    .line 170
    const v17, 0x7f09038f

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_label:Landroid/widget/TextView;

    .line 171
    const v17, 0x7f090390

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_gift_label:Landroid/widget/TextView;

    .line 172
    const v17, 0x7f090391

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/DownloadCountLayout;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    .line 173
    const v17, 0x7f09023c

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_size:Landroid/widget/TextView;

    .line 174
    const v17, 0x7f090393

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download_count:Landroid/widget/TextView;

    .line 175
    const v17, 0x7f090395

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/DownloadSpeedLayout;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    .line 176
    const v17, 0x7f090228

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/SizeView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    .line 177
    const v17, 0x7f090396

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/SpeedView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_speed:Lcom/market2345/customview/download/SpeedView;

    .line 178
    const v17, 0x7f090397

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/IntroduceView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    .line 179
    const v17, 0x7f090229

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/MyProgressImageView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    .line 180
    const v17, 0x7f090222

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    .line 182
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f090012

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 183
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f090009

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->resultClickListener:Lcom/market2345/applist/AppListWithTopicAdapter$OnSearchResultClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 184
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f090009

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mTag:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mTag:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/market2345/download/DownloadManager;->setTypeAndPostion(ILjava/lang/String;)V

    .line 187
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f09000a

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/download/DownloadManager;->setOnClickListener(Landroid/view/View;)V

    .line 189
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 225
    :goto_2
    add-int/lit8 v14, p1, 0x1

    .line 227
    .local v14, "ranking":I
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->showRanking:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 229
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    const/16 v17, 0x3

    move/from16 v0, p1

    move/from16 v1, v17

    if-ge v0, v1, :cond_9

    .line 231
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f02026f

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 232
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 239
    :cond_5
    :goto_3
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v17

    iget-object v0, v4, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 241
    iget v0, v4, Lcom/market2345/model/App;->recomIco:I

    move/from16 v17, v0

    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->iv_recommend_icon:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/market2345/applist/AppListWithTopicAdapter;->setTitleIcon(ILandroid/widget/ImageView;)V

    .line 242
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/market2345/model/App;->title:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v0, v4, Lcom/market2345/model/App;->sLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    .line 244
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_label:Landroid/widget/TextView;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/market2345/model/App;->sLabel:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_label:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    :goto_4
    iget v0, v4, Lcom/market2345/model/App;->giftTotal:I

    move/from16 v17, v0

    if-lez v17, :cond_b

    .line 250
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_gift_label:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    :goto_5
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_title:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->requestLayout()V

    .line 255
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_size:Landroid/widget/TextView;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download_count:Landroid/widget/TextView;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/market2345/model/App;->totalDowns:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/market2345/common/util/ApplicationUtils;->getFormatDownloads(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :try_start_0
    iget-object v0, v4, Lcom/market2345/model/App;->mark:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 260
    .local v8, "m":D
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    cmpl-double v17, v8, v18

    if-lez v17, :cond_6

    .line 261
    const-string v17, "10.0"

    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/market2345/model/App;->mark:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v8    # "m":D
    :cond_6
    :goto_6
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/market2345/model/App;->oneword:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/IntroduceView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v13, v4, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    .line 272
    .local v13, "packageName":Ljava/lang/String;
    move/from16 v0, p1

    iput v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->position:I

    .line 273
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f090008

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 274
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->itemClick:Landroid/view/View$OnClickListener;

    move-object/from16 v17, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget v0, v4, Lcom/market2345/model/App;->versionCode:I

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->versioncode:I

    .line 277
    iput-object v13, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->packageName:Ljava/lang/String;

    .line 278
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f090007

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 279
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f09000b

    iget-object v0, v4, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 280
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    move-object/from16 v17, v0

    const v18, 0x7f09000b

    iget-object v0, v4, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/MyProgressImageView;->setTag(ILjava/lang/Object;)V

    .line 281
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    move-object/from16 v17, v0

    const v18, 0x7f09000b

    iget-object v0, v4, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/RateView;->setTag(ILjava/lang/Object;)V

    .line 282
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    move-object/from16 v17, v0

    const v18, 0x7f09000b

    iget-object v0, v4, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/IntroduceView;->setTag(ILjava/lang/Object;)V

    .line 283
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    move-object/from16 v17, v0

    const v18, 0x7f09000b

    iget-object v0, v4, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/DownloadCountLayout;->setTag(ILjava/lang/Object;)V

    .line 284
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    move-object/from16 v17, v0

    const v18, 0x7f09000b

    iget-object v0, v4, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/DownloadSpeedLayout;->setTag(ILjava/lang/Object;)V

    .line 285
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    move-object/from16 v17, v0

    const v18, 0x7f09000b

    iget-object v0, v4, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/SizeView;->setTag(ILjava/lang/Object;)V

    .line 286
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_speed:Lcom/market2345/customview/download/SpeedView;

    move-object/from16 v17, v0

    const v18, 0x7f09000b

    iget-object v0, v4, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/SpeedView;->setTag(ILjava/lang/Object;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    move-object/from16 v17, v0

    iget-object v0, v4, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v6

    .line 289
    .local v6, "downloadInfo":Lcom/market2345/download/DownloadInfo;
    if-eqz v6, :cond_c

    .line 290
    const/16 v17, 0x8

    move/from16 v0, v17

    new-array v0, v0, [Lcom/market2345/download/interfaces/IProgressCallback;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x1

    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x2

    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x3

    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x4

    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x5

    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x6

    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x7

    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_speed:Lcom/market2345/customview/download/SpeedView;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/market2345/download/DownloadInfo;->addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 191
    .end local v5    # "appItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;
    .end local v6    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "ranking":I
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    .line 192
    .local v12, "o2":Ljava/lang/Object;
    instance-of v0, v12, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 193
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;

    .restart local v5    # "appItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;
    goto/16 :goto_2

    .line 195
    .end local v5    # "appItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f0300b8

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, p3

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 196
    new-instance v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;

    invoke-direct {v5}, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;-><init>()V

    .line 197
    .restart local v5    # "appItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;
    const v17, 0x7f09038d

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    .line 198
    const v17, 0x7f090225

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    .line 199
    const v17, 0x7f090226

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/RateView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    .line 200
    const v17, 0x7f090392

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/ImageView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->iv_recommend_icon:Landroid/widget/ImageView;

    .line 201
    const v17, 0x7f09009f

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_title:Landroid/widget/TextView;

    .line 202
    const v17, 0x7f09038f

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_label:Landroid/widget/TextView;

    .line 203
    const v17, 0x7f090390

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_gift_label:Landroid/widget/TextView;

    .line 204
    const v17, 0x7f090391

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/DownloadCountLayout;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    .line 205
    const v17, 0x7f09023c

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_size:Landroid/widget/TextView;

    .line 206
    const v17, 0x7f090393

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download_count:Landroid/widget/TextView;

    .line 207
    const v17, 0x7f090395

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/DownloadSpeedLayout;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    .line 208
    const v17, 0x7f090228

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/SizeView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    .line 209
    const v17, 0x7f090396

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/SpeedView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_speed:Lcom/market2345/customview/download/SpeedView;

    .line 210
    const v17, 0x7f090397

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/IntroduceView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    .line 211
    const v17, 0x7f090229

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/MyProgressImageView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    .line 212
    const v17, 0x7f090222

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    .line 214
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f090012

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 215
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f090009

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->resultClickListener:Lcom/market2345/applist/AppListWithTopicAdapter$OnSearchResultClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mTag:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/market2345/download/DownloadManager;->setTypeAndPostion(ILjava/lang/String;)V

    .line 218
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f09000a

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/market2345/customview/download/DownloadStatusView;->setTag(ILjava/lang/Object;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    move-object/from16 v17, v0

    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/download/DownloadManager;->setOnClickListener(Landroid/view/View;)V

    .line 220
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 234
    .end local v12    # "o2":Ljava/lang/Object;
    .restart local v14    # "ranking":I
    :cond_9
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const v18, 0x7f02026e

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 235
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_app_ranking:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f070037

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 247
    :cond_a
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_label:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 252
    :cond_b
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_gift_label:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 263
    :catch_0
    move-exception v7

    .line 264
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .line 302
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    .restart local v13    # "packageName":Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v17

    iget-object v0, v4, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 304
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f0b0160

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/DownloadStatusView;->setText(I)V

    .line 305
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f07005a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/DownloadStatusView;->setTextColor(I)V

    .line 306
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f020185

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/DownloadStatusView;->setBackgroundResource(I)V

    .line 318
    :goto_7
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/DownloadStatusView;->setEnabled(Z)V

    .line 319
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {v17 .. v21}, Lcom/market2345/customview/download/DownloadStatusView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/MyProgressImageView;->setVisibility(I)V

    .line 321
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/RateView;->setVisibility(I)V

    .line 322
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/IntroduceView;->setVisibility(I)V

    .line 323
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/DownloadCountLayout;->setVisibility(I)V

    .line 324
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/DownloadSpeedLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 307
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/applist/AppListWithTopicAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v17

    iget-object v0, v4, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/datacenter/AppsInfoHandler;->checkIsHasInatall(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 309
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f0b0063

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/DownloadStatusView;->setText(I)V

    .line 310
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f07005a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/DownloadStatusView;->setTextColor(I)V

    .line 311
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f020185

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/DownloadStatusView;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 313
    :cond_e
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f0b0010

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/DownloadStatusView;->setText(I)V

    .line 314
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f07004f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/DownloadStatusView;->setTextColor(I)V

    .line 315
    iget-object v0, v5, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->tv_download:Lcom/market2345/customview/download/DownloadStatusView;

    move-object/from16 v17, v0

    const v18, 0x7f02018b

    invoke-virtual/range {v17 .. v18}, Lcom/market2345/customview/download/DownloadStatusView;->setBackgroundResource(I)V

    goto/16 :goto_7
.end method

.method public getmLazyloadListener()Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->mLazyloadListener:Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;

    return-object v0
.end method

.method public setItemClick(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "itemClick"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->itemClick:Landroid/view/View$OnClickListener;

    .line 73
    return-void
.end method

.method public setProductList()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    .line 421
    iget-object v0, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 423
    :cond_0
    return-void
.end method

.method public setSearchResultClickListener(Lcom/market2345/applist/AppListWithTopicAdapter$OnSearchResultClickListener;)V
    .locals 0
    .param p1, "resultClickListener"    # Lcom/market2345/applist/AppListWithTopicAdapter$OnSearchResultClickListener;

    .prologue
    .line 481
    iput-object p1, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->resultClickListener:Lcom/market2345/applist/AppListWithTopicAdapter$OnSearchResultClickListener;

    .line 482
    return-void
.end method

.method public setShowRankTag(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->showRanking:Z

    .line 69
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->mTag:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setmLazyloadListener(Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;)V
    .locals 0
    .param p1, "mLazyloadListener"    # Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/market2345/applist/AppListWithTopicAdapter;->mLazyloadListener:Lcom/market2345/applist/AppListWithTopicAdapter$LazyloadListener;

    .line 65
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 457
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_4

    move-object v0, p2

    .line 458
    check-cast v0, Landroid/util/Pair;

    .line 459
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

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->notifyDataSetChanged()V

    .line 473
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 461
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.upgrade.num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 462
    invoke-virtual {p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 463
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.downloading.list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    invoke-virtual {p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 466
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 467
    const-string v1, "pref.add.new.download"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 468
    invoke-virtual {p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 469
    :cond_5
    const-string v1, "pref.download.load.completed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    invoke-virtual {p0}, Lcom/market2345/applist/AppListWithTopicAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
