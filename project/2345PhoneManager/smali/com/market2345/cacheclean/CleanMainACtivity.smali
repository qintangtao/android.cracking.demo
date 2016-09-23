.class public Lcom/market2345/cacheclean/CleanMainACtivity;
.super Landroid/app/Activity;
.source "CleanMainACtivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;
    }
.end annotation


# static fields
.field public static filePath:Ljava/lang/String;

.field public static lastClear:J

.field public static outPath:Ljava/lang/String;


# instance fields
.field private BAD_SIZE:J

.field private WARN_SIZE:J

.field private ani:Landroid/view/animation/Animation;

.field private apkBotTex:Landroid/widget/TextView;

.field private apkCleanTip:Landroid/widget/TextView;

.field private apkStr:Ljava/lang/String;

.field private apkTopTex:Landroid/widget/TextView;

.field private backBt:Landroid/widget/ImageView;

.field private bigfileBotTex:Landroid/widget/TextView;

.field private bigfileCleanTip:Landroid/widget/TextView;

.field private bigfileStr:Ljava/lang/String;

.field private bigfileTopTex:Landroid/widget/TextView;

.field private cacheStr:Ljava/lang/String;

.field private cacheWarnIv:Landroid/widget/ImageView;

.field private cleanBg:Landroid/widget/RelativeLayout;

.field private cleanBt:Landroid/widget/Button;

.field private clearManger:Lcom/market2345/cacheclean/ClearManger;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private dbPath:Ljava/lang/String;

.field private geFormat:Ljava/lang/String;

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private isNeedRefush:Z

.field private isOnekeyClear:Z

.field private mApkLayout:Landroid/widget/RelativeLayout;

.field private mBigFileLayout:Landroid/widget/RelativeLayout;

.field private mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

.field private mRamCacheLayout:Landroid/widget/RelativeLayout;

.field private mResiduallayout:Landroid/widget/RelativeLayout;

.field private mScan:Lcom/market2345/cacheclean/ScanResidual;

.field private mSuffix:Landroid/widget/TextView;

.field private mTotal:Landroid/widget/TextView;

.field private mview:Landroid/view/View;

.field private packageTex:Landroid/widget/TextView;

.field private ramCacheBotTex:Landroid/widget/TextView;

.field private ramCacheTopTex:Landroid/widget/TextView;

.field private res:Landroid/content/res/Resources;

.field private residualStr:Ljava/lang/String;

.field private residualTopTex:Landroid/widget/TextView;

.field private residualWarnIv:Landroid/widget/ImageView;

.field private residualbotTex:Landroid/widget/TextView;

.field private scanHigh:I

.field private scanWidth:I

.field private screenWidth:I

.field private spaceFormat:Ljava/lang/String;

.field public toClear:J

.field private wraper:Landroid/widget/RelativeLayout;

