.class public Lcom/market2345/customview/PositionCaculate;
.super Ljava/lang/Object;
.source "PositionCaculate.java"


# static fields
.field private static ALPHA:F = 0.0f

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xbb8

.field private static END_TENSION:F = 0.0f

.field private static final FLING_MODE:I = 0x1

.field private static final NB_SAMPLES:I = 0x64

.field private static final SCROLL_MODE:I

.field private static final SPLINE:[F

.field private static START_TENSION:F

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/16 v13, 0x64

    const/high16 v12, 0x3f800000    # 1.0f

    .line 61
    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    const-wide v10, 0x3feccccccccccccdL    # 0.9

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v8, v8

    sput v8, Lcom/market2345/customview/PositionCaculate;->DECELERATION_RATE:F

    .line 63
    const/high16 v8, 0x44480000    # 800.0f

    sput v8, Lcom/market2345/customview/PositionCaculate;->ALPHA:F

    .line 65
    const v8, 0x3ecccccd    # 0.4f

    sput v8, Lcom/market2345/customview/PositionCaculate;->START_TENSION:F

    .line 67
    sget v8, Lcom/market2345/customview/PositionCaculate;->START_TENSION:F

    sub-float v8, v12, v8

    sput v8, Lcom/market2345/customview/PositionCaculate;->END_TENSION:F

    .line 71
    const/16 v8, 0x65

    new-array v8, v8, [F

    sput-object v8, Lcom/market2345/customview/PositionCaculate;->SPLINE:[F

    .line 79
    const/4 v7, 0x0

    .line 80
    .local v7, "x_min":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v13, :cond_2

    .line 82
    int-to-float v8, v2

    const/high16 v9, 0x42c80000    # 100.0f

    div-float v3, v8, v9

    .line 83
    .local v3, "t":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 87
    .local v6, "x_max":F
    :goto_1
    sub-float v8, v6, v7

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float v5, v7, v8

    .line 88
    .local v5, "x":F
    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v8, v5

    sub-float v9, v12, v5

    mul-float v0, v8, v9

    .line 89
    .local v0, "coef":F
    sub-float v8, v12, v5

    sget v9, Lcom/market2345/customview/PositionCaculate;->START_TENSION:F

    mul-float/2addr v8, v9

    sget v9, Lcom/market2345/customview/PositionCaculate;->END_TENSION:F

    mul-float/2addr v9, v5

    add-float/2addr v8, v9

    mul-float/2addr v8, v0

    mul-float v9, v5, v5

    mul-float/2addr v9, v5

    add-float v4, v8, v9

    .line 90
    .local v4, "tx":F
    sub-float v8, v4, v3

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    const-wide v10, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    .line 97
    mul-float v8, v5, v5

    mul-float/2addr v8, v5

    add-float v1, v0, v8

    .line 98
    .local v1, "d":F
    sget-object v8, Lcom/market2345/customview/PositionCaculate;->SPLINE:[F

    aput v1, v8, v2

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "d":F
    :cond_0
    cmpl-float v8, v4, v3

    if-lez v8, :cond_1

    .line 93
    move v6, v5

    goto :goto_1

    .line 95
    :cond_1
    move v7, v5

    goto :goto_1

    .line 100
    .end local v0    # "coef":F
    .end local v3    # "t":F
    .end local v4    # "tx":F
    .end local v5    # "x":F
    .end local v6    # "x_max":F
    :cond_2
    sget-object v8, Lcom/market2345/customview/PositionCaculate;->SPLINE:[F

    aput v12, v8, v13

    .line 103
    const/high16 v8, 0x41000000    # 8.0f

    sput v8, Lcom/market2345/customview/PositionCaculate;->sViscousFluidScale:F

    .line 105
    sput v12, Lcom/market2345/customview/PositionCaculate;->sViscousFluidNormalize:F

    .line 106
    invoke-static {v12}, Lcom/market2345/customview/PositionCaculate;->viscousFluid(F)F

    move-result v8

    div-float v8, v12, v8

    sput v8, Lcom/market2345/customview/PositionCaculate;->sViscousFluidNormalize:F

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/customview/PositionCaculate;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/customview/PositionCaculate;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 129
    return-void

    .line 128
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p3, "flywheel"    # Z

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinished:Z

    .line 139
    iput-object p2, p0, Lcom/market2345/customview/PositionCaculate;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 140
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mPpi:F

    .line 141
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/market2345/customview/PositionCaculate;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mDeceleration:F

    .line 142
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .param p1, "friction"    # F

    .prologue
    .line 159
    const v0, 0x43c10b3d

    iget v1, p0, Lcom/market2345/customview/PositionCaculate;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method static viscousFluid(F)F
    .locals 5
    .param p0, "x"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 393
    sget v1, Lcom/market2345/customview/PositionCaculate;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 394
    cmpg-float v1, p0, v4

    if-gez v1, :cond_0

    .line 396
    neg-float v1, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float v1, v4, v1

    sub-float/2addr p0, v1

    .line 404
    :goto_0
    sget v1, Lcom/market2345/customview/PositionCaculate;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 405
    return p0

    .line 400
    :cond_0
    const v0, 0x3ebc5ab2

    .line 401
    .local v0, "start":F
    sub-float v1, v4, p0

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v1, v2

    sub-float p0, v4, v1

    .line 402
    sub-float v1, v4, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinalX:I

    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mCurrX:I

    .line 418
    iget v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinalY:I

    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mCurrY:I

    .line 419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinished:Z

    .line 420
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 15

    .prologue
    const/4 v9, 0x1

    const/high16 v14, 0x42c80000    # 100.0f

    .line 275
    iget-boolean v10, p0, Lcom/market2345/customview/PositionCaculate;->mFinished:Z

    if-eqz v10, :cond_1

    .line 277
    const/4 v9, 0x0

    .line 332
    :cond_0
    :goto_0
    return v9

    .line 280
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/market2345/customview/PositionCaculate;->mStartTime:J

    sub-long/2addr v10, v12

    long-to-int v7, v10

    .line 282
    .local v7, "timePassed":I
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mDuration:I

    if-ge v7, v10, :cond_2

    .line 284
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mMode:I

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 287
    :pswitch_0
    int-to-float v10, v7

    iget v11, p0, Lcom/market2345/customview/PositionCaculate;->mDurationReciprocal:F

    mul-float v8, v10, v11

    .line 294
    .local v8, "x":F
    sget v10, Lcom/market2345/customview/PositionCaculate;->sViscousFluidNormalize:F

    mul-float/2addr v8, v10

    .line 296
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mStartX:I

    iget v11, p0, Lcom/market2345/customview/PositionCaculate;->mDeltaX:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrX:I

    .line 297
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mStartY:I

    iget v11, p0, Lcom/market2345/customview/PositionCaculate;->mDeltaY:F

    mul-float/2addr v11, v8

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrY:I

    goto :goto_0

    .line 300
    .end local v8    # "x":F
    :pswitch_1
    int-to-float v10, v7

    iget v11, p0, Lcom/market2345/customview/PositionCaculate;->mDuration:I

    int-to-float v11, v11

    div-float v4, v10, v11

    .line 301
    .local v4, "t":F
    mul-float v10, v14, v4

    float-to-int v3, v10

    .line 302
    .local v3, "index":I
    int-to-float v10, v3

    div-float v5, v10, v14

    .line 303
    .local v5, "t_inf":F
    add-int/lit8 v10, v3, 0x1

    int-to-float v10, v10

    div-float v6, v10, v14

    .line 304
    .local v6, "t_sup":F
    sget-object v10, Lcom/market2345/customview/PositionCaculate;->SPLINE:[F

    aget v0, v10, v3

    .line 305
    .local v0, "d_inf":F
    sget-object v10, Lcom/market2345/customview/PositionCaculate;->SPLINE:[F

    add-int/lit8 v11, v3, 0x1

    aget v1, v10, v11

    .line 306
    .local v1, "d_sup":F
    sub-float v10, v4, v5

    sub-float v11, v6, v5

    div-float/2addr v10, v11

    sub-float v11, v1, v0

    mul-float/2addr v10, v11

    add-float v2, v0, v10

    .line 308
    .local v2, "distanceCoef":F
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mStartX:I

    iget v11, p0, Lcom/market2345/customview/PositionCaculate;->mFinalX:I

    iget v12, p0, Lcom/market2345/customview/PositionCaculate;->mStartX:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrX:I

    .line 310
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrX:I

    iget v11, p0, Lcom/market2345/customview/PositionCaculate;->mMaxX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrX:I

    .line 311
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrX:I

    iget v11, p0, Lcom/market2345/customview/PositionCaculate;->mMinX:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrX:I

    .line 313
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mStartY:I

    iget v11, p0, Lcom/market2345/customview/PositionCaculate;->mFinalY:I

    iget v12, p0, Lcom/market2345/customview/PositionCaculate;->mStartY:I

    sub-int/2addr v11, v12

    int-to-float v11, v11

    mul-float/2addr v11, v2

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    add-int/2addr v10, v11

    iput v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrY:I

    .line 315
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrY:I

    iget v11, p0, Lcom/market2345/customview/PositionCaculate;->mMaxY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrY:I

    .line 316
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrY:I

    iget v11, p0, Lcom/market2345/customview/PositionCaculate;->mMinY:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrY:I

    .line 318
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrX:I

    iget v11, p0, Lcom/market2345/customview/PositionCaculate;->mFinalX:I

    if-ne v10, v11, :cond_0

    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrY:I

    iget v11, p0, Lcom/market2345/customview/PositionCaculate;->mFinalY:I

    if-ne v10, v11, :cond_0

    .line 320
    iput-boolean v9, p0, Lcom/market2345/customview/PositionCaculate;->mFinished:Z

    goto/16 :goto_0

    .line 328
    .end local v0    # "d_inf":F
    .end local v1    # "d_sup":F
    .end local v2    # "distanceCoef":F
    .end local v3    # "index":I
    .end local v4    # "t":F
    .end local v5    # "t_inf":F
    .end local v6    # "t_sup":F
    :cond_2
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mFinalX:I

    iput v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrX:I

    .line 329
    iget v10, p0, Lcom/market2345/customview/PositionCaculate;->mFinalY:I

    iput v10, p0, Lcom/market2345/customview/PositionCaculate;->mCurrY:I

    .line 330
    iput-boolean v9, p0, Lcom/market2345/customview/PositionCaculate;->mFinished:Z

    goto/16 :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .param p1, "extend"    # I

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/market2345/customview/PositionCaculate;->timePassed()I

    move-result v0

    .line 435
    .local v0, "passed":I
    add-int v1, v0, p1

    iput v1, p0, Lcom/market2345/customview/PositionCaculate;->mDuration:I

    .line 436
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/market2345/customview/PositionCaculate;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/market2345/customview/PositionCaculate;->mDurationReciprocal:F

    .line 437
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/market2345/customview/PositionCaculate;->mFinished:Z

    .line 438
    return-void
.end method

.method public final forceFinished(Z)V
    .locals 0
    .param p1, "finished"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/market2345/customview/PositionCaculate;->mFinished:Z

    .line 185
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 225
    iget v0, p0, Lcom/market2345/customview/PositionCaculate;->mVelocity:F

    iget v1, p0, Lcom/market2345/customview/PositionCaculate;->mDeceleration:F

    invoke-virtual {p0}, Lcom/market2345/customview/PositionCaculate;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa0000    # 2000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/market2345/customview/PositionCaculate;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/market2345/customview/PositionCaculate;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/market2345/customview/PositionCaculate;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/market2345/customview/PositionCaculate;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/market2345/customview/PositionCaculate;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lcom/market2345/customview/PositionCaculate;->mFinalX:I

    iget v2, p0, Lcom/market2345/customview/PositionCaculate;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Lcom/market2345/customview/PositionCaculate;->mFinalY:I

    iget v2, p0, Lcom/market2345/customview/PositionCaculate;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2
    .param p1, "newX"    # I

    .prologue
    .line 460
    iput p1, p0, Lcom/market2345/customview/PositionCaculate;->mFinalX:I

    .line 461
    iget v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinalX:I

    iget v1, p0, Lcom/market2345/customview/PositionCaculate;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mDeltaX:F

    .line 462
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinished:Z

    .line 463
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .param p1, "newY"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/market2345/customview/PositionCaculate;->mFinalY:I

    .line 476
    iget v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinalY:I

    iget v1, p0, Lcom/market2345/customview/PositionCaculate;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mDeltaY:F

    .line 477
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinished:Z

    .line 478
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .param p1, "friction"    # F

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lcom/market2345/customview/PositionCaculate;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mDeceleration:F

    .line 155
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 355
    const/16 v5, 0xbb8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/customview/PositionCaculate;->startScroll(IIIII)V

    .line 356
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 2
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .line 378
    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mMode:I

    .line 379
    iput-boolean v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinished:Z

    .line 380
    iput p5, p0, Lcom/market2345/customview/PositionCaculate;->mDuration:I

    .line 381
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/customview/PositionCaculate;->mStartTime:J

    .line 382
    iput p1, p0, Lcom/market2345/customview/PositionCaculate;->mStartX:I

    .line 383
    iput p2, p0, Lcom/market2345/customview/PositionCaculate;->mStartY:I

    .line 384
    add-int v0, p1, p3

    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinalX:I

    .line 385
    add-int v0, p2, p4

    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mFinalY:I

    .line 386
    int-to-float v0, p3

    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mDeltaX:F

    .line 387
    int-to-float v0, p4

    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mDeltaY:F

    .line 388
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/market2345/customview/PositionCaculate;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/market2345/customview/PositionCaculate;->mDurationReciprocal:F

    .line 389
    return-void
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 447
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/market2345/customview/PositionCaculate;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
