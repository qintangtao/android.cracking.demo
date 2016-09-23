.class public Lcom/market2345/cacheclean/ScanApkBigFile;
.super Lcom/market2345/datacenter/MarketObservable;
.source "ScanApkBigFile.java"


# static fields
.field public static final BIG_SIZE:J = 0xa00000L

.field public static BREAK_APK:I

.field public static INSTALLED:I

.field public static INSTALLED_OLD:I

.field public static INSTALLED_UPDATE:I

.field public static UNINSTALLED:I

.field private static mInstance:Lcom/market2345/cacheclean/ScanApkBigFile;


# instance fields
.field private apkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/ApkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private apkNum:I

.field private apkToatalSize:J

.field private bigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/BigFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

.field private end:Z

.field private fileNum:I

.field private fileTotalSize:J

.field private isRun:Z

.field private start:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput v0, Lcom/market2345/cacheclean/ScanApkBigFile;->INSTALLED:I

    .line 24
    const/4 v0, 0x1

    sput v0, Lcom/market2345/cacheclean/ScanApkBigFile;->UNINSTALLED:I

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/market2345/cacheclean/ScanApkBigFile;->INSTALLED_UPDATE:I

    .line 28
    const/4 v0, 0x3

    sput v0, Lcom/market2345/cacheclean/ScanApkBigFile;->INSTALLED_OLD:I

    .line 30
    const/4 v0, 0x4

    sput v0, Lcom/market2345/cacheclean/ScanApkBigFile;->BREAK_APK:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Lcom/market2345/datacenter/MarketObservable;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->start:Z

    .line 42
    iput-boolean v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->end:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkList:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->bigList:Ljava/util/List;

    .line 63
    iput-boolean v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->isRun:Z

    .line 120
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->context:Landroid/content/Context;

    .line 121
    return-void
.end method

