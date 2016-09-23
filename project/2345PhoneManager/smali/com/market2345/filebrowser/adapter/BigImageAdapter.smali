.class public Lcom/market2345/filebrowser/adapter/BigImageAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "BigImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;
    }
.end annotation


# instance fields
.field private listerer:Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;

.field private mContext:Landroid/content/Context;

.field private mInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


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
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    const/4 v2, 0x1

    .line 34
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->mInfos:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheOnDisk(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/filebrowser/adapter/BigImageAdapter;)Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/filebrowser/adapter/BigImageAdapter;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->listerer:Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/filebrowser/adapter/BigImageAdapter;Lcom/market2345/filebrowser/photoview/PhotoView;Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/filebrowser/adapter/BigImageAdapter;
    .param p1, "x1"    # Lcom/market2345/filebrowser/photoview/PhotoView;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/widget/ProgressBar;
    .param p4, "x4"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->showPhoto(Lcom/market2345/filebrowser/photoview/PhotoView;Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/view/View;)V

    return-void
.end method

.method private showPhoto(Lcom/market2345/filebrowser/photoview/PhotoView;Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/view/View;)V
    .locals 9
    .param p1, "photoView"    # Lcom/market2345/filebrowser/photoview/PhotoView;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "progressBar"    # Landroid/widget/ProgressBar;
    .param p4, "retryLayout"    # Landroid/view/View;

    .prologue
    .line 85
    new-instance v0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$1;

    invoke-direct {v0, p0}, Lcom/market2345/filebrowser/adapter/BigImageAdapter$1;-><init>(Lcom/market2345/filebrowser/adapter/BigImageAdapter;)V

    invoke-virtual {p1, v0}, Lcom/market2345/filebrowser/photoview/PhotoView;->setOnPhotoTapListener(Lcom/market2345/filebrowser/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 96
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    new-instance v0, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/market2345/filebrowser/adapter/BigImageAdapter$2;-><init>(Lcom/market2345/filebrowser/adapter/BigImageAdapter;Landroid/widget/ProgressBar;Lcom/market2345/filebrowser/photoview/PhotoView;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v6, v7, p1, v8, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 125
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->mInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 79
    const/4 v0, -0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const/4 v7, -0x1

    .line 58
    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f0300a9

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 59
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f090346

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/photoview/PhotoView;

    .line 60
    .local v0, "photoView":Lcom/market2345/filebrowser/photoview/PhotoView;
    const v4, 0x7f090347

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 61
    .local v2, "retryLayout":Landroid/view/View;
    const v4, 0x7f0900f4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 62
    .local v1, "progressBar":Landroid/widget/ProgressBar;
    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v4, v4, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v1, v2}, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->showPhoto(Lcom/market2345/filebrowser/photoview/PhotoView;Ljava/lang/String;Landroid/widget/ProgressBar;Landroid/view/View;)V

    .line 63
    invoke-virtual {p1, v3, v7, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 64
    return-object v3
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    .line 74
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChangeListerer(Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/BigImageAdapter;->listerer:Lcom/market2345/filebrowser/adapter/BigImageAdapter$showHideListerer;

    .line 54
    return-void
.end method
