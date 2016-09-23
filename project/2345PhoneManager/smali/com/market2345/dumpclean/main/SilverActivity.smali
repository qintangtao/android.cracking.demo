.class public Lcom/market2345/dumpclean/main/SilverActivity;
.super Lcom/market2345/home/BaseFragmentActivity;
.source "SilverActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/dumpclean/ScanHelp$IScanResult;
.implements Lcom/market2345/dumpclean/main/CleaningFragment$OnCleanFragmentEndListener;
.implements Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;


# instance fields
.field private ani_view:Landroid/view/View;

.field private blue2Green1:Landroid/graphics/drawable/TransitionDrawable;

.field private blue2Green2:Landroid/graphics/drawable/TransitionDrawable;

.field private btn_stop:Landroid/widget/Button;

.field private currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkGroup;",
            ">;"
        }
    .end annotation
.end field

.field private fl_content:Landroid/widget/FrameLayout;

.field private green2Orange1:Landroid/graphics/drawable/TransitionDrawable;

.field private green2Orange2:Landroid/graphics/drawable/TransitionDrawable;

.field private iv_clean_setting:Landroid/widget/ImageView;

.field private junk_title_txt:Landroid/widget/TextView;

.field private mScan:Lcom/market2345/dumpclean/ScanHelp;

.field private needSave:Z

.field private orange2Red1:Landroid/graphics/drawable/TransitionDrawable;

.field private orange2Red2:Landroid/graphics/drawable/TransitionDrawable;

.field private resources:Landroid/content/res/Resources;

.field private rl_page_title:Landroid/widget/RelativeLayout;

.field private scanFinishF:Lcom/market2345/dumpclean/main/ScanFinishFragment;

.field private scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;

.field private selectSize:J

.field private tag:Ljava/lang/String;

.field private transitionAnimationDuration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/market2345/home/BaseFragmentActivity;-><init>()V

    .line 39
    const-string v0, "SilverActivity"

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->tag:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->needSave:Z

    .line 67
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->transitionAnimationDuration:I

    return-void
.end method

.method static synthetic access$002(Lcom/market2345/dumpclean/main/SilverActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;
    .param p1, "x1"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->selectSize:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/market2345/dumpclean/main/SilverActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->startCleanOverActivity()V

    return-void
.end method

.method static synthetic access$1000(Lcom/market2345/dumpclean/main/SilverActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/dumpclean/main/SilverActivity;)Lcom/market2345/dumpclean/main/ScanningFragment;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/dumpclean/main/SilverActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->setScanSize()V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/dumpclean/main/SilverActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->ani_view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/dumpclean/main/SilverActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->datas:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/market2345/dumpclean/main/SilverActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->datas:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/market2345/dumpclean/main/SilverActivity;)Lcom/market2345/dumpclean/ScanHelp;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/dumpclean/main/SilverActivity;)Lcom/market2345/dumpclean/main/ScanFinishFragment;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->scanFinishF:Lcom/market2345/dumpclean/main/ScanFinishFragment;

    return-object v0
.end method

.method static synthetic access$702(Lcom/market2345/dumpclean/main/SilverActivity;Lcom/market2345/dumpclean/main/ScanFinishFragment;)Lcom/market2345/dumpclean/main/ScanFinishFragment;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;
    .param p1, "x1"    # Lcom/market2345/dumpclean/main/ScanFinishFragment;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->scanFinishF:Lcom/market2345/dumpclean/main/ScanFinishFragment;

    return-object p1
.end method

