.class Lcom/market2345/cacheclean/ScanResidual$2;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ScanResidual.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/ScanResidual;->getAPPCache(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/ScanResidual;

.field final synthetic val$packname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/ScanResidual;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    iput-object p2, p0, Lcom/market2345/cacheclean/ScanResidual$2;->val$packname:Ljava/lang/String;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 22
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    move-object/from16 v0, p1

    iget-wide v6, v0, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 289
    .local v6, "cachesize":J
    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/content/pm/PackageStats;->codeSize:J

    .line 290
    .local v8, "codeSize":J
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/content/pm/PackageStats;->dataSize:J

    .line 292
    .local v10, "dataSize":J
    sget-wide v18, Lcom/market2345/cacheclean/ScanResidual;->defaultSize:J

    cmp-long v18, v6, v18

    if-lez v18, :cond_1

    .line 296
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->context:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$1400(Lcom/market2345/cacheclean/ScanResidual;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v17

    .line 297
    .local v17, "ssize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->context:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$1400(Lcom/market2345/cacheclean/ScanResidual;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 298
    .local v5, "csize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->context:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$1400(Lcom/market2345/cacheclean/ScanResidual;)Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 302
    .local v12, "dsize":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->packmanager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$100(Lcom/market2345/cacheclean/ScanResidual;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->val$packname:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 303
    .local v4, "appinfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->packmanager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$100(Lcom/market2345/cacheclean/ScanResidual;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 304
    .local v16, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->packmanager:Landroid/content/pm/PackageManager;
    invoke-static/range {v18 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$100(Lcom/market2345/cacheclean/ScanResidual;)Landroid/content/pm/PackageManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 305
    .local v14, "icon":Landroid/graphics/drawable/Drawable;
    new-instance v15, Lcom/market2345/cacheclean/AppRamCacheInfo;

    invoke-direct {v15}, Lcom/market2345/cacheclean/AppRamCacheInfo;-><init>()V

    .line 306
    .local v15, "info":Lcom/market2345/cacheclean/AppRamCacheInfo;
    invoke-virtual {v15, v14}, Lcom/market2345/cacheclean/AppRamCacheInfo;->setIv_icon(Landroid/graphics/drawable/Drawable;)V

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->val$packname:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/market2345/cacheclean/AppRamCacheInfo;->setPackname(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v15, v6, v7}, Lcom/market2345/cacheclean/AppRamCacheInfo;->setTv_size(J)V

    .line 309
    invoke-virtual/range {v15 .. v16}, Lcom/market2345/cacheclean/AppRamCacheInfo;->setTv_name(Ljava/lang/String;)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->ramCleanList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$1500(Lcom/market2345/cacheclean/ScanResidual;)Ljava/util/ArrayList;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->ramCleanList:Ljava/util/ArrayList;
    invoke-static/range {v18 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$1500(Lcom/market2345/cacheclean/ScanResidual;)Ljava/util/ArrayList;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    # operator++ for: Lcom/market2345/cacheclean/ScanResidual;->ramCacheNum:I
    invoke-static/range {v18 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$1608(Lcom/market2345/cacheclean/ScanResidual;)I

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v19, v0

    # getter for: Lcom/market2345/cacheclean/ScanResidual;->ramCacheSize:J
    invoke-static/range {v19 .. v19}, Lcom/market2345/cacheclean/ScanResidual;->access$1700(Lcom/market2345/cacheclean/ScanResidual;)J

    move-result-wide v20

    add-long v20, v20, v6

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    # setter for: Lcom/market2345/cacheclean/ScanResidual;->ramCacheSize:J
    invoke-static {v0, v1, v2}, Lcom/market2345/cacheclean/ScanResidual;->access$1702(Lcom/market2345/cacheclean/ScanResidual;J)J

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    # invokes: Lcom/market2345/cacheclean/ScanResidual;->setChanged()V
    invoke-static/range {v18 .. v18}, Lcom/market2345/cacheclean/ScanResidual;->access$1800(Lcom/market2345/cacheclean/ScanResidual;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/cacheclean/ScanResidual$2;->this$0:Lcom/market2345/cacheclean/ScanResidual;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Lcom/market2345/cacheclean/ScanResidual;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v4    # "appinfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "csize":Ljava/lang/String;
    .end local v12    # "dsize":Ljava/lang/String;
    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "info":Lcom/market2345/cacheclean/AppRamCacheInfo;
    .end local v16    # "name":Ljava/lang/String;
    .end local v17    # "ssize":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v13

    .line 320
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
