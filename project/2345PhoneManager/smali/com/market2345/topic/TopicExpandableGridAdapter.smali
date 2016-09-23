.class public Lcom/market2345/topic/TopicExpandableGridAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TopicExpandableGridAdapter.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;
.implements Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;,
        Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private mInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/topic/model/TopicChapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/market2345/topic/TopicExpandable;

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mTopicId:I

.field private session:Lcom/market2345/datacenter/DataCenterObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/market2345/topic/TopicExpandable;Ljava/util/List;I)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/market2345/topic/TopicExpandable;
    .param p4, "topicId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/market2345/topic/TopicExpandable;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/topic/model/TopicChapterInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/topic/model/TopicChapterInfo;>;"
    const/4 v2, 0x1

    const v1, 0x7f020032

    .line 51
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;

    .line 53
    iput-object p3, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mInfos:Ljava/util/List;

    .line 54
    iput-object p2, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mListener:Lcom/market2345/topic/TopicExpandable;

    .line 55
    iput p4, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mTopicId:I

    .line 57
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 58
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    .line 59
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 61
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 70
    return-void
.end method

.method static synthetic access$200(Lcom/market2345/topic/TopicExpandableGridAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/TopicExpandableGridAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/topic/TopicExpandableGridAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/TopicExpandableGridAdapter;

    .prologue
    .line 39
    iget v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mTopicId:I

    return v0
.end method

.method private setTitle(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 2
    .param p1, "tvTitle"    # Landroid/widget/TextView;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 385
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    rem-int/lit8 v0, p3, 0x4

    .line 388
    .local v0, "i":I
    packed-switch v0, :pswitch_data_0

    .line 404
    :goto_0
    return-void

    .line 390
    :pswitch_0
    const v1, 0x7f020303

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 393
    :pswitch_1
    const v1, 0x7f020301

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 396
    :pswitch_2
    const v1, 0x7f020302

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 399
    :pswitch_3
    const v1, 0x7f020304

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public clickCallBack()V
    .locals 3

    .prologue
    .line 433
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zhuanti_download_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mTopicId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/market2345/topic/TopicExpandableGridAdapter;->getChild(II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getChild(II)Ljava/util/ArrayList;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/topic/model/TopicChapterInfo;

    iget-object v0, v0, Lcom/market2345/topic/model/TopicChapterInfo;->softList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 108
    mul-int/lit8 v0, p2, 0x2

    int-to-long v0, v0

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 183
    if-nez p4, :cond_0

    .line 184
    new-instance v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v1}, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;-><init>(Lcom/market2345/topic/TopicExpandableGridAdapter;Lcom/market2345/topic/TopicExpandableGridAdapter$1;)V

    .line 185
    .local v11, "holder":Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f0300c5

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 186
    const v1, 0x7f0903f1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->v_layout1:Landroid/view/View;

    .line 188
    const v1, 0x7f090225

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    .line 189
    const v1, 0x7f090226

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/download/RateView;

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    .line 190
    const v1, 0x7f09009f

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_title:Landroid/widget/TextView;

    .line 191
    const v1, 0x7f090397

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/TopicIntroduceView;

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_introduce:Lcom/market2345/customview/TopicIntroduceView;

    .line 192
    const v1, 0x7f090222

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/TopicDownloadProgressView;

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    .line 194
    const v1, 0x7f0903f4

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->v_layout2:Landroid/view/View;

    .line 196
    const v1, 0x7f0903f6

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->iv_app_icon2:Landroid/widget/ImageView;

    .line 197
    const v1, 0x7f0903f7

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/download/RateView;

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_rate2:Lcom/market2345/customview/download/RateView;

    .line 198
    const v1, 0x7f0903f8

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_title2:Landroid/widget/TextView;

    .line 199
    const v1, 0x7f0903fa

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/TopicIntroduceView;

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_introduce2:Lcom/market2345/customview/TopicIntroduceView;

    .line 200
    const v1, 0x7f0903f9

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/customview/TopicDownloadProgressView;

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download2:Lcom/market2345/customview/TopicDownloadProgressView;

    .line 202
    const v1, 0x7f0903fb

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->v_item_divider:Landroid/view/View;

    .line 204
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const v2, 0x7f090012

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/customview/TopicDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 205
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download2:Lcom/market2345/customview/TopicDownloadProgressView;

    const v2, 0x7f090012

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/customview/TopicDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v2, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    invoke-virtual {v1, v2}, Lcom/market2345/download/DownloadManager;->setOnClickListener(Landroid/view/View;)V

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v2, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download2:Lcom/market2345/customview/TopicDownloadProgressView;

    invoke-virtual {v1, v2}, Lcom/market2345/download/DownloadManager;->setOnClickListener(Landroid/view/View;)V

    .line 210
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 215
    :goto_0
    invoke-virtual/range {p0 .. p2}, Lcom/market2345/topic/TopicExpandableGridAdapter;->getChild(II)Ljava/util/ArrayList;

    move-result-object v16

    .line 216
    .local v16, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    mul-int/lit8 v1, p2, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/market2345/model/App;

    .line 218
    .local v7, "app":Lcom/market2345/model/App;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, v7, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    iget-object v3, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 219
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v2, v7, Lcom/market2345/model/App;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, v7, Lcom/market2345/model/App;->chapterSoftWords:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v14, v7, Lcom/market2345/model/App;->oneword:Ljava/lang/String;

    .line 221
    .local v14, "introduce":Ljava/lang/String;
    :goto_1
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_introduce:Lcom/market2345/customview/TopicIntroduceView;

    invoke-virtual {v1, v14}, Lcom/market2345/customview/TopicIntroduceView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const v2, 0x7f090007

    invoke-virtual {v1, v2, v7}, Lcom/market2345/customview/TopicDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 224
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const v2, 0x7f090009

    move-object/from16 v0, p0

    invoke-virtual {v1, v2, v0}, Lcom/market2345/customview/TopicDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 226
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const v2, 0x7f09000b

    iget-object v3, v7, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/customview/TopicDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 227
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_introduce:Lcom/market2345/customview/TopicIntroduceView;

    const v2, 0x7f09000b

    iget-object v3, v7, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/customview/TopicIntroduceView;->setTag(ILjava/lang/Object;)V

    .line 228
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    const v2, 0x7f09000b

    iget-object v3, v7, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/customview/download/RateView;->setTag(ILjava/lang/Object;)V

    .line 230
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/market2345/customview/TopicDownloadProgressView;->setLevel(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v2, v7, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v9

    .line 232
    .local v9, "downloadInfo":Lcom/market2345/download/DownloadInfo;
    if-eqz v9, :cond_2

    .line 233
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/market2345/download/interfaces/IProgressCallback;

    const/4 v2, 0x0

    iget-object v3, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_introduce:Lcom/market2345/customview/TopicIntroduceView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    aput-object v3, v1, v2

    invoke-virtual {v9, v1}, Lcom/market2345/download/DownloadInfo;->addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9, v1}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V

    .line 254
    :goto_2
    iget v12, v7, Lcom/market2345/model/App;->sid:I

    .line 255
    .local v12, "id":I
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->v_layout1:Landroid/view/View;

    new-instance v2, Lcom/market2345/topic/TopicExpandableGridAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12}, Lcom/market2345/topic/TopicExpandableGridAdapter$1;-><init>(Lcom/market2345/topic/TopicExpandableGridAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v2, p2, 0x2

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_9

    .line 270
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->v_layout2:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 272
    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/market2345/model/App;

    .line 274
    .local v8, "app2":Lcom/market2345/model/App;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, v8, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    iget-object v3, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->iv_app_icon2:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 275
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_title2:Landroid/widget/TextView;

    iget-object v2, v8, Lcom/market2345/model/App;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, v8, Lcom/market2345/model/App;->chapterSoftWords:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v15, v8, Lcom/market2345/model/App;->oneword:Ljava/lang/String;

    .line 277
    .local v15, "introduce2":Ljava/lang/String;
    :goto_3
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_introduce2:Lcom/market2345/customview/TopicIntroduceView;

    invoke-virtual {v1, v15}, Lcom/market2345/customview/TopicIntroduceView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download2:Lcom/market2345/customview/TopicDownloadProgressView;

    const v2, 0x7f090007

    invoke-virtual {v1, v2, v8}, Lcom/market2345/customview/TopicDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 280
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download2:Lcom/market2345/customview/TopicDownloadProgressView;

    const v2, 0x7f090009

    move-object/from16 v0, p0

    invoke-virtual {v1, v2, v0}, Lcom/market2345/customview/TopicDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 282
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download2:Lcom/market2345/customview/TopicDownloadProgressView;

    const v2, 0x7f09000b

    iget-object v3, v8, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/customview/TopicDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 283
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_introduce2:Lcom/market2345/customview/TopicIntroduceView;

    const v2, 0x7f09000b

    iget-object v3, v8, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/customview/TopicIntroduceView;->setTag(ILjava/lang/Object;)V

    .line 284
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_rate2:Lcom/market2345/customview/download/RateView;

    const v2, 0x7f09000b

    iget-object v3, v8, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/customview/download/RateView;->setTag(ILjava/lang/Object;)V

    .line 286
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download2:Lcom/market2345/customview/TopicDownloadProgressView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/market2345/customview/TopicDownloadProgressView;->setLevel(I)V

    .line 287
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v2, v8, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v10

    .line 288
    .local v10, "downloadInfo2":Lcom/market2345/download/DownloadInfo;
    if-eqz v10, :cond_6

    .line 289
    const/4 v1, 0x3

    new-array v1, v1, [Lcom/market2345/download/interfaces/IProgressCallback;

    const/4 v2, 0x0

    iget-object v3, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download2:Lcom/market2345/customview/TopicDownloadProgressView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_introduce2:Lcom/market2345/customview/TopicIntroduceView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_rate2:Lcom/market2345/customview/download/RateView;

    aput-object v3, v1, v2

    invoke-virtual {v10, v1}, Lcom/market2345/download/DownloadInfo;->addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10, v1}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V

    .line 311
    :goto_4
    iget v13, v8, Lcom/market2345/model/App;->sid:I

    .line 312
    .local v13, "id2":I
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->v_layout2:Landroid/view/View;

    new-instance v2, Lcom/market2345/topic/TopicExpandableGridAdapter$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v13}, Lcom/market2345/topic/TopicExpandableGridAdapter$2;-><init>(Lcom/market2345/topic/TopicExpandableGridAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    .end local v8    # "app2":Lcom/market2345/model/App;
    .end local v10    # "downloadInfo2":Lcom/market2345/download/DownloadInfo;
    .end local v13    # "id2":I
    .end local v15    # "introduce2":Ljava/lang/String;
    :goto_5
    if-eqz p3, :cond_a

    .line 326
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->v_item_divider:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :goto_6
    return-object p4

    .line 212
    .end local v7    # "app":Lcom/market2345/model/App;
    .end local v9    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    .end local v11    # "holder":Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;
    .end local v12    # "id":I
    .end local v14    # "introduce":Ljava/lang/String;
    .end local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;

    .restart local v11    # "holder":Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;
    goto/16 :goto_0

    .line 220
    .restart local v7    # "app":Lcom/market2345/model/App;
    .restart local v16    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    :cond_1
    iget-object v14, v7, Lcom/market2345/model/App;->chapterSoftWords:Ljava/lang/String;

    goto/16 :goto_1

    .line 240
    .restart local v9    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    .restart local v14    # "introduce":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v1

    iget-object v2, v7, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const/4 v2, 0x1

    const-string v3, "\u5347\u7ea7"

    const v4, 0x7f07005a

    const v5, 0x7f020185

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/market2345/customview/TopicDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    .line 250
    :goto_7
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/market2345/customview/download/RateView;->setVisibility(I)V

    .line 251
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_introduce:Lcom/market2345/customview/TopicIntroduceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/market2345/customview/TopicIntroduceView;->setVisibility(I)V

    goto/16 :goto_2

    .line 243
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v1

    iget-object v2, v7, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/AppsInfoHandler;->checkIsHasInatall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const/4 v2, 0x1

    const-string v3, "\u6253\u5f00"

    const v4, 0x7f07005a

    const v5, 0x7f020185

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/market2345/customview/TopicDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_7

    .line 247
    :cond_4
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const/4 v2, 0x1

    const-string v3, "\u4e0b\u8f7d"

    const v4, 0x7f07004f

    const v5, 0x7f02018b

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/market2345/customview/TopicDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_7

    .line 276
    .restart local v8    # "app2":Lcom/market2345/model/App;
    .restart local v12    # "id":I
    :cond_5
    iget-object v15, v8, Lcom/market2345/model/App;->chapterSoftWords:Ljava/lang/String;

    goto/16 :goto_3

    .line 296
    .restart local v10    # "downloadInfo2":Lcom/market2345/download/DownloadInfo;
    .restart local v15    # "introduce2":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v1

    iget-object v2, v8, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 298
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download2:Lcom/market2345/customview/TopicDownloadProgressView;

    const/4 v2, 0x1

    const-string v3, "\u5347\u7ea7"

    const v4, 0x7f07005a

    const v5, 0x7f020185

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/market2345/customview/TopicDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    .line 306
    :goto_8
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_rate2:Lcom/market2345/customview/download/RateView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/market2345/customview/download/RateView;->setVisibility(I)V

    .line 307
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_introduce2:Lcom/market2345/customview/TopicIntroduceView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/market2345/customview/TopicIntroduceView;->setVisibility(I)V

    goto/16 :goto_4

    .line 299
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/market2345/topic/TopicExpandableGridAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v1

    iget-object v2, v8, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/AppsInfoHandler;->checkIsHasInatall(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 301
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download2:Lcom/market2345/customview/TopicDownloadProgressView;

    const/4 v2, 0x1

    const-string v3, "\u6253\u5f00"

    const v4, 0x7f07005a

    const v5, 0x7f020185

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/market2345/customview/TopicDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_8

    .line 303
    :cond_8
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->tv_download2:Lcom/market2345/customview/TopicDownloadProgressView;

    const/4 v2, 0x1

    const-string v3, "\u4e0b\u8f7d"

    const v4, 0x7f07004f

    const v5, 0x7f02018b

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/market2345/customview/TopicDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_8

    .line 322
    .end local v8    # "app2":Lcom/market2345/model/App;
    .end local v10    # "downloadInfo2":Lcom/market2345/download/DownloadInfo;
    .end local v15    # "introduce2":Ljava/lang/String;
    :cond_9
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->v_layout2:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 328
    :cond_a
    iget-object v1, v11, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->v_item_divider:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public getChildrenCount(I)I
    .locals 4
    .param p1, "groupPosition"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "count":I
    iget-object v3, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/topic/model/TopicChapterInfo;

    .line 81
    .local v1, "info":Lcom/market2345/topic/model/TopicChapterInfo;
    if-eqz v1, :cond_0

    .line 82
    iget-object v3, v1, Lcom/market2345/topic/model/TopicChapterInfo;->softList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, v1, Lcom/market2345/topic/model/TopicChapterInfo;->softList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 84
    .local v2, "size":I
    add-int/lit8 v3, v2, 0x1

    div-int/lit8 v0, v3, 0x2

    .line 88
    .end local v2    # "size":I
    :cond_0
    return v0
.end method

.method public getGroup(I)Lcom/market2345/topic/model/TopicChapterInfo;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/topic/model/TopicChapterInfo;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/market2345/topic/TopicExpandableGridAdapter;->getGroup(I)Lcom/market2345/topic/model/TopicChapterInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mInfos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 103
    int-to-long v0, p1

    return-wide v0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "groupPosition"    # I
    .param p2, "isExpanded"    # Z
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f0202fe

    const/4 v5, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 119
    if-nez p3, :cond_0

    .line 120
    new-instance v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;

    invoke-direct {v0, p0, v9}, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;-><init>(Lcom/market2345/topic/TopicExpandableGridAdapter;Lcom/market2345/topic/TopicExpandableGridAdapter$1;)V

    .line 121
    .local v0, "holder":Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;
    iget-object v3, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0300c6

    invoke-static {v3, v4, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 122
    const v3, 0x7f0903fd

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 123
    const v3, 0x7f0903fe

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/market2345/customview/FillWidthImageView;

    iput-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->ivImg:Lcom/market2345/customview/FillWidthImageView;

    .line 124
    const v3, 0x7f0903ff

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->tvMsg:Landroid/widget/TextView;

    .line 125
    const v3, 0x7f090401

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->divider:Landroid/view/View;

    .line 126
    const v3, 0x7f0903fc

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->headerDivider:Landroid/view/View;

    .line 128
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    :goto_0
    invoke-virtual {p0, p1}, Lcom/market2345/topic/TopicExpandableGridAdapter;->getGroup(I)Lcom/market2345/topic/model/TopicChapterInfo;

    move-result-object v1

    .line 134
    .local v1, "info":Lcom/market2345/topic/model/TopicChapterInfo;
    invoke-virtual {p0}, Lcom/market2345/topic/TopicExpandableGridAdapter;->getGroupCount()I

    move-result v3

    if-gt v3, v5, :cond_1

    .line 135
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    :goto_1
    iget-object v3, v1, Lcom/market2345/topic/model/TopicChapterInfo;->img_url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 146
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->ivImg:Lcom/market2345/customview/FillWidthImageView;

    invoke-virtual {v3, v7}, Lcom/market2345/customview/FillWidthImageView;->setVisibility(I)V

    .line 161
    :goto_2
    iget-object v3, v1, Lcom/market2345/topic/model/TopicChapterInfo;->words:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 162
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->tvMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    :goto_3
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 170
    if-nez p1, :cond_5

    .line 171
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->headerDivider:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 176
    :goto_4
    return-object p3

    .line 130
    .end local v0    # "holder":Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;
    .end local v1    # "info":Lcom/market2345/topic/model/TopicChapterInfo;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;

    .restart local v0    # "holder":Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;
    goto :goto_0

    .line 137
    .restart local v1    # "info":Lcom/market2345/topic/model/TopicChapterInfo;
    :cond_1
    iget-object v3, v1, Lcom/market2345/topic/model/TopicChapterInfo;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 138
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 140
    :cond_2
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/market2345/topic/model/TopicChapterInfo;->title:Ljava/lang/String;

    invoke-direct {p0, v3, v4, p1}, Lcom/market2345/topic/TopicExpandableGridAdapter;->setTitle(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_1

    .line 148
    :cond_3
    new-instance v3, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v3, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 157
    .local v2, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->ivImg:Lcom/market2345/customview/FillWidthImageView;

    invoke-virtual {v3, v6}, Lcom/market2345/customview/FillWidthImageView;->setVisibility(I)V

    .line 158
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v1, Lcom/market2345/topic/model/TopicChapterInfo;->img_url:Ljava/lang/String;

    iget-object v5, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->ivImg:Lcom/market2345/customview/FillWidthImageView;

    invoke-virtual {v3, v4, v5, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_2

    .line 164
    .end local v2    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_4
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->tvMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->tvMsg:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/market2345/topic/model/TopicChapterInfo;->words:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 173
    :cond_5
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->headerDivider:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 341
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 343
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mListener:Lcom/market2345/topic/TopicExpandable;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mListener:Lcom/market2345/topic/TopicExpandable;

    invoke-interface {v0}, Lcom/market2345/topic/TopicExpandable;->ExpandGroup()V

    .line 346
    :cond_0
    return-void
.end method

.method public setTopicExpandableListener(Lcom/market2345/topic/TopicExpandable;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/topic/TopicExpandable;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/market2345/topic/TopicExpandableGridAdapter;->mListener:Lcom/market2345/topic/TopicExpandable;

    .line 408
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 413
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_4

    move-object v0, p2

    .line 414
    check-cast v0, Landroid/util/Pair;

    .line 415
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

    .line 416
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/topic/TopicExpandableGridAdapter;->notifyDataSetChanged()V

    .line 429
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 417
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.upgrade.num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 418
    invoke-virtual {p0}, Lcom/market2345/topic/TopicExpandableGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 419
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.downloading.list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    invoke-virtual {p0}, Lcom/market2345/topic/TopicExpandableGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 422
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 423
    const-string v1, "pref.add.new.download"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 424
    invoke-virtual {p0}, Lcom/market2345/topic/TopicExpandableGridAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 425
    :cond_5
    const-string v1, "pref.download.load.completed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/market2345/topic/TopicExpandableGridAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
