.class public Lcom/market2345/cacheclean/CleanUpUtil;
.super Ljava/lang/Object;
.source "CleanUpUtil.java"


# static fields
.field private static final defaultSize:J = 0x0L

.field private static final mCacheDir:Ljava/lang/String; = "/DCIM/.thumbnails"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CleanAllCache(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 31
    .local v6, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 32
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

    .line 34
    .local v4, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "freeStorageAndNotify"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 36
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide v10, 0x7fffffffffffffffL

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/market2345/cacheclean/CleanUpUtil$1;

    invoke-direct {v9}, Lcom/market2345/cacheclean/CleanUpUtil$1;-><init>()V

    aput-object v9, v7, v8

    invoke-virtual {v4, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-void

    .line 32
    .restart local v0    # "arr$":[Ljava/lang/reflect/Method;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "m":Ljava/lang/reflect/Method;
    .restart local v5    # "methods":[Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "arr$":[Ljava/lang/reflect/Method;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v5    # "methods":[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static cleanSD(Lcom/market2345/cacheclean/ScanResultInfo;)V
    .locals 7
    .param p0, "rInfo"    # Lcom/market2345/cacheclean/ScanResultInfo;

    .prologue
    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/DCIM/.thumbnails"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "folderFullPath":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 63
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanUpUtil;->deleteAllFiles(Ljava/lang/String;)V

    .line 65
    :cond_0
    iget-object v5, p0, Lcom/market2345/cacheclean/ScanResultInfo;->sdCleanList:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/market2345/cacheclean/ScanResultInfo;->sdCleanList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 67
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/market2345/cacheclean/ScanResultInfo;->sdCleanList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 69
    iget-object v5, p0, Lcom/market2345/cacheclean/ScanResultInfo;->sdCleanList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/cacheclean/AppSDCacheInfo;

    .line 70
    .local v3, "item":Lcom/market2345/cacheclean/AppSDCacheInfo;
    invoke-virtual {v3}, Lcom/market2345/cacheclean/AppSDCacheInfo;->getCachePath()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanUpUtil;->clearFiles(Ljava/io/File;)V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 67
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/market2345/cacheclean/AppSDCacheInfo;
    .end local v4    # "path":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static clearFiles(Ljava/io/File;)V
    .locals 6
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 85
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 89
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 102
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 104
    :cond_1
    return-void

    .line 91
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 93
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 94
    .local v2, "files":[Ljava/io/File;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 96
    move-object v0, v2

    .local v0, "arr$":[Ljava/io/File;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 98
    .local v1, "f":Ljava/io/File;
    invoke-static {v1}, Lcom/market2345/cacheclean/CleanUpUtil;->clearFiles(Ljava/io/File;)V

    .line 96
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static deleteAllFiles(Ljava/lang/String;)V
    .locals 5
    .param p0, "folderFullPath"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 112
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 114
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 115
    .local v1, "fileList":[Ljava/io/File;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 117
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "filePath":Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/cacheclean/CleanUpUtil;->deleteAllFiles(Ljava/lang/String;)V

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    .end local v1    # "fileList":[Ljava/io/File;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 126
    :cond_1
    return-void
.end method

.method private static getAPPCache(Ljava/lang/String;Ljava/lang/reflect/Method;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/market2345/cacheclean/ScanResultInfo;)V
    .locals 4
    .param p0, "packname"    # Ljava/lang/String;
    .param p1, "getPackageSizeInfo"    # Ljava/lang/reflect/Method;
    .param p2, "packmanager"    # Landroid/content/pm/PackageManager;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "rInfo"    # Lcom/market2345/cacheclean/ScanResultInfo;

    .prologue
    .line 274
    const/4 v1, 0x2

    :try_start_0
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/market2345/cacheclean/CleanUpUtil$2;

    invoke-direct {v3, p2, p0, p4}, Lcom/market2345/cacheclean/CleanUpUtil$2;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/market2345/cacheclean/ScanResultInfo;)V

    aput-object v3, v1, v2

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 309
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static getBitmapCache(Ljava/lang/String;Lcom/market2345/cacheclean/ScanResultInfo;)V
    .locals 4
    .param p0, "folderFullPath"    # Ljava/lang/String;
    .param p1, "rInfo"    # Lcom/market2345/cacheclean/ScanResultInfo;

    .prologue
    .line 205
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 206
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    invoke-static {v0, p1}, Lcom/market2345/cacheclean/CleanUpUtil;->getBitmapTotalSize(Ljava/io/File;Lcom/market2345/cacheclean/ScanResultInfo;)J

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/market2345/cacheclean/ScanResultInfo;->bitmapSize:J

    .line 220
    const/4 v1, 0x1

    iput v1, p1, Lcom/market2345/cacheclean/ScanResultInfo;->bitmapNum:I

    goto :goto_0
.end method

.method private static getBitmapTotalSize(Ljava/io/File;Lcom/market2345/cacheclean/ScanResultInfo;)J
    .locals 6
    .param p0, "fileDir"    # Ljava/io/File;
    .param p1, "rInfo"    # Lcom/market2345/cacheclean/ScanResultInfo;

    .prologue
    .line 228
    const-wide/16 v2, 0x0

    .line 229
    .local v2, "totalSize":J
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 232
    .local v1, "fileList":[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, "fileIndex":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 234
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    aget-object v4, v1, v0

    invoke-static {v4, p1}, Lcom/market2345/cacheclean/CleanUpUtil;->getBitmapTotalSize(Ljava/io/File;Lcom/market2345/cacheclean/ScanResultInfo;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 232
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 240
    :cond_0
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 241
    iget v4, p1, Lcom/market2345/cacheclean/ScanResultInfo;->bitmapNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Lcom/market2345/cacheclean/ScanResultInfo;->bitmapNum:I

    goto :goto_1

    .line 245
    .end local v0    # "fileIndex":I
    .end local v1    # "fileList":[Ljava/io/File;
    :cond_1
    iput-wide v2, p1, Lcom/market2345/cacheclean/ScanResultInfo;->bitmapSize:J

    .line 246
    return-wide v2
.end method

.method private static sacnAPPCache(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;Lcom/market2345/cacheclean/ScanResultInfo;)J
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packmanager"    # Landroid/content/pm/PackageManager;
    .param p3, "rInfo"    # Lcom/market2345/cacheclean/ScanResultInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Lcom/market2345/cacheclean/ScanResultInfo;",
            ")J"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, "packinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    .line 252
    .local v5, "m":[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 253
    .local v1, "getPackageSizeInfo":Ljava/lang/reflect/Method;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, v0, v2

    .line 255
    .local v6, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "getPackageSizeInfo"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 257
    move-object v1, v6

    .line 262
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 264
    .local v3, "info":Landroid/content/pm/PackageInfo;
    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v7, v1, p1, p0, p3}, Lcom/market2345/cacheclean/CleanUpUtil;->getAPPCache(Ljava/lang/String;Ljava/lang/reflect/Method;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/market2345/cacheclean/ScanResultInfo;)V

    goto :goto_1

    .line 253
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .local v2, "i$":I
    .restart local v6    # "method":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 267
    .end local v6    # "method":Ljava/lang/reflect/Method;
    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    const-wide/16 v8, 0x0

    return-wide v8
.end method

.method public static scan(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanResultInfo;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    new-instance v19, Lcom/market2345/cacheclean/ScanResultInfo;

    invoke-direct/range {v19 .. v19}, Lcom/market2345/cacheclean/ScanResultInfo;-><init>()V

    .line 131
    .local v19, "rInfo":Lcom/market2345/cacheclean/ScanResultInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    .line 132
    .local v16, "packmanager":Landroid/content/pm/PackageManager;
    const/16 v21, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v13

    .line 134
    .local v13, "packinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v19

    invoke-static {v0, v1, v13, v2}, Lcom/market2345/cacheclean/CleanUpUtil;->sacnAPPCache(Landroid/content/Context;Landroid/content/pm/PackageManager;Ljava/util/List;Lcom/market2345/cacheclean/ScanResultInfo;)J

    .line 135
    const/4 v10, 0x0

    .line 137
    .local v10, "folderFullPath":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v21

    const-string v22, "mounted"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 139
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/DCIM/.thumbnails"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 141
    :cond_0
    if-eqz v10, :cond_1

    .line 143
    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcom/market2345/cacheclean/CleanUpUtil;->getBitmapCache(Ljava/lang/String;Lcom/market2345/cacheclean/ScanResultInfo;)V

    .line 145
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 146
    .local v7, "dbPath":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    const-string v21, "clearpath.db"

    move-object/from16 v0, v21

    invoke-direct {v9, v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v9, "filedb":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v21

    if-nez v21, :cond_2

    .line 149
    const-string v21, "clearpath.db"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Lcom/market2345/cacheclean/Util;->copyAssetData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 151
    :cond_2
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "clearpath.db"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-static/range {v21 .. v23}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 153
    .local v6, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v6, :cond_7

    .line 155
    const-string v21, "select softChinesename,apkname,filepath from softdetail"

    const/16 v22, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v6, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 156
    .local v5, "cursor":Landroid/database/Cursor;
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v20

    .line 157
    .local v20, "total":I
    :cond_3
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v21

    if-eqz v21, :cond_6

    .line 159
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 160
    .local v4, "chinesename":Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 161
    .local v17, "pagename":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    move/from16 v0, v22

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 162
    .local v18, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v21

    if-eqz v21, :cond_3

    .line 167
    move-object/from16 v0, v17

    invoke-interface {v13, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_3

    .line 169
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v12, "myFile":Ljava/io/File;
    invoke-static {v12}, Lcom/market2345/cacheclean/Util;->getFileFolderTotalSize(Ljava/io/File;)J

    move-result-wide v14

    .line 172
    .local v14, "mySize":J
    const-wide/16 v22, 0x0

    cmp-long v21, v14, v22

    if-nez v21, :cond_4

    .line 174
    const-wide/16 v14, 0x1

    .line 176
    :cond_4
    new-instance v11, Lcom/market2345/cacheclean/AppSDCacheInfo;

    invoke-direct {v11}, Lcom/market2345/cacheclean/AppSDCacheInfo;-><init>()V

    .line 177
    .local v11, "myApp":Lcom/market2345/cacheclean/AppSDCacheInfo;
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setPackname(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v11, v4}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setAppname(Ljava/lang/String;)V

    .line 179
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setCachePath(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v11, v14, v15}, Lcom/market2345/cacheclean/AppSDCacheInfo;->setCacheSize(J)V

    .line 181
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResultInfo;->sdCleanList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    if-eqz v21, :cond_5

    .line 182
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResultInfo;->sdCleanList:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_5
    move-object/from16 v0, v19

    iget v0, v0, Lcom/market2345/cacheclean/ScanResultInfo;->unloadNum:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Lcom/market2345/cacheclean/ScanResultInfo;->unloadNum:I

    .line 184
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/market2345/cacheclean/ScanResultInfo;->unloadSize:J

    move-wide/from16 v22, v0

    add-long v22, v22, v14

    move-wide/from16 v0, v22

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/market2345/cacheclean/ScanResultInfo;->unloadSize:J

    goto/16 :goto_0

    .line 192
    .end local v4    # "chinesename":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .end local v11    # "myApp":Lcom/market2345/cacheclean/AppSDCacheInfo;
    .end local v12    # "myFile":Ljava/io/File;
    .end local v14    # "mySize":J
    .end local v17    # "pagename":Ljava/lang/String;
    .end local v18    # "path":Ljava/lang/String;
    :cond_6
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 193
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v20    # "total":I
    :cond_7
    :goto_1
    return-object v19

    .line 195
    .restart local v5    # "cursor":Landroid/database/Cursor;
    .restart local v20    # "total":I
    :catch_0
    move-exception v21

    goto :goto_1
.end method