.field private xiangFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    const-wide/32 v0, 0x1400000

    iput-wide v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->WARN_SIZE:J

    .line 90
    const-wide/32 v0, 0x20000000

    iput-wide v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->BAD_SIZE:J

    .line 107
    iput-boolean v2, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->isNeedRefush:Z

    .line 110
    iput-boolean v2, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->isOnekeyClear:Z

    .line 132
    new-instance v0, Lcom/market2345/cacheclean/CleanMainACtivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanMainACtivity$1;-><init>(Lcom/market2345/cacheclean/CleanMainACtivity;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->handler:Landroid/os/Handler;

    .line 793
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanResidual;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ani:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkBotTex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/market2345/cacheclean/CleanMainACtivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileTopTex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileBotTex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ClearManger;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/market2345/cacheclean/CleanMainACtivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->isOnekeyClear:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/market2345/cacheclean/CleanMainACtivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->isOnekeyClear:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/market2345/cacheclean/CleanMainACtivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->scanWidth:I

    return v0
.end method

.method static synthetic access$1602(Lcom/market2345/cacheclean/CleanMainACtivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->scanWidth:I

    return p1
.end method

.method static synthetic access$1700(Lcom/market2345/cacheclean/CleanMainACtivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->scanHigh:I

    return v0
.end method

.method static synthetic access$1702(Lcom/market2345/cacheclean/CleanMainACtivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->scanHigh:I

    return p1
.end method

.method static synthetic access$1800(Lcom/market2345/cacheclean/CleanMainACtivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->screenWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/market2345/cacheclean/CleanMainACtivity;)Lcom/market2345/cacheclean/ScanApkBigFile;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mview:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkCleanTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileCleanTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/cacheclean/CleanMainACtivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkTopTex:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/cacheclean/CleanMainACtivity;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/CleanMainACtivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    return-object v0
.end method

.method public static copyAssetData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "assetsFileName"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 734
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 735
    .local v3, "inputStream":Ljava/io/InputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 736
    .local v4, "output":Ljava/io/FileOutputStream;
    const/16 v6, 0x2800

    new-array v0, v6, [B

    .line 737
    .local v0, "buf":[B
    const/4 v1, 0x0

    .line 738
    .local v1, "count":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    .line 740
    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 745
    .end local v0    # "buf":[B
    .end local v1    # "count":I
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 747
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 750
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return v5

    .line 742
    .restart local v0    # "buf":[B
    .restart local v1    # "count":I
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/FileOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 743
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 750
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private showDialog()V
    .locals 4

    .prologue
    const v3, 0x7f0b00d5

    .line 682
    new-instance v0, Lcom/market2345/cacheclean/CleanAlertDialog;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanAlertDialog;-><init>(Landroid/content/Context;)V

    .line 683
    .local v0, "dialog":Lcom/market2345/cacheclean/CleanAlertDialog;
    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanAlertDialog;->show()V

    .line 684
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/CleanAlertDialog;->setTitle(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/CleanAlertDialog;->setContent(Ljava/lang/String;)V

    .line 686
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f0b00d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/market2345/cacheclean/CleanAlertDialog;->setCancelButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;)V

    .line 687
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/market2345/cacheclean/CleanMainACtivity$2;

    invoke-direct {v2, p0}, Lcom/market2345/cacheclean/CleanMainACtivity$2;-><init>(Lcom/market2345/cacheclean/CleanMainACtivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/market2345/cacheclean/CleanAlertDialog;->setOKButton(Ljava/lang/String;Lcom/market2345/cacheclean/CleanAlertDialog$OnClickListener;)V

    .line 698
    return-void
.end method


# virtual methods
.method public getScanWidth(Landroid/view/View;)V
    .locals 2
    .param p1, "iv"    # Landroid/view/View;

    .prologue
    .line 418
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 419
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 420
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->screenWidth:I

    .line 421
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 829
    sget-wide v2, Lcom/market2345/cacheclean/CleanMainACtivity;->lastClear:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 831
    sget-wide v2, Lcom/market2345/cacheclean/CleanMainACtivity;->lastClear:J

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, "clearSize":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/market2345/cacheclean/Util;->setClearSize(Landroid/content/Context;Ljava/lang/String;)V

    .line 833
    sput-wide v4, Lcom/market2345/cacheclean/CleanMainACtivity;->lastClear:J

    .line 835
    .end local v0    # "clearSize":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 836
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-wide/16 v8, 0x0

    .line 597
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 598
    .local v1, "id":I
    sparse-switch v1, :sswitch_data_0

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 601
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/market2345/cacheclean/CleanVestigitalActivity;

    invoke-direct {v2, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 602
    .local v2, "mIntent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/market2345/cacheclean/CleanMainACtivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 605
    .end local v2    # "mIntent":Landroid/content/Intent;
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/market2345/cacheclean/CleanCacheActivity;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    .local v3, "mIntent0":Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/market2345/cacheclean/CleanMainACtivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 610
    .end local v3    # "mIntent0":Landroid/content/Intent;
    :sswitch_2
    sget-object v6, Lcom/market2345/cacheclean/CleanMainACtivity;->filePath:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 612
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v6}, Lcom/market2345/cacheclean/ScanApkBigFile;->isStart()Z

    move-result v6

    if-nez v6, :cond_1

    .line 614
    invoke-direct {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->showDialog()V

    goto :goto_0

    .line 618
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-class v6, Lcom/market2345/cacheclean/CleanApkActivity;

    invoke-direct {v4, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    .local v4, "mIntent1":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/market2345/cacheclean/CleanMainACtivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 625
    .end local v4    # "mIntent1":Landroid/content/Intent;
    :sswitch_3
    sget-object v6, Lcom/market2345/cacheclean/CleanMainACtivity;->filePath:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 627
    iget-object v6, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v6}, Lcom/market2345/cacheclean/ScanApkBigFile;->isStart()Z

    move-result v6

    if-nez v6, :cond_2

    .line 629
    invoke-direct {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->showDialog()V

    goto :goto_0

    .line 633
    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/market2345/cacheclean/CleanBigFileActivity;

    invoke-direct {v5, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 634
    .local v5, "mIntent2":Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/market2345/cacheclean/CleanMainACtivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 640
    .end local v5    # "mIntent2":Landroid/content/Intent;
    :sswitch_4
    sget-wide v6, Lcom/market2345/cacheclean/CleanMainACtivity;->lastClear:J

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 642
    sget-wide v6, Lcom/market2345/cacheclean/CleanMainACtivity;->lastClear:J

    invoke-static {v6, v7}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "clearSize":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/market2345/cacheclean/Util;->setClearSize(Landroid/content/Context;Ljava/lang/String;)V

    .line 644
    sput-wide v8, Lcom/market2345/cacheclean/CleanMainACtivity;->lastClear:J

    .line 646
    .end local v0    # "clearSize":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->finish()V

    goto :goto_0

    .line 650
    :sswitch_5
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->oneKeyClear()V

    goto :goto_0

    .line 598
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900bb -> :sswitch_4
        0x7f0900c1 -> :sswitch_1
        0x7f0900c6 -> :sswitch_0
        0x7f0900cb -> :sswitch_2
        0x7f0900d1 -> :sswitch_3
        0x7f0900d7 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 293
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 294
    const v1, 0x7f03000f

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->setContentView(I)V

    .line 295
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    .line 296
    const v1, 0x7f0900b9

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBg:Landroid/widget/RelativeLayout;

    .line 297
    const v1, 0x7f0900c0

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mview:Landroid/view/View;

    .line 298
    const v1, 0x7f0900bd

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mTotal:Landroid/widget/TextView;

    .line 299
    const v1, 0x7f0900c4

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ramCacheTopTex:Landroid/widget/TextView;

    .line 300
    const v1, 0x7f0900c5

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ramCacheBotTex:Landroid/widget/TextView;

    .line 302
    const v1, 0x7f0900c9

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualTopTex:Landroid/widget/TextView;

    .line 303
    const v1, 0x7f0900ca

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualbotTex:Landroid/widget/TextView;

    .line 304
    const v1, 0x7f0900be

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mSuffix:Landroid/widget/TextView;

    .line 305
    const v1, 0x7f0900bf

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->packageTex:Landroid/widget/TextView;

    .line 307
    const v1, 0x7f0900cf

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkTopTex:Landroid/widget/TextView;

    .line 308
    const v1, 0x7f0900d0

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkBotTex:Landroid/widget/TextView;

    .line 309
    const v1, 0x7f0900d5

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileTopTex:Landroid/widget/TextView;

    .line 310
    const v1, 0x7f0900d6

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileBotTex:Landroid/widget/TextView;

    .line 312
    const v1, 0x7f0900ce

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkCleanTip:Landroid/widget/TextView;

    .line 313
    const v1, 0x7f0900d4

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileCleanTip:Landroid/widget/TextView;

    .line 315
    const v1, 0x7f0900bc

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->wraper:Landroid/widget/RelativeLayout;

    .line 316
    const v1, 0x7f0900c6

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mResiduallayout:Landroid/widget/RelativeLayout;

    .line 317
    const v1, 0x7f0900c1

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mRamCacheLayout:Landroid/widget/RelativeLayout;

    .line 318
    const v1, 0x7f0900cb

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mApkLayout:Landroid/widget/RelativeLayout;

    .line 319
    const v1, 0x7f0900d1

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mBigFileLayout:Landroid/widget/RelativeLayout;

    .line 320
    const v1, 0x7f0900d7

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;

    .line 321
    const v1, 0x7f0900bb

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->backBt:Landroid/widget/ImageView;

    .line 322
    const v1, 0x7f0900c8

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualWarnIv:Landroid/widget/ImageView;

    .line 323
    const v1, 0x7f0900c3

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cacheWarnIv:Landroid/widget/ImageView;

    .line 325
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mResiduallayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mRamCacheLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mApkLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mBigFileLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->backBt:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f0b00e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->spaceFormat:Ljava/lang/String;

    .line 333
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f0b00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->geFormat:Ljava/lang/String;

    .line 334
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f0b00d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->xiangFormat:Ljava/lang/String;

    .line 335
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f0b00bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkStr:Ljava/lang/String;

    .line 336
    const v1, 0x7f0b00c8

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileStr:Ljava/lang/String;

    .line 337
    const v1, 0x7f0b00c3

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cacheStr:Ljava/lang/String;

    .line 338
    const v1, 0x7f0b00e0

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualStr:Ljava/lang/String;

    .line 340
    new-instance v1, Lcom/market2345/cacheclean/ClearManger;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/market2345/cacheclean/ClearManger;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    .line 341
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->dbPath:Ljava/lang/String;

    .line 342
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->dbPath:Ljava/lang/String;

    const-string v2, "clearpath.db"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    const-string v1, "clearpath.db"

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->dbPath:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/market2345/cacheclean/CleanMainACtivity;->copyAssetData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 348
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->dbPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "clearpath.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 349
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/market2345/cacheclean/CleanMainACtivity;->filePath:Ljava/lang/String;

    .line 353
    :cond_1
    invoke-static {p0}, Lcom/market2345/cacheclean/Util;->getOutSDPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/market2345/cacheclean/CleanMainACtivity;->outPath:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/cacheclean/ScanResidual;->get(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    .line 355
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    iget-object v2, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v2}, Lcom/market2345/cacheclean/ScanResidual;->setSQLiteDB(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 356
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v1, p0}, Lcom/market2345/cacheclean/ScanResidual;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 357
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ScanResidual;->startScan()V

    .line 358
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/cacheclean/ScanApkBigFile;->get(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanApkBigFile;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    .line 361
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v1, p0}, Lcom/market2345/cacheclean/ScanApkBigFile;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 362
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mview:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity;->scanAnimation(Landroid/view/View;)V

    .line 363
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 703
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->deleteObservers()V

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/ScanResidual;->setRun(Z)V

    .line 711
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->close()V

    .line 712
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    if-eqz v0, :cond_1

    .line 713
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->deleteObservers()V

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/ScanApkBigFile;->setRun(Z)V

    .line 715
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->close()V

    .line 716
    iput-boolean v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->isNeedRefush:Z

    .line 717
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    if-eqz v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/ClearManger;->setRun(Z)V

    .line 720
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    .line 722
    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->toClear:J

    .line 723
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 724
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const v3, 0x7f020234

    .line 369
    iget-boolean v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->isNeedRefush:Z

    if-eqz v0, :cond_4

    .line 372
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateCacheLayout()V

    .line 373
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->getRamCacheNum()I

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ramCacheTopTex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cacheStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ramCacheBotTex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cacheWarnIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateVestigitalLayout()V

    .line 382
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->getUnloadNum()I

    move-result v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapNum()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualTopTex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualbotTex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualWarnIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->updateDeepLayout()V

    .line 390
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->getApkNum()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkTopTex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkBotTex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f0b00dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :cond_2
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileNum()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanApkBigFile;->isEnd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 398
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileTopTex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileBotTex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v2, 0x7f0b00de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    :cond_3
    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->upWraper()V

    .line 404
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->isNeedRefush:Z

    .line 405
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 406
    return-void
.end method

.method public oneKeyClear()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const v3, 0x7f0b00d0

    const/4 v2, 0x1

    .line 657
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->getTotalSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 659
    iput-boolean v2, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->isOnekeyClear:Z

    .line 660
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 661
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBt:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->packageTex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 663
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->getRamCacheSize()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    invoke-virtual {v0, v2}, Lcom/market2345/cacheclean/ClearManger;->CleanAllCache(Z)V

    .line 678
    :goto_0
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->clearManger:Lcom/market2345/cacheclean/ClearManger;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ScanResidual;->getSdCleanList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/market2345/cacheclean/ClearManger;->cleanSD(ZLjava/util/ArrayList;)V

    goto :goto_0

    .line 674
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/applist/activity/WonderfulFoundActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "title"

    const-string v2, "\u7cbe\u5f69\u53d1\u73b0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "az_jcfx"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanMainACtivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public scanAnimation(Landroid/view/View;)V
    .locals 2
    .param p1, "iv"    # Landroid/view/View;

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/market2345/cacheclean/CleanMainACtivity;->getScanWidth(Landroid/view/View;)V

    .line 411
    new-instance v0, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;-><init>(Lcom/market2345/cacheclean/CleanMainACtivity;)V

    iput-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ani:Landroid/view/animation/Animation;

    .line 412
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ani:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 413
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ani:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 414
    return-void
.end method

.method public upWraper()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/16 v7, 0x8

    .line 755
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanResidual;->getTotalSize()J

    move-result-wide v2

    .line 757
    .local v2, "totalSize":J
    cmp-long v4, v2, v8

    if-lez v4, :cond_1

    .line 759
    iget-boolean v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->isOnekeyClear:Z

    if-nez v4, :cond_0

    .line 761
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->packageTex:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v6, 0x7f0b00d7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    :goto_0
    return-void

    .line 765
    :cond_0
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->packageTex:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v6, 0x7f0b00d0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 770
    :cond_1
    iget-wide v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->toClear:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_2

    .line 772
    iget-wide v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->toClear:J

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "size":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v5, 0x7f0b00e5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "tip":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->packageTex:Landroid/widget/TextView;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    .end local v0    # "size":Ljava/lang/String;
    .end local v1    # "tip":Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mTotal:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 788
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mSuffix:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 789
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->wraper:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v6, 0x7f020231

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 778
    :cond_2
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanResidual;->isResidualEnd()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v4}, Lcom/market2345/cacheclean/ScanApkBigFile;->isEnd()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 780
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->packageTex:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v6, 0x7f0b00e3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 784
    :cond_3
    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->packageTex:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v6, 0x7f0b00df

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 7
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/4 v3, 0x6

    const/4 v2, 0x2

    .line 442
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 443
    .local v0, "mes":Landroid/os/Message;
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_9

    move-object v1, p2

    .line 445
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 447
    iput v3, v0, Landroid/os/Message;->what:I

    .line 499
    :cond_0
    :goto_0
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 500
    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 501
    return-void

    :cond_1
    move-object v1, p2

    .line 449
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 451
    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_2
    move-object v1, p2

    .line 453
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 455
    iput v4, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_3
    move-object v1, p2

    .line 457
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 459
    iput v5, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_4
    move-object v1, p2

    .line 462
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_5

    .line 464
    const/16 v1, 0xc

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_5
    move-object v1, p2

    .line 467
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 469
    iput v6, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_6
    move-object v1, p2

    .line 471
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_7

    .line 473
    const/16 v1, 0xb

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_7
    move-object v1, p2

    .line 476
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_8

    .line 478
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    :cond_8
    move-object v1, p2

    .line 480
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 482
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 486
    :cond_9
    instance-of v1, p2, Lcom/market2345/cacheclean/AppSDCacheInfo;

    if-eqz v1, :cond_a

    .line 488
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    goto :goto_0

    .line 490
    :cond_a
    instance-of v1, p2, Lcom/market2345/cacheclean/BitmapCacheInfo;

    if-eqz v1, :cond_b

    .line 493
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    goto/16 :goto_0

    .line 495
    :cond_b
    instance-of v1, p2, Lcom/market2345/cacheclean/AppRamCacheInfo;

    if-eqz v1, :cond_0

    .line 497
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    goto/16 :goto_0
.end method

.method public updateCacheLayout()V
    .locals 15

    .prologue
    const v11, 0x7f070017

    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 505
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v8}, Lcom/market2345/cacheclean/ScanResidual;->getTotalSize()J

    move-result-wide v6

    .line 506
    .local v6, "totalSize":J
    invoke-static {v6, v7}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToArr(J)[Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "allSize":[Ljava/lang/String;
    aget-object v4, v0, v13

    .line 508
    .local v4, "num":Ljava/lang/String;
    aget-object v5, v0, v14

    .line 509
    .local v5, "suffix":Ljava/lang/String;
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mTotal:Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mSuffix:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-wide v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->BAD_SIZE:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 514
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 525
    :goto_0
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v8}, Lcom/market2345/cacheclean/ScanResidual;->getRamCacheNum()I

    move-result v1

    .line 526
    .local v1, "cacheNum":I
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v8}, Lcom/market2345/cacheclean/ScanResidual;->getRamCacheSize()J

    move-result-wide v2

    .line 527
    .local v2, "cacheSize":J
    if-lez v1, :cond_2

    .line 529
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ramCacheTopTex:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cacheStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->xiangFormat:Ljava/lang/String;

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ramCacheBotTex:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->spaceFormat:Ljava/lang/String;

    new-array v10, v14, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cacheWarnIv:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v10, 0x7f020235

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 539
    :goto_1
    return-void

    .line 516
    .end local v1    # "cacheNum":I
    .end local v2    # "cacheSize":J
    :cond_0
    iget-wide v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->WARN_SIZE:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 518
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07008f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 522
    :cond_1
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 523
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "dddd"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 535
    .restart local v1    # "cacheNum":I
    .restart local v2    # "cacheSize":J
    :cond_2
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ramCacheTopTex:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cacheStr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ramCacheBotTex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b00db

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cacheWarnIv:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    const v10, 0x7f020234

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public updateDeepLayout()V
    .locals 15

    .prologue
    .line 572
    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v10}, Lcom/market2345/cacheclean/ScanApkBigFile;->getApkNum()I

    move-result v0

    .line 573
    .local v0, "apkNum":I
    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v10}, Lcom/market2345/cacheclean/ScanApkBigFile;->getAkpToatalSize()J

    move-result-wide v2

    .line 574
    .local v2, "apkSize":J
    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v10}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileNum()I

    move-result v1

    .line 575
    .local v1, "bigfileNum":I
    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mDeepScan:Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-virtual {v10}, Lcom/market2345/cacheclean/ScanApkBigFile;->getFileTotalSize()J

    move-result-wide v4

    .line 577
    .local v4, "bigfileSize":J
    if-lez v0, :cond_0

    .line 579
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkStr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->geFormat:Ljava/lang/String;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 580
    .local v6, "str0":Ljava/lang/String;
    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkTopTex:Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->spaceFormat:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2, v3}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 582
    .local v7, "str1":Ljava/lang/String;
    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->apkBotTex:Landroid/widget/TextView;

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    .end local v6    # "str0":Ljava/lang/String;
    .end local v7    # "str1":Ljava/lang/String;
    :cond_0
    if-lez v1, :cond_1

    .line 587
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileStr:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->geFormat:Ljava/lang/String;

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 588
    .local v8, "str2":Ljava/lang/String;
    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileTopTex:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->spaceFormat:Ljava/lang/String;

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 590
    .local v9, "str3":Ljava/lang/String;
    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->bigfileBotTex:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    .end local v8    # "str2":Ljava/lang/String;
    .end local v9    # "str3":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public updateNoData()V
    .locals 4

    .prologue
    const v3, 0x7f020234

    .line 425
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->getUnloadNum()I

    move-result v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapNum()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualTopTex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 428
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualbotTex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualWarnIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual;->getRamCacheNum()I

    move-result v0

    if-nez v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ramCacheTopTex:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cacheStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 434
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->ramCacheBotTex:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cacheWarnIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->res:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 437
    :cond_1
    return-void
.end method

.method public updateVestigitalLayout()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    .line 543
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v8}, Lcom/market2345/cacheclean/ScanResidual;->getTotalSize()J

    move-result-wide v6

    .line 544
    .local v6, "totalSize":J
    invoke-static {v6, v7}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToArr(J)[Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "allSize":[Ljava/lang/String;
    aget-object v1, v0, v13

    .line 546
    .local v1, "num":Ljava/lang/String;
    aget-object v2, v0, v14

    .line 547
    .local v2, "suffix":Ljava/lang/String;
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mTotal:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mSuffix:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 549
    iget-wide v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->BAD_SIZE:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 551
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07000b

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 561
    :goto_0
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v8}, Lcom/market2345/cacheclean/ScanResidual;->getUnloadNum()I

    move-result v8

    iget-object v9, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v9}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapNum()I

    move-result v9

    add-int v3, v8, v9

    .line 562
    .local v3, "tNum":I
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v8}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapSize()J

    move-result-wide v8

    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v10}, Lcom/market2345/cacheclean/ScanResidual;->getUnloadSize()J

    move-result-wide v10

    add-long v4, v8, v10

    .line 563
    .local v4, "tSize":J
    if-lez v3, :cond_0

    .line 565
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualTopTex:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualStr:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->xiangFormat:Ljava/lang/String;

    new-array v11, v14, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v13

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 566
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->residualbotTex:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->spaceFormat:Ljava/lang/String;

    new-array v10, v14, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/market2345/common/util/ApplicationUtils;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    :cond_0
    return-void

    .line 553
    .end local v3    # "tNum":I
    .end local v4    # "tSize":J
    :cond_1
    iget-wide v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->WARN_SIZE:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 555
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07008f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 559
    :cond_2
    iget-object v8, p0, Lcom/market2345/cacheclean/CleanMainACtivity;->cleanBg:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/market2345/cacheclean/CleanMainACtivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070017

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_0
.end method
