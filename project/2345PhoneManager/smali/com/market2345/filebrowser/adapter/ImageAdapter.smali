.class public Lcom/market2345/filebrowser/adapter/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/filebrowser/adapter/ImageAdapter$1;,
        Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private curLastVisiblePosition:I

.field private imageWidth:I

.field private isChanging:Z

.field private isEditMode:Z

.field private mContext:Landroid/content/Context;

.field private mDeleteMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHolder:Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/market2345/filebrowser/bean/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/filebrowser/bean/FileInfo;>;"
    .local p3, "deleteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;"
    const/4 v5, 0x1

    const/4 v2, 0x0

    const v4, 0x7f020181

    .line 43
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mInfos:Ljava/util/ArrayList;

    .line 46
    if-nez p3, :cond_0

    new-instance p3, Ljava/util/HashMap;

    .end local p3    # "deleteMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/market2345/filebrowser/bean/FileInfo;>;"
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object p3, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mDeleteMap:Ljava/util/Map;

    .line 47
    iput-boolean v2, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->isEditMode:Z

    .line 48
    iput-boolean v2, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->isChanging:Z

    .line 49
    const/4 v2, -0x1

    iput v2, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->curLastVisiblePosition:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 52
    .local v0, "denity":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 53
    .local v1, "width":I
    int-to-float v2, v1

    const/high16 v3, 0x41400000    # 12.0f

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->imageWidth:I

    .line 55
    new-instance v2, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageForEmptyUri(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnFail(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->showImageOnLoading(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cacheInMemory(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->bitmapConfig(Landroid/graphics/Bitmap$Config;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->considerExifParams(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 64
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getEditMode()Z
    .locals 1

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->isEditMode:Z

    return v0
.end method

.method public getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 73
    iget-object v0, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/filebrowser/bean/FileInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->getItem(I)Lcom/market2345/filebrowser/bean/FileInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 78
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 83
    if-nez p2, :cond_2

    .line 84
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f030063

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 85
    new-instance v1, Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

    invoke-direct {v1, p0, v3}, Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;-><init>(Lcom/market2345/filebrowser/adapter/ImageAdapter;Lcom/market2345/filebrowser/adapter/ImageAdapter$1;)V

    iput-object v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

    .line 86
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

    const v1, 0x7f090279

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    .line 87
    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

    const v1, 0x7f090263

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v2, Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    .line 89
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->imageWidth:I

    iget v2, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->imageWidth:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 90
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 97
    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    iget-boolean v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->isEditMode:Z

    if-eqz v1, :cond_3

    .line 98
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    invoke-virtual {v1, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 99
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mDeleteMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 104
    :goto_1
    iget-boolean v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->isChanging:Z

    if-nez v1, :cond_0

    .line 105
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/filebrowser/bean/FileInfo;

    iget-object v1, v1, Lcom/market2345/filebrowser/bean/FileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

    iget-object v3, v3, Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;->ivImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mOptions:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2, v1, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 108
    :cond_0
    iget-boolean v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->isChanging:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->curLastVisiblePosition:I

    if-ne p1, v1, :cond_1

    .line 109
    iput-boolean v5, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->isChanging:Z

    .line 112
    :cond_1
    return-object p2

    .line 94
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

    iput-object v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

    goto :goto_0

    .line 101
    :cond_3
    iget-object v1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->mHolder:Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;

    iget-object v1, v1, Lcom/market2345/filebrowser/adapter/ImageAdapter$ViewHolder;->cbChecked:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method public setEditMode(ZII)V
    .locals 5
    .param p1, "editMode"    # Z
    .param p2, "lastVisiblePosition"    # I
    .param p3, "gridCount"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 122
    iput-boolean p1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->isEditMode:Z

    .line 123
    const-string v3, "wdh"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCount() == gridCount:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->getCount()I

    move-result v0

    if-ne v0, p3, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->getCount()I

    move-result v0

    if-ne v0, p3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    invoke-virtual {p0, p2, v2}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->setLastVisiblePosition(IZ)V

    .line 125
    invoke-virtual {p0}, Lcom/market2345/filebrowser/adapter/ImageAdapter;->notifyDataSetChanged()V

    .line 126
    return-void

    :cond_2
    move v0, v2

    .line 123
    goto :goto_0
.end method

.method public setLastVisiblePosition(IZ)V
    .locals 0
    .param p1, "lastVisiblePosition"    # I
    .param p2, "isChanging"    # Z

    .prologue
    .line 129
    iput-boolean p2, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->isChanging:Z

    .line 130
    iput p1, p0, Lcom/market2345/filebrowser/adapter/ImageAdapter;->curLastVisiblePosition:I

    .line 131
    return-void
.end method