.method static synthetic access$800(Lcom/market2345/dumpclean/main/SilverActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->updateBottomBtn()V

    return-void
.end method

.method static synthetic access$902(Lcom/market2345/dumpclean/main/SilverActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/dumpclean/main/SilverActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->needSave:Z

    return p1
.end method

.method private checkHasCleanCache()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p0, v6, v7}, Lcom/market2345/cacheclean/Util;->getLaseCleanDate(Landroid/content/Context;J)J

    move-result-wide v2

    .line 468
    .local v2, "lastTime":J
    const-string v5, "clean_result_cache"

    invoke-static {p0, v5, v4}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getLaseSet(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 469
    .local v0, "hasCache":Z
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/market2345/MarketApplication;->isRefreshCleanActivity()Z

    move-result v1

    .line 473
    .local v1, "hasUpdate":Z
    const-wide/32 v6, 0x2bf20

    cmp-long v5, v2, v6

    if-gtz v5, :cond_0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 474
    const/4 v4, 0x1

    .line 479
    :goto_0
    return v4

    .line 476
    :cond_0
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/market2345/MarketApplication;->setRefreshCleanActivity(Z)V

    .line 477
    const-string v5, "clean_result_cache"

    invoke-static {p0, v5, v4}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setLastSet(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private createCleanFragmentDatas()Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/dumpclean/mode/JunkChild;",
            ">;"
        }
    .end annotation

    .prologue
    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v15}, Lcom/market2345/dumpclean/ScanHelp;->getDatas()Ljava/util/List;

    move-result-object v8

    .line 384
    .local v8, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkGroup;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v7, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    const v15, 0x7f0b008d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/market2345/dumpclean/main/SilverActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 386
    .local v14, "ramClean":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/market2345/dumpclean/mode/JunkGroup;

    .line 387
    .local v9, "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    invoke-virtual {v9}, Lcom/market2345/dumpclean/mode/JunkGroup;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 388
    new-instance v3, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    invoke-direct {v3}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;-><init>()V

    .line 389
    .local v3, "child":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    invoke-virtual {v9}, Lcom/market2345/dumpclean/mode/JunkGroup;->getName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v3, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->name:Ljava/lang/String;

    .line 390
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v15}, Lcom/market2345/dumpclean/ScanHelp;->getRAMSelectSize()J

    move-result-wide v16

    move-wide/from16 v0, v16

    iput-wide v0, v3, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->size:J

    .line 391
    iget-wide v0, v3, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->size:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_1

    .line 392
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 396
    .end local v3    # "child":Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;
    :cond_1
    invoke-virtual {v9}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v6

    .line 397
    .local v6, "childrenItems":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_2
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 398
    .local v13, "itemChild":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v15, v13, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v15, :cond_6

    move-object v2, v13

    .line 399
    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChildCache;

    .line 400
    .local v2, "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    const-string v15, "com.android.system.cache"

    iget-object v0, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 401
    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkChildCache;->getSelect()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 402
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 405
    :cond_3
    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkChildCache;->getSelect()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    .line 406
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 408
    :cond_4
    iget-object v5, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 409
    .local v5, "childOfChilds":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 410
    .local v4, "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getSelect()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_5

    .line 411
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 417
    .end local v2    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    .end local v4    # "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .end local v5    # "childOfChilds":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v13}, Lcom/market2345/dumpclean/mode/JunkChild;->getSelect()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 418
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 423
    .end local v6    # "childrenItems":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    .end local v9    # "group":Lcom/market2345/dumpclean/mode/JunkGroup;
    .end local v13    # "itemChild":Lcom/market2345/dumpclean/mode/JunkChild;
    :cond_7
    return-object v7
.end method

.method private initDrawable()V
    .locals 4

    .prologue
    const v3, 0x7f0200eb

    const v2, 0x7f0200ea

    const v1, 0x7f0200e9

    .line 124
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->blue2Green1:Landroid/graphics/drawable/TransitionDrawable;

    .line 125
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->blue2Green2:Landroid/graphics/drawable/TransitionDrawable;

    .line 127
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->green2Orange1:Landroid/graphics/drawable/TransitionDrawable;

    .line 128
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->green2Orange2:Landroid/graphics/drawable/TransitionDrawable;

    .line 130
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->orange2Red1:Landroid/graphics/drawable/TransitionDrawable;

    .line 131
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->orange2Red2:Landroid/graphics/drawable/TransitionDrawable;

    .line 132
    return-void
.end method

