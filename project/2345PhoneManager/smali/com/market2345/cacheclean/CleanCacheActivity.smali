.class public Lcom/market2345/cacheclean/CleanCacheActivity;
.super Landroid/app/Activity;
.source "CleanCacheActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# static fields
.field private static final CLEAR_FINISH:I = -0x1


# instance fields
.field private botLayout:Landroid/widget/LinearLayout;

.field private cacheClearBt:Landroid/widget/Button;

.field private cacheList:Landroid/widget/ListView;

.field private cacheTotalSize:J

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
            "Lcom/market2345/cacheclean/AppRamCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ivBack:Landroid/widget/ImageView;

.field private mAdapter:Lcom/market2345/cacheclean/CleanRamAppAdapter;

.field private mEmpty:Landroid/widget/LinearLayout;

.field private mEmptyTx:Landroid/widget/TextView;

.field private mScan:Lcom/market2345/cacheclean/ScanResidual;

.field private res:Landroid/content/res/Resources;

.field private sp:Landroid/content/SharedPreferences;

.field private titileBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheTotalSize:J

    .line 66
    new-instance v0, Lcom/market2345/cacheclean/CleanCacheActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanCacheActivity$1;-><init>(Lcom/market2345/cacheclean/CleanCacheActivity;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanCacheActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/CleanCacheActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->format:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/cacheclean/CleanCacheActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheActivity;

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheTotalSize:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheClearBt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->titileBar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->botLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mEmpty:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/cacheclean/CleanCacheActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanCacheActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mEmptyTx:Landroid/widget/TextView;

    return-object v0
.end method

.method private showTipDialog(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 289
    new-instance v0, Lcom/market2345/cacheclean/CleanCacheItmeDialog;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, "alertDialog":Lcom/market2345/cacheclean/CleanCacheItmeDialog;
    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->show()V

    .line 291
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanCacheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->setTitle(Ljava/lang/String;)V

    .line 292
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/market2345/cacheclean/CleanCacheActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/market2345/cacheclean/CleanCacheActivity$2;-><init>(Lcom/market2345/cacheclean/CleanCacheActivity;I)V

    invoke-virtual {v0, v1, v2}, Lcom/market2345/cacheclean/CleanCacheItmeDialog;->setOKButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanCacheItmeDialog$OnClickListener;)V

    .line 308
    return-void
.end method


# virtual methods
.method public goSetting(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 261
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 268
    .local v1, "sdk_int":I
    const/16 v2, 0x9

    if-lt v1, v2, :cond_0

    .line 270
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 271
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/cacheclean/AppRamCacheInfo;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/AppRamCacheInfo;->getPackname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 274
    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheActivity;->startActivity(Landroid/content/Intent;)V

    .line 285
    :goto_0
    return-void

    .line 278
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 279
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v2, "android.intent.category.VOICE_LAUNCH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v3, "pkg"

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/cacheclean/AppRamCacheInfo;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/AppRamCacheInfo;->getPackname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public initUI()V
    .locals 3

    .prologue
    .line 121
    const v0, 0x7f0901c2

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->titileBar:Landroid/widget/TextView;

    .line 122
    const v0, 0x7f0901c7

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheClearBt:Landroid/widget/Button;

    .line 123
    const v0, 0x7f0901c5

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheList:Landroid/widget/ListView;

    .line 124
    const v0, 0x7f0901c3

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mEmpty:Landroid/widget/LinearLayout;

    .line 125
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mEmptyTx:Landroid/widget/TextView;

    .line 126
    const v0, 0x7f09019a

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->ivBack:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheClearBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheClearBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanCacheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheClearBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f0901c6

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->botLayout:Landroid/widget/LinearLayout;

    .line 132
    return-void
.end method

.method public onClick(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 246
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->sp:Landroid/content/SharedPreferences;

    const-string v2, "show"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 247
    .local v0, "tip":Z
    if-eqz v0, :cond_0

    .line 249
    invoke-direct {p0, p1}, Lcom/market2345/cacheclean/CleanCacheActivity;->showTipDialog(I)V

    .line 256
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-virtual {p0, p1}, Lcom/market2345/cacheclean/CleanCacheActivity;->goSetting(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 226
    .local v0, "id":I
    const v1, 0x7f09019a

    if-ne v0, v1, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanCacheActivity;->finish()V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    const v1, 0x7f0901c7

    if-ne v0, v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheClearBt:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 235
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheClearBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanCacheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ScanResidual;->getRamCacheSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheTotalSize:J

    .line 237
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    invoke-virtual {v1, v4}, Lcom/market2345/cacheclean/ClearManger;->CleanAllCache(Z)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 108
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanCacheActivity;->setContentView(I)V

    .line 109
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanCacheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->res:Landroid/content/res/Resources;

    .line 110
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->format:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanCacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/cacheclean/ScanResidual;->get(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    .line 112
    new-instance v0, Lcom/market2345/cacheclean/ClearManger;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanCacheActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/cacheclean/ClearManger;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    .line 113
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0, p0}, Lcom/market2345/cacheclean/ScanResidual;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 114
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->sp:Landroid/content/SharedPreferences;

    .line 115
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanCacheActivity;->initUI()V

    .line 116
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanCacheActivity;->updateAppList()V

    .line 117
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0, p0}, Lcom/market2345/cacheclean/ScanResidual;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 215
    iput-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    .line 217
    :cond_1
    iput-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    .line 218
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheTotalSize:J

    .line 219
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 220
    return-void
.end method

.method public setTitleBarTx(ILjava/lang/String;)V
    .locals 5
    .param p1, "num"    # I
    .param p2, "size"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanCacheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "tip":Ljava/lang/String;
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->titileBar:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->titileBar:Landroid/widget/TextView;

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

    .line 315
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0xb

    const/4 v2, 0x2

    .line 137
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 138
    .local v0, "mes":Landroid/os/Message;
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_2

    move-object v1, p2

    .line 140
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 142
    iput v2, v0, Landroid/os/Message;->what:I

    .line 154
    :cond_0
    :goto_0
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 156
    return-void

    :cond_1
    move-object v1, p2

    .line 144
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 146
    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 150
    :cond_2
    instance-of v1, p2, Lcom/market2345/cacheclean/AppRamCacheInfo;

    if-eqz v1, :cond_0

    .line 152
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method public updateAppList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 163
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->getRamCleanList()Ljava/util/ArrayList;

    move-result-object v0

    .line 164
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/cacheclean/AppRamCacheInfo;>;"
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 166
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 167
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 171
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheList:Landroid/widget/ListView;

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 172
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->botLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mAdapter:Lcom/market2345/cacheclean/CleanRamAppAdapter;

    if-nez v2, :cond_2

    .line 176
    new-instance v2, Lcom/market2345/cacheclean/CleanRamAppAdapter;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->infoList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, p0}, Lcom/market2345/cacheclean/CleanRamAppAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mAdapter:Lcom/market2345/cacheclean/CleanRamAppAdapter;

    .line 177
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mAdapter:Lcom/market2345/cacheclean/CleanRamAppAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 178
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mAdapter:Lcom/market2345/cacheclean/CleanRamAppAdapter;

    invoke-virtual {v2, p0}, Lcom/market2345/cacheclean/CleanRamAppAdapter;->setListener(Lcom/market2345/cacheclean/CleanRamAppAdapter$OnTextViewClickListener;)V

    .line 184
    :goto_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->getRamCacheNum()I

    move-result v2

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanResidual;->getRamCacheSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/market2345/cacheclean/CleanCacheActivity;->setTitleBarTx(ILjava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->isCacheEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheClearBt:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 188
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheClearBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanCacheActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 203
    :cond_1
    :goto_1
    return-void

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mAdapter:Lcom/market2345/cacheclean/CleanRamAppAdapter;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/CleanRamAppAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 193
    :cond_3
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanResidual;->isCacheEnd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->res:Landroid/content/res/Resources;

    const v3, 0x7f0b00ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "tip":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mEmptyTx:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    .end local v1    # "tip":Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->titileBar:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 199
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->cacheList:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 200
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanCacheActivity;->botLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
