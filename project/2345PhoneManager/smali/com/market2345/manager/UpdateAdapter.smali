.class public Lcom/market2345/manager/UpdateAdapter;
.super Landroid/widget/BaseAdapter;
.source "UpdateAdapter.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/manager/UpdateAdapter$UpdateCallback;
    }
.end annotation


# static fields
.field private static final TYPE_COUT:I = 0x2

.field private static final UPDATE_APPS_COUNT:I = 0x0

.field private static final UPDATE_APPS_ITEM:I = 0x1


# instance fields
.field private apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field private expandListener:Landroid/view/View$OnClickListener;

.field private ignoreButtonListener:Landroid/view/View$OnClickListener;

.field private mActivity:Landroid/app/Activity;

.field private mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private mExpands:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIntroductionWidth:I

.field private mItemClick:Landroid/view/View$OnClickListener;

.field private mPaint:Landroid/graphics/Paint;

.field private session:Lcom/market2345/datacenter/DataCenterObserver;

.field private updateCallback:Lcom/market2345/manager/UpdateAdapter$UpdateCallback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 373
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->mExpands:Ljava/util/Set;

    .line 401
    new-instance v3, Lcom/market2345/manager/UpdateAdapter$1;

    invoke-direct {v3, p0}, Lcom/market2345/manager/UpdateAdapter$1;-><init>(Lcom/market2345/manager/UpdateAdapter;)V

    iput-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->expandListener:Landroid/view/View$OnClickListener;

    .line 411
    new-instance v3, Lcom/market2345/manager/UpdateAdapter$2;

    invoke-direct {v3, p0}, Lcom/market2345/manager/UpdateAdapter$2;-><init>(Lcom/market2345/manager/UpdateAdapter;)V

    iput-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->ignoreButtonListener:Landroid/view/View$OnClickListener;

    .line 426
    new-instance v3, Lcom/market2345/manager/UpdateAdapter$3;

    invoke-direct {v3, p0}, Lcom/market2345/manager/UpdateAdapter$3;-><init>(Lcom/market2345/manager/UpdateAdapter;)V

    iput-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->mItemClick:Landroid/view/View$OnClickListener;

    .line 80
    iput-object p1, p0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    .line 81
    iget-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    .line 82
    iget-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v3, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 84
    iget-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v3

    iput-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 87
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->mPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08001a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    iget-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020310

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 91
    .local v0, "expand":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0x2d

    .line 93
    .local v1, "spaceDip":I
    iget-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    int-to-float v4, v1

    invoke-static {v3, v4}, Lcom/market2345/util/SPUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int v2, v3, v4

    .line 95
    .local v2, "spacePix":I
    iget-object v3, p0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/market2345/manager/UpdateAdapter;->mIntroductionWidth:I

    .line 97
    invoke-direct {p0}, Lcom/market2345/manager/UpdateAdapter;->initDataSourceList()V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/manager/UpdateAdapter;ZLandroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/manager/UpdateAdapter;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/market2345/manager/UpdateAdapter;->expandIntroductionView(ZLandroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/manager/UpdateAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/manager/UpdateAdapter;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/manager/UpdateAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/manager/UpdateAdapter;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private expandIntroductionView(ZLandroid/view/View;)V
    .locals 8
    .param p1, "toggle"    # Z
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const v7, 0x7f09040a

    const v6, 0x7f090408

    .line 376
    const v5, 0x7f090027

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/common/util/BaseAdapterHelper;

    .line 377
    .local v1, "helper":Lcom/market2345/common/util/BaseAdapterHelper;
    const v5, 0x7f090029

    invoke-virtual {p2, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 378
    .local v0, "app":Lcom/market2345/model/App;
    const v5, 0x7f090409

    invoke-virtual {v1, v5}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 379
    .local v2, "indicator":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 380
    const v5, 0x7f02030f

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 382
    invoke-virtual {v1, v7}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 383
    .local v3, "tvIntroduction":Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 385
    .local v4, "tvIntroductionTitle":Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 386
    iget-object v5, p0, Lcom/market2345/manager/UpdateAdapter;->mExpands:Ljava/util/Set;

    iget v6, v0, Lcom/market2345/model/App;->sid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 398
    :goto_0
    return-void

    .line 389
    .end local v3    # "tvIntroduction":Landroid/widget/TextView;
    .end local v4    # "tvIntroductionTitle":Landroid/widget/TextView;
    :cond_0
    const v5, 0x7f020310

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    invoke-virtual {v1, v7}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 392
    .restart local v3    # "tvIntroduction":Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 394
    .restart local v4    # "tvIntroductionTitle":Landroid/widget/TextView;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 395
    iget-object v5, p0, Lcom/market2345/manager/UpdateAdapter;->mExpands:Ljava/util/Set;

    iget v6, v0, Lcom/market2345/model/App;->sid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private initDataSourceList()V
    .locals 3

    .prologue
    .line 145
    iget-object v1, p0, Lcom/market2345/manager/UpdateAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getUpdateList()Ljava/util/HashMap;

    move-result-object v0

    .line 147
    .local v0, "mUpdateList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    if-eqz v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 152
    iget-object v1, p0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/market2345/manager/UpdateAdapter;->updateCallback:Lcom/market2345/manager/UpdateAdapter$UpdateCallback;

    if-eqz v1, :cond_2

    .line 155
    iget-object v1, p0, Lcom/market2345/manager/UpdateAdapter;->updateCallback:Lcom/market2345/manager/UpdateAdapter$UpdateCallback;

    invoke-interface {v1}, Lcom/market2345/manager/UpdateAdapter$UpdateCallback;->updateCallBack()V

    .line 157
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Lcom/market2345/model/App;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 112
    if-lez p1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/market2345/manager/UpdateAdapter;->getItem(I)Lcom/market2345/model/App;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 120
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    const/4 v0, 0x0

    .line 128
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getUpdateApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation

    .prologue
    .line 472
    iget-object v0, p0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 28
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 162
    invoke-virtual/range {p0 .. p1}, Lcom/market2345/manager/UpdateAdapter;->getItemViewType(I)I

    move-result v23

    if-nez v23, :cond_0

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v23

    const v24, 0x7f03008d

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 175
    .local v17, "rootView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f070088

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, v17

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/market2345/common/util/BaseAdapterHelper;->get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/market2345/common/util/BaseAdapterHelper;

    move-result-object v10

    .line 178
    .local v10, "helper":Lcom/market2345/common/util/BaseAdapterHelper;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b0163

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "appsCount":Ljava/lang/String;
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, v23

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 180
    const v23, 0x7f0902fa

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 181
    invoke-virtual {v10}, Lcom/market2345/common/util/BaseAdapterHelper;->getView()Landroid/view/View;

    move-result-object v23

    .line 368
    .end local v7    # "appsCount":Ljava/lang/String;
    .end local v10    # "helper":Lcom/market2345/common/util/BaseAdapterHelper;
    .end local v17    # "rootView":Landroid/view/View;
    :goto_0
    return-object v23

    .line 184
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/market2345/manager/UpdateAdapter;->getItem(I)Lcom/market2345/model/App;

    move-result-object v6

    .line 185
    .local v6, "app":Lcom/market2345/model/App;
    if-eqz v6, :cond_12

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    move-object/from16 v23, v0

    iget-object v0, v6, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v13

    .line 187
    .local v13, "installedApp":Lcom/market2345/model/InstalledApp;
    if-nez v13, :cond_2

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    add-int/lit8 v24, p1, -0x1

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Lcom/market2345/datacenter/DataCenterObserver;->removeUpdateApp(Lcom/market2345/model/App;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/manager/UpdateAdapter;->notifyDataSetChanged()V

    .line 191
    if-nez p2, :cond_1

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v23

    const v24, 0x7f0300cc

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_1
    move-object/from16 v23, p2

    .line 194
    goto :goto_0

    .line 197
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0300cc

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v24

    move/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/market2345/common/util/BaseAdapterHelper;->get(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;II)Lcom/market2345/common/util/BaseAdapterHelper;

    move-result-object v10

    .line 199
    .restart local v10    # "helper":Lcom/market2345/common/util/BaseAdapterHelper;
    const v23, 0x7f090225

    iget-object v0, v6, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setImageUrl(ILjava/lang/String;)Landroid/widget/ImageView;

    .line 201
    iget v0, v6, Lcom/market2345/model/App;->mDownPartial:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 202
    const v23, 0x7f09023c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    const v25, 0x7f0b0165

    invoke-virtual/range {v24 .. v25}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 203
    const v23, 0x7f0902a7

    iget-object v0, v6, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 204
    const v23, 0x7f0902a8

    iget-wide v0, v6, Lcom/market2345/model/App;->patch_size:J

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 205
    const v23, 0x7f0902a7

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    .line 206
    const v23, 0x7f0902a8

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    .line 214
    :goto_1
    const v23, 0x7f09009f

    iget-object v0, v6, Lcom/market2345/model/App;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 215
    iget-object v0, v13, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    iget-object v0, v6, Lcom/market2345/model/App;->version:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_3

    .line 216
    iget-object v0, v6, Lcom/market2345/model/App;->version:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-object v0, v13, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 217
    const v23, 0x7f0902a9

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "V"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 219
    const v23, 0x7f0902aa

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " --> V"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v6, Lcom/market2345/model/App;->version:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 226
    :cond_3
    :goto_2
    const v23, 0x7f090222

    const v24, 0x7f090012

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/market2345/common/util/BaseAdapterHelper;->setTag(IILjava/lang/Object;)Landroid/view/View;

    .line 227
    const v23, 0x7f090222

    const v24, 0x7f090007

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1, v6}, Lcom/market2345/common/util/BaseAdapterHelper;->setTag(IILjava/lang/Object;)Landroid/view/View;

    .line 229
    const v23, 0x7f090222

    const v24, 0x7f09000b

    iget-object v0, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/market2345/common/util/BaseAdapterHelper;->setTag(IILjava/lang/Object;)Landroid/view/View;

    .line 230
    const v23, 0x7f090226

    const v24, 0x7f09000b

    iget-object v0, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/market2345/common/util/BaseAdapterHelper;->setTag(IILjava/lang/Object;)Landroid/view/View;

    .line 231
    const v23, 0x7f0902a6

    const v24, 0x7f09000b

    iget-object v0, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/market2345/common/util/BaseAdapterHelper;->setTag(IILjava/lang/Object;)Landroid/view/View;

    .line 232
    const v23, 0x7f090228

    const v24, 0x7f09000b

    iget-object v0, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/market2345/common/util/BaseAdapterHelper;->setTag(IILjava/lang/Object;)Landroid/view/View;

    .line 233
    const v23, 0x7f090406

    const v24, 0x7f09000b

    iget-object v0, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/market2345/common/util/BaseAdapterHelper;->setTag(IILjava/lang/Object;)Landroid/view/View;

    .line 234
    const v23, 0x7f090229

    const v24, 0x7f09000b

    iget-object v0, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v25, v0

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/market2345/common/util/BaseAdapterHelper;->setTag(IILjava/lang/Object;)Landroid/view/View;

    .line 237
    const/16 v18, 0x0

    .line 238
    .local v18, "show":Z
    const/4 v9, 0x0

    .line 240
    .local v9, "hasNoLog":Z
    iget-object v14, v6, Lcom/market2345/model/App;->updateLog:Ljava/lang/String;

    .line 241
    .local v14, "introduction":Ljava/lang/String;
    move-object/from16 v19, v14

    .line 242
    .local v19, "subString":Ljava/lang/String;
    const-string v15, "\u66f4\u65b0\u5185\u5bb9\uff1a"

    .line 243
    .local v15, "introductionTitle":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 244
    const/4 v9, 0x1

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const v24, 0x7f0b0072

    invoke-virtual/range {v23 .. v24}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 254
    :cond_4
    :goto_3
    if-nez v18, :cond_5

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/manager/UpdateAdapter;->mIntroductionWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_9

    const/16 v18, 0x1

    .line 259
    :cond_5
    :goto_4
    const v23, 0x7f09040a

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 260
    .local v21, "tvIntroduction":Landroid/widget/TextView;
    const v23, 0x7f090409

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 261
    .local v12, "indicator":Landroid/widget/ImageView;
    const v23, 0x7f090408

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 263
    .local v22, "tvIntroductionTitle":Landroid/widget/TextView;
    if-eqz v18, :cond_b

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mExpands:Ljava/util/Set;

    move-object/from16 v23, v0

    iget v0, v6, Lcom/market2345/model/App;->sid:I

    move/from16 v24, v0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_a

    .line 265
    const v23, 0x7f02030f

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 267
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 269
    const v23, 0x7f090407

    const v24, 0x7f090028

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/market2345/common/util/BaseAdapterHelper;->setTag(IILjava/lang/Object;)Landroid/view/View;

    .line 279
    :goto_5
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    const v23, 0x7f090407

    const v24, 0x7f090027

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1, v10}, Lcom/market2345/common/util/BaseAdapterHelper;->setTag(IILjava/lang/Object;)Landroid/view/View;

    .line 281
    const v23, 0x7f090407

    const v24, 0x7f090029

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1, v6}, Lcom/market2345/common/util/BaseAdapterHelper;->setTag(IILjava/lang/Object;)Landroid/view/View;

    .line 282
    const v23, 0x7f090407

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->expandListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setOnClickListener(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    .line 289
    :goto_6
    if-eqz v9, :cond_c

    .line 290
    const v23, 0x7f090407

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setEnabled(Z)V

    .line 291
    invoke-static {v15}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 293
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 303
    :goto_7
    const v23, 0x7f090222

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 305
    .local v20, "tv":Landroid/widget/TextView;
    iget-object v0, v6, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_d

    iget-object v0, v13, Lcom/market2345/model/InstalledApp;->signatures:Ljava/util/HashSet;

    move-object/from16 v23, v0

    iget-object v0, v6, Lcom/market2345/model/App;->certMd5:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 306
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 307
    .local v16, "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const/high16 v24, 0x41400000    # 12.0f

    invoke-static/range {v23 .. v24}, Lcom/market2345/util/SPUtil;->dip2px(Landroid/content/Context;F)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 308
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    const v23, 0x7f09038c

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    .line 317
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    move-object/from16 v23, v0

    const v24, 0x7f090222

    move/from16 v0, v24

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/market2345/download/DownloadManager;->setOnClickListener(Landroid/view/View;)V

    .line 318
    const v23, 0x7f090405

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->ignoreButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setOnClickListener(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object v23

    add-int/lit8 v24, p1, -0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 320
    iget v0, v6, Lcom/market2345/model/App;->sid:I

    move/from16 v23, v0

    if-lez v23, :cond_e

    iget-boolean v0, v6, Lcom/market2345/model/App;->isLM:Z

    move/from16 v23, v0

    if-nez v23, :cond_e

    .line 321
    invoke-virtual {v10}, Lcom/market2345/common/util/BaseAdapterHelper;->getView()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setEnabled(Z)V

    .line 322
    invoke-virtual {v10}, Lcom/market2345/common/util/BaseAdapterHelper;->getView()Landroid/view/View;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mItemClick:Landroid/view/View$OnClickListener;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    move-object/from16 v23, v0

    iget-object v0, v6, Lcom/market2345/model/App;->url:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v8

    .line 329
    .local v8, "downloadInfo":Lcom/market2345/download/DownloadInfo;
    if-eqz v8, :cond_f

    .line 330
    const/16 v23, 0x6

    move/from16 v0, v23

    new-array v0, v0, [Lcom/market2345/download/interfaces/IProgressCallback;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const v23, 0x7f090222

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/market2345/download/interfaces/IProgressCallback;

    aput-object v23, v24, v25

    const/16 v25, 0x1

    const v23, 0x7f090226

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/market2345/download/interfaces/IProgressCallback;

    aput-object v23, v24, v25

    const/16 v25, 0x2

    const v23, 0x7f0902a6

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/market2345/download/interfaces/IProgressCallback;

    aput-object v23, v24, v25

    const/16 v25, 0x3

    const v23, 0x7f090228

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/market2345/download/interfaces/IProgressCallback;

    aput-object v23, v24, v25

    const/16 v25, 0x4

    const v23, 0x7f090406

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/market2345/download/interfaces/IProgressCallback;

    aput-object v23, v24, v25

    const/16 v25, 0x5

    const v23, 0x7f090229

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/market2345/download/interfaces/IProgressCallback;

    aput-object v23, v24, v25

    move-object/from16 v0, v24

    invoke-virtual {v8, v0}, Lcom/market2345/download/DownloadInfo;->addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v8, v0}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V

    .line 365
    :goto_a
    invoke-virtual {v10}, Lcom/market2345/common/util/BaseAdapterHelper;->getView()Landroid/view/View;

    move-result-object v23

    goto/16 :goto_0

    .line 208
    .end local v8    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    .end local v9    # "hasNoLog":Z
    .end local v12    # "indicator":Landroid/widget/ImageView;
    .end local v14    # "introduction":Ljava/lang/String;
    .end local v15    # "introductionTitle":Ljava/lang/String;
    .end local v16    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "show":Z
    .end local v19    # "subString":Ljava/lang/String;
    .end local v20    # "tv":Landroid/widget/TextView;
    .end local v21    # "tvIntroduction":Landroid/widget/TextView;
    .end local v22    # "tvIntroductionTitle":Landroid/widget/TextView;
    :cond_6
    const v23, 0x7f09023c

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v25, v0

    const v26, 0x7f0b0161

    invoke-virtual/range {v25 .. v26}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v6, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 209
    const v23, 0x7f0902a7

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    .line 210
    const v23, 0x7f0902a8

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    goto/16 :goto_1

    .line 221
    :cond_7
    const v23, 0x7f0902a9

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "V"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v13, Lcom/market2345/model/InstalledApp;->versionName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v13, Lcom/market2345/model/InstalledApp;->versionCode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/market2345/common/util/Utils;->getSubLengthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 223
    const v23, 0x7f0902aa

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " --> V"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v6, Lcom/market2345/model/App;->version:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget v0, v6, Lcom/market2345/model/App;->versionCode:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/market2345/common/util/Utils;->getSubLengthString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    goto/16 :goto_2

    .line 248
    .restart local v9    # "hasNoLog":Z
    .restart local v14    # "introduction":Ljava/lang/String;
    .restart local v15    # "introductionTitle":Ljava/lang/String;
    .restart local v18    # "show":Z
    .restart local v19    # "subString":Ljava/lang/String;
    :cond_8
    const-string v23, "\n"

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 249
    .local v11, "index":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v11, v0, :cond_4

    .line 250
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 255
    .end local v11    # "index":I
    :cond_9
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 272
    .restart local v12    # "indicator":Landroid/widget/ImageView;
    .restart local v21    # "tvIntroduction":Landroid/widget/TextView;
    .restart local v22    # "tvIntroductionTitle":Landroid/widget/TextView;
    :cond_a
    const v23, 0x7f020310

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 277
    const v23, 0x7f090407

    const v24, 0x7f090028

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move/from16 v0, v23

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v10, v0, v1, v2}, Lcom/market2345/common/util/BaseAdapterHelper;->setTag(IILjava/lang/Object;)Landroid/view/View;

    goto/16 :goto_5

    .line 284
    :cond_b
    const/16 v23, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    const/16 v23, 0x4

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    const v23, 0x7f090407

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setOnClickListener(ILandroid/view/View$OnClickListener;)Landroid/view/View;

    goto/16 :goto_6

    .line 295
    :cond_c
    const v23, 0x7f090407

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 299
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    .line 311
    .restart local v20    # "tv":Landroid/widget/TextView;
    :cond_d
    invoke-virtual/range {v20 .. v20}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/RelativeLayout$LayoutParams;

    .line 312
    .restart local v16    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v23, v0

    const/high16 v24, 0x41a00000    # 20.0f

    invoke-static/range {v23 .. v24}, Lcom/market2345/util/SPUtil;->dip2px(Landroid/content/Context;F)I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 313
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    const v23, 0x7f09038c

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    goto/16 :goto_8

    .line 324
    :cond_e
    invoke-virtual {v10}, Lcom/market2345/common/util/BaseAdapterHelper;->getView()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setEnabled(Z)V

    .line 325
    invoke-virtual {v10}, Lcom/market2345/common/util/BaseAdapterHelper;->getView()Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    .line 340
    .restart local v8    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v23

    iget-object v0, v6, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_10

    .line 342
    const v23, 0x7f090222

    const-string v24, "\u5347\u7ea7"

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 343
    const v23, 0x7f090222

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f07005a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setTextColor(II)Landroid/widget/TextView;

    .line 344
    const v23, 0x7f090222

    const v24, 0x7f020185

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setBackgroundRes(II)Landroid/view/View;

    .line 355
    :goto_b
    const v23, 0x7f090222

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setEnabled(Z)V

    .line 356
    const v23, 0x7f090222

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/market2345/common/util/BaseAdapterHelper;->getView(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/TextView;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v23 .. v27}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 357
    const v23, 0x7f090226

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    .line 358
    const v23, 0x7f09023c

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    .line 359
    const v23, 0x7f090228

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    .line 360
    const v23, 0x7f090406

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    .line 361
    const v23, 0x7f090229

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    .line 362
    const v23, 0x7f0902a6

    const/16 v24, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setVisible(II)Landroid/view/View;

    goto/16 :goto_a

    .line 345
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v23

    iget-object v0, v6, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/market2345/datacenter/AppsInfoHandler;->checkIsHasInatall(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_11

    .line 347
    const v23, 0x7f090222

    const-string v24, "\u6253\u5f00"

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 348
    const v23, 0x7f090222

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/manager/UpdateAdapter;->mActivity:Landroid/app/Activity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f07005a

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setTextColor(II)Landroid/widget/TextView;

    .line 349
    const v23, 0x7f090222

    const v24, 0x7f020185

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setBackgroundRes(II)Landroid/view/View;

    goto/16 :goto_b

    .line 351
    :cond_11
    const v23, 0x7f090222

    const-string v24, "\u4e0b\u8f7d"

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setText(ILjava/lang/CharSequence;)Landroid/widget/TextView;

    .line 352
    const v23, 0x7f090222

    const v24, 0x7f02018b

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v10, v0, v1}, Lcom/market2345/common/util/BaseAdapterHelper;->setBackgroundRes(II)Landroid/view/View;

    goto/16 :goto_b

    .end local v8    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    .end local v9    # "hasNoLog":Z
    .end local v10    # "helper":Lcom/market2345/common/util/BaseAdapterHelper;
    .end local v12    # "indicator":Landroid/widget/ImageView;
    .end local v13    # "installedApp":Lcom/market2345/model/InstalledApp;
    .end local v14    # "introduction":Ljava/lang/String;
    .end local v15    # "introductionTitle":Ljava/lang/String;
    .end local v16    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v18    # "show":Z
    .end local v19    # "subString":Ljava/lang/String;
    .end local v20    # "tv":Landroid/widget/TextView;
    .end local v21    # "tvIntroduction":Landroid/widget/TextView;
    .end local v22    # "tvIntroductionTitle":Landroid/widget/TextView;
    :cond_12
    move-object/from16 v23, p2

    .line 368
    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 133
    const/4 v0, 0x2

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/manager/UpdateAdapter;->apps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    const/4 v0, 0x0

    .line 141
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setUpdateCallBack(Lcom/market2345/manager/UpdateAdapter$UpdateCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/market2345/manager/UpdateAdapter$UpdateCallback;

    .prologue
    .line 476
    iput-object p1, p0, Lcom/market2345/manager/UpdateAdapter;->updateCallback:Lcom/market2345/manager/UpdateAdapter$UpdateCallback;

    .line 477
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 447
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_3

    move-object v0, p2

    .line 449
    check-cast v0, Landroid/util/Pair;

    .line 451
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.upgrade.num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.downloading.list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/market2345/manager/UpdateAdapter;->initDataSourceList()V

    .line 453
    invoke-virtual {p0}, Lcom/market2345/manager/UpdateAdapter;->notifyDataSetChanged()V

    .line 456
    :cond_1
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.upgrade.num"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 457
    iget-object v1, p0, Lcom/market2345/manager/UpdateAdapter;->updateCallback:Lcom/market2345/manager/UpdateAdapter$UpdateCallback;

    if-eqz v1, :cond_2

    .line 458
    iget-object v1, p0, Lcom/market2345/manager/UpdateAdapter;->updateCallback:Lcom/market2345/manager/UpdateAdapter$UpdateCallback;

    invoke-interface {v1}, Lcom/market2345/manager/UpdateAdapter$UpdateCallback;->updateCallBack()V

    .line 468
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :goto_0
    return-void

    .line 461
    :cond_3
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 462
    const-string v1, "pref.add.new.download"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "pref.varify.md5.end"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 464
    :cond_4
    invoke-direct {p0}, Lcom/market2345/manager/UpdateAdapter;->initDataSourceList()V

    .line 465
    invoke-virtual {p0}, Lcom/market2345/manager/UpdateAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
