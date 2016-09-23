.class public Lcom/market2345/clean/shortcut/shortcutActivity;
.super Lcom/market2345/home/BaseActivity;
.source "shortcutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/clean/shortcut/shortcutActivity$Direction;
    }
.end annotation


# static fields
.field private static final KILL_PROCESS_END:I = 0x3

.field private static final MESSAGE_UPDATE_END:I = 0x2

.field private static final MESSAGE_UPDATE_START:I = 0x0

.field private static final MESSAGE_UPDATE_WIDTH:I = 0x1


# instance fields
.field final CLEANNUMBER:I

.field final CLEANTASK:I

.field final TOTALLEVEL:I

.field actualLevel:I

.field private backImageView:Landroid/widget/ImageView;

.field private deskLayout:Landroid/widget/LinearLayout;

.field private direction:Lcom/market2345/clean/shortcut/shortcutActivity$Direction;

.field endLevel:I

.field hand:Landroid/os/Handler;

.field imageSrc:Landroid/widget/ImageView;

.field volatile isDown:Z

.field volatile isPause:Z

.field isShowing:Z

.field volatile isStop:Z

.field private isStretching:Z

.field private mClearRelativeLayout:Landroid/widget/RelativeLayout;

.field private mHandler:Landroid/os/Handler;

.field private mPref:Landroid/content/SharedPreferences;

.field private mPreviousWidth:I

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mShortcut:Landroid/widget/RelativeLayout;

.field private mWidth:I

.field private moreBt:Landroid/widget/Button;

.field private processCount:I

.field private processSize:Ljava/lang/String;

.field private progresssText:Landroid/widget/TextView;

.field radius:F

.field private rect:Landroid/graphics/Rect;

.field startLevel:I

.field private task:Ljava/util/TimerTask;

.field private taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

.field private timer:Ljava/util/Timer;

.field waterLevel:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x1388

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Lcom/market2345/home/BaseActivity;-><init>()V

    .line 78
    iput v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->CLEANTASK:I

    .line 80
    const/16 v0, 0xa

    iput v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->CLEANNUMBER:I

    .line 86
    const/16 v0, 0x2710

    iput v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->TOTALLEVEL:I

    .line 90
    iput v3, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->endLevel:I

    .line 92
    iput v3, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->startLevel:I

    .line 100
    iput-boolean v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->isDown:Z

    .line 102
    iput-boolean v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->isPause:Z

    .line 104
    iput-boolean v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->isStop:Z

    .line 110
    iput-boolean v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->isStretching:Z

    .line 113
    new-instance v0, Lcom/market2345/clean/shortcut/shortcutActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/clean/shortcut/shortcutActivity$1;-><init>(Lcom/market2345/clean/shortcut/shortcutActivity;)V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->hand:Landroid/os/Handler;

    .line 188
    iput-boolean v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->isShowing:Z

    .line 189
    new-instance v0, Lcom/market2345/clean/shortcut/shortcutActivity$2;

    invoke-direct {v0, p0}, Lcom/market2345/clean/shortcut/shortcutActivity$2;-><init>(Lcom/market2345/clean/shortcut/shortcutActivity;)V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mHandler:Landroid/os/Handler;

    .line 340
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mPreviousWidth:I

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/clean/shortcut/shortcutActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->closeResource()V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/clean/shortcut/shortcutActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->isStretching:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/market2345/clean/shortcut/shortcutActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/clean/shortcut/shortcutActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/clean/shortcut/shortcutActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevelChange()V

    return-void
.end method

.method static synthetic access$400(Lcom/market2345/clean/shortcut/shortcutActivity;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/clean/shortcut/shortcutActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;

    .prologue
    .line 42
    iget v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->processCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/market2345/clean/shortcut/shortcutActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->processCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/market2345/clean/shortcut/shortcutActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->processSize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/market2345/clean/shortcut/shortcutActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->processSize:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/market2345/clean/shortcut/shortcutActivity;)Lcom/market2345/clean/shortcut/TaskInfoProvider;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    return-object v0
.end method

