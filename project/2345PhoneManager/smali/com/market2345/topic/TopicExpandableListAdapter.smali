.class public Lcom/market2345/topic/TopicExpandableListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "TopicExpandableListAdapter.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;
.implements Lcom/market2345/detail/DetailActivity$DownloadClickCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;,
        Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;
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

    .line 55
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mActivity:Landroid/app/Activity;

    .line 57
    iput-object p2, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mListener:Lcom/market2345/topic/TopicExpandable;

    .line 58
    iput-object p3, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mInfos:Ljava/util/List;

    .line 59
    iput p4, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mTopicId:I

    .line 61
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 62
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    .line 63
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 65
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

    iput-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 74
    return-void
.end method

.method static synthetic access$200(Lcom/market2345/topic/TopicExpandableListAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/TopicExpandableListAdapter;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/topic/TopicExpandableListAdapter;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/topic/TopicExpandableListAdapter;

    .prologue
    .line 43
    iget v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mTopicId:I

    return v0
.end method

.method private setTitle(Landroid/widget/TextView;Ljava/lang/String;I)V
    .locals 2
    .param p1, "tvTitle"    # Landroid/widget/TextView;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "position"    # I

    .prologue
    .line 331
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    rem-int/lit8 v0, p3, 0x4

    .line 334
    .local v0, "i":I
    packed-switch v0, :pswitch_data_0

    .line 350
    :goto_0
    return-void

    .line 336
    :pswitch_0
    const v1, 0x7f020303

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 339
    :pswitch_1
    const v1, 0x7f020301

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 342
    :pswitch_2
    const v1, 0x7f020302

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 345
    :pswitch_3
    const v1, 0x7f020304

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    .line 334
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
    .line 375
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zhuanti_download_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mTopicId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public getChild(II)Lcom/market2345/model/App;
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/topic/model/TopicChapterInfo;

    iget-object v0, v0, Lcom/market2345/topic/model/TopicChapterInfo;->softList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    return-object v0
.end method

.method public bridge synthetic getChild(II)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # I

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/market2345/topic/TopicExpandableListAdapter;->getChild(II)Lcom/market2345/model/App;

    move-result-object v0

    return-object v0
.end method

.method public getChildId(II)J
    .locals 2
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 104
    int-to-long v0, p2

    return-wide v0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I
    .param p3, "isLastChild"    # Z
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 179
    if-nez p4, :cond_0

    .line 180
    new-instance v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;-><init>(Lcom/market2345/topic/TopicExpandableListAdapter;Lcom/market2345/topic/TopicExpandableListAdapter$1;)V

    .line 181
    .local v8, "holder":Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0300cb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p4

    .line 182
    const v0, 0x7f090225

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    .line 183
    const v0, 0x7f090226

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/download/RateView;

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    .line 184
    const v0, 0x7f09009f

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_title:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f090391

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/download/DownloadCountLayout;

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    .line 186
    const v0, 0x7f09023c

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_size:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f090393

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download_count:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f090395

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/download/DownloadSpeedLayout;

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    .line 189
    const v0, 0x7f090228

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/download/SizeView;

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    .line 190
    const v0, 0x7f090396

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/download/SpeedView;

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_speed:Lcom/market2345/customview/download/SpeedView;

    .line 191
    const v0, 0x7f090397

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/download/IntroduceView;

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    .line 192
    const v0, 0x7f090229

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/download/MyProgressImageView;

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    .line 193
    const v0, 0x7f090222

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/TopicDownloadProgressView;

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    .line 194
    const v0, 0x7f0903fb

    invoke-virtual {p4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->v_item_divider:Landroid/view/View;

    .line 196
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const v1, 0x7f090012

    iget-object v2, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/TopicDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v1, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    invoke-virtual {v0, v1}, Lcom/market2345/download/DownloadManager;->setOnClickListener(Landroid/view/View;)V

    .line 199
    invoke-virtual {p4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 204
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/market2345/topic/TopicExpandableListAdapter;->getChild(II)Lcom/market2345/model/App;

    move-result-object v6

    .line 206
    .local v6, "app":Lcom/market2345/model/App;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, v6, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    iget-object v2, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->iv_app_icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 207
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/market2345/model/App;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_size:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download_count:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/market2345/model/App;->totalDowns:Ljava/lang/String;

    invoke-static {v1}, Lcom/market2345/common/util/ApplicationUtils;->getFormatDownloads(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v0, v6, Lcom/market2345/model/App;->chapterSoftWords:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v10, v6, Lcom/market2345/model/App;->oneword:Ljava/lang/String;

    .line 211
    .local v10, "introduce":Ljava/lang/String;
    :goto_1
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    invoke-virtual {v0, v10}, Lcom/market2345/customview/download/IntroduceView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const v1, 0x7f090007

    invoke-virtual {v0, v1, v6}, Lcom/market2345/customview/TopicDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 214
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const v1, 0x7f090009

    invoke-virtual {v0, v1, p0}, Lcom/market2345/customview/TopicDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 216
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const v1, 0x7f09000b

    iget-object v2, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/TopicDownloadProgressView;->setTag(ILjava/lang/Object;)V

    .line 217
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    const v1, 0x7f09000b

    iget-object v2, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/download/MyProgressImageView;->setTag(ILjava/lang/Object;)V

    .line 218
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    const v1, 0x7f09000b

    iget-object v2, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/download/RateView;->setTag(ILjava/lang/Object;)V

    .line 219
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    const v1, 0x7f09000b

    iget-object v2, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/download/IntroduceView;->setTag(ILjava/lang/Object;)V

    .line 220
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    const v1, 0x7f09000b

    iget-object v2, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/download/DownloadCountLayout;->setTag(ILjava/lang/Object;)V

    .line 221
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    const v1, 0x7f09000b

    iget-object v2, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/download/DownloadSpeedLayout;->setTag(ILjava/lang/Object;)V

    .line 222
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    const v1, 0x7f09000b

    iget-object v2, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/download/SizeView;->setTag(ILjava/lang/Object;)V

    .line 223
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_speed:Lcom/market2345/customview/download/SpeedView;

    const v1, 0x7f09000b

    iget-object v2, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/market2345/customview/download/SpeedView;->setTag(ILjava/lang/Object;)V

    .line 224
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/customview/TopicDownloadProgressView;->setLevel(I)V

    .line 226
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v1, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v7

    .line 227
    .local v7, "downloadInfo":Lcom/market2345/download/DownloadInfo;
    if-eqz v7, :cond_2

    .line 228
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/market2345/download/interfaces/IProgressCallback;

    const/4 v1, 0x0

    iget-object v2, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download_size:Lcom/market2345/customview/download/SizeView;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_speed:Lcom/market2345/customview/download/SpeedView;

    aput-object v2, v0, v1

    invoke-virtual {v7, v0}, Lcom/market2345/download/DownloadInfo;->addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V

    .line 237
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7, v0}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V

    .line 258
    :goto_2
    iget v9, v6, Lcom/market2345/model/App;->sid:I

    .line 259
    .local v9, "id":I
    new-instance v0, Lcom/market2345/topic/TopicExpandableListAdapter$1;

    invoke-direct {v0, p0, v9}, Lcom/market2345/topic/TopicExpandableListAdapter$1;-><init>(Lcom/market2345/topic/TopicExpandableListAdapter;I)V

    invoke-virtual {p4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    if-eqz p3, :cond_5

    .line 272
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->v_item_divider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 277
    :goto_3
    return-object p4

    .line 201
    .end local v6    # "app":Lcom/market2345/model/App;
    .end local v7    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    .end local v8    # "holder":Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;
    .end local v9    # "id":I
    .end local v10    # "introduce":Ljava/lang/String;
    :cond_0
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;

    .restart local v8    # "holder":Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;
    goto/16 :goto_0

    .line 210
    .restart local v6    # "app":Lcom/market2345/model/App;
    :cond_1
    iget-object v10, v6, Lcom/market2345/model/App;->chapterSoftWords:Ljava/lang/String;

    goto/16 :goto_1

    .line 240
    .restart local v7    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    .restart local v10    # "introduce":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v0

    iget-object v1, v6, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const/4 v1, 0x1

    const-string v2, "\u5347\u7ea7"

    const v3, 0x7f07005a

    const v4, 0x7f020185

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/customview/TopicDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    .line 250
    :goto_4
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/market2345/customview/download/MyProgressImageView;->setVisibility(I)V

    .line 251
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_rate:Lcom/market2345/customview/download/RateView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/market2345/customview/download/RateView;->setVisibility(I)V

    .line 252
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_introduce:Lcom/market2345/customview/download/IntroduceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/customview/download/IntroduceView;->setVisibility(I)V

    .line 253
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/customview/download/DownloadCountLayout;->setVisibility(I)V

    .line 254
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/market2345/customview/download/DownloadSpeedLayout;->setVisibility(I)V

    goto :goto_2

    .line 243
    :cond_3
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v0

    iget-object v1, v6, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/datacenter/AppsInfoHandler;->checkIsHasInatall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const/4 v1, 0x1

    const-string v2, "\u6253\u5f00"

    const v3, 0x7f07005a

    const v4, 0x7f020185

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/customview/TopicDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_4

    .line 247
    :cond_4
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

    const/4 v1, 0x1

    const-string v2, "\u4e0b\u8f7d"

    const v3, 0x7f07004f

    const v4, 0x7f02018b

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/customview/TopicDownloadProgressView;->setDownloadText(ZLjava/lang/String;III)V

    goto :goto_4

    .line 274
    .restart local v9    # "id":I
    :cond_5
    iget-object v0, v8, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->v_item_divider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public getChildrenCount(I)I
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 83
    iget-object v1, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/topic/model/TopicChapterInfo;

    iget-object v0, v1, Lcom/market2345/topic/model/TopicChapterInfo;->softList:Ljava/util/ArrayList;

    .line 84
    .local v0, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0
.end method

.method public getGroup(I)Lcom/market2345/topic/model/TopicChapterInfo;
    .locals 1
    .param p1, "groupPosition"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/topic/model/TopicChapterInfo;

    return-object v0
.end method

.method public bridge synthetic getGroup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/market2345/topic/TopicExpandableListAdapter;->getGroup(I)Lcom/market2345/topic/model/TopicChapterInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGroupCount()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mInfos:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getGroupId(I)J
    .locals 2
    .param p1, "groupPosition"    # I

    .prologue
    .line 99
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

    .line 115
    if-nez p3, :cond_0

    .line 116
    new-instance v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;

    invoke-direct {v0, p0, v9}, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;-><init>(Lcom/market2345/topic/TopicExpandableListAdapter;Lcom/market2345/topic/TopicExpandableListAdapter$1;)V

    .line 117
    .local v0, "holder":Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;
    iget-object v3, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mActivity:Landroid/app/Activity;

    const v4, 0x7f0300c6

    invoke-static {v3, v4, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 118
    const v3, 0x7f0903fd

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 119
    const v3, 0x7f0903fe

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->ivImg:Landroid/widget/ImageView;

    .line 120
    const v3, 0x7f0903ff

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->tvMsg:Landroid/widget/TextView;

    .line 121
    const v3, 0x7f090400

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->divider:Landroid/view/View;

    .line 122
    const v3, 0x7f0903fc

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->headerDivider:Landroid/view/View;

    .line 124
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 129
    :goto_0
    invoke-virtual {p0, p1}, Lcom/market2345/topic/TopicExpandableListAdapter;->getGroup(I)Lcom/market2345/topic/model/TopicChapterInfo;

    move-result-object v1

    .line 130
    .local v1, "info":Lcom/market2345/topic/model/TopicChapterInfo;
    invoke-virtual {p0}, Lcom/market2345/topic/TopicExpandableListAdapter;->getGroupCount()I

    move-result v3

    if-gt v3, v5, :cond_1

    .line 131
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :goto_1
    iget-object v3, v1, Lcom/market2345/topic/model/TopicChapterInfo;->img_url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 142
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->ivImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :goto_2
    iget-object v3, v1, Lcom/market2345/topic/model/TopicChapterInfo;->words:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 158
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->tvMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    :goto_3
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 166
    if-nez p1, :cond_5

    .line 167
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->headerDivider:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 172
    :goto_4
    return-object p3

    .line 126
    .end local v0    # "holder":Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;
    .end local v1    # "info":Lcom/market2345/topic/model/TopicChapterInfo;
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;

    .restart local v0    # "holder":Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;
    goto :goto_0

    .line 133
    .restart local v1    # "info":Lcom/market2345/topic/model/TopicChapterInfo;
    :cond_1
    iget-object v3, v1, Lcom/market2345/topic/model/TopicChapterInfo;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 136
    :cond_2
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->tvTitle:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/market2345/topic/model/TopicChapterInfo;->title:Ljava/lang/String;

    invoke-direct {p0, v3, v4, p1}, Lcom/market2345/topic/TopicExpandableListAdapter;->setTitle(Landroid/widget/TextView;Ljava/lang/String;I)V

    goto :goto_1

    .line 144
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

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    .line 153
    .local v2, "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->ivImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v1, Lcom/market2345/topic/model/TopicChapterInfo;->img_url:Ljava/lang/String;

    iget-object v5, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->ivImg:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v5, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    goto :goto_2

    .line 160
    .end local v2    # "options":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    :cond_4
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->tvMsg:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->tvMsg:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/market2345/topic/model/TopicChapterInfo;->words:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 169
    :cond_5
    iget-object v3, v0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->headerDivider:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public isChildSelectable(II)Z
    .locals 1
    .param p1, "groupPosition"    # I
    .param p2, "childPosition"    # I

    .prologue
    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 287
    invoke-super {p0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 289
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mListener:Lcom/market2345/topic/TopicExpandable;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/market2345/topic/TopicExpandableListAdapter;->mListener:Lcom/market2345/topic/TopicExpandable;

    invoke-interface {v0}, Lcom/market2345/topic/TopicExpandable;->ExpandGroup()V

    .line 292
    :cond_0
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 355
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_4

    move-object v0, p2

    .line 356
    check-cast v0, Landroid/util/Pair;

    .line 357
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

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/topic/TopicExpandableListAdapter;->notifyDataSetChanged()V

    .line 371
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    :goto_0
    return-void

    .line 359
    .restart local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.upgrade.num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 360
    invoke-virtual {p0}, Lcom/market2345/topic/TopicExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 361
    :cond_3
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.downloading.list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/market2345/topic/TopicExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 364
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 365
    const-string v1, "pref.add.new.download"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 366
    invoke-virtual {p0}, Lcom/market2345/topic/TopicExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 367
    :cond_5
    const-string v1, "pref.download.load.completed"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    invoke-virtual {p0}, Lcom/market2345/topic/TopicExpandableListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