.method private initScan()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 135
    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v1, v2}, Lcom/market2345/dumpclean/ScanHelp;->setiScanResult(Lcom/market2345/dumpclean/ScanHelp$IScanResult;)V

    .line 137
    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v1, v3}, Lcom/market2345/dumpclean/ScanHelp;->setRun(Z)V

    .line 138
    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/ScanHelp;->close()V

    .line 139
    iput-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->checkHasCleanCache()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/market2345/dumpclean/main/SilverActivity$1;

    invoke-direct {v2, p0}, Lcom/market2345/dumpclean/main/SilverActivity$1;-><init>(Lcom/market2345/dumpclean/main/SilverActivity;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 158
    :goto_0
    return-void

    .line 150
    :cond_1
    new-instance v1, Lcom/market2345/clearStrategy/ClearManager;

    invoke-direct {v1, p0}, Lcom/market2345/clearStrategy/ClearManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/market2345/clearStrategy/ClearManager;->openClearDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 151
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p0}, Lcom/market2345/dumpclean/ScanHelp;->getInstance(Landroid/content/Context;)Lcom/market2345/dumpclean/ScanHelp;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    .line 152
    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v1, v0}, Lcom/market2345/dumpclean/ScanHelp;->setDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 153
    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v1, p0}, Lcom/market2345/dumpclean/ScanHelp;->setiScanResult(Lcom/market2345/dumpclean/ScanHelp$IScanResult;)V

    .line 154
    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/market2345/dumpclean/ScanHelp;->setRun(Z)V

    .line 155
    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v1, v3}, Lcom/market2345/dumpclean/ScanHelp;->startScan(Z)V

    goto :goto_0
.end method

.method private initScanningFragment()V
    .locals 4

    .prologue
    .line 161
    invoke-static {}, Lcom/market2345/dumpclean/main/ScanningFragment;->newInstance()Lcom/market2345/dumpclean/main/ScanningFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;

    .line 162
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0900ec

    iget-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;

    const-string v3, "scanning"

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 165
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->ani_view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->ani_view:Landroid/view/View;

    invoke-static {p0, v0}, Lcom/market2345/dumpclean/animation/TweenAnimationUtils;->startScanTranslateAnimation(Landroid/content/Context;Landroid/view/View;)V

    .line 167
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 170
    const v0, 0x7f0900e9

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/SilverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    .line 171
    const v0, 0x7f0900eb

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/SilverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    .line 172
    const v0, 0x7f0900ec

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/SilverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->fl_content:Landroid/widget/FrameLayout;

    .line 173
    const v0, 0x7f0900ed

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/SilverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->ani_view:Landroid/view/View;

    .line 174
    const v0, 0x7f0902d2

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/SilverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->junk_title_txt:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f09006d

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/SilverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->iv_clean_setting:Landroid/widget/ImageView;

    .line 176
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->junk_title_txt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->iv_clean_setting:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method private revertBtn()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    const v1, 0x7f0b0013

    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/main/SilverActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    const v2, 0x7f07006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 187
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    const v1, 0x7f02019f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 188
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    const-string v1, "stop"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 191
    :cond_0
    return-void
.end method

