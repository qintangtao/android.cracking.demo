.class public Lcom/market2345/settings/SettingActivity;
.super Lcom/market2345/home/BaseActivity;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/settings/SettingActivity$MyHandler;
    }
.end annotation


# static fields
.field private static final ROOTRESULT:I = 0x3


# instance fields
.field private dialog:Landroid/app/Dialog;

.field private mCheckBtp:Landroid/graphics/Bitmap;

.field private mDelApk:Z

.field private mDelApkIV:Landroid/widget/ImageView;

.field private mFreeUpdate:Z

.field private mFreeUpdateIV:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mIconBall:Z

.field private mIconBallIV:Landroid/widget/ImageView;

.field private mIconSearch:Z

.field private mIconSearchIV:Landroid/widget/ImageView;

.field private mInstallTip:Z

.field private mInstallTipIV:Landroid/widget/ImageView;

.field private mNotCheckBtp:Landroid/graphics/Bitmap;

.field private mPushTip:Z

.field private mPushTipIV:Landroid/widget/ImageView;

.field private mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

.field private mReceiveFileTip:Z

.field private mReceiveFileTipIV:Landroid/widget/ImageView;

.field private mRoot:Z

.field private mRootIV:Landroid/widget/ImageView;

.field private mUpdateApps:Z

.field private mUpdateAppsIV:Landroid/widget/ImageView;

.field private myDialog:Landroid/app/Dialog;

.field private progress:Landroid/view/View;

.field private progressDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 97
    new-instance v0, Lcom/market2345/settings/SettingActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/settings/SettingActivity$MyHandler;-><init>(Lcom/market2345/settings/SettingActivity;)V

    iput-object v0, p0, Lcom/market2345/settings/SettingActivity;->mHandler:Landroid/os/Handler;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->progressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/market2345/settings/SettingActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/market2345/settings/SettingActivity;->progressDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/market2345/settings/SettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/market2345/settings/SettingActivity;->mRoot:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/market2345/settings/SettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->mIconBallIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/market2345/settings/SettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/market2345/settings/SettingActivity;->mRoot:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/market2345/settings/SettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/market2345/settings/SettingActivity;->mIconSearch:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/market2345/settings/SettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/market2345/settings/SettingActivity;->mIconSearch:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/market2345/settings/SettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->mIconSearchIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/settings/SettingActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->mRootIV:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/settings/SettingActivity;ZLandroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/settings/SettingActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->myDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/settings/SettingActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->progress:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/market2345/settings/SettingActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/market2345/settings/SettingActivity;->progress:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/market2345/settings/SettingActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/market2345/settings/SettingActivity;->delImagecaches()V

    return-void
.end method