.method static synthetic access$002(Lcom/market2345/cacheclean/ScanApkBigFile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanApkBigFile;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->isRun:Z

    return p1
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/ScanApkBigFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanApkBigFile;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ScanApkBigFile;->setChanged()V

    return-void
.end method

.method static synthetic access$202(Lcom/market2345/cacheclean/ScanApkBigFile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanApkBigFile;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->end:Z

    return p1
.end method

.method private doType(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    .locals 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I

    .prologue
    .line 364
    const/16 v5, 0x2000

    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 365
    .local v1, "pakageinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 367
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 368
    .local v3, "pi_packageName":Ljava/lang/String;
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 370
    .local v4, "pi_versionCode":I
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 372
    if-ne p3, v4, :cond_1

    .line 374
    sget v5, Lcom/market2345/cacheclean/ScanApkBigFile;->INSTALLED:I

    .line 386
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pi_packageName":Ljava/lang/String;
    .end local v4    # "pi_versionCode":I
    :goto_0
    return v5

    .line 376
    .restart local v2    # "pi":Landroid/content/pm/PackageInfo;
    .restart local v3    # "pi_packageName":Ljava/lang/String;
    .restart local v4    # "pi_versionCode":I
    :cond_1
    if-le p3, v4, :cond_2

    .line 378
    sget v5, Lcom/market2345/cacheclean/ScanApkBigFile;->INSTALLED_UPDATE:I

    goto :goto_0

    .line 380
    :cond_2
    if-ge p3, v4, :cond_0

    .line 382
    sget v5, Lcom/market2345/cacheclean/ScanApkBigFile;->INSTALLED_OLD:I

    goto :goto_0

    .line 386
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "pi_packageName":Ljava/lang/String;
    .end local v4    # "pi_versionCode":I
    :cond_3
    sget v5, Lcom/market2345/cacheclean/ScanApkBigFile;->UNINSTALLED:I

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanApkBigFile;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 165
    sget-object v0, Lcom/market2345/cacheclean/ScanApkBigFile;->mInstance:Lcom/market2345/cacheclean/ScanApkBigFile;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/market2345/cacheclean/ScanApkBigFile;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/ScanApkBigFile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/market2345/cacheclean/ScanApkBigFile;->mInstance:Lcom/market2345/cacheclean/ScanApkBigFile;

    .line 169
    :cond_0
    sget-object v0, Lcom/market2345/cacheclean/ScanApkBigFile;->mInstance:Lcom/market2345/cacheclean/ScanApkBigFile;

    return-object v0
.end method


# virtual methods
.method public FindAllAPKFile(Ljava/io/File;)V
    .locals 28
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 230
    new-instance v25, Lcom/market2345/cacheclean/ClearDatabaseManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->context:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-direct/range {v25 .. v26}, Lcom/market2345/cacheclean/ClearDatabaseManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/cacheclean/ScanApkBigFile;->dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

    .line 234
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->canWrite()Z

    move-result v25

    if-eqz v25, :cond_0

    .line 237
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->isFile()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 239
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->isRun:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    .line 242
    .local v15, "name_s":Ljava/lang/String;
    const/4 v5, 0x0

    .line 243
    .local v5, "apk_path":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v20

    .line 244
    .local v20, "size":J
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v18

    .line 246
    .local v18, "path":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    const-string v26, ".apk"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 248
    new-instance v13, Lcom/market2345/cacheclean/ApkInfo;

    invoke-direct {v13}, Lcom/market2345/cacheclean/ApkInfo;-><init>()V

    .line 249
    .local v13, "myFile":Lcom/market2345/cacheclean/ApkInfo;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 251
    .local v19, "pm":Landroid/content/pm/PackageManager;
    const/16 v25, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v16

    .line 252
    .local v16, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v14, 0x0

    .line 253
    .local v14, "name":Ljava/lang/String;
    const/16 v17, 0x0

    .line 254
    .local v17, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 255
    .local v4, "apk_icon":Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    .line 256
    .local v24, "versionName":Ljava/lang/String;
    const/16 v23, 0x0

    .line 257
    .local v23, "versionCode":I
    const/16 v22, 0x0

    .line 258
    .local v22, "type":I
    if-eqz v16, :cond_4

    .line 260
    move-object/from16 v0, v16

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 262
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    iput-object v5, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 263
    iput-object v5, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 264
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 266
    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    .end local v14    # "name":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 268
    .restart local v14    # "name":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 270
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 272
    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v23, v0

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    move/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/market2345/cacheclean/ScanApkBigFile;->doType(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result v22

    .line 285
    .end local v6    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_1
    invoke-virtual {v13, v4}, Lcom/market2345/cacheclean/ApkInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 286
    invoke-virtual {v13, v14}, Lcom/market2345/cacheclean/ApkInfo;->setName(Ljava/lang/String;)V

    .line 287
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Lcom/market2345/cacheclean/ApkInfo;->setPackageName(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Lcom/market2345/cacheclean/ApkInfo;->setPath(Ljava/lang/String;)V

    .line 289
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Lcom/market2345/cacheclean/ApkInfo;->setVersionName(Ljava/lang/String;)V

    .line 290
    move/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/market2345/cacheclean/ApkInfo;->setVersionCode(I)V

    .line 291
    move/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/market2345/cacheclean/ApkInfo;->setInstalled(I)V

    .line 292
    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Lcom/market2345/cacheclean/ApkInfo;->setSize(J)V

    .line 293
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkNum:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/cacheclean/ScanApkBigFile;->apkNum:I

    .line 294
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkToatalSize:J

    move-wide/from16 v26, v0

    add-long v26, v26, v20

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/market2345/cacheclean/ScanApkBigFile;->apkToatalSize:J

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkList:Ljava/util/List;

    move-object/from16 v25, v0

    if-eqz v25, :cond_2

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_2
    const-wide/32 v26, 0xa00000

    cmp-long v25, v20, v26

    if-lez v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/ClearDatabaseManager;->isContains(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_3

    .line 299
    new-instance v8, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-direct {v8}, Lcom/market2345/cacheclean/BigFileInfo;-><init>()V

    .line 300
    .local v8, "bigInf":Lcom/market2345/cacheclean/BigFileInfo;
    invoke-virtual {v8, v4}, Lcom/market2345/cacheclean/BigFileInfo;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 301
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/market2345/cacheclean/BigFileInfo;->setPath(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v8, v14}, Lcom/market2345/cacheclean/BigFileInfo;->setName(Ljava/lang/String;)V

    .line 303
    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Lcom/market2345/cacheclean/BigFileInfo;->setSize(J)V

    .line 304
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/market2345/cacheclean/BigFileInfo;->setApkFile(Z)V

    .line 306
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->fileNum:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/cacheclean/ScanApkBigFile;->fileNum:I

    .line 307
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->fileTotalSize:J

    move-wide/from16 v26, v0

    add-long v26, v26, v20

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/market2345/cacheclean/ScanApkBigFile;->fileTotalSize:J

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->bigList:Ljava/util/List;

    move-object/from16 v25, v0

    if-eqz v25, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->bigList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v8    # "bigInf":Lcom/market2345/cacheclean/BigFileInfo;
    :cond_3
    const/4 v4, 0x0

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/cacheclean/ScanApkBigFile;->setChanged()V

    .line 313
    const/16 v25, 0x8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/ScanApkBigFile;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 278
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->context:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0200f2

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 279
    move-object v14, v15

    .line 280
    const-string v17, "\u672a\u77e5"

    .line 281
    const-string v24, "\u672a\u77e5"

    .line 282
    const/16 v23, 0x0

    .line 283
    sget v22, Lcom/market2345/cacheclean/ScanApkBigFile;->BREAK_APK:I

    goto/16 :goto_1

    .line 317
    .end local v4    # "apk_icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "myFile":Lcom/market2345/cacheclean/ApkInfo;
    .end local v14    # "name":Ljava/lang/String;
    .end local v16    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v17    # "packageName":Ljava/lang/String;
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local v22    # "type":I
    .end local v23    # "versionCode":I
    .end local v24    # "versionName":Ljava/lang/String;
    :cond_5
    const-wide/32 v26, 0xa00000

    cmp-long v25, v20, v26

    if-lez v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->dbManager:Lcom/market2345/cacheclean/ClearDatabaseManager;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/ClearDatabaseManager;->isContains(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 319
    new-instance v8, Lcom/market2345/cacheclean/BigFileInfo;

    invoke-direct {v8}, Lcom/market2345/cacheclean/BigFileInfo;-><init>()V

    .line 320
    .restart local v8    # "bigInf":Lcom/market2345/cacheclean/BigFileInfo;
    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/market2345/cacheclean/BigFileInfo;->setPath(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/market2345/cacheclean/BigFileInfo;->setName(Ljava/lang/String;)V

    .line 322
    move-wide/from16 v0, v20

    invoke-virtual {v8, v0, v1}, Lcom/market2345/cacheclean/BigFileInfo;->setSize(J)V

    .line 323
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/market2345/cacheclean/BigFileInfo;->setApkFile(Z)V

    .line 325
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->fileNum:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/cacheclean/ScanApkBigFile;->fileNum:I

    .line 326
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->fileTotalSize:J

    move-wide/from16 v26, v0

    add-long v26, v26, v20

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/market2345/cacheclean/ScanApkBigFile;->fileTotalSize:J

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->bigList:Ljava/util/List;

    move-object/from16 v25, v0

    if-eqz v25, :cond_6

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->bigList:Ljava/util/List;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/cacheclean/ScanApkBigFile;->setChanged()V

    .line 330
    const/16 v25, 0x8

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/market2345/cacheclean/ScanApkBigFile;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 337
    .end local v5    # "apk_path":Ljava/lang/String;
    .end local v8    # "bigInf":Lcom/market2345/cacheclean/BigFileInfo;
    .end local v15    # "name_s":Ljava/lang/String;
    .end local v18    # "path":Ljava/lang/String;
    .end local v20    # "size":J
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/cacheclean/ScanApkBigFile;->isRun:Z

    move/from16 v25, v0

    if-eqz v25, :cond_0

    .line 339
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .line 340
    .local v10, "files":[Ljava/io/File;
    if-eqz v10, :cond_0

    array-length v0, v10

    move/from16 v25, v0

    if-lez v25, :cond_0

    .line 342
    move-object v7, v10

    .local v7, "arr$":[Ljava/io/File;
    array-length v12, v7

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    if-ge v11, v12, :cond_0

    aget-object v9, v7, v11

    .line 344
    .local v9, "file_str":Ljava/io/File;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/market2345/cacheclean/ScanApkBigFile;->FindAllAPKFile(Ljava/io/File;)V

    .line 342
    add-int/lit8 v11, v11, 0x1

    goto :goto_2
.end method

.method public close()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 177
    iput-boolean v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->isRun:Z

    .line 178
    iput v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkNum:I

    .line 179
    iput-wide v4, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkToatalSize:J

    .line 180
    iput-wide v4, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->fileTotalSize:J

    .line 181
    iput v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->fileNum:I

    .line 182
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 185
    iput-object v2, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkList:Ljava/util/List;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->bigList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->bigList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    iput-object v2, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->bigList:Ljava/util/List;

    .line 192
    :cond_1
    sput-object v2, Lcom/market2345/cacheclean/ScanApkBigFile;->mInstance:Lcom/market2345/cacheclean/ScanApkBigFile;

    .line 193
    iput-boolean v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->start:Z

    .line 194
    iput-boolean v1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->end:Z

    .line 195
    return-void
.end method

.method public getAkpToatalSize()J
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkToatalSize:J

    return-wide v0
.end method

.method public getApkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/ApkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkList:Ljava/util/List;

    return-object v0
.end method

.method public getApkNum()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkNum:I

    return v0
.end method

.method public getBigList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/BigFileInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->bigList:Ljava/util/List;

    return-object v0
.end method

.method public getFileNum()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->fileNum:I

    return v0
.end method

.method public getFileTotalSize()J
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->fileTotalSize:J

    return-wide v0
.end method

.method public isEnd()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->end:Z

    return v0
.end method

.method public isRun()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->isRun:Z

    return v0
.end method

.method public isStart()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->start:Z

    return v0
.end method

.method public setAkpToatalSize(J)V
    .locals 1
    .param p1, "apkToatalSize"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkToatalSize:J

    .line 95
    return-void
.end method

.method public setApkList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/ApkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "apkList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/cacheclean/ApkInfo;>;"
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkList:Ljava/util/List;

    .line 75
    return-void
.end method

.method public setApkNum(I)V
    .locals 0
    .param p1, "apkNum"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->apkNum:I

    .line 131
    return-void
.end method

.method public setBigList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/cacheclean/BigFileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "bigList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/cacheclean/BigFileInfo;>;"
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->bigList:Ljava/util/List;

    .line 85
    return-void
.end method

.method public setEnd(Z)V
    .locals 0
    .param p1, "end"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->end:Z

    .line 161
    return-void
.end method

.method public setFileNum(I)V
    .locals 0
    .param p1, "fileNum"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->fileNum:I

    .line 141
    return-void
.end method

.method public setFileTotalSize(J)V
    .locals 1
    .param p1, "fileTotalSize"    # J

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->fileTotalSize:J

    .line 105
    return-void
.end method

.method public setRun(Z)V
    .locals 0
    .param p1, "isRun"    # Z

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->isRun:Z

    .line 115
    return-void
.end method

.method public setStart(Z)V
    .locals 0
    .param p1, "start"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->start:Z

    .line 151
    return-void
.end method

.method public startDeepScan(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/cacheclean/ScanApkBigFile;->start:Z

    .line 201
    new-instance v0, Lcom/market2345/cacheclean/ScanApkBigFile$1;

    invoke-direct {v0, p0, p1}, Lcom/market2345/cacheclean/ScanApkBigFile$1;-><init>(Lcom/market2345/cacheclean/ScanApkBigFile;Ljava/io/File;)V

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanApkBigFile$1;->start()V

    .line 222
    return-void
.end method