.method private setScanSize()V
    .locals 4

    .prologue
    .line 283
    iget-object v3, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v3}, Lcom/market2345/dumpclean/ScanHelp;->getTotalSize()J

    move-result-wide v0

    .line 285
    .local v0, "size":J
    invoke-static {v0, v1}, Lcom/market2345/dumpclean/main/Util;->getFileSizeAndUnit(J)[Ljava/lang/String;

    move-result-object v2

    .line 286
    .local v2, "sizeAndUnit":[Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;

    invoke-virtual {v3, v2}, Lcom/market2345/dumpclean/main/ScanningFragment;->setScanSize([Ljava/lang/String;)V

    .line 287
    invoke-direct {p0, v0, v1}, Lcom/market2345/dumpclean/main/SilverActivity;->updateHeadColor(J)V

    .line 290
    .end local v0    # "size":J
    .end local v2    # "sizeAndUnit":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private startCleanOverActivity()V
    .locals 4

    .prologue
    .line 456
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/dumpclean/CleanOverActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 457
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "deleteSize"

    iget-wide v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->selectSize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 458
    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/SilverActivity;->startActivity(Landroid/content/Intent;)V

    .line 459
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->finish()V

    .line 460
    const v1, 0x7f04000f

    const v2, 0x7f040010

    invoke-virtual {p0, v1, v2}, Lcom/market2345/dumpclean/main/SilverActivity;->overridePendingTransition(II)V

    .line 461
    return-void
.end method

.method private updateBottomBtn()V
    .locals 6

    .prologue
    .line 346
    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/ScanHelp;->getTotalSelectSize()J

    move-result-wide v2

    .line 347
    .local v2, "size":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    const v5, 0x7f0b0014

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/market2345/dumpclean/main/Util;->formatFileSizeToPic(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "mString":Ljava/lang/String;
    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 349
    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    iget-object v4, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    const v5, 0x7f070092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 350
    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    const v4, 0x7f0201ae

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 351
    return-void
.end method

.method private updateHeadColor(J)V
    .locals 11
    .param p1, "size"    # J

    .prologue
    const-wide/32 v8, 0x4b00000

    const-wide/32 v6, 0xa00000

    const v4, 0x7f070016

    const v3, 0x7f070015

    const v2, 0x7f070014

    .line 293
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_5

    .line 294
    cmp-long v0, p1, v6

    if-gtz v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->blue2Green1:Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 299
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->blue2Green1:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 300
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->blue2Green2:Landroid/graphics/drawable/TransitionDrawable;

    iget v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->transitionAnimationDuration:I

    invoke-virtual {v0, v1, v2}, Lcom/market2345/dumpclean/main/ScanningFragment;->scanColor(Landroid/graphics/drawable/TransitionDrawable;I)V

    .line 301
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->blue2Green1:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->transitionAnimationDuration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    cmp-long v0, p1, v8

    if-gtz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->blue2Green1:Landroid/graphics/drawable/TransitionDrawable;

    if-ne v0, v1, :cond_0

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->green2Orange1:Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 309
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->green2Orange1:Landroid/graphics/drawable/TransitionDrawable;

    iget v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->transitionAnimationDuration:I

    invoke-virtual {v0, v1, v2}, Lcom/market2345/dumpclean/main/ScanningFragment;->scanColor(Landroid/graphics/drawable/TransitionDrawable;I)V

    .line 310
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->green2Orange2:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 312
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->green2Orange2:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->transitionAnimationDuration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->green2Orange1:Landroid/graphics/drawable/TransitionDrawable;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->blue2Green1:Landroid/graphics/drawable/TransitionDrawable;

    if-ne v0, v1, :cond_0

    .line 317
    :cond_4
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->orange2Red1:Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 318
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->orange2Red1:Landroid/graphics/drawable/TransitionDrawable;

    iget v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->transitionAnimationDuration:I

    invoke-virtual {v0, v1, v2}, Lcom/market2345/dumpclean/main/ScanningFragment;->scanColor(Landroid/graphics/drawable/TransitionDrawable;I)V

    .line 319
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->orange2Red2:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->orange2Red2:Landroid/graphics/drawable/TransitionDrawable;

    iget v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->transitionAnimationDuration:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    .line 325
    :cond_5
    cmp-long v0, p1, v6

    if-gtz v0, :cond_6

    .line 327
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 328
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/main/ScanningFragment;->scanColor(I)V

    goto :goto_0

    .line 329
    :cond_6
    cmp-long v0, p1, v8

    if-gtz v0, :cond_7

    .line 331
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 332
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/main/ScanningFragment;->scanColor(I)V

    goto/16 :goto_0

    .line 335
    :cond_7
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 336
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/main/ScanningFragment;->scanColor(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public callback()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->updateBottomBtn()V

    .line 360
    return-void
.end method

.method public onCleanEndCallBack()V
    .locals 0

    .prologue
    .line 431
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->startCleanOverActivity()V

    .line 432
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 195
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 197
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->finish()V

    goto :goto_0

    .line 200
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/market2345/dumpclean/CleanSetActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 201
    .local v2, "it":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/market2345/dumpclean/main/SilverActivity;->startActivity(Landroid/content/Intent;)V

    .line 202
    const-string v3, "Cleaner_Setting"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    .end local v2    # "it":Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 208
    const-string v3, "stop"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 209
    iget-object v3, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v3}, Lcom/market2345/dumpclean/ScanHelp;->isRun()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    iget-object v3, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v3, v6}, Lcom/market2345/dumpclean/ScanHelp;->setRun(Z)V

    .line 212
    :cond_1
    iput-boolean v6, p0, Lcom/market2345/dumpclean/main/SilverActivity;->needSave:Z

    .line 213
    const-string v3, "Cleaner_ScanStop"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_2
    const-string v3, "scanFinish"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->createCleanFragmentDatas()Ljava/util/ArrayList;

    move-result-object v0

    .line 216
    .local v0, "cleanFragmentDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v3}, Lcom/market2345/dumpclean/ScanHelp;->getTotalSelectSize()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/market2345/dumpclean/main/SilverActivity;->selectSize:J

    .line 220
    invoke-static {}, Lcom/market2345/dumpclean/main/CleaningFragment;->newInstance()Lcom/market2345/dumpclean/main/CleaningFragment;

    move-result-object v1

    .line 221
    .local v1, "cleaningF":Lcom/market2345/dumpclean/main/CleaningFragment;
    iget-wide v4, p0, Lcom/market2345/dumpclean/main/SilverActivity;->selectSize:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/market2345/dumpclean/main/CleaningFragment;->setCleanFragmentData(Ljava/util/ArrayList;J)V

    .line 222
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    const v4, 0x7f0900ec

    invoke-virtual {v3, v4, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 223
    iput-boolean v6, p0, Lcom/market2345/dumpclean/main/SilverActivity;->needSave:Z

    .line 224
    iget-object v3, p0, Lcom/market2345/dumpclean/main/SilverActivity;->btn_stop:Landroid/widget/Button;

    const-string v4, "cleaning"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 225
    const-string v3, "Cleaner_Clean"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 226
    new-instance v3, Lcom/market2345/dumpclean/DeleteHelp;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/market2345/dumpclean/DeleteHelp;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/market2345/dumpclean/main/SilverActivity;->datas:Ljava/util/List;

    iget-wide v6, p0, Lcom/market2345/dumpclean/main/SilverActivity;->selectSize:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/market2345/dumpclean/DeleteHelp;->deleteAll(Ljava/util/List;J)V

    goto/16 :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f09006d -> :sswitch_1
        0x7f0900eb -> :sswitch_2
        0x7f0902d2 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/market2345/home/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->tag:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/SilverActivity;->setContentView(I)V

    .line 73
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    .line 74
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->initDrawable()V

    .line 75
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->initView()V

    .line 76
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->initScanningFragment()V

    .line 77
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->initScan()V

    .line 78
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->tag:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->blue2Green1:Landroid/graphics/drawable/TransitionDrawable;

    .line 98
    iput-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->green2Orange1:Landroid/graphics/drawable/TransitionDrawable;

    .line 99
    iput-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->orange2Red1:Landroid/graphics/drawable/TransitionDrawable;

    .line 100
    iput-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->blue2Green2:Landroid/graphics/drawable/TransitionDrawable;

    .line 101
    iput-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->green2Orange2:Landroid/graphics/drawable/TransitionDrawable;

    .line 102
    iput-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->orange2Red2:Landroid/graphics/drawable/TransitionDrawable;

    .line 103
    iput-object v2, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Cleaner_Scan_Back"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/ScanHelp;->setRun(Z)V

    .line 109
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->mScan:Lcom/market2345/dumpclean/ScanHelp;

    invoke-virtual {v0}, Lcom/market2345/dumpclean/ScanHelp;->close()V

    .line 110
    iget-boolean v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->needSave:Z

    if-eqz v0, :cond_0

    .line 111
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->datas:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/market2345/MarketApplication;->setJunkDataList(Ljava/util/List;)V

    .line 112
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/market2345/MarketApplication;->setLastScanTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/market2345/home/BaseFragmentActivity;->onDestroy()V

    .line 119
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/market2345/home/BaseFragmentActivity;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->tag:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/MarketApplication;->isRefreshCleanActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/MarketApplication;->setRefreshCleanActivity(Z)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    .line 87
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 88
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->initScanningFragment()V

    .line 89
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->revertBtn()V

    .line 90
    invoke-direct {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->initScan()V

    .line 92
    :cond_0
    return-void
.end method

.method public onUpdateActivityTitleColor(J)V
    .locals 3
    .param p1, "size"    # J

    .prologue
    .line 442
    const-wide/32 v0, 0xa00000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 452
    :goto_0
    return-void

    .line 445
    :cond_0
    const-wide/32 v0, 0x4b00000

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity;->resources:Landroid/content/res/Resources;

    const v2, 0x7f070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public scanState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/market2345/dumpclean/main/SilverActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    :goto_0
    return-void

    .line 249
    :cond_0
    new-instance v0, Lcom/market2345/dumpclean/main/SilverActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/market2345/dumpclean/main/SilverActivity$3;-><init>(Lcom/market2345/dumpclean/main/SilverActivity;I)V

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/SilverActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public scanning(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 236
    new-instance v0, Lcom/market2345/dumpclean/main/SilverActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/market2345/dumpclean/main/SilverActivity$2;-><init>(Lcom/market2345/dumpclean/main/SilverActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/main/SilverActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 243
    return-void
.end method

.method public updateTitleColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 370
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 371
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->currentDrawable:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity;->rl_page_title:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 376
    :cond_1
    return-void
.end method
