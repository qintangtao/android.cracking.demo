.class Lcom/market2345/dumpclean/ScanHelp$4;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ScanHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ScanHelp;->getSystemCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ScanHelp;

.field final synthetic val$app:Lcom/market2345/model/InstalledApp;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ScanHelp;Lcom/market2345/model/InstalledApp;)V
    .locals 0

    .prologue
    .line 462
    iput-object p1, p0, Lcom/market2345/dumpclean/ScanHelp$4;->this$0:Lcom/market2345/dumpclean/ScanHelp;

    iput-object p2, p0, Lcom/market2345/dumpclean/ScanHelp$4;->val$app:Lcom/market2345/model/InstalledApp;

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
    .line 466
    if-eqz p2, :cond_1

    .line 467
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 468
    .local v2, "cacheSize1":J
    const-wide/16 v4, 0x0

    .line 469
    .local v4, "cacheSize2":J
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v7, v8, :cond_0

    .line 470
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    .line 472
    :cond_0
    add-long v0, v2, v4

    .line 473
    .local v0, "cacheSize":J
    const-wide/16 v8, 0x6000

    cmp-long v7, v0, v8

    if-lez v7, :cond_1

    .line 475
    :try_start_0
    iget-object v7, p0, Lcom/market2345/dumpclean/ScanHelp$4;->this$0:Lcom/market2345/dumpclean/ScanHelp;

    # getter for: Lcom/market2345/dumpclean/ScanHelp;->pm:Landroid/content/pm/PackageManager;
    invoke-static {v7}, Lcom/market2345/dumpclean/ScanHelp;->access$300(Lcom/market2345/dumpclean/ScanHelp;)Landroid/content/pm/PackageManager;

    move-result-object v7

    iget-object v8, p0, Lcom/market2345/dumpclean/ScanHelp$4;->val$app:Lcom/market2345/model/InstalledApp;

    iget-object v8, v8, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 476
    new-instance v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    invoke-direct {v6}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;-><init>()V

    .line 477
    .local v6, "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    iput-wide v0, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    .line 478
    const/4 v7, 0x0

    iput v7, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->type:I

    .line 479
    iget-object v7, p0, Lcom/market2345/dumpclean/ScanHelp$4;->val$app:Lcom/market2345/model/InstalledApp;

    iget-object v7, v7, Lcom/market2345/model/InstalledApp;->appName:Ljava/lang/String;

    iput-object v7, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->name:Ljava/lang/String;

    .line 480
    iget-object v7, p0, Lcom/market2345/dumpclean/ScanHelp$4;->val$app:Lcom/market2345/model/InstalledApp;

    iget-object v7, v7, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    iput-object v7, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->packageName:Ljava/lang/String;

    .line 481
    const/4 v7, 0x1

    iput v7, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->select:I

    .line 482
    iget-object v7, p0, Lcom/market2345/dumpclean/ScanHelp$4;->this$0:Lcom/market2345/dumpclean/ScanHelp;

    # getter for: Lcom/market2345/dumpclean/ScanHelp;->cacheSystemDatas:Ljava/util/List;
    invoke-static {v7}, Lcom/market2345/dumpclean/ScanHelp;->access$400(Lcom/market2345/dumpclean/ScanHelp;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    iget-object v7, p0, Lcom/market2345/dumpclean/ScanHelp$4;->this$0:Lcom/market2345/dumpclean/ScanHelp;

    # += operator for: Lcom/market2345/dumpclean/ScanHelp;->cacheSystemSize:J
    invoke-static {v7, v0, v1}, Lcom/market2345/dumpclean/ScanHelp;->access$514(Lcom/market2345/dumpclean/ScanHelp;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 490
    .end local v0    # "cacheSize":J
    .end local v2    # "cacheSize1":J
    .end local v4    # "cacheSize2":J
    .end local v6    # "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    :cond_1
    :goto_0
    return-void

    .line 484
    .restart local v0    # "cacheSize":J
    .restart local v2    # "cacheSize1":J
    .restart local v4    # "cacheSize2":J
    :catch_0
    move-exception v7

    goto :goto_0
.end method
