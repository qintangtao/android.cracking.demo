.class public Lcom/market2345/cacheclean/CleanApkActivity;
.super Landroid/app/Activity;
.source "CleanApkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# instance fields
.field private apkList:Landroid/widget/ListView;

.field private botLayout:Landroid/widget/LinearLayout;

.field private clearBt:Landroid/widget/Button;

.field private dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

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
            "Lcom/market2345/cacheclean/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ivBack:Landroid/widget/ImageView;

.field private mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mEmpty:Landroid/widget/LinearLayout;

.field private mEmptyTx:Landroid/widget/TextView;

.field private mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

.field private res:Landroid/content/res/Resources;

.field private selectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private titileBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Lcom/market2345/cacheclean/CleanApkActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanApkActivity$1;-><init>(Lcom/market2345/cacheclean/CleanApkActivity;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanApkActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/CleanApkActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanApkActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->format:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/cacheclean/CleanApkActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanApkActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/cacheclean/CleanApkActivity;)Lcom/market2345/cacheclean/CleanApkAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanApkActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/cacheclean/CleanApkActivity;)Lcom/market2345/cacheclean/ScanApkBigFile;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanApkActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanApkActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->apkList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanApkActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->titileBar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanApkActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mEmpty:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanApkActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanApkActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mEmptyTx:Landroid/widget/TextView;

    return-object v0
.end method

.method private showDelDialog(Lcom/market2345/cacheclean/ApkInfo;I)V
    .locals 5
    .param p1, "apk"    # Lcom/market2345/cacheclean/ApkInfo;
    .param p2, "pos"    # I

    .prologue
    .line 284
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    if-nez v2, :cond_0

    .line 286
    new-instance v2, Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-direct {v2, p0}, Lcom/market2345/cacheclean/CleanAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/CleanAlertDialog;->show()V

    .line 289
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanApkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/market2345/cacheclean/CleanAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/market2345/cacheclean/ApkInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " V:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/market2345/cacheclean/ApkInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity;->res:Landroid/content/res/Resources;

    const v4, 0x7f0b00bd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/market2345/cacheclean/ApkInfo;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "size":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-virtual {v2, v0}, Lcom/market2345/cacheclean/CleanAlertDialog;->setContent(Ljava/lang/String;)V

    .line 293
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity;->res:Landroid/content/res/Resources;

    const v4, 0x7f0b00d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/market2345/cacheclean/CleanAlertDialog;->setCancelButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;)V

    .line 294
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity;->res:Landroid/content/res/Resources;

    const v4, 0x7f0b00d6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/market2345/cacheclean/CleanApkActivity$2;

    invoke-direct {v4, p0, p1, v1}, Lcom/market2345/cacheclean/CleanApkActivity$2;-><init>(Lcom/market2345/cacheclean/CleanApkActivity;Lcom/market2345/cacheclean/ApkInfo;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/market2345/cacheclean/CleanAlertDialog;->setOKButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;)V

    .line 324
    return-void
.end method

.method private showInstallDialog(Lcom/market2345/cacheclean/ApkInfo;)V
    .locals 5
    .param p1, "apk"    # Lcom/market2345/cacheclean/ApkInfo;

    .prologue
    .line 328
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    if-nez v2, :cond_0

    .line 330
    new-instance v2, Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-direct {v2, p0}, Lcom/market2345/cacheclean/CleanAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    .line 332
    :cond_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/CleanAlertDialog;->show()V

    .line 333
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanApkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/market2345/cacheclean/CleanAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity;->res:Landroid/content/res/Resources;

    const v4, 0x7f0b00c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/market2345/cacheclean/ApkInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " V:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/market2345/cacheclean/ApkInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/market2345/cacheclean/ApkInfo;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v1

    .line 336
    .local v1, "size":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-virtual {v2, v0}, Lcom/market2345/cacheclean/CleanAlertDialog;->setContent(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity;->res:Landroid/content/res/Resources;

    const v4, 0x7f0b00d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/market2345/cacheclean/CleanAlertDialog;->setCancelButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;)V

    .line 338
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity;->res:Landroid/content/res/Resources;

    const v4, 0x7f0b00c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/market2345/cacheclean/CleanApkActivity$3;

    invoke-direct {v4, p0, p1}, Lcom/market2345/cacheclean/CleanApkActivity$3;-><init>(Lcom/market2345/cacheclean/CleanApkActivity;Lcom/market2345/cacheclean/ApkInfo;)V

    invoke-virtual {v2, v3, v4}, Lcom/market2345/cacheclean/CleanAlertDialog;->setOKButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;)V

    .line 348
    return-void
.end method


# virtual methods
.method public changeState(Z)V
    .locals 2
    .param p1, "statet"    # Z

    .prologue
    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {v1, p1}, Lcom/market2345/cacheclean/ApkInfo;->setSelect(Z)V

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_0
    return-void