.method static synthetic access$800(Lcom/market2345/settings/SettingActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$900(Lcom/market2345/settings/SettingActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/market2345/settings/SettingActivity;->mIconBall:Z

    return v0
.end method

.method static synthetic access$902(Lcom/market2345/settings/SettingActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/settings/SettingActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/market2345/settings/SettingActivity;->mIconBall:Z

    return p1
.end method

.method private confirmDelIcon(Z)V
    .locals 9
    .param p1, "isBallIcon"    # Z

    .prologue
    const/4 v8, 0x1

    .line 498
    if-eqz p1, :cond_0

    .line 499
    const v0, 0x7f0b0050

    invoke-virtual {p0, v0}, Lcom/market2345/settings/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 504
    .local v3, "message":Ljava/lang/String;
    :goto_0
    const v1, 0x7f030044

    const-string v2, "\u63d0\u793a"

    const v0, 0x7f0b018c

    invoke-virtual {p0, v0}, Lcom/market2345/settings/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lcom/market2345/settings/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/market2345/settings/SettingActivity$6;

    invoke-direct {v6, p0, p1}, Lcom/market2345/settings/SettingActivity$6;-><init>(Lcom/market2345/settings/SettingActivity;Z)V

    new-instance v7, Lcom/market2345/settings/SettingActivity$7;

    invoke-direct {v7, p0}, Lcom/market2345/settings/SettingActivity$7;-><init>(Lcom/market2345/settings/SettingActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/settings/SettingActivity;->dialog:Landroid/app/Dialog;

    .line 538
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 539
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 540
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 541
    return-void

    .line 501
    .end local v3    # "message":Ljava/lang/String;
    :cond_0
    const v0, 0x7f0b0051

    invoke-virtual {p0, v0}, Lcom/market2345/settings/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "message":Ljava/lang/String;
    goto :goto_0
.end method

.method private delImagecaches()V
    .locals 6

    .prologue
    .line 483
    new-instance v0, Lcom/market2345/settings/DelItem;

    invoke-direct {v0}, Lcom/market2345/settings/DelItem;-><init>()V

    .line 484
    .local v0, "item":Lcom/market2345/settings/DelItem;
    const/4 v4, 0x1

    iput v4, v0, Lcom/market2345/settings/DelItem;->type:I

    .line 485
    iget-object v4, p0, Lcom/market2345/settings/SettingActivity;->mHandler:Landroid/os/Handler;

    iput-object v4, v0, Lcom/market2345/settings/DelItem;->delHandler:Landroid/os/Handler;

    .line 486
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 487
    .local v3, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 488
    new-instance v4, Ljava/io/File;

    sget-object v5, Lcom/market2345/Constants;->ImageCacheDir:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "path":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 492
    .local v2, "path1":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget-object v4, v0, Lcom/market2345/settings/DelItem;->paths:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 494
    new-instance v4, Lcom/market2345/settings/SettingDelThread;

    invoke-direct {v4, v0}, Lcom/market2345/settings/SettingDelThread;-><init>(Lcom/market2345/settings/DelItem;)V

    invoke-virtual {v4}, Lcom/market2345/settings/SettingDelThread;->start()V

    .line 495
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 260
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->DEL_APK:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {p0, v0, v1}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/settings/SettingActivity;->mDelApk:Z

    .line 261
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->INSTALL_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {p0, v0, v1}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/settings/SettingActivity;->mInstallTip:Z

    .line 262
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->UPDATE_APP:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {p0, v0, v1}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/settings/SettingActivity;->mUpdateApps:Z

    .line 263
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->AUTO_INSTALL:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {p0, v0, v2}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/settings/SettingActivity;->mRoot:Z

    .line 264
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->RECEIVE_FILE_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {p0, v0, v2}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/market2345/settings/SettingActivity;->mReceiveFileTip:Z

    .line 265
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->FREE_UPDATE:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {p0, v0, v2}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/settings/SettingActivity;->mFreeUpdate:Z

    .line 266
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_BALL:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {p0, v0, v1}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/settings/SettingActivity;->mIconBall:Z

    .line 267
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_SEARCH:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {p0, v0, v1}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/settings/SettingActivity;->mIconSearch:Z

    .line 268
    sget-object v0, Lcom/market2345/settings/SettingUtils$SETTING;->PUSH_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {p0, v0, v1}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/market2345/settings/SettingActivity;->mPushTip:Z

    .line 270
    return-void

    :cond_0
    move v0, v2

    .line 264
    goto :goto_0
.end method

.method private initView()V
    .locals 8

    .prologue
    const v7, 0x7f0202d5

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x0

    .line 144
    const v1, 0x7f090051

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v1, 0x7f09035f

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v1, 0x7f090362

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/settings/SettingActivity;->mDelApkIV:Landroid/widget/ImageView;

    .line 147
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mDelApkIV:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-boolean v1, p0, Lcom/market2345/settings/SettingActivity;->mDelApk:Z

    iget-object v2, p0, Lcom/market2345/settings/SettingActivity;->mDelApkIV:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 150
    const v1, 0x7f090363

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v1, 0x7f090366

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/settings/SettingActivity;->mInstallTipIV:Landroid/widget/ImageView;

    .line 152
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mInstallTipIV:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-boolean v1, p0, Lcom/market2345/settings/SettingActivity;->mInstallTip:Z

    iget-object v2, p0, Lcom/market2345/settings/SettingActivity;->mInstallTipIV:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 155
    const v1, 0x7f09036e

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v1, 0x7f090371

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/settings/SettingActivity;->mUpdateAppsIV:Landroid/widget/ImageView;

    .line 157
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mUpdateAppsIV:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-boolean v1, p0, Lcom/market2345/settings/SettingActivity;->mUpdateApps:Z

    iget-object v2, p0, Lcom/market2345/settings/SettingActivity;->mUpdateAppsIV:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 160
    const v1, 0x7f090367

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const v1, 0x7f09036a

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRootIV:Landroid/widget/ImageView;

    .line 162
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRootIV:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-boolean v1, p0, Lcom/market2345/settings/SettingActivity;->mRoot:Z

    iget-object v2, p0, Lcom/market2345/settings/SettingActivity;->mRootIV:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 165
    const v1, 0x7f090372

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    const v1, 0x7f090375

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/settings/SettingActivity;->mReceiveFileTipIV:Landroid/widget/ImageView;

    .line 167
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mReceiveFileTipIV:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-boolean v1, p0, Lcom/market2345/settings/SettingActivity;->mReceiveFileTip:Z

    iget-object v2, p0, Lcom/market2345/settings/SettingActivity;->mReceiveFileTipIV:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 170
    const v1, 0x7f09035b

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v1, 0x7f09035e

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/settings/SettingActivity;->mFreeUpdateIV:Landroid/widget/ImageView;

    .line 172
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mFreeUpdateIV:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-boolean v1, p0, Lcom/market2345/settings/SettingActivity;->mFreeUpdate:Z

    iget-object v2, p0, Lcom/market2345/settings/SettingActivity;->mFreeUpdateIV:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 175
    const v1, 0x7f090379

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v1, 0x7f09037c

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/settings/SettingActivity;->mIconBallIV:Landroid/widget/ImageView;

    .line 177
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mIconBallIV:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-boolean v1, p0, Lcom/market2345/settings/SettingActivity;->mIconBall:Z

    iget-object v2, p0, Lcom/market2345/settings/SettingActivity;->mIconBallIV:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 180
    const v1, 0x7f09037d

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v1, 0x7f090380

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/settings/SettingActivity;->mIconSearchIV:Landroid/widget/ImageView;

    .line 182
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mIconSearchIV:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-boolean v1, p0, Lcom/market2345/settings/SettingActivity;->mIconSearch:Z

    iget-object v2, p0, Lcom/market2345/settings/SettingActivity;->mIconSearchIV:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 185
    const v1, 0x7f09036b

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v1, 0x7f09036d

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/market2345/settings/SettingActivity;->mPushTipIV:Landroid/widget/ImageView;

    .line 187
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mPushTipIV:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-boolean v1, p0, Lcom/market2345/settings/SettingActivity;->mPushTip:Z

    iget-object v2, p0, Lcom/market2345/settings/SettingActivity;->mPushTipIV:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v2}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 190
    const v1, 0x7f090381

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v1, 0x7f090386

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v1, 0x7f090385

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 195
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "\u5747\u63d0\u9192"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    const-string v1, "5M"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    const-string v1, "10M"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    const-string v1, "20M"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    const-string v1, "\u4e0d\u9650"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    const v1, 0x7f09035a

    invoke-virtual {p0, v1}, Lcom/market2345/settings/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/settings/rangebar/RangeBar;

    iput-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    .line 202
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/market2345/settings/rangebar/RangeBar;->setTickCount(I)V

    .line 203
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-virtual {v1, v2}, Lcom/market2345/settings/rangebar/RangeBar;->setTickHeight(F)V

    .line 205
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    invoke-virtual {v1, v4}, Lcom/market2345/settings/rangebar/RangeBar;->setShowTickHeight(Z)V

    .line 206
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v1, v0, v6, v2}, Lcom/market2345/settings/rangebar/RangeBar;->setTickTextParams(Ljava/util/List;ZF)V

    .line 207
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    invoke-virtual {v1, v4}, Lcom/market2345/settings/rangebar/RangeBar;->setLeftThumbIsShow(Z)V

    .line 208
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    invoke-virtual {v1, v4}, Lcom/market2345/settings/rangebar/RangeBar;->setLeftThumbNeedMove(Z)V

    .line 210
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    invoke-virtual {v1, v3}, Lcom/market2345/settings/rangebar/RangeBar;->setBarWeight(F)V

    .line 211
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    invoke-virtual {v1, v3}, Lcom/market2345/settings/rangebar/RangeBar;->setConnectingLineWeight(F)V

    .line 212
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    const-string v2, "#d9d9d9"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/settings/rangebar/RangeBar;->setBarAndTextColor(II)V

    .line 213
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    const-string v2, "#3097fd"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "#008BCC"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/settings/rangebar/RangeBar;->setConnectingLineAndStrokeColor(II)V

    .line 215
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v1, v2}, Lcom/market2345/settings/rangebar/RangeBar;->setThumbRadius(F)V

    .line 216
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    invoke-static {p0, v6}, Lcom/market2345/settings/SettingUtils;->getBigFileSizeTip(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/market2345/settings/rangebar/RangeBar;->setThumbIndices(II)V

    .line 217
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    invoke-virtual {v1, v5}, Lcom/market2345/settings/rangebar/RangeBar;->setThumbColorNormal(I)V

    .line 218
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    invoke-virtual {v1, v5}, Lcom/market2345/settings/rangebar/RangeBar;->setThumbColorPressed(I)V

    .line 219
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    invoke-virtual {v1, v7}, Lcom/market2345/settings/rangebar/RangeBar;->setThumbImageNormal(I)V

    .line 220
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    invoke-virtual {v1, v7}, Lcom/market2345/settings/rangebar/RangeBar;->setThumbImagePressed(I)V

    .line 222
    iget-object v1, p0, Lcom/market2345/settings/SettingActivity;->mRangeBar:Lcom/market2345/settings/rangebar/RangeBar;

    new-instance v2, Lcom/market2345/settings/SettingActivity$1;

    invoke-direct {v2, p0}, Lcom/market2345/settings/SettingActivity$1;-><init>(Lcom/market2345/settings/SettingActivity;)V

    invoke-virtual {v1, v2}, Lcom/market2345/settings/rangebar/RangeBar;->setOnRangeBarChangeListener(Lcom/market2345/settings/rangebar/RangeBar$OnRangeBarChangeListener;)V

    .line 232
    return-void
.end method

.method private setShowImage(ZLandroid/widget/ImageView;)V
    .locals 1
    .param p1, "mDelApk"    # Z
    .param p2, "mDelApkIV"    # Landroid/widget/ImageView;

    .prologue
    .line 235
    if-eqz p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->mCheckBtp:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->mNotCheckBtp:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private showConfirm(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    const/4 v8, 0x1

    .line 453
    const v1, 0x7f030044

    const-string v2, "\u63d0\u793a"

    const-string v3, "\u786e\u8ba4\u6e05\u9664\u7f13\u5b58?"

    const v0, 0x7f0b018c

    invoke-virtual {p0, v0}, Lcom/market2345/settings/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Lcom/market2345/settings/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/market2345/settings/SettingActivity$4;

    invoke-direct {v6, p0}, Lcom/market2345/settings/SettingActivity$4;-><init>(Lcom/market2345/settings/SettingActivity;)V

    new-instance v7, Lcom/market2345/settings/SettingActivity$5;

    invoke-direct {v7, p0}, Lcom/market2345/settings/SettingActivity$5;-><init>(Lcom/market2345/settings/SettingActivity;)V

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/market2345/util/DialogFactory;->createDialog(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/settings/SettingActivity;->myDialog:Landroid/app/Dialog;

    .line 477
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->myDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 478
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->myDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 479
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity;->myDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 480
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 450
    :goto_0
    return-void

    .line 276
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->finish()V

    goto :goto_0

    .line 280
    :sswitch_1
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/market2345/settings/SettingUtils$SETTING;->DEL_APK:Lcom/market2345/settings/SettingUtils$SETTING;

    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mDelApk:Z

    if-nez v3, :cond_0

    move v3, v4

    :goto_1
    invoke-static {v6, v7, v3}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 281
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mDelApk:Z

    if-nez v3, :cond_1

    :goto_2
    iput-boolean v4, p0, Lcom/market2345/settings/SettingActivity;->mDelApk:Z

    .line 282
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mDelApk:Z

    iget-object v4, p0, Lcom/market2345/settings/SettingActivity;->mDelApkIV:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 284
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mDelApk:Z

    if-eqz v3, :cond_2

    .line 285
    const-string v3, "Setting_Delete_1"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v3, v5

    .line 280
    goto :goto_1

    :cond_1
    move v4, v5

    .line 281
    goto :goto_2

    .line 287
    :cond_2
    const-string v3, "Setting_Delete_0"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    :sswitch_2
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/market2345/settings/SettingUtils$SETTING;->INSTALL_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mInstallTip:Z

    if-nez v3, :cond_3

    move v3, v4

    :goto_3
    invoke-static {v6, v7, v3}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 293
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mInstallTip:Z

    if-nez v3, :cond_4

    :goto_4
    iput-boolean v4, p0, Lcom/market2345/settings/SettingActivity;->mInstallTip:Z

    .line 294
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mInstallTip:Z

    iget-object v4, p0, Lcom/market2345/settings/SettingActivity;->mInstallTipIV:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 296
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mInstallTip:Z

    if-eqz v3, :cond_5

    .line 297
    const-string v3, "Setting_InstallRemind_1"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v3, v5

    .line 292
    goto :goto_3

    :cond_4
    move v4, v5

    .line 293
    goto :goto_4

    .line 299
    :cond_5
    const-string v3, "Setting_InstallRemind_0"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 304
    :sswitch_3
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/market2345/settings/SettingUtils$SETTING;->UPDATE_APP:Lcom/market2345/settings/SettingUtils$SETTING;

    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mUpdateApps:Z

    if-nez v3, :cond_6

    move v3, v4

    :goto_5
    invoke-static {v6, v7, v3}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 305
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mUpdateApps:Z

    if-nez v3, :cond_7

    :goto_6
    iput-boolean v4, p0, Lcom/market2345/settings/SettingActivity;->mUpdateApps:Z

    .line 306
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mUpdateApps:Z

    iget-object v4, p0, Lcom/market2345/settings/SettingActivity;->mUpdateAppsIV:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 308
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mUpdateApps:Z

    if-eqz v3, :cond_8

    .line 309
    const-string v3, "Setting_Update_1"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move v3, v5

    .line 304
    goto :goto_5

    :cond_7
    move v4, v5

    .line 305
    goto :goto_6

    .line 311
    :cond_8
    const-string v3, "Setting_Update_0"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    :sswitch_4
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mRoot:Z

    if-eqz v3, :cond_9

    .line 318
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/market2345/settings/SettingUtils$SETTING;->AUTO_INSTALL:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {v3, v4, v5}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 319
    iget-object v3, p0, Lcom/market2345/settings/SettingActivity;->mRootIV:Landroid/widget/ImageView;

    invoke-direct {p0, v5, v3}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 320
    iput-boolean v5, p0, Lcom/market2345/settings/SettingActivity;->mRoot:Z

    goto/16 :goto_0

    .line 322
    :cond_9
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/market2345/settings/SettingActivity$2;

    invoke-direct {v4, p0}, Lcom/market2345/settings/SettingActivity$2;-><init>(Lcom/market2345/settings/SettingActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 356
    :sswitch_5
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mIconBall:Z

    if-eqz v3, :cond_a

    .line 358
    invoke-direct {p0, v4}, Lcom/market2345/settings/SettingActivity;->confirmDelIcon(Z)V

    .line 360
    const-string v3, "Setting_Ball_0"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :cond_a
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_BALL:Lcom/market2345/settings/SettingUtils$SETTING;

    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mIconBall:Z

    if-nez v3, :cond_c

    move v3, v4

    :goto_7
    invoke-static {v6, v7, v3}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 364
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mIconBall:Z

    if-nez v3, :cond_b

    move v5, v4

    :cond_b
    iput-boolean v5, p0, Lcom/market2345/settings/SettingActivity;->mIconBall:Z

    .line 365
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mIconBall:Z

    iget-object v5, p0, Lcom/market2345/settings/SettingActivity;->mIconBallIV:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v5}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 367
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/common/util/Utils;->createCleanShortCut(Landroid/content/Context;)V

    .line 368
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "\u52a0\u901f\u7403\u5feb\u6377\u65b9\u5f0f\u6dfb\u52a0\u6210\u529f"

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 370
    const-string v3, "Setting_Ball_1"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move v3, v5

    .line 363
    goto :goto_7

    .line 374
    :sswitch_6
    invoke-direct {p0, v4}, Lcom/market2345/settings/SettingActivity;->showConfirm(I)V

    goto/16 :goto_0

    .line 377
    :sswitch_7
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/market2345/about/AboutActivity;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    .local v0, "aboutIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/market2345/settings/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 381
    .end local v0    # "aboutIntent":Landroid/content/Intent;
    :sswitch_8
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/market2345/settings/UserPlanActivity;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, Lcom/market2345/settings/SettingActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 385
    :sswitch_9
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Lcom/market2345/settings/SettingUtils$SETTING;->RECEIVE_FILE_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    iget-boolean v7, p0, Lcom/market2345/settings/SettingActivity;->mReceiveFileTip:Z

    invoke-static {v3, v6, v7}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 386
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mReceiveFileTip:Z

    if-nez v3, :cond_d

    :goto_8
    iput-boolean v4, p0, Lcom/market2345/settings/SettingActivity;->mReceiveFileTip:Z

    .line 387
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mReceiveFileTip:Z

    iget-object v4, p0, Lcom/market2345/settings/SettingActivity;->mReceiveFileTipIV:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    goto/16 :goto_0

    :cond_d
    move v4, v5

    .line 386
    goto :goto_8

    .line 391
    :sswitch_a
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/market2345/settings/SettingUtils$SETTING;->FREE_UPDATE:Lcom/market2345/settings/SettingUtils$SETTING;

    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mFreeUpdate:Z

    if-nez v3, :cond_10

    move v3, v4

    :goto_9
    invoke-static {v6, v7, v3}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 392
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mFreeUpdate:Z

    if-nez v3, :cond_e

    move v5, v4

    :cond_e
    iput-boolean v5, p0, Lcom/market2345/settings/SettingActivity;->mFreeUpdate:Z

    .line 393
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mFreeUpdate:Z

    iget-object v5, p0, Lcom/market2345/settings/SettingActivity;->mFreeUpdateIV:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v5}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 395
    invoke-static {p0}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v1

    .line 396
    .local v1, "downloadManager":Lcom/market2345/download/DownloadManager;
    invoke-virtual {v1}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 397
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-ne v3, v4, :cond_f

    .line 398
    new-instance v3, Lcom/market2345/settings/SettingActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/market2345/settings/SettingActivity$3;-><init>(Lcom/market2345/settings/SettingActivity;Lcom/market2345/download/DownloadManager;)V

    const-wide/16 v4, 0xa

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    :cond_f
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mFreeUpdate:Z

    if-eqz v3, :cond_11

    .line 407
    const-string v3, "Setting_UpdateFree_1"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v1    # "downloadManager":Lcom/market2345/download/DownloadManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_10
    move v3, v5

    .line 391
    goto :goto_9

    .line 409
    .restart local v1    # "downloadManager":Lcom/market2345/download/DownloadManager;
    .restart local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_11
    const-string v3, "Setting_UpdateFree_0"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    .end local v1    # "downloadManager":Lcom/market2345/download/DownloadManager;
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    :sswitch_b
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mIconSearch:Z

    if-eqz v3, :cond_12

    .line 416
    invoke-direct {p0, v5}, Lcom/market2345/settings/SettingActivity;->confirmDelIcon(Z)V

    .line 418
    const-string v3, "Setting_DeskSearch_0"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 421
    :cond_12
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/market2345/settings/SettingUtils$SETTING;->ICON_SEARCH:Lcom/market2345/settings/SettingUtils$SETTING;

    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mIconSearch:Z

    if-nez v3, :cond_14

    move v3, v4

    :goto_a
    invoke-static {v6, v7, v3}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 422
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mIconSearch:Z

    if-nez v3, :cond_13

    move v5, v4

    :cond_13
    iput-boolean v5, p0, Lcom/market2345/settings/SettingActivity;->mIconSearch:Z

    .line 423
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mIconSearch:Z

    iget-object v5, p0, Lcom/market2345/settings/SettingActivity;->mIconSearchIV:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v5}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 425
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/common/util/Utils;->createSearchShortCut(Landroid/content/Context;)V

    .line 426
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "\u5e94\u7528\u641c\u7d22\u5feb\u6377\u65b9\u5f0f\u6dfb\u52a0\u6210\u529f"

    invoke-static {v3, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 428
    const-string v3, "Setting_DeskSearch_1"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_14
    move v3, v5

    .line 421
    goto :goto_a

    .line 433
    :sswitch_c
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/market2345/settings/SettingUtils$SETTING;->PUSH_TIP:Lcom/market2345/settings/SettingUtils$SETTING;

    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mPushTip:Z

    if-nez v3, :cond_15

    move v3, v4

    :goto_b
    invoke-static {v6, v7, v3}, Lcom/market2345/settings/SettingUtils;->changeDefaultValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)V

    .line 434
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mPushTip:Z

    if-nez v3, :cond_16

    :goto_c
    iput-boolean v4, p0, Lcom/market2345/settings/SettingActivity;->mPushTip:Z

    .line 435
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mPushTip:Z

    iget-object v4, p0, Lcom/market2345/settings/SettingActivity;->mPushTipIV:Landroid/widget/ImageView;

    invoke-direct {p0, v3, v4}, Lcom/market2345/settings/SettingActivity;->setShowImage(ZLandroid/widget/ImageView;)V

    .line 437
    iget-boolean v3, p0, Lcom/market2345/settings/SettingActivity;->mPushTip:Z

    if-eqz v3, :cond_17

    .line 438
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/jpush/android/api/JPushInterface;->resumePush(Landroid/content/Context;)V

    .line 440
    const-string v3, "Setting_ActivityPush_1"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    move v3, v5

    .line 433
    goto :goto_b

    :cond_16
    move v4, v5

    .line 434
    goto :goto_c

    .line 442
    :cond_17
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/jpush/android/api/JPushInterface;->stopPush(Landroid/content/Context;)V

    .line 444
    const-string v3, "Setting_ActivityPush_0"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 274
    :sswitch_data_0
    .sparse-switch
        0x7f090051 -> :sswitch_0
        0x7f09035b -> :sswitch_a
        0x7f09035e -> :sswitch_a
        0x7f09035f -> :sswitch_1
        0x7f090362 -> :sswitch_1
        0x7f090363 -> :sswitch_2
        0x7f090366 -> :sswitch_2
        0x7f090367 -> :sswitch_4
        0x7f09036a -> :sswitch_4
        0x7f09036b -> :sswitch_c
        0x7f09036d -> :sswitch_c
        0x7f09036e -> :sswitch_3
        0x7f090371 -> :sswitch_3
        0x7f090372 -> :sswitch_9
        0x7f090375 -> :sswitch_9
        0x7f090379 -> :sswitch_5
        0x7f09037c -> :sswitch_5
        0x7f09037d -> :sswitch_b
        0x7f090380 -> :sswitch_b
        0x7f090381 -> :sswitch_6
        0x7f090385 -> :sswitch_8
        0x7f090386 -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 133
    invoke-super {p0, p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v0, 0x7f0300b2

    invoke-virtual {p0, v0}, Lcom/market2345/settings/SettingActivity;->setContentView(I)V

    .line 136
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202d7

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/settings/SettingActivity;->mCheckBtp:Landroid/graphics/Bitmap;

    .line 137
    invoke-virtual {p0}, Lcom/market2345/settings/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202d3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/settings/SettingActivity;->mNotCheckBtp:Landroid/graphics/Bitmap;

    .line 139
    invoke-direct {p0}, Lcom/market2345/settings/SettingActivity;->initData()V

    .line 140
    invoke-direct {p0}, Lcom/market2345/settings/SettingActivity;->initView()V

    .line 141
    return-void
.end method
