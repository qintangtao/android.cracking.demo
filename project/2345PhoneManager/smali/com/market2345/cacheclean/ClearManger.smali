.class public Lcom/market2345/cacheclean/ClearManger;
.super Ljava/lang/Object;
.source "ClearManger.java"


# static fields
.field public static defaultSize:J


# instance fields
.field private context:Landroid/content/Context;

.field private folderFullPath:Ljava/lang/String;

.field private isRun:Z

.field private mCacheDir:Ljava/lang/String;

.field private mScan:Lcom/market2345/cacheclean/ScanResidual;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-wide/16 v0, 0x4000

    sput-wide v0, Lcom/market2345/cacheclean/ClearManger;->defaultSize:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "/DCIM/.thumbnails"

    iput-object v0, p0, Lcom/market2345/cacheclean/ClearManger;->mCacheDir:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/cacheclean/ClearManger;->isRun:Z

    .line 48
    iput-object p1, p0, Lcom/market2345/cacheclean/ClearManger;->context:Landroid/content/Context;

    .line 49
    invoke-static {p1}, Lcom/market2345/cacheclean/ScanResidual;->get(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    .line 50
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/ClearManger;->mCacheDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/ClearManger;->folderFullPath:Ljava/lang/String;

    .line 54
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/ClearManger;Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ClearManger;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/market2345/cacheclean/ClearManger;->delaySetNotify(Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/ClearManger;Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ClearManger;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/market2345/cacheclean/ClearManger;->notifyEnd(Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ClearManger;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/cacheclean/ClearManger;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ClearManger;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/market2345/cacheclean/ClearManger;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/cacheclean/ClearManger;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ClearManger;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/market2345/cacheclean/ClearManger;->isRun:Z

    return v0
.end method

.method static synthetic access$402(Lcom/market2345/cacheclean/ClearManger;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ClearManger;
    .param p1, "x1"    # Z

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ClearManger;->isRun:Z

    return p1
.end method

.method static synthetic access$500(Lcom/market2345/cacheclean/ClearManger;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ClearManger;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/market2345/cacheclean/ClearManger;->folderFullPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/cacheclean/ClearManger;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ClearManger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/market2345/cacheclean/ClearManger;->deleteAllFiles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/market2345/cacheclean/ClearManger;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ClearManger;
    .param p1, "x1"    # Ljava/io/File;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/market2345/cacheclean/ClearManger;->clearFiles(Ljava/io/File;)V

    return-void
.end method

.method private clearFiles(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 322
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 324
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 326
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 341
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 343
    :cond_1
    return-void

    .line 328
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 330
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 331
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 333
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 335
    .local v1, "f":Ljava/io/File;
    iget-boolean v5, p0, Lcom/market2345/cacheclean/ClearManger;->isRun:Z

    if-eqz v5, :cond_1

    .line 337
    invoke-direct {p0, v1}, Lcom/market2345/cacheclean/ClearManger;->clearFiles(Ljava/io/File;)V

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private delaySetNotify(Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 125
    new-instance v0, Lcom/market2345/cacheclean/ClearManger$2;

    invoke-direct {v0, p0, p1}, Lcom/market2345/cacheclean/ClearManger$2;-><init>(Lcom/market2345/cacheclean/ClearManger;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ClearManger$2;->start()V

    .line 183
    return-void
.end method

.method private deleteAllFiles(Ljava/lang/String;)V
    .locals 5
    .param p1, "folderFullPath"    # Ljava/lang/String;

    .prologue
    .line 298
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 301
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 303
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 304
    .local v1, "fileList":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_0

    .line 306
    iget-boolean v4, p0, Lcom/market2345/cacheclean/ClearManger;->isRun:Z

    if-nez v4, :cond_1

    .line 317
    .end local v1    # "fileList":[Ljava/io/File;
    .end local v3    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 308
    .restart local v1    # "fileList":[Ljava/io/File;
    .restart local v3    # "i":I
    :cond_1
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 309
    .local v2, "filePath":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/market2345/cacheclean/ClearManger;->deleteAllFiles(Ljava/lang/String;)V

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "fileList":[Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 314
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method

.method private getDefaultCache(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
    .locals 9
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "packname"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 189
    .local v4, "m":[Ljava/lang/reflect/Method;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 191
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getPackageSizeInfo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    const/4 v6, 0x2

    :try_start_0
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lcom/market2345/cacheclean/ClearManger$3;

    invoke-direct {v8, p0}, Lcom/market2345/cacheclean/ClearManger$3;-><init>(Lcom/market2345/cacheclean/ClearManger;)V

    aput-object v8, v6, v7

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-void

    .line 213
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 189
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private notifyEnd(Landroid/content/pm/PackageManager;)V
    .locals 5
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v4, 0x0

    .line 114
    iget-object v1, p0, Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    invoke-virtual {v1, v4}, Lcom/market2345/cacheclean/ScanResidual;->setRamCacheNum(I)V

    .line 115
    iget-object v1, p0, Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/market2345/cacheclean/ScanResidual;->setRamCacheSize(J)V

    .line 116
    iget-object v1, p0, Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/market2345/cacheclean/ScanResidual;->setRamCleanList(Ljava/util/ArrayList;)V

    .line 118
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 119
    .local v0, "packinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/market2345/cacheclean/ClearManger;->getDefaultCache(Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    .line 120
    return-void
.end method


# virtual methods
.method public CleanAllCache(Z)V
    .locals 12
    .param p1, "delay"    # Z

    .prologue
    .line 65
    iget-object v7, p0, Lcom/market2345/cacheclean/ClearManger;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/market2345/cacheclean/Util;->setClearDate(Landroid/content/Context;)V

    .line 66
    iget-object v7, p0, Lcom/market2345/cacheclean/ClearManger;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 80
    .local v6, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 81
    .local v5, "methods":[Ljava/lang/reflect/Method;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 83
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "freeStorageAndNotify"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 85
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/market2345/cacheclean/ClearManger$1;

    invoke-direct {v9, p0, p1, v6}, Lcom/market2345/cacheclean/ClearManger$1;-><init>(Lcom/market2345/cacheclean/ClearManger;ZLandroid/content/pm/PackageManager;)V

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-void

    .line 81
    .restart local v0    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public cleanSD(ZLjava/util/ArrayList;)V
    .locals 3
    .param p1, "thum"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/AppSDCacheInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/cacheclean/AppSDCacheInfo;>;"
    move v1, p1

    .line 225
    .local v1, "thumbnai":Z
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v0, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/cacheclean/AppSDCacheInfo;>;"
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 227
    iget-object v2, p0, Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    if-nez v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/market2345/cacheclean/ClearManger;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/market2345/cacheclean/ScanResidual;->get(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;

    .line 231
    :cond_0
    iget-object v2, p0, Lcom/market2345/cacheclean/ClearManger;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/market2345/cacheclean/Util;->setClearDate(Landroid/content/Context;)V

    .line 233
    new-instance v2, Lcom/market2345/cacheclean/ClearManger$4;

    invoke-direct {v2, p0, v1, v0}, Lcom/market2345/cacheclean/ClearManger$4;-><init>(Lcom/market2345/cacheclean/ClearManger;ZLjava/util/ArrayList;)V

    invoke-virtual {v2}, Lcom/market2345/cacheclean/ClearManger$4;->start()V

    .line 293
    return-void
.end method

.method public isRun()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/market2345/cacheclean/ClearManger;->isRun:Z

    return v0
.end method

.method public setRun(Z)V
    .locals 0
    .param p1, "isRun"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ClearManger;->isRun:Z

    .line 43
    return-void
.end method