.end method

.method public delApkFile(Lcom/market2345/cacheclean/ApkInfo;)V
    .locals 8
    .param p1, "apk"    # Lcom/market2345/cacheclean/ApkInfo;

    .prologue
    .line 352
    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p1}, Lcom/market2345/cacheclean/ApkInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 358
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 361
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 362
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanApkBigFile;->getApkList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 363
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->getApkNum()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->setApkNum(I)V

    .line 364
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->getAkpToatalSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/market2345/cacheclean/ApkInfo;->getSize()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/market2345/cacheclean/ScanApkBigFile;->setAkpToatalSize(J)V

    .line 366
    invoke-static {p0}, Lcom/market2345/cacheclean/Util;->setClearDate(Landroid/content/Context;)V

    .line 367
    invoke-virtual {p1}, Lcom/market2345/cacheclean/ApkInfo;->getSize()J

    move-result-wide v2

    const-wide/32 v4, 0xa00000

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 369
    invoke-virtual {p0, p1}, Lcom/market2345/cacheclean/CleanApkActivity;->synchronismData(Lcom/market2345/cacheclean/ApkInfo;)V

    .line 374
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public initUI()V
    .locals 2

    .prologue
    .line 102
    const v0, 0x7f09019b

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->titileBar:Landroid/widget/TextView;

    .line 103
    const v0, 0x7f0901a0

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    const v0, 0x7f09019e

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->apkList:Landroid/widget/ListView;

    .line 106
    const v0, 0x7f09019c

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mEmpty:Landroid/widget/LinearLayout;

    .line 107
    const v0, 0x7f09019d

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mEmptyTx:Landroid/widget/TextView;

    .line 108
    const v0, 0x7f09019a

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->ivBack:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f09019f

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->botLayout:Landroid/widget/LinearLayout;

    .line 111
    const v0, 0x7f0901a1

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 112
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void
.end method

