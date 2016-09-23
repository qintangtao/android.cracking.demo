.class public Lcom/market2345/applist/ImagePagerAdapter;
.super Lcom/market2345/applist/RecyclingPagerAdapter;
.source "ImagePagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/applist/ImagePagerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private isInfiniteLoop:Z

.field private mContext:Landroid/content/Context;

.field private mHolder:Lcom/market2345/applist/ImagePagerAdapter$ViewHolder;

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mTag:Ljava/lang/String;

.field private size:I

.field private topics:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/TopicItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/TopicItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "topics":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/TopicItem;>;"
    const/4 v1, 0x0

    const v3, 0x7f0202fe

    const/4 v2, 0x1

    .line 36
    invoke-direct {p0}, Lcom/market2345/applist/RecyclingPagerAdapter;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/market2345/applist/ImagePagerAdapter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/market2345/applist/ImagePagerAdapter;->topics:Ljava/util/ArrayList;

    .line 39
    if-nez p2, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->size:I

    .line 40
    iput-boolean v1, p0, Lcom/market2345/applist/ImagePagerAdapter;->isInfiniteLoop:Z

    .line 42
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

    iput-object v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 51
    return-void

    .line 39
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/market2345/applist/ImagePagerAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/applist/ImagePagerAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/market2345/applist/ImagePagerAdapter;->getPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/market2345/applist/ImagePagerAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/applist/ImagePagerAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->topics:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/applist/ImagePagerAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/applist/ImagePagerAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private getPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->isInfiniteLoop:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->size:I

    rem-int/2addr p1, v0

    .end local p1    # "position":I
    :cond_0
    return p1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->isInfiniteLoop:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->size:I

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x0

    .line 71
    if-nez p2, :cond_0

    .line 72
    iget-object v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f030020

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v0, Lcom/market2345/applist/ImagePagerAdapter$ViewHolder;

    invoke-direct {v0, v2}, Lcom/market2345/applist/ImagePagerAdapter$ViewHolder;-><init>(Lcom/market2345/applist/ImagePagerAdapter$1;)V

    iput-object v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->mHolder:Lcom/market2345/applist/ImagePagerAdapter$ViewHolder;

    .line 74
    iget-object v1, p0, Lcom/market2345/applist/ImagePagerAdapter;->mHolder:Lcom/market2345/applist/ImagePagerAdapter$ViewHolder;

    const v0, 0x7f09013c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/FillWidthImageView;

    iput-object v0, v1, Lcom/market2345/applist/ImagePagerAdapter$ViewHolder;->imageView:Lcom/market2345/customview/FillWidthImageView;

    .line 76
    iget-object v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->mHolder:Lcom/market2345/applist/ImagePagerAdapter$ViewHolder;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_0
    new-instance v0, Lcom/market2345/applist/ImagePagerAdapter$1;

    invoke-direct {v0, p0, p1}, Lcom/market2345/applist/ImagePagerAdapter$1;-><init>(Lcom/market2345/applist/ImagePagerAdapter;I)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->topics:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/market2345/applist/ImagePagerAdapter;->getPosition(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/TopicItem;

    iget-object v0, v0, Lcom/market2345/model/TopicItem;->img_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/market2345/applist/ImagePagerAdapter;->mHolder:Lcom/market2345/applist/ImagePagerAdapter$ViewHolder;

    iget-object v2, v2, Lcom/market2345/applist/ImagePagerAdapter$ViewHolder;->imageView:Lcom/market2345/customview/FillWidthImageView;

    iget-object v3, p0, Lcom/market2345/applist/ImagePagerAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v0, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 97
    return-object p2

    .line 78
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/applist/ImagePagerAdapter$ViewHolder;

    iput-object v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->mHolder:Lcom/market2345/applist/ImagePagerAdapter$ViewHolder;

    goto :goto_0
.end method

.method public isInfiniteLoop()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/market2345/applist/ImagePagerAdapter;->isInfiniteLoop:Z

    return v0
.end method

.method public setInfiniteLoop(Z)Lcom/market2345/applist/ImagePagerAdapter;
    .locals 0
    .param p1, "isInfiniteLoop"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/market2345/applist/ImagePagerAdapter;->isInfiniteLoop:Z

    .line 116
    return-object p0
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/market2345/applist/ImagePagerAdapter;->mTag:Ljava/lang/String;

    .line 34
    return-void
.end method
