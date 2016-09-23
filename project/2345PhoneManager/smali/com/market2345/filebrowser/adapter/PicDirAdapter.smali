.class public Lcom/market2345/filebrowser/adapter/PicDirAdapter;
.super Landroid/widget/BaseAdapter;
.source "PicDirAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/adapter/PicDirAdapter$1;,
        Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private imageHeight:I

.field private imageWidth:I

.field private mContext:Landroid/content/Context;

.field private mDirNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHolder:Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;

.field private mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field private mPicMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const v6, 0x7f020181

    .line 32
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mContext:Landroid/content/Context;

    .line 35
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/filebrowser/FileControl;->getAllPicMap()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mPicMap:Ljava/util/HashMap;

    .line 36
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/market2345/filebrowser/FileControl;->getInstance(Landroid/content/Context;)Lcom/market2345/filebrowser/FileControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/filebrowser/FileControl;->getAllPicDirNames()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mDirNames:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 39
    .local v0, "denity":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 40
    .local v1, "width":I
    int-to-float v2, v1

    const/high16 v3, 0x42340000    # 45.0f

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->imageWidth:I

    .line 41
    iget v2, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->imageWidth:I

    int-to-double v2, v2

    const-wide v4, 0x3ff410624dd2f1aaL    # 1.254

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->imageHeight:I

    .line 43
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v2, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 52
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mDirNames:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mDirNames:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCountInDir(Ljava/lang/String;)I
    .locals 1
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mPicMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mPicMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 113
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 21
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mDirNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 66
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 71
    if-nez p2, :cond_1

    .line 72
    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mContext:Landroid/content/Context;

    const v5, 0x7f030066

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v4, Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;

    invoke-direct {v4, p0, v6}, Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;-><init>(Lcom/market2345/filebrowser/adapter/PicDirAdapter;Lcom/market2345/filebrowser/adapter/PicDirAdapter$1;)V

    iput-object v4, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;

    .line 74
    iget-object v5, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;

    const v4, 0x7f090279

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v5, Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    .line 75
    iget-object v5, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;

    const v4, 0x7f090202

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v5, Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    .line 77
    iget-object v5, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;

    const v4, 0x7f090280

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v5, Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;->rlPic:Landroid/widget/RelativeLayout;

    .line 78
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->imageWidth:I

    iget v5, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->imageHeight:I

    invoke-direct {v2, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 79
    .local v2, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;

    iget-object v4, v4, Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;->rlPic:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;

    invoke-virtual {p2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 86
    .end local v2    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mDirNames:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87
    .local v0, "dirName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 88
    .local v3, "size":I
    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mPicMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 89
    .local v1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 90
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v4, v4, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;

    iget-object v6, v6, Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v5, v4, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 92
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 95
    :cond_0
    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;

    iget-object v4, v4, Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;->tvName:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    return-object p2

    .line 83
    .end local v0    # "dirName":Ljava/lang/String;
    .end local v1    # "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    .end local v3    # "size":I
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;

    iput-object v4, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/PicDirAdapter$ViewHolder;

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dirName"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mDirNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/PicDirAdapter;->mDirNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 105
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
