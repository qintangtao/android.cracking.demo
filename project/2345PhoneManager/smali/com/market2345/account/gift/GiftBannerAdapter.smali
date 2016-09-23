.class Lcom/market2345/account/gift/GiftBannerAdapter;
.super Lcom/market2345/applist/RecyclingPagerAdapter;
.source "GiftBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/account/gift/GiftBannerAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mBanners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/account/model/GameGiftBanner;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/account/model/GameGiftBanner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mBanners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/account/model/GameGiftBanner;>;"
    const v1, 0x7f0202fe

    const/4 v2, 0x1

    .line 38
    invoke-direct {p0}, Lcom/market2345/applist/RecyclingPagerAdapter;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/market2345/account/gift/GiftBannerAdapter;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/market2345/account/gift/GiftBannerAdapter;->mBanners:Ljava/util/ArrayList;

    .line 41
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/market2345/account/gift/GiftBannerAdapter;->size:I

    .line 43
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

    iput-object v0, p0, Lcom/market2345/account/gift/GiftBannerAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 52
    return-void

    .line 41
    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/market2345/account/gift/GiftBannerAdapter;I)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/gift/GiftBannerAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/market2345/account/gift/GiftBannerAdapter;->getPosition(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/market2345/account/gift/GiftBannerAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/gift/GiftBannerAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/market2345/account/gift/GiftBannerAdapter;->mBanners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/account/gift/GiftBannerAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/gift/GiftBannerAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/market2345/account/gift/GiftBannerAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 66
    iget v0, p0, Lcom/market2345/account/gift/GiftBannerAdapter;->size:I

    rem-int v0, p1, v0

    return v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7fffffff

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 72
    if-nez p2, :cond_0

    .line 73
    iget-object v1, p0, Lcom/market2345/account/gift/GiftBannerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f030020

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 74
    new-instance v0, Lcom/market2345/account/gift/GiftBannerAdapter$ViewHolder;

    invoke-direct {v0, p0}, Lcom/market2345/account/gift/GiftBannerAdapter$ViewHolder;-><init>(Lcom/market2345/account/gift/GiftBannerAdapter;)V

    .line 75
    .local v0, "mHolder":Lcom/market2345/account/gift/GiftBannerAdapter$ViewHolder;
    const v1, 0x7f09013c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/market2345/account/gift/GiftBannerAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 77
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 82
    :goto_0
    new-instance v1, Lcom/market2345/account/gift/GiftBannerAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/market2345/account/gift/GiftBannerAdapter$1;-><init>(Lcom/market2345/account/gift/GiftBannerAdapter;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v1, p0, Lcom/market2345/account/gift/GiftBannerAdapter;->mBanners:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/market2345/account/gift/GiftBannerAdapter;->getPosition(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/account/model/GameGiftBanner;

    iget-object v1, v1, Lcom/market2345/account/model/GameGiftBanner;->img:Ljava/lang/String;

    iget-object v3, v0, Lcom/market2345/account/gift/GiftBannerAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/market2345/account/gift/GiftBannerAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v1, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 111
    return-object p2

    .line 79
    .end local v0    # "mHolder":Lcom/market2345/account/gift/GiftBannerAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/account/gift/GiftBannerAdapter$ViewHolder;

    .restart local v0    # "mHolder":Lcom/market2345/account/gift/GiftBannerAdapter$ViewHolder;
    goto :goto_0
.end method
