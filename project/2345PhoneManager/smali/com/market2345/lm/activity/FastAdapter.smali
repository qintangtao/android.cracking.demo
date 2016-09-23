.class public Lcom/market2345/lm/activity/FastAdapter;
.super Landroid/widget/ArrayAdapter;
.source "FastAdapter.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;,
        Lcom/market2345/lm/activity/FastAdapter$ViewHolder;,
        Lcom/market2345/lm/activity/FastAdapter$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/market2345/lm/bean/UnionAppInfo;",
        ">;",
        "Lcom/market2345/datacenter/MarketObserver;"
    }
.end annotation


# instance fields
.field private changeListener:Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;

.field private checkChange:Landroid/view/View$OnClickListener;

.field private checked:Landroid/graphics/Bitmap;

.field private folderClick:Landroid/view/View$OnClickListener;

.field private folders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/lm/bean/UnionAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private mActivity:Landroid/app/Activity;

.field private mDownloadInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/download/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadManager:Lcom/market2345/download/DownloadManager;

.field private mHandler:Landroid/os/Handler;

.field private mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/InstalledApp;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusClickListener:Landroid/view/View$OnClickListener;

.field private mUpdateApps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/model/App;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewHolder:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private notcheck:Landroid/graphics/Bitmap;

.field private session:Lcom/market2345/datacenter/DataCenterObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "resource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/lm/bean/UnionAppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/UnionAppInfo;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mUpdateApps:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mViewHolder:Ljava/util/LinkedHashMap;

    .line 77
    new-instance v0, Lcom/market2345/lm/activity/FastAdapter$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/lm/activity/FastAdapter$MyHandler;-><init>(Lcom/market2345/lm/activity/FastAdapter;)V

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mHandler:Landroid/os/Handler;

    .line 251
    new-instance v0, Lcom/market2345/lm/activity/FastAdapter$3;

    invoke-direct {v0, p0}, Lcom/market2345/lm/activity/FastAdapter$3;-><init>(Lcom/market2345/lm/activity/FastAdapter;)V

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mStatusClickListener:Landroid/view/View$OnClickListener;

    .line 112
    iput-object p1, p0, Lcom/market2345/lm/activity/FastAdapter;->mActivity:Landroid/app/Activity;

    .line 114
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 115
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    .line 116
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 117
    iput-object p3, p0, Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;

    .line 118
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    .line 119
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v0}, Lcom/market2345/download/DownloadManager;->getDownloadInfos()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mDownloadInfos:Ljava/util/Map;

    .line 120
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020189

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->checked:Landroid/graphics/Bitmap;

    .line 122
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020193

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->notcheck:Landroid/graphics/Bitmap;

    .line 124
    new-instance v0, Lcom/market2345/lm/activity/FastAdapter$1;

    invoke-direct {v0, p0}, Lcom/market2345/lm/activity/FastAdapter$1;-><init>(Lcom/market2345/lm/activity/FastAdapter;)V

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->folderClick:Landroid/view/View$OnClickListener;

    .line 153
    new-instance v0, Lcom/market2345/lm/activity/FastAdapter$2;

    invoke-direct {v0, p0}, Lcom/market2345/lm/activity/FastAdapter$2;-><init>(Lcom/market2345/lm/activity/FastAdapter;)V

    iput-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->checkChange:Landroid/view/View$OnClickListener;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mViewHolder:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/lm/activity/FastAdapter;Lcom/market2345/lm/bean/UnionAppInfo;Lcom/market2345/lm/activity/FastAdapter$ViewHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastAdapter;
    .param p1, "x1"    # Lcom/market2345/lm/bean/UnionAppInfo;
    .param p2, "x2"    # Lcom/market2345/lm/activity/FastAdapter$ViewHolder;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/market2345/lm/activity/FastAdapter;->setItemStatusForFast(Lcom/market2345/lm/bean/UnionAppInfo;Lcom/market2345/lm/activity/FastAdapter$ViewHolder;)V

    return-void
.end method

.method static synthetic access$300(Lcom/market2345/lm/activity/FastAdapter;)Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->changeListener:Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/lm/activity/FastAdapter;Lcom/market2345/lm/bean/UnionAppInfo;)Lcom/market2345/model/App;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastAdapter;
    .param p1, "x1"    # Lcom/market2345/lm/bean/UnionAppInfo;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/market2345/lm/activity/FastAdapter;->unionAppInfo2App(Lcom/market2345/lm/bean/UnionAppInfo;)Lcom/market2345/model/App;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/lm/activity/FastAdapter;)Lcom/market2345/download/DownloadManager;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/lm/activity/FastAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->notcheck:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/lm/activity/FastAdapter;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->checked:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/lm/activity/FastAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/lm/activity/FastAdapter;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mDownloadInfos:Ljava/util/Map;

    return-object v0
.end method

