.class public Lcom/market2345/topic/TopicListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TopicListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/topic/TopicListAdapter$LazyloadListener;,
        Lcom/market2345/topic/TopicListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/market2345/topic/model/TopicInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mLazyLoadListener:Lcom/market2345/topic/TopicListAdapter$LazyloadListener;

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/topic/model/TopicInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/topic/model/TopicInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/topic/model/TopicInfo;>;"
    const v1, 0x7f0202fe

    const/4 v2, 0x1

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 30
    iput-object p2, p0, Lcom/market2345/topic/TopicListAdapter;->topics:Ljava/util/List;

    .line 31
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

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/topic/TopicListAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 40
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 48
    iget-object v2, p0, Lcom/market2345/topic/TopicListAdapter;->mLazyLoadListener:Lcom/market2345/topic/TopicListAdapter$LazyloadListener;

    if-eqz v2, :cond_0

    .line 49
    invoke-virtual {p0}, Lcom/market2345/topic/TopicListAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/market2345/topic/TopicListAdapter;->mLazyLoadListener:Lcom/market2345/topic/TopicListAdapter$LazyloadListener;

    invoke-interface {v2}, Lcom/market2345/topic/TopicListAdapter$LazyloadListener;->isLoadOver()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/market2345/topic/TopicListAdapter;->mLazyLoadListener:Lcom/market2345/topic/TopicListAdapter$LazyloadListener;

    invoke-interface {v2}, Lcom/market2345/topic/TopicListAdapter$LazyloadListener;->isEnd()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/market2345/topic/TopicListAdapter;->mLazyLoadListener:Lcom/market2345/topic/TopicListAdapter$LazyloadListener;

    invoke-interface {v2}, Lcom/market2345/topic/TopicListAdapter$LazyloadListener;->lazyload()V

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300ca

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 59
    new-instance v0, Lcom/market2345/topic/TopicListAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/market2345/topic/TopicListAdapter$ViewHolder;-><init>()V

    .line 60
    .local v0, "holder":Lcom/market2345/topic/TopicListAdapter$ViewHolder;
    const v2, 0x7f09009f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/market2345/topic/TopicListAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f090404

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/market2345/topic/TopicListAdapter$ViewHolder;->iv_img:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 67
    :goto_0
    iget-object v2, p0, Lcom/market2345/topic/TopicListAdapter;->topics:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/topic/model/TopicInfo;

    .line 68
    .local v1, "topicInfo":Lcom/market2345/topic/model/TopicInfo;
    iget-object v2, v0, Lcom/market2345/topic/TopicListAdapter$ViewHolder;->tv_title:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/market2345/topic/model/TopicInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v1, Lcom/market2345/topic/model/TopicInfo;->img_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/market2345/topic/TopicListAdapter$ViewHolder;->iv_img:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/market2345/topic/TopicListAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 71
    new-instance v2, Lcom/market2345/topic/TopicListAdapter$1;

    invoke-direct {v2, p0, v1}, Lcom/market2345/topic/TopicListAdapter$1;-><init>(Lcom/market2345/topic/TopicListAdapter;Lcom/market2345/topic/model/TopicInfo;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-object p2

    .line 64
    .end local v0    # "holder":Lcom/market2345/topic/TopicListAdapter$ViewHolder;
    .end local v1    # "topicInfo":Lcom/market2345/topic/model/TopicInfo;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/topic/TopicListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/market2345/topic/TopicListAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setLazyLoadListener(Lcom/market2345/topic/TopicListAdapter$LazyloadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/topic/TopicListAdapter$LazyloadListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/market2345/topic/TopicListAdapter;->mLazyLoadListener:Lcom/market2345/topic/TopicListAdapter$LazyloadListener;

    .line 44
    return-void
.end method