.method static synthetic access$800(Lcom/market2345/clean/shortcut/shortcutActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->getRandom()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/market2345/clean/shortcut/shortcutActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/clean/shortcut/shortcutActivity;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->updateWidth()V

    return-void
.end method

.method private closeResource()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->task:Ljava/util/TimerTask;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 173
    iput-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->task:Ljava/util/TimerTask;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 177
    iput-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->timer:Ljava/util/Timer;

    .line 180
    :cond_1
    return-void
.end method

.method private getRandom()I
    .locals 3

    .prologue
    .line 511
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 512
    .local v0, "random":Ljava/util/Random;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x2

    .line 513
    .local v1, "result":I
    return v1
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 540
    const/4 v5, 0x0

    .line 542
    .local v5, "y":I
    :try_start_0
    const-string v6, "com.android.internal.R$dimen"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 543
    .local v0, "c":Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 544
    .local v3, "obj":Ljava/lang/Object;
    const-string v6, "status_bar_height"

    invoke-virtual {v0, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 545
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 546
    .local v4, "x":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 551
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "x":I
    :goto_0
    return v5

    .line 547
    :catch_0
    move-exception v1

    .line 549
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initData()V
    .locals 10

    .prologue
    .line 380
    new-instance v6, Lcom/market2345/clean/shortcut/TaskInfoProvider;

    invoke-direct {v6, p0}, Lcom/market2345/clean/shortcut/TaskInfoProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    .line 381
    iget-object v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    invoke-virtual {v6}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getUsedPercent()I

    move-result v3

    .line 382
    .local v3, "percent":I
    mul-int/lit8 v6, v3, 0x64

    iput v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    .line 383
    iget v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    iput v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->startLevel:I

    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 386
    .local v4, "time":J
    iget-object v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mPref:Landroid/content/SharedPreferences;

    const-string v7, "sretching_time"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 388
    .local v0, "des":J
    const-wide/16 v6, 0x7530

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    .line 389
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->isStretching:Z

    .line 390
    iget-object v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    iget-object v7, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->killProcess(Landroid/os/Handler;)V

    .line 400
    :goto_0
    return-void

    .line 392
    :cond_0
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->isStretching:Z

    .line 393
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/market2345/MarketApplication;->getLastCleanRAMData()I

    move-result v2

    .line 394
    .local v2, "lastCleanRAMData":I
    if-lez v2, :cond_1

    .line 395
    iput v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    .line 397
    :cond_1
    iget v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    iput v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->endLevel:I

    iput v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->startLevel:I

    .line 398
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->start()V

    goto :goto_0
.end method

.method private initView()V
    .locals 3

    .prologue
    const/16 v2, 0x1f40

    .line 408
    iget v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    if-lt v1, v2, :cond_0

    .line 409
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->imageSrc:Landroid/widget/ImageView;

    const v2, 0x7f0200c2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevel:Landroid/widget/ImageView;

    const v2, 0x7f0200bd

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 419
    :goto_0
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->imageSrc:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ClipDrawable;

    .line 420
    .local v0, "clip":Landroid/graphics/drawable/ClipDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getIntrinsicHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->radius:F

    .line 421
    iget v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    .line 422
    invoke-direct {p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevelChange()V

    .line 423
    return-void

    .line 411
    .end local v0    # "clip":Landroid/graphics/drawable/ClipDrawable;
    :cond_0
    iget v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    const/16 v2, 0x1770

    if-le v1, v2, :cond_1

    .line 412
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->imageSrc:Landroid/widget/ImageView;

    const v2, 0x7f0200c6

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 413
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevel:Landroid/widget/ImageView;

    const v2, 0x7f0200bf

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 415
    :cond_1
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->imageSrc:Landroid/widget/ImageView;

    const v2, 0x7f0200c4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 416
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevel:Landroid/widget/ImageView;

    const v2, 0x7f0200c1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private updateWidth()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x5dc

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 344
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->backImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 346
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->backImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mPreviousWidth:I

    if-ne v1, v2, :cond_0

    .line 347
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->deskLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 348
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 367
    :goto_0
    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->backImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40200000    # 2.5f

    iget v3, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->backImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 355
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->backImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 356
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->backImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mPreviousWidth:I

    .line 357
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mShortcut:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->backImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 359
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 362
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->deskLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private waterLevelChange()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->progresssText:Landroid/widget/TextView;

    iget v3, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    invoke-virtual {p0, v3}, Lcom/market2345/clean/shortcut/shortcutActivity;->getProgress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    rsub-int v2, v2, 0x1388

    int-to-float v2, v2

    const v3, 0x459c4000    # 5000.0f

    div-float/2addr v2, v3

    iget v3, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->radius:F

    mul-float v1, v2, v3

    .line 435
    .local v1, "transY":F
    const/4 v0, 0x0

    .line 436
    .local v0, "scaleX":F
    iget v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->actualLevel:I

    const/16 v3, 0x1388

    if-eq v2, v3, :cond_0

    .line 437
    iget v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->radius:F

    iget v3, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->radius:F

    mul-float/2addr v2, v3

    mul-float v3, v1, v1

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget v4, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->radius:F

    float-to-double v4, v4

    div-double/2addr v2, v4

    double-to-float v0, v2

    .line 442
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 443
    iget-object v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevel:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 444
    iget-object v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevel:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 445
    iget-object v2, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevel:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 449
    :goto_1
    return-void

    .line 439
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 447
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/market2345/clean/shortcut/shortcutActivity;->updateWaterLevel(FF)V

    goto :goto_1
.end method


# virtual methods
.method public getPowerSaving(I)I
    .locals 6
    .param p1, "num"    # I

    .prologue
    .line 501
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 502
    .local v0, "random":D
    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    .line 503
    const-wide v0, 0x3fe6666666666666L    # 0.7

    .line 505
    :cond_0
    int-to-double v4, p1

    mul-double v2, v0, v4

    .line 506
    .local v2, "time":D
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    return v4
.end method

.method public getProgress(I)Ljava/lang/String;
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 488
    int-to-float v1, p1

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 489
    .local v0, "percent":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 373
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onAttachedToWindow()V

    .line 374
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 484
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 531
    :goto_0
    return-void

    .line 520
    :pswitch_0
    const-string v1, "Desk_Ball_More"

    invoke-static {p0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 521
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 522
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "notification"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    invoke-static {p0, v0}, Lcom/market2345/home/HomeUtils;->startHomeClearTop(Landroid/content/Context;Landroid/content/Intent;)V

    .line 524
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->finish()V

    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x7f09009c
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 267
    invoke-super/range {p0 .. p1}, Lcom/market2345/home/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 268
    const v3, 0x7f030008

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/market2345/clean/shortcut/shortcutActivity;->setContentView(I)V

    .line 269
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->mPref:Landroid/content/SharedPreferences;

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    .line 271
    .local v16, "intent":Landroid/content/Intent;
    if-nez v16, :cond_0

    .line 272
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->finish()V

    .line 338
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->rect:Landroid/graphics/Rect;

    .line 277
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->rect:Landroid/graphics/Rect;

    if-nez v3, :cond_1

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->finish()V

    goto :goto_0

    .line 282
    :cond_1
    const v3, 0x7f090093

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/market2345/clean/shortcut/shortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 283
    const v3, 0x7f090094

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/market2345/clean/shortcut/shortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->mShortcut:Landroid/widget/RelativeLayout;

    .line 284
    const v3, 0x7f090096

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/market2345/clean/shortcut/shortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->mClearRelativeLayout:Landroid/widget/RelativeLayout;

    .line 285
    const v3, 0x7f090097

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/market2345/clean/shortcut/shortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->imageSrc:Landroid/widget/ImageView;

    .line 286
    const v3, 0x7f090098

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/market2345/clean/shortcut/shortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevel:Landroid/widget/ImageView;

    .line 287
    const v3, 0x7f090095

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/market2345/clean/shortcut/shortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->backImageView:Landroid/widget/ImageView;

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->backImageView:Landroid/widget/ImageView;

    invoke-static {v3}, Lcom/market2345/dumpclean/main/Util;->beforehandMeasuredViewHeight(Landroid/view/View;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->backImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->mWidth:I

    .line 290
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->backImageView:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 291
    const v3, 0x7f09009b

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/market2345/clean/shortcut/shortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->deskLayout:Landroid/widget/LinearLayout;

    .line 292
    const v3, 0x7f09009a

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/market2345/clean/shortcut/shortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->progresssText:Landroid/widget/TextView;

    .line 293
    const v3, 0x7f09009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/market2345/clean/shortcut/shortcutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->moreBt:Landroid/widget/Button;

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->moreBt:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v22

    .line 296
    .local v22, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v13

    .line 298
    .local v13, "hight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->mShortcut:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Landroid/widget/RelativeLayout$LayoutParams;

    .line 300
    .local v17, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 301
    .local v12, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 303
    invoke-static/range {p0 .. p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->getScreenHeight(Landroid/content/Context;)I

    move-result v23

    .line 304
    .local v23, "y":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->rect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    .line 305
    .local v18, "localRect1":Landroid/graphics/Rect;
    move-object/from16 v0, v18

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v3, v23

    move-object/from16 v0, v18

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->rect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 307
    .local v19, "localRect2":Landroid/graphics/Rect;
    move-object/from16 v0, v19

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v3, v23

    move-object/from16 v0, v19

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 308
    iget v11, v12, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 309
    .local v11, "densityDPI":I
    mul-int/lit16 v3, v11, 0x82

    div-int/lit16 v0, v3, 0x140

    move/from16 v20, v0

    .line 310
    .local v20, "n":I
    mul-int/lit8 v3, v11, 0xf

    div-int/lit16 v0, v3, 0x140

    move/from16 v21, v0

    .line 311
    .local v21, "o":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v4, v20, 0x2

    sub-int v14, v3, v4

    .line 312
    .local v14, "i2":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    div-int/lit8 v4, v20, 0x2

    sub-int/2addr v3, v4

    add-int/lit8 v15, v3, 0x6

    .line 314
    .local v15, "i3":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v15

    sub-int v3, v3, v21

    move-object/from16 v0, v17

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 317
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    div-int/lit8 v4, v22, 0x2

    if-ge v3, v4, :cond_2

    .line 319
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v14

    add-int/lit8 v3, v3, 0x2

    sub-int v3, v3, v21

    move-object/from16 v0, v17

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 326
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->mShortcut:Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    invoke-virtual {v3, v4, v0}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 327
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 328
    .local v2, "localScaleAnimation":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 329
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->mShortcut:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 330
    invoke-direct/range {p0 .. p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->initData()V

    .line 331
    invoke-direct/range {p0 .. p0}, Lcom/market2345/clean/shortcut/shortcutActivity;->initView()V

    .line 337
    const-string v3, "Desk_Ball_2"

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 323
    .end local v2    # "localScaleAnimation":Landroid/view/animation/ScaleAnimation;
    :cond_2
    const/16 v3, 0xb

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->rect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int v3, v22, v3

    add-int/2addr v3, v14

    sub-int v3, v3, v21

    add-int/lit8 v3, v3, 0x2

    move-object/from16 v0, v17

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Lcom/market2345/home/BaseActivity;->onDestroy()V

    .line 186
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    .line 465
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->timer:Ljava/util/Timer;

    .line 466
    new-instance v0, Lcom/market2345/clean/shortcut/shortcutActivity$3;

    invoke-direct {v0, p0}, Lcom/market2345/clean/shortcut/shortcutActivity$3;-><init>(Lcom/market2345/clean/shortcut/shortcutActivity;)V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->task:Ljava/util/TimerTask;

    .line 478
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 479
    return-void
.end method

.method public updateWaterLevel(FF)V
    .locals 8
    .param p1, "scale"    # F
    .param p2, "transY"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 452
    iget-object v4, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevel:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 453
    .local v1, "layoutPar":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v4, 0x0

    add-float/2addr v4, p2

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p1

    iget v6, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->radius:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 454
    .local v2, "top":I
    iget v4, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->radius:F

    mul-float/2addr v4, v7

    mul-float/2addr v4, p1

    float-to-int v3, v4

    .line 455
    .local v3, "width":I
    iget v4, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->radius:F

    mul-float/2addr v4, v7

    mul-float/2addr v4, p1

    float-to-int v0, v4

    .line 456
    .local v0, "height":I
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 457
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 458
    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 459
    iget-object v4, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->mClearRelativeLayout:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/market2345/clean/shortcut/shortcutActivity;->waterLevel:Landroid/widget/ImageView;

    invoke-virtual {v4, v5, v1}, Landroid/widget/RelativeLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    return-void
.end method
