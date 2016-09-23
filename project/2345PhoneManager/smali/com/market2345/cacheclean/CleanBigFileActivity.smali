.class public Lcom/market2345/cacheclean/CleanBigFileActivity;
.super Landroid/app/Activity;
.source "CleanBigFileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# instance fields
.field private bigFileList:Landroid/widget/ListView;

.field private botLayout:Landroid/widget/LinearLayout;

.field private clearBt:Landroid/widget/Button;

.field private dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

.field private dialog:Lcom/market2345/cacheclean/CleanBigFileDialog;

.field private format:Ljava/lang/String;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private ignoreBt:Landroid/widget/Button;

.field private infoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/BigFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ivBack:Landroid/widget/ImageView;

.field private mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

.field private mEmpty:Landroid/widget/LinearLayout;

.field private mEmptyTx:Landroid/widget/TextView;

.field private mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

.field private queryIgnoreTx:Landroid/widget/TextView;

.field private res:Landroid/content/res/Resources;

.field private selectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/BigFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private titileBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Lcom/market2345/cacheclean/CleanBigFileActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanBigFileActivity$1;-><init>(Lcom/market2345/cacheclean/CleanBigFileActivity;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/CleanBigFileActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->format:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/cacheclean/CleanBigFileActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/cacheclean/CleanBigFileActivity;)Lcom/market2345/cacheclean/CleanBigFileAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/cacheclean/CleanBigFileActivity;)Lcom/market2345/cacheclean/ScanApkBigFile;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->bigFileList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->titileBar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmpty:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/cacheclean/CleanBigFileActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanBigFileActivity;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmptyTx:Landroid/widget/TextView;

    return-object v0
.end method