.method private setItemStatusForFast(Lcom/market2345/lm/bean/UnionAppInfo;Lcom/market2345/lm/activity/FastAdapter$ViewHolder;)V
    .locals 2
    .param p1, "appInfo"    # Lcom/market2345/lm/bean/UnionAppInfo;
    .param p2, "holder"    # Lcom/market2345/lm/activity/FastAdapter$ViewHolder;

    .prologue
    .line 273
    iget-object v0, p2, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    .line 274
    .local v0, "check":Landroid/widget/ImageView;
    iget-boolean v1, p1, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    if-eqz v1, :cond_0

    .line 275
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter;->checked:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 279
    :goto_0
    return-void

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter;->notcheck:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private unionAppInfo2App(Lcom/market2345/lm/bean/UnionAppInfo;)Lcom/market2345/model/App;
    .locals 2
    .param p1, "info"    # Lcom/market2345/lm/bean/UnionAppInfo;

    .prologue
    .line 175
    new-instance v0, Lcom/market2345/model/App;

    invoke-direct {v0}, Lcom/market2345/model/App;-><init>()V

    .line 176
    .local v0, "app":Lcom/market2345/model/App;
    invoke-virtual {p1}, Lcom/market2345/lm/bean/UnionAppInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/market2345/model/App;->sid:I

    .line 177
    invoke-virtual {p1}, Lcom/market2345/lm/bean/UnionAppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Lcom/market2345/lm/bean/UnionAppInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/App;->url:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Lcom/market2345/lm/bean/UnionAppInfo;->getSoftname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/App;->title:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Lcom/market2345/lm/bean/UnionAppInfo;->getIconpath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/App;->icon:Ljava/lang/String;

    .line 181
    invoke-virtual {p1}, Lcom/market2345/lm/bean/UnionAppInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/App;->version:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Lcom/market2345/lm/bean/UnionAppInfo;->getVersionCode()I

    move-result v1

    iput v1, v0, Lcom/market2345/model/App;->versionCode:I

    .line 183
    invoke-virtual {p1}, Lcom/market2345/lm/bean/UnionAppInfo;->getSize()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/model/App;->fileLength:Ljava/lang/String;

    .line 184
    const/4 v1, 0x2

    iput v1, v0, Lcom/market2345/model/App;->mSourceFrom:I

    .line 185
    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v5, 0x7f09000b

    const/16 v11, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 191
    if-nez p2, :cond_0

    .line 192
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->inflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 193
    new-instance v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;

    invoke-direct {v10}, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;-><init>()V

    .line 194
    .local v10, "holder":Lcom/market2345/lm/activity/FastAdapter$ViewHolder;
    iput p1, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->position:I

    .line 195
    const v0, 0x7f090240

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->itemClick:Landroid/view/View;

    .line 196
    const v0, 0x7f0901d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f090245

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f090118

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->size:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f090242

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/lm/view/LMCheckBox;

    iput-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    .line 200
    const v0, 0x7f090139

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/lm/view/LMStatusView;

    iput-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    .line 201
    const v0, 0x7f090244

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 202
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter;->mStatusClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/market2345/lm/view/LMStatusView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-virtual {p2, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 210
    :goto_0
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/market2345/lm/bean/UnionAppInfo;

    .line 212
    .local v8, "app":Lcom/market2345/lm/bean/UnionAppInfo;
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->itemClick:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 213
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->itemClick:Landroid/view/View;

    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter;->folderClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v1, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/lm/bean/UnionAppInfo;

    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionAppInfo;->getSoftname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v1, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->size:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/lm/bean/UnionAppInfo;

    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionAppInfo;->getSize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v1, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->duration:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/lm/bean/UnionAppInfo;

    iget-object v0, v0, Lcom/market2345/lm/bean/UnionAppInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    invoke-virtual {v0, v10}, Lcom/market2345/lm/view/LMCheckBox;->setTag(Ljava/lang/Object;)V

    .line 218
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    iget-object v1, p0, Lcom/market2345/lm/activity/FastAdapter;->checkChange:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/market2345/lm/view/LMCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/lm/bean/UnionAppInfo;

    invoke-direct {p0, v0, v10}, Lcom/market2345/lm/activity/FastAdapter;->setItemStatusForFast(Lcom/market2345/lm/bean/UnionAppInfo;Lcom/market2345/lm/activity/FastAdapter$ViewHolder;)V

    .line 220
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/lm/bean/UnionAppInfo;

    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionAppInfo;->getIconpath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 223
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mViewHolder:Ljava/util/LinkedHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    const v1, 0x7f090007

    invoke-virtual {v0, v1, v8}, Lcom/market2345/lm/view/LMStatusView;->setTag(ILjava/lang/Object;)V

    .line 226
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    iget-object v1, v8, Lcom/market2345/lm/bean/UnionAppInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/market2345/lm/view/LMStatusView;->setTag(ILjava/lang/Object;)V

    .line 227
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    iget-object v1, v8, Lcom/market2345/lm/bean/UnionAppInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v5, v1}, Lcom/market2345/lm/view/LMCheckBox;->setTag(ILjava/lang/Object;)V

    .line 229
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mDownloadManager:Lcom/market2345/download/DownloadManager;

    iget-object v1, v8, Lcom/market2345/lm/bean/UnionAppInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/download/DownloadManager;->getDownloadInfo(Ljava/lang/String;)Lcom/market2345/download/DownloadInfo;

    move-result-object v9

    .line 230
    .local v9, "downloadInfo":Lcom/market2345/download/DownloadInfo;
    if-eqz v9, :cond_1

    .line 231
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/market2345/download/interfaces/IProgressCallback;

    iget-object v1, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    aput-object v1, v0, v4

    iget-object v1, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    aput-object v1, v0, v3

    invoke-virtual {v9, v0}, Lcom/market2345/download/DownloadInfo;->addProgressViews([Lcom/market2345/download/interfaces/IProgressCallback;)V

    .line 232
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v9, v0}, Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V

    .line 247
    :goto_1
    return-object p2

    .line 205
    .end local v8    # "app":Lcom/market2345/lm/bean/UnionAppInfo;
    .end local v9    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    .end local v10    # "holder":Lcom/market2345/lm/activity/FastAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;

    .line 206
    .restart local v10    # "holder":Lcom/market2345/lm/activity/FastAdapter$ViewHolder;
    iput p1, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->position:I

    goto/16 :goto_0

    .line 235
    .restart local v8    # "app":Lcom/market2345/lm/bean/UnionAppInfo;
    .restart local v9    # "downloadInfo":Lcom/market2345/download/DownloadInfo;
    :cond_1
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v0

    iget-object v1, v8, Lcom/market2345/lm/bean/UnionAppInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/datacenter/AppsInfoHandler;->checkInupdatelist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getAppsInfoHandler()Lcom/market2345/datacenter/AppsInfoHandler;

    move-result-object v0

    iget-object v1, v8, Lcom/market2345/lm/bean/UnionAppInfo;->packagename:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/datacenter/AppsInfoHandler;->checkIsHasInatall(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 236
    :cond_2
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    const-string v1, "\u5df2\u5b89\u88c5"

    invoke-virtual {v0, v1}, Lcom/market2345/lm/view/LMStatusView;->setText(Ljava/lang/String;)V

    .line 237
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    invoke-virtual {v0, v4}, Lcom/market2345/lm/view/LMStatusView;->setVisibility(I)V

    .line 238
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    const-string v1, "\u5df2\u5b89\u88c5"

    const/16 v2, 0xe

    const v5, 0x7f07004a

    const v6, 0x7f070049

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lcom/market2345/lm/view/LMStatusView;->setLMText(Ljava/lang/String;IZIIII)V

    .line 239
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    invoke-virtual {v0, v11}, Lcom/market2345/lm/view/LMCheckBox;->setVisibility(I)V

    goto :goto_1

    .line 241
    :cond_3
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->check:Lcom/market2345/lm/view/LMCheckBox;

    invoke-virtual {v0, v4}, Lcom/market2345/lm/view/LMCheckBox;->setVisibility(I)V

    .line 242
    iget-object v0, v10, Lcom/market2345/lm/activity/FastAdapter$ViewHolder;->status:Lcom/market2345/lm/view/LMStatusView;

    invoke-virtual {v0, v11}, Lcom/market2345/lm/view/LMStatusView;->setVisibility(I)V

    goto :goto_1
.end method

.method public initDataFromSession()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 307
    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/lm/activity/FastAdapter;->mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    .line 308
    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter;->session:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getUpdateList()Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/lm/activity/FastAdapter;->mUpdateApps:Ljava/util/HashMap;

    .line 309
    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 310
    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 312
    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter;->folders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/lm/bean/UnionAppInfo;

    .line 313
    .local v1, "info":Lcom/market2345/lm/bean/UnionAppInfo;
    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter;->mDownloadInfos:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/market2345/lm/bean/UnionAppInfo;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 314
    iput-boolean v4, v1, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    goto :goto_0

    .line 315
    :cond_1
    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter;->mUpdateApps:Ljava/util/HashMap;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter;->mUpdateApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Lcom/market2345/lm/bean/UnionAppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 316
    iput-boolean v4, v1, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    goto :goto_0

    .line 317
    :cond_2
    iget-object v2, p0, Lcom/market2345/lm/activity/FastAdapter;->mInstalledApps:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lcom/market2345/lm/bean/UnionAppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 318
    iput-boolean v4, v1, Lcom/market2345/lm/bean/UnionAppInfo;->checked:Z

    goto :goto_0

    .line 324
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/market2345/lm/bean/UnionAppInfo;
    :cond_3
    return-void
.end method

.method public setOnchangeListener(Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;)V
    .locals 0
    .param p1, "changeListener"    # Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;

    .prologue
    .line 268
    iput-object p1, p0, Lcom/market2345/lm/activity/FastAdapter;->changeListener:Lcom/market2345/lm/activity/FastAdapter$onSelectChangeListener;

    .line 269
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 2
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/market2345/lm/activity/FastAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 285
    return-void
.end method
