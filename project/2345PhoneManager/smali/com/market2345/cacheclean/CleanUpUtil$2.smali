.class final Lcom/market2345/cacheclean/CleanUpUtil$2;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "CleanUpUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/CleanUpUtil;->getAPPCache(Ljava/lang/String;Ljava/lang/reflect/Method;Landroid/content/pm/PackageManager;Landroid/content/Context;Lcom/market2345/cacheclean/ScanResultInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$packmanager:Landroid/content/pm/PackageManager;

.field final synthetic val$packname:Ljava/lang/String;

.field final synthetic val$rInfo:Lcom/market2345/cacheclean/ScanResultInfo;


# direct methods
.method constructor <init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcom/market2345/cacheclean/ScanResultInfo;)V
    .locals 0

    .prologue
    .line 275
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$packmanager:Landroid/content/pm/PackageManager;

    iput-object p2, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$packname:Ljava/lang/String;

    iput-object p3, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$rInfo:Lcom/market2345/cacheclean/ScanResultInfo;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 10
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 283
    .local v2, "cachesize":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-lez v7, :cond_1

    .line 287
    :try_start_0
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$packmanager:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$packname:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 288
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$packmanager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 289
    .local v6, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$packmanager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 290
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v5, Lcom/market2345/cacheclean/AppRamCacheInfo;

    invoke-direct {v5}, Lcom/market2345/cacheclean/AppRamCacheInfo;-><init>()V

    .line 291
    .local v5, "info":Lcom/market2345/cacheclean/AppRamCacheInfo;
    invoke-virtual {v5, v4}, Lcom/market2345/cacheclean/AppRamCacheInfo;->setIv_icon(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$packname:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/market2345/cacheclean/AppRamCacheInfo;->setPackname(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v5, v2, v3}, Lcom/market2345/cacheclean/AppRamCacheInfo;->setTv_size(J)V

    .line 294
    invoke-virtual {v5, v6}, Lcom/market2345/cacheclean/AppRamCacheInfo;->setTv_name(Ljava/lang/String;)V

    .line 295
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$rInfo:Lcom/market2345/cacheclean/ScanResultInfo;

    iget-object v7, v7, Lcom/market2345/cacheclean/ScanResultInfo;->ramCleanList:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    .line 296
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$rInfo:Lcom/market2345/cacheclean/ScanResultInfo;

    iget-object v7, v7, Lcom/market2345/cacheclean/ScanResultInfo;->ramCleanList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_0
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$rInfo:Lcom/market2345/cacheclean/ScanResultInfo;

    iget v8, v7, Lcom/market2345/cacheclean/ScanResultInfo;->ramCacheNum:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/market2345/cacheclean/ScanResultInfo;->ramCacheNum:I

    .line 298
    iget-object v7, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$rInfo:Lcom/market2345/cacheclean/ScanResultInfo;

    iget-object v8, p0, Lcom/market2345/cacheclean/CleanUpUtil$2;->val$rInfo:Lcom/market2345/cacheclean/ScanResultInfo;

    iget-wide v8, v8, Lcom/market2345/cacheclean/ScanResultInfo;->ramCacheSize:J

    add-long/2addr v8, v2

    iput-wide v8, v7, Lcom/market2345/cacheclean/ScanResultInfo;->ramCacheSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v0    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v5    # "info":Lcom/market2345/cacheclean/AppRamCacheInfo;
    .end local v6    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v1

    .line 303
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
