.class public Lcom/market2345/cacheclean/CleanVestigitalActivity;
.super Landroid/app/Activity;
.source "CleanVestigitalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/market2345/cacheclean/CleanSDAppAdapter$OnSelcectListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# instance fields
.field private appHeader:Landroid/widget/TextView;

.field private botLayout:Landroid/widget/LinearLayout;

.field private clearBt:Landroid/widget/Button;

.field private clearManger:Lcom/market2345/cacheclean/ClearManger;

.field private format:Ljava/lang/String;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private infoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/AppSDCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ivBack:Landroid/widget/ImageView;

.field private listView:Landroid/widget/ListView;

.field private mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;

.field private mCheckBt:Landroid/widget/ImageButton;

.field private mEmpty:Landroid/widget/LinearLayout;

.field private mEmptyTx:Landroid/widget/TextView;

.field private mScan:Lcom/market2345/cacheclean/ScanResidual;

.field private mThumbnailBox:Landroid/widget/CheckBox;

.field private selectAll:Z

.field private selectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/AppSDCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private systemHeader:Landroid/widget/TextView;

.field private thumbnaiSize:Landroid/widget/TextView;

.field private thumbnailName:Landroid/widget/TextView;

.field private thumbnailRoot:Landroid/widget/RelativeLayout;

.field private titileBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectAll:Z

    .line 75
    new-instance v0, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity$1;-><init>(Lcom/market2345/cacheclean/CleanVestigitalActivity;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->systemHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->thumbnailRoot:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/CleanSDAppAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->appHeader:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectAll:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/market2345/cacheclean/CleanVestigitalActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectAll:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mCheckBt:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mThumbnailBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Lcom/market2345/cacheclean/ScanResidual;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mEmpty:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mEmptyTx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->botLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/cacheclean/CleanVestigitalActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanVestigitalActivity;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->format:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public changeState(Z)V
    .locals 2
    .param p1, "statet"    # Z

    .prologue
    .line 462
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/cacheclean/AppSDCacheInfo;

    invoke-virtual {v1, p1}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setSelect(Z)V

    .line 462
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    :cond_0
    return-void
.end method

.method public initUI()V
    .locals 2

    .prologue
    .line 175
    const v0, 0x7f0901e8

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->titileBar:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f0901d3

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->systemHeader:Landroid/widget/TextView;

    .line 177
    const v0, 0x7f0901e6

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->appHeader:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0901d4

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->thumbnailRoot:Landroid/widget/RelativeLayout;

    .line 179
    const v0, 0x7f0901d7

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->thumbnailName:Landroid/widget/TextView;

    .line 180
    const v0, 0x7f0901d9

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->thumbnaiSize:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f0901d6

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mThumbnailBox:Landroid/widget/CheckBox;

    .line 182
    const v0, 0x7f0901eb

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->listView:Landroid/widget/ListView;

    .line 183
    const v0, 0x7f09019a

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->ivBack:Landroid/widget/ImageView;

    .line 184
    const v0, 0x7f0901ec

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->botLayout:Landroid/widget/LinearLayout;

    .line 185
    const v0, 0x7f0901e9

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mEmpty:Landroid/widget/LinearLayout;

    .line 186
    const v0, 0x7f0901ea

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mEmptyTx:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mThumbnailBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    const v0, 0x7f0901ee

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mCheckBt:Landroid/widget/ImageButton;

    .line 189
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    const v0, 0x7f0901ed

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;

    .line 191
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->updateSystem()V

    .line 194
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->updateAppList()V

    .line 196
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mCheckBt:Landroid/widget/ImageButton;

    new-instance v1, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;

    invoke-direct {v1, p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity$2;-><init>(Lcom/market2345/cacheclean/CleanVestigitalActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    return-void
.end method

.method public onCancel(I)V
    .locals 3
    .param p1, "selectPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 486
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/cacheclean/AppSDCacheInfo;

    invoke-virtual {v0, v2}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setSelect(Z)V

    .line 487
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 488
    iget-boolean v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectAll:Z

    if-eqz v0, :cond_0

    .line 490
    iput-boolean v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectAll:Z

    .line 491
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mCheckBt:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;

    if-eqz v0, :cond_1

    .line 494
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanSDAppAdapter;->notifyDataSetChanged()V

    .line 495
    :cond_1
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 432
    if-eqz p2, :cond_1

    .line 435
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 439
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectAll:Z

    .line 440
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mCheckBt:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectAll:Z

    .line 452
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mCheckBt:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0b00d0

    const v4, 0x7f0b0042

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 390
    .local v0, "id":I
    const v1, 0x7f09019a

    if-ne v0, v1, :cond_1

    .line 392
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->finish()V

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    const v1, 0x7f0901ed

    if-ne v0, v1, :cond_0

    .line 397
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->thumbnailRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 399
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mThumbnailBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    .line 401
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 405
    :cond_2
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 406
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 407
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mThumbnailBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Lcom/market2345/cacheclean/ClearManger;->cleanSD(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 412
    :cond_3
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 414
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 418
    :cond_4
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 419
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 420
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v2}, Lcom/market2345/cacheclean/ClearManger;->cleanSD(ZLjava/util/ArrayList;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    const v0, 0x7f030037

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->setContentView(I)V

    .line 166
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/cacheclean/ScanResidual;->get(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    .line 167
    new-instance v0, Lcom/market2345/cacheclean/ClearManger;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/cacheclean/ClearManger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    .line 168
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->format:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0, p0}, Lcom/market2345/cacheclean/ScanResidual;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 170
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->initUI()V

    .line 171
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0, p0}, Lcom/market2345/cacheclean/ScanResidual;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 369
    iput-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 373
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 374
    iput-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    .line 377
    :cond_2
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    if-eqz v0, :cond_3

    .line 379
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/ClearManger;->setRun(Z)V

    .line 380
    iput-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    .line 382
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 384
    return-void
.end method

.method public onSelect(I)V
    .locals 3
    .param p1, "selectPosition"    # I

    .prologue
    const/4 v2, 0x1

    .line 472
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/cacheclean/AppSDCacheInfo;

    invoke-virtual {v0, v2}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setSelect(Z)V

    .line 473
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mThumbnailBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iput-boolean v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->selectAll:Z

    .line 477
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mCheckBt:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02022e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanSDAppAdapter;->notifyDataSetChanged()V

    .line 481
    :cond_1
    return-void
.end method

.method public setTitleBarTx(ILjava/lang/String;)V
    .locals 5
    .param p1, "num"    # I
    .param p2, "size"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 499
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "tip":Ljava/lang/String;
    if-lez p1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->titileBar:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->titileBar:Landroid/widget/TextView;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->titileBar:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 6
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v5, 0xe

    const/16 v4, 0xd

    const/16 v3, 0xc

    const/4 v2, 0x6

    .line 325
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 326
    .local v0, "mes":Landroid/os/Message;
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    move-object v1, p2

    .line 328
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 330
    iput v2, v0, Landroid/os/Message;->what:I

    .line 355
    :cond_0
    :goto_0
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 356
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void

    :cond_1
    move-object v1, p2

    .line 333
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 335
    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 337
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 339
    iput v4, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_3
    move-object v1, p2

    .line 341
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 343
    iput v5, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 346
    :cond_4
    instance-of v1, p2, Lcom/market2345/cacheclean/AppSDCacheInfo;

    if-eqz v1, :cond_5

    .line 348
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 350
    :cond_5
    instance-of v1, p2, Lcom/market2345/cacheclean/BitmapCacheInfo;

    if-eqz v1, :cond_0

    .line 353
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method public updateAppList()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 268
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->getSdCleanList()Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/cacheclean/AppSDCacheInfo;>;"
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 271
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 272
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 274
    :cond_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 276
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->appHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 279
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->botLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;

    if-nez v2, :cond_2

    .line 282
    new-instance v2, Lcom/market2345/cacheclean/CleanSDAppAdapter;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->infoList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, p0}, Lcom/market2345/cacheclean/CleanSDAppAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;

    .line 283
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->listView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;

    invoke-virtual {v2, p0}, Lcom/market2345/cacheclean/CleanSDAppAdapter;->setSelectListener(Lcom/market2345/cacheclean/CleanSDAppAdapter$OnSelcectListener;)V

    .line 314
    :goto_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->isResidualEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 317
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->getTotalNum()I

    move-result v2

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapSize()J

    move-result-wide v4

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanResidual;->getUnloadSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->setTitleBarTx(ILjava/lang/String;)V

    .line 320
    return-void

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mAdapter:Lcom/market2345/cacheclean/CleanSDAppAdapter;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/CleanSDAppAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 294
    :cond_3
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->appHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 297
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->thumbnailRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 299
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->isResidualEnd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 301
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 302
    .local v1, "tip":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mEmptyTx:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    .end local v1    # "tip":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->botLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 309
    :cond_5
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 310
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->botLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSystem()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 245
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapNum()I

    move-result v0

    .line 246
    .local v0, "thumbnailNum":I
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "thumbnailSize":Ljava/lang/String;
    if-lez v0, :cond_0

    .line 249
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->systemHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->thumbnailRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 251
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->thumbnailName:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7f29\u7565\u56fe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u9879"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->thumbnaiSize:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->getTotalNum()I

    move-result v2

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapSize()J

    move-result-wide v4

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanResidual;->getUnloadSize()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/market2345/cacheclean/CleanVestigitalActivity;->setTitleBarTx(ILjava/lang/String;)V

    .line 261
    return-void

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->systemHeader:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanVestigitalActivity;->thumbnailRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