.method private showDialog(Lcom/market2345/cacheclean/BigFileInfo;I)V
    .locals 4
    .param p1, "file"    # Lcom/market2345/cacheclean/BigFileInfo;
    .param p2, "pos"    # I

    .prologue
    .line 387
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dialog:Lcom/market2345/cacheclean/CleanBigFileDialog;

    if-nez v1, :cond_0

    .line 389
    new-instance v1, Lcom/market2345/cacheclean/CleanBigFileDialog;

    invoke-direct {v1, p0}, Lcom/market2345/cacheclean/CleanBigFileDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dialog:Lcom/market2345/cacheclean/CleanBigFileDialog;

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dialog:Lcom/market2345/cacheclean/CleanBigFileDialog;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanBigFileDialog;->show()V

    .line 392
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dialog:Lcom/market2345/cacheclean/CleanBigFileDialog;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/cacheclean/CleanBigFileDialog;->setTitle(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dialog:Lcom/market2345/cacheclean/CleanBigFileDialog;

    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/cacheclean/CleanBigFileDialog;->setName(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "size":Ljava/lang/String;
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dialog:Lcom/market2345/cacheclean/CleanBigFileDialog;

    invoke-virtual {v1, v0}, Lcom/market2345/cacheclean/CleanBigFileDialog;->setSize(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dialog:Lcom/market2345/cacheclean/CleanBigFileDialog;

    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/cacheclean/CleanBigFileDialog;->setPosition(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dialog:Lcom/market2345/cacheclean/CleanBigFileDialog;

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->res:Landroid/content/res/Resources;

    const v3, 0x7f0b00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/market2345/cacheclean/CleanBigFileDialog;->setCancelButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;)V

    .line 398
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dialog:Lcom/market2345/cacheclean/CleanBigFileDialog;

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->res:Landroid/content/res/Resources;

    const v3, 0x7f0b00d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/market2345/cacheclean/CleanBigFileActivity$2;

    invoke-direct {v3, p0, p1, v0}, Lcom/market2345/cacheclean/CleanBigFileActivity$2;-><init>(Lcom/market2345/cacheclean/CleanBigFileActivity;Lcom/market2345/cacheclean/BigFileInfo;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/market2345/cacheclean/CleanBigFileDialog;->setOKButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanBigFileDialog$OnClickListener;)V

    .line 428
    return-void
.end method

.method private showTipDialog()V
    .locals 3

    .prologue
    .line 432
    new-instance v0, Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanAlertDialog;-><init>(Landroid/content/Context;)V

    .line 433
    .local v0, "alertDialog":Lcom/market2345/cacheclean/CleanAlertDialog;
    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanAlertDialog;->show()V

    .line 434
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/CleanAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/CleanAlertDialog;->setContent(Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f0b00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/market2345/cacheclean/CleanAlertDialog;->setCancelButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;)V

    .line 437
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f0b0049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/market2345/cacheclean/CleanBigFileActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/market2345/cacheclean/CleanBigFileActivity$3;-><init>(Lcom/market2345/cacheclean/CleanBigFileActivity;Lcom/market2345/cacheclean/CleanAlertDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/market2345/cacheclean/CleanAlertDialog;->setOKButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;)V

    .line 448
    return-void
.end method


# virtual methods
.method public delBigFile(Lcom/market2345/cacheclean/BigFileInfo;)V
    .locals 8
    .param p1, "bigfile"    # Lcom/market2345/cacheclean/BigFileInfo;

    .prologue
    .line 453
    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 460
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 461
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ScanApkBigFile;->getBigList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 462
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileNum()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->setFileNum(I)V

    .line 463
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileTotalSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getSize()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/market2345/cacheclean/ScanApkBigFile;->setFileTotalSize(J)V

    .line 465
    invoke-static {p0}, Lcom/market2345/cacheclean/Util;->setClearDate(Landroid/content/Context;)V

    .line 466
    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->isApkFile()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 468
    invoke-virtual {p0, p1}, Lcom/market2345/cacheclean/CleanBigFileActivity;->synchronismData(Lcom/market2345/cacheclean/BigFileInfo;)V

    .line 472
    :cond_0
    return-void
.end method

.method public delect()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 345
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 347
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 348
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b00d0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 350
    .local v1, "num":I
    const-wide/16 v2, 0x0

    .line 351
    .local v2, "selectSize":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 353
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-virtual {v6}, Lcom/market2345/cacheclean/BigFileInfo;->getSize()J

    move-result-wide v6

    add-long/2addr v2, v6

    .line 354
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-virtual {p0, v6}, Lcom/market2345/cacheclean/CleanBigFileActivity;->delBigFile(Lcom/market2345/cacheclean/BigFileInfo;)V

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 357
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 358
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0039

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 359
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->format:Ljava/lang/String;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 360
    .local v5, "toast":Ljava/lang/String;
    const/16 v6, 0x5dc

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 361
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 363
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    invoke-virtual {v6}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->notifyDataSetChanged()V

    .line 364
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v6}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileNum()I

    move-result v6

    iget-object v7, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v7}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileTotalSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/market2345/cacheclean/CleanBigFileActivity;->setTitleBarTx(ILjava/lang/String;)V

    .line 376
    .end local v0    # "i":I
    .end local v1    # "num":I
    .end local v2    # "selectSize":J
    .end local v5    # "toast":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 368
    .restart local v0    # "i":I
    .restart local v1    # "num":I
    .restart local v2    # "selectSize":J
    .restart local v5    # "toast":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->bigFileList:Landroid/widget/ListView;

    invoke-virtual {v6, v10}, Landroid/widget/ListView;->setVisibility(I)V

    .line 369
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 370
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->botLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->titileBar:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 372
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->res:Landroid/content/res/Resources;

    const v7, 0x7f0b00c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 373
    .local v4, "tip":Ljava/lang/String;
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmptyTx:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public initUI()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    const v0, 0x7f0901af

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;

    .line 106
    const v0, 0x7f0901b0

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->ignoreBt:Landroid/widget/Button;

    .line 107
    const v0, 0x7f0901a9

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->queryIgnoreTx:Landroid/widget/TextView;

    .line 108
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 109
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->ignoreBt:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->ignoreBt:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->queryIgnoreTx:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f0901aa

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->titileBar:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0901ad

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->bigFileList:Landroid/widget/ListView;

    .line 115
    const v0, 0x7f0901ab

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmpty:Landroid/widget/LinearLayout;

    .line 116
    const v0, 0x7f0901ac

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmptyTx:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f09019a

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->ivBack:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f0901ae

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->botLayout:Landroid/widget/LinearLayout;

    .line 120
    return-void
.end method

.method public insertFile2DB(Lcom/market2345/cacheclean/BigFileInfo;)V
    .locals 8
    .param p1, "bigfile"    # Lcom/market2345/cacheclean/BigFileInfo;

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 314
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 316
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 318
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 319
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "file_name"

    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v3, "file_path"

    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v3, "file_size"

    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 322
    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->isApkFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 324
    const-string v3, "file_type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    :goto_0
    iget-object v3, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

    invoke-virtual {v3, v2}, Lcom/market2345/cacheclean/ClearDatabaseManager;->insert(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 332
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "######\u63d2\u5165\u6570\u636e\u5e93\u6210\u529f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 333
    iget-object v3, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 334
    iget-object v3, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->getBigList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 335
    iget-object v3, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileNum()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->setFileNum(I)V

    .line 336
    iget-object v3, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileTotalSize()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getSize()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/market2345/cacheclean/ScanApkBigFile;->setFileTotalSize(J)V

    .line 341
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 328
    .restart local v2    # "values":Landroid/content/ContentValues;
    :cond_1
    const-string v3, "file_type"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public insertFileList2DB()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 275
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 277
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->ignoreBt:Landroid/widget/Button;

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 278
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 279
    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 281
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-virtual {p0, v4}, Lcom/market2345/cacheclean/CleanBigFileActivity;->insertFile2DB(Lcom/market2345/cacheclean/BigFileInfo;)V

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_0
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 284
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 286
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->notifyDataSetChanged()V

    .line 287
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileNum()I

    move-result v4

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v5}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileTotalSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/market2345/cacheclean/CleanBigFileActivity;->setTitleBarTx(ILjava/lang/String;)V

    .line 298
    :goto_1
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ClearDatabaseManager;->queryCount()I

    move-result v0

    .line 299
    .local v0, "count":I
    if-lez v0, :cond_3

    .line 301
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->queryIgnoreTx:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "num":I
    :cond_1
    :goto_2
    return-void

    .line 291
    .restart local v1    # "i":I
    .restart local v2    # "num":I
    :cond_2
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->bigFileList:Landroid/widget/ListView;

    invoke-virtual {v4, v8}, Landroid/widget/ListView;->setVisibility(I)V

    .line 292
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->botLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 294
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->titileBar:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->res:Landroid/content/res/Resources;

    const v5, 0x7f0b00c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 296
    .local v3, "tip":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmptyTx:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 305
    .end local v3    # "tip":Ljava/lang/String;
    .restart local v0    # "count":I
    :cond_3
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->queryIgnoreTx:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public onCancel(I)V
    .locals 2
    .param p1, "selectPosition"    # I

    .prologue
    .line 516
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->ignoreBt:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 525
    :goto_0
    return-void

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->ignoreBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 244
    .local v0, "id":I
    const v2, 0x7f09019a

    if-ne v0, v2, :cond_1

    .line 246
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->finish()V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    const v2, 0x7f0901af

    if-ne v0, v2, :cond_3

    .line 250
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 252
    invoke-direct {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->showTipDialog()V

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v3, 0x3e8

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 259
    :cond_3
    const v2, 0x7f0901b0

    if-ne v0, v2, :cond_4

    .line 261
    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->insertFileList2DB()V

    goto :goto_0

    .line 266
    :cond_4
    const v2, 0x7f0901a9

    if-ne v0, v2, :cond_0

    .line 268
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/market2345/cacheclean/CleanIgnoreActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v1, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanBigFileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f03002d

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->setContentView(I)V

    .line 94
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->res:Landroid/content/res/Resources;

    .line 95
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->res:Landroid/content/res/Resources;

    const v1, 0x7f0b00c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->format:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->get(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    .line 97
    new-instance v0, Lcom/market2345/cacheclean/ClearDatabaseManager;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/ClearDatabaseManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

    .line 98
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v0, p0}, Lcom/market2345/cacheclean/ScanApkBigFile;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 99
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->initUI()V

    .line 100
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->updateAppList()V

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v0, p0}, Lcom/market2345/cacheclean/ScanApkBigFile;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 226
    iput-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dialog:Lcom/market2345/cacheclean/CleanBigFileDialog;

    if-eqz v0, :cond_2

    .line 230
    iput-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dialog:Lcom/market2345/cacheclean/CleanBigFileDialog;

    .line 232
    :cond_2
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    iput-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    .line 237
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 238
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
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
    .line 381
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-direct {p0, v0, p3}, Lcom/market2345/cacheclean/CleanBigFileActivity;->showDialog(Lcom/market2345/cacheclean/BigFileInfo;I)V

    .line 383
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 125
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ClearDatabaseManager;->queryCount()I

    move-result v0

    .line 126
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 128
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->queryIgnoreTx:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_0
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->updateAppList()V

    .line 138
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 139
    return-void

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->queryIgnoreTx:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onSelect(I)V
    .locals 2
    .param p1, "selectPosition"    # I

    .prologue
    .line 501
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->selectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->ignoreBt:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 511
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->ignoreBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setTitleBarTx(ILjava/lang/String;)V
    .locals 5
    .param p1, "num"    # I
    .param p2, "size"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 529
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, "tip":Ljava/lang/String;
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->titileBar:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 531
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->titileBar:Landroid/widget/TextView;

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

    .line 532
    return-void
.end method

.method public synchronismData(Lcom/market2345/cacheclean/BigFileInfo;)V
    .locals 10
    .param p1, "bigfile"    # Lcom/market2345/cacheclean/BigFileInfo;

    .prologue
    .line 477
    invoke-virtual {p1}, Lcom/market2345/cacheclean/BigFileInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 478
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->getApkList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 479
    .local v0, "app":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/cacheclean/ApkInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 482
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 484
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/cacheclean/ApkInfo;

    .line 485
    .local v2, "item":Lcom/market2345/cacheclean/ApkInfo;
    invoke-virtual {v2}, Lcom/market2345/cacheclean/ApkInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 487
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 488
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v5}, Lcom/market2345/cacheclean/ScanApkBigFile;->getApkNum()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/market2345/cacheclean/ScanApkBigFile;->setApkNum(I)V

    .line 489
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v5}, Lcom/market2345/cacheclean/ScanApkBigFile;->getAkpToatalSize()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ApkInfo;->getSize()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lcom/market2345/cacheclean/ScanApkBigFile;->setAkpToatalSize(J)V

    .line 496
    .end local v1    # "i":I
    .end local v2    # "item":Lcom/market2345/cacheclean/ApkInfo;
    :cond_0
    return-void

    .line 482
    .restart local v1    # "i":I
    .restart local v2    # "item":Lcom/market2345/cacheclean/ApkInfo;
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

    .line 144
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 145
    .local v0, "mes":Landroid/os/Message;
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, p2

    .line 147
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 149
    iput v2, v0, Landroid/os/Message;->what:I

    .line 156
    :cond_0
    :goto_0
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 157
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    return-void

    :cond_1
    move-object v1, p2

    .line 151
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 153
    iput v3, v0, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method public updateAppList()V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 165
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->getBigList()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 166
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/cacheclean/BigFileInfo;>;"
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 168
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 171
    :cond_0
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 173
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/cacheclean/BigFileInfo;

    .line 175
    .local v1, "info":Lcom/market2345/cacheclean/BigFileInfo;
    invoke-virtual {v1, v5}, Lcom/market2345/cacheclean/BigFileInfo;->setSelect(Z)V

    goto :goto_0

    .line 177
    .end local v1    # "info":Lcom/market2345/cacheclean/BigFileInfo;
    :cond_1
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->bigFileList:Landroid/widget/ListView;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setVisibility(I)V

    .line 178
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->botLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    if-nez v4, :cond_3

    .line 182
    new-instance v4, Lcom/market2345/cacheclean/CleanBigFileAdapter;

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->infoList:Ljava/util/ArrayList;

    invoke-direct {v4, v5, p0}, Lcom/market2345/cacheclean/CleanBigFileAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    .line 183
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    invoke-virtual {v4, p0}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->setSelectListener(Lcom/market2345/cacheclean/CleanBigFileAdapter$OnSelcectListener;)V

    .line 184
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->bigFileList:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 185
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->bigFileList:Landroid/widget/ListView;

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 191
    :goto_1
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileNum()I

    move-result v4

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v5}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileTotalSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/market2345/cacheclean/CleanBigFileActivity;->setTitleBarTx(ILjava/lang/String;)V

    .line 192
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->isEnd()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 194
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanBigFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0039

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->clearBt:Landroid/widget/Button;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 214
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    return-void

    .line 189
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mAdapter:Lcom/market2345/cacheclean/CleanBigFileAdapter;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/CleanBigFileAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 202
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->isEnd()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 204
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->titileBar:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 205
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->bigFileList:Landroid/widget/ListView;

    invoke-virtual {v4, v6}, Landroid/widget/ListView;->setVisibility(I)V

    .line 206
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmpty:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 207
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->res:Landroid/content/res/Resources;

    const v5, 0x7f0b00c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 208
    .local v3, "tip":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->mEmptyTx:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanBigFileActivity;->botLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method