.method public onCancel(I)V
    .locals 3
    .param p1, "selectPosition"    # I

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {v0, v2}, Lcom/market2345/cacheclean/ApkInfo;->setSelect(Z)V

    .line 456
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 457
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanApkAdapter;->notifyDataSetChanged()V

    .line 462
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 403
    if-eqz p2, :cond_1

    .line 405
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 408
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 409
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->changeState(Z)V

    .line 410
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanApkAdapter;->notifyDataSetChanged()V

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 421
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->changeState(Z)V

    .line 423
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanApkAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 217
    .local v1, "id":I
    const v7, 0x7f09019a

    if-ne v1, v7, :cond_1

    .line 219
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanApkActivity;->finish()V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const v7, 0x7f0901a0

    if-ne v1, v7, :cond_0

    .line 223
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 226
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setEnabled(Z)V

    .line 227
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanApkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b00d0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 229
    .local v2, "num":I
    const-wide/16 v4, 0x0

    .line 230
    .local v4, "selectSize":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 232
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {v7}, Lcom/market2345/cacheclean/ApkInfo;->getSize()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 233
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {p0, v7}, Lcom/market2345/cacheclean/CleanApkActivity;->delApkFile(Lcom/market2345/cacheclean/ApkInfo;)V

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_2
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->format:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 236
    .local v6, "toast":Ljava/lang/String;
    invoke-static {p0, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 237
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 238
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanApkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 242
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

    invoke-virtual {v7}, Lcom/market2345/cacheclean/CleanApkAdapter;->notifyDataSetChanged()V

    .line 243
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v7}, Lcom/market2345/cacheclean/ScanApkBigFile;->getApkNum()I

    move-result v7

    iget-object v8, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v8}, Lcom/market2345/cacheclean/ScanApkBigFile;->getAkpToatalSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/market2345/cacheclean/CleanApkActivity;->setTitleBarTx(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 247
    :cond_3
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->apkList:Landroid/widget/ListView;

    invoke-virtual {v7, v11}, Landroid/widget/ListView;->setVisibility(I)V

    .line 248
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->titileBar:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->botLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 251
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->res:Landroid/content/res/Resources;

    const v8, 0x7f0b00bc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "tip":Ljava/lang/String;
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mEmptyTx:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 258
    .end local v0    # "i":I
    .end local v2    # "num":I
    .end local v3    # "tip":Ljava/lang/String;
    .end local v4    # "selectSize":J
    .end local v6    # "toast":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanApkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0042

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {p0, v7, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f03002b

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->setContentView(I)V

    .line 92
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanApkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->res:Landroid/content/res/Resources;

    .line 93
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b00be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->format:Ljava/lang/String;

    .line 94
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanApkActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->get(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    .line 95
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v0, p0}, Lcom/market2345/cacheclean/ScanApkBigFile;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 96
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanApkActivity;->initUI()V

    .line 97
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanApkActivity;->updateAppList()V

    .line 98
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v0, p0}, Lcom/market2345/cacheclean/ScanApkBigFile;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->changeState(Z)V

    .line 195
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    iput-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    iput-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanAlertDialog;->dismiss()V

    .line 207
    iput-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->dialog:Lcom/market2345/cacheclean/CleanAlertDialog;

    .line 210
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 211
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/cacheclean/ApkInfo;

    .line 269
    .local v0, "apk":Lcom/market2345/cacheclean/ApkInfo;
    invoke-virtual {v0}, Lcom/market2345/cacheclean/ApkInfo;->getInstalled()I

    move-result v1

    .line 271
    .local v1, "apktype":I
    sget v2, Lcom/market2345/cacheclean/ScanApkBigFile;->UNINSTALLED:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/market2345/cacheclean/ScanApkBigFile;->INSTALLED_UPDATE:I

    if-ne v1, v2, :cond_1

    .line 273
    :cond_0
    invoke-direct {p0, v0}, Lcom/market2345/cacheclean/CleanApkActivity;->showInstallDialog(Lcom/market2345/cacheclean/ApkInfo;)V

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-direct {p0, v0, p3}, Lcom/market2345/cacheclean/CleanApkActivity;->showDelDialog(Lcom/market2345/cacheclean/ApkInfo;I)V

    goto :goto_0
.end method

.method public onSelect(I)V
    .locals 3
    .param p1, "selectPosition"    # I

    .prologue
    const/4 v2, 0x1

    .line 442
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/cacheclean/ApkInfo;

    invoke-virtual {v0, v2}, Lcom/market2345/cacheclean/ApkInfo;->setSelect(Z)V

    .line 443
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 446
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanApkAdapter;->notifyDataSetChanged()V

    .line 450
    return-void
.end method

.method public setTitleBarTx(ILjava/lang/String;)V
    .locals 5
    .param p1, "num"    # I
    .param p2, "size"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 466
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanApkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 467
    .local v0, "tip":Ljava/lang/String;
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->titileBar:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->titileBar:Landroid/widget/TextView;

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

    .line 469
    return-void
.end method

.method public synchronismData(Lcom/market2345/cacheclean/ApkInfo;)V
    .locals 10
    .param p1, "apk"    # Lcom/market2345/cacheclean/ApkInfo;

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/market2345/cacheclean/ApkInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 380
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->getBigList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 381
    .local v0, "bigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/cacheclean/BigFileInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 384
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 386
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/cacheclean/BigFileInfo;

    .line 387
    .local v2, "item":Lcom/market2345/cacheclean/BigFileInfo;
    invoke-virtual {v2}, Lcom/market2345/cacheclean/BigFileInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 389
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 390
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v5}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileNum()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/market2345/cacheclean/ScanApkBigFile;->setFileNum(I)V

    .line 391
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v5}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileTotalSize()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/market2345/cacheclean/BigFileInfo;->getSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lcom/market2345/cacheclean/ScanApkBigFile;->setFileTotalSize(J)V

    .line 397
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/market2345/cacheclean/BigFileInfo;
    :cond_0
    return-void

    .line 384
    .restart local v1    # "i":I
    .restart local v2    # "item":Lcom/market2345/cacheclean/BigFileInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 4
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x9

    const/16 v2, 0x8

    .line 119
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 120
    .local v0, "mes":Landroid/os/Message;
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 122
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 124
    iput v2, v0, Landroid/os/Message;->what:I

    .line 131
    :cond_0
    :goto_0
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void

    :cond_1
    move-object v1, p2

    .line 126
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 128
    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method public updateAppList()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 140
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanApkBigFile;->getApkList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 141
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/cacheclean/ApkInfo;>;"
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 144
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 148
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->apkList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 149
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->botLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

    if-nez v2, :cond_2

    .line 153
    new-instance v2, Lcom/market2345/cacheclean/CleanApkAdapter;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity;->infoList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, p0}, Lcom/market2345/cacheclean/CleanApkAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

    .line 154
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->apkList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

    invoke-virtual {v2, p0}, Lcom/market2345/cacheclean/CleanApkAdapter;->setSelectListener(Lcom/market2345/cacheclean/CleanApkAdapter$OnSelcectListener;)V

    .line 156
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->apkList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    :goto_0
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanApkBigFile;->getApkNum()I

    move-result v2

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->getAkpToatalSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/market2345/cacheclean/CleanApkActivity;->setTitleBarTx(ILjava/lang/String;)V

    .line 163
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanApkBigFile;->isEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanApkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0039

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    :cond_1
    :goto_1
    return-void

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mAdapter:Lcom/market2345/cacheclean/CleanApkAdapter;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/CleanApkAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 172
    :cond_3
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanApkBigFile;->isEnd()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->titileBar:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->apkList:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 176
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->res:Landroid/content/res/Resources;

    const v3, 0x7f0b00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "tip":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->mEmptyTx:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanApkActivity;->botLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
