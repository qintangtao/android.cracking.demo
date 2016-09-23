.class public Lcom/market2345/topic/TopicActivity;
.super Lcom/market2345/applist/activity/TitleBarActivity;
.source "TopicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
.implements Lcom/market2345/topic/TopicExpandable;


# instance fields
.field private adapter:Landroid/widget/BaseExpandableListAdapter;

.field private curTemplate:I

.field private ivTopic:Landroid/widget/ImageView;

.field private loadingView:Landroid/view/View;

.field private lvList:Landroid/widget/ExpandableListView;

.field private noData:Landroid/view/View;

.field private pbProgress:Landroid/widget/ProgressBar;

.field private topicId:I

.field private tvTopTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/market2345/applist/activity/TitleBarActivity;-><init>()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 143
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/market2345/topic/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v0, 0x7f09012d

    invoke-virtual {p0, v0}, Lcom/market2345/topic/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v0, 0x7f090130

    invoke-virtual {p0, v0}, Lcom/market2345/topic/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/market2345/topic/TopicActivity;->lvList:Landroid/widget/ExpandableListView;

    new-instance v1, Lcom/market2345/topic/TopicActivity$1;

    invoke-direct {v1, p0}, Lcom/market2345/topic/TopicActivity$1;-><init>(Lcom/market2345/topic/TopicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 154
    return-void
.end method

.method private initTopic(Lcom/market2345/topic/model/TopicInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/market2345/topic/model/TopicInfo;

    .prologue
    const v3, 0x7f0202fe

    const/4 v4, 0x1

    .line 166
    iget-object v1, p0, Lcom/market2345/topic/TopicActivity;->tvTopTitle:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/market2345/topic/model/TopicInfo;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    new-instance v1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    .line 177
    .local v0, "mOptions":Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p1, Lcom/market2345/topic/model/TopicInfo;->img_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/market2345/topic/TopicActivity;->ivTopic:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 179
    iget v1, p0, Lcom/market2345/topic/TopicActivity;->curTemplate:I

    if-ne v1, v4, :cond_0

    .line 180
    new-instance v1, Lcom/market2345/topic/TopicExpandableGridAdapter;

    iget-object v2, p1, Lcom/market2345/topic/model/TopicInfo;->chapter:Ljava/util/ArrayList;

    iget v3, p0, Lcom/market2345/topic/TopicActivity;->topicId:I

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/market2345/topic/TopicExpandableGridAdapter;-><init>(Landroid/app/Activity;Lcom/market2345/topic/TopicExpandable;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/market2345/topic/TopicActivity;->adapter:Landroid/widget/BaseExpandableListAdapter;

    .line 185
    :goto_0
    iget-object v1, p0, Lcom/market2345/topic/TopicActivity;->lvList:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/market2345/topic/TopicActivity;->adapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 186
    iget-object v1, p0, Lcom/market2345/topic/TopicActivity;->adapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 188
    iget-object v1, p0, Lcom/market2345/topic/TopicActivity;->lvList:Landroid/widget/ExpandableListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 189
    iget-object v1, p0, Lcom/market2345/topic/TopicActivity;->loadingView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    return-void

    .line 182
    :cond_0
    new-instance v1, Lcom/market2345/topic/TopicExpandableListAdapter;

    iget-object v2, p1, Lcom/market2345/topic/model/TopicInfo;->chapter:Ljava/util/ArrayList;

    iget v3, p0, Lcom/market2345/topic/TopicActivity;->topicId:I

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/market2345/topic/TopicExpandableListAdapter;-><init>(Landroid/app/Activity;Lcom/market2345/topic/TopicExpandable;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/market2345/topic/TopicActivity;->adapter:Landroid/widget/BaseExpandableListAdapter;

    goto :goto_0
.end method

.method private initView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 118
    invoke-virtual {p0}, Lcom/market2345/topic/TopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "topicId"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/market2345/topic/TopicActivity;->topicId:I

    .line 119
    invoke-virtual {p0}, Lcom/market2345/topic/TopicActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "topicTemplate"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/market2345/topic/TopicActivity;->curTemplate:I

    .line 120
    iget v2, p0, Lcom/market2345/topic/TopicActivity;->topicId:I

    if-eq v2, v4, :cond_0

    iget v2, p0, Lcom/market2345/topic/TopicActivity;->curTemplate:I

    if-ne v2, v4, :cond_1

    .line 121
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/topic/TopicActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u4e3b\u9898\u4e0d\u5b58\u5728!"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 122
    invoke-virtual {p0}, Lcom/market2345/topic/TopicActivity;->finish()V

    .line 125
    :cond_1
    const v2, 0x7f090052

    invoke-virtual {p0, v2}, Lcom/market2345/topic/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/market2345/topic/TopicActivity;->tvTopTitle:Landroid/widget/TextView;

    .line 126
    iget-object v2, p0, Lcom/market2345/topic/TopicActivity;->tvTopTitle:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    const v2, 0x7f09007c

    invoke-virtual {p0, v2}, Lcom/market2345/topic/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ExpandableListView;

    iput-object v2, p0, Lcom/market2345/topic/TopicActivity;->lvList:Landroid/widget/ExpandableListView;

    .line 129
    const v2, 0x7f0900f4

    invoke-virtual {p0, v2}, Lcom/market2345/topic/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/topic/TopicActivity;->loadingView:Landroid/view/View;

    .line 130
    const v2, 0x7f09012a

    invoke-virtual {p0, v2}, Lcom/market2345/topic/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/market2345/topic/TopicActivity;->pbProgress:Landroid/widget/ProgressBar;

    .line 131
    const v2, 0x7f09012b

    invoke-virtual {p0, v2}, Lcom/market2345/topic/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/topic/TopicActivity;->noData:Landroid/view/View;

    .line 133
    invoke-virtual {p0}, Lcom/market2345/topic/TopicActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300c8

    iget-object v4, p0, Lcom/market2345/topic/TopicActivity;->lvList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 134
    .local v0, "header":Landroid/widget/LinearLayout;
    const v2, 0x7f090403

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/market2345/topic/TopicActivity;->ivTopic:Landroid/widget/ImageView;

    .line 136
    iget-object v2, p0, Lcom/market2345/topic/TopicActivity;->lvList:Landroid/widget/ExpandableListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v5}, Landroid/widget/ExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 138
    invoke-virtual {p0}, Lcom/market2345/topic/TopicActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300c7

    iget-object v4, p0, Lcom/market2345/topic/TopicActivity;->lvList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 139
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/market2345/topic/TopicActivity;->lvList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->addFooterView(Landroid/view/View;)V

    .line 140
    return-void
.end method

.method private loadDatas()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/market2345/topic/TopicActivity;->lvList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/market2345/topic/TopicActivity;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/market2345/topic/TopicActivity;->pbProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/market2345/topic/TopicActivity;->noData:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 162
    iget v0, p0, Lcom/market2345/topic/TopicActivity;->topicId:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {p0, v0, p0, v1}, Lcom/market2345/http/MarketAPI;->getTopic(Landroid/content/Context;ILcom/market2345/http/ApiAsyncTask$ApiRequestListener;Landroid/os/Handler;)V

    .line 163
    return-void
.end method

.method private showError()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/market2345/topic/TopicActivity;->lvList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setVisibility(I)V

    .line 194
    iget-object v0, p0, Lcom/market2345/topic/TopicActivity;->loadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, p0, Lcom/market2345/topic/TopicActivity;->pbProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/market2345/topic/TopicActivity;->noData:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 197
    return-void
.end method


# virtual methods
.method public ExpandGroup()V
    .locals 3

    .prologue
    .line 110
    iget-object v2, p0, Lcom/market2345/topic/TopicActivity;->lvList:Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/market2345/topic/TopicActivity;->adapter:Landroid/widget/BaseExpandableListAdapter;

    if-eqz v2, :cond_0

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/market2345/topic/TopicActivity;->adapter:Landroid/widget/BaseExpandableListAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseExpandableListAdapter;->getGroupCount()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 112
    iget-object v2, p0, Lcom/market2345/topic/TopicActivity;->lvList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 79
    :goto_0
    return-void

    .line 60
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/topic/TopicActivity;->finish()V

    goto :goto_0

    .line 63
    :sswitch_1
    invoke-static {p0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    const-string v1, "\u7f51\u7edc\u5f02\u5e38,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 68
    :cond_0
    invoke-direct {p0}, Lcom/market2345/topic/TopicActivity;->loadDatas()V

    goto :goto_0

    .line 71
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/home/HomeTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    const-string v1, "notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0}, Lcom/market2345/topic/TopicActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090051 -> :sswitch_0
        0x7f09012d -> :sswitch_1
        0x7f090130 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/market2345/applist/activity/TitleBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/market2345/topic/TopicActivity;->setContentView(I)V

    .line 51
    invoke-direct {p0}, Lcom/market2345/topic/TopicActivity;->initView()V

    .line 52
    invoke-direct {p0}, Lcom/market2345/topic/TopicActivity;->initListener()V

    .line 53
    invoke-direct {p0}, Lcom/market2345/topic/TopicActivity;->loadDatas()V

    .line 54
    return-void
.end method

.method public onError(Ljava/lang/String;I)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/market2345/topic/TopicActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    const-string v0, "http://zhushou.2345.com/index.php?c=ard&d=topic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/market2345/topic/TopicActivity;->showError()V

    goto :goto_0
.end method

.method public onEventMainThread(Lcom/market2345/download/event/DownStartEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/market2345/download/event/DownStartEvent;

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/market2345/applist/activity/TitleBarActivity;->onEventMainThread(Lcom/market2345/download/event/DownStartEvent;)V

    .line 202
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/market2345/topic/TopicActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    if-eqz p2, :cond_0

    const-string v1, "http://zhushou.2345.com/index.php?c=ard&d=topic"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Lcom/market2345/topic/model/TopicResponseInfo;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 88
    check-cast v0, Lcom/market2345/topic/model/TopicResponseInfo;

    .line 89
    .local v0, "info":Lcom/market2345/topic/model/TopicResponseInfo;
    iget-object v1, v0, Lcom/market2345/topic/model/TopicResponseInfo;->list:Lcom/market2345/topic/model/TopicInfo;

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, v0, Lcom/market2345/topic/model/TopicResponseInfo;->list:Lcom/market2345/topic/model/TopicInfo;

    invoke-direct {p0, v1}, Lcom/market2345/topic/TopicActivity;->initTopic(Lcom/market2345/topic/model/TopicInfo;)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-direct {p0}, Lcom/market2345/topic/TopicActivity;->showError()V

    goto :goto_0
.end method
