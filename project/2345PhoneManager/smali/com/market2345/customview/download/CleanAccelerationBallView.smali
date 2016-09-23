.class public Lcom/market2345/customview/download/CleanAccelerationBallView;
.super Landroid/view/View;
.source "CleanAccelerationBallView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/customview/download/CleanAccelerationBallView$1;,
        Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;
    }
.end annotation


# instance fields
.field private final PI2:D

.field private final X_SPACE:F

.field private bottom:I

.field private finishColor:I

.field private isAnimation:Z

.field private left:I

.field private mAboveOffset:F

.field private mAboveWavePaint:Landroid/graphics/Paint;

.field private mAboveWavePath:Landroid/graphics/Path;

.field private mMaxRight:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRefreshProgressRunnable:Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;

.field private mWaveHeight:I

.field private mWaveHz:F

.field private mWaveLength:F

.field private final mWaveMultiple:F

.field private omega:D

.field private pelletHeight:I

.field private progress:I

.field private rectF:Landroid/graphics/RectF;

.field private right:I

.field private textPaint:Landroid/text/TextPaint;

.field private top:I

.field private unfinishColor:I

.field private waveColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/customview/download/CleanAccelerationBallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/customview/download/CleanAccelerationBallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iput-wide v2, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->PI2:D

    .line 22
    const/high16 v1, 0x41a00000    # 20.0f

    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->X_SPACE:F

    .line 23
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mWaveMultiple:F

    .line 30
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->rectF:Landroid/graphics/RectF;

    .line 33
    const/4 v1, 0x0

    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveOffset:F

    .line 36
    const/16 v1, 0x8

    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mWaveHeight:I

    .line 37
    const v1, 0x3db851ec    # 0.09f

    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mWaveHz:F

    .line 42
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveWavePaint:Landroid/graphics/Paint;

    .line 43
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveWavePath:Landroid/graphics/Path;

    .line 60
    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020255

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->pelletHeight:I

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/market2345/R$styleable;->CleanAccelerationBallView:[I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->initByAttributes(Landroid/content/res/TypedArray;)V

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/customview/download/CleanAccelerationBallView;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/customview/download/CleanAccelerationBallView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->calculatePath()V

    return-void
.end method

.method private calculatePath()V
    .locals 8

    .prologue
    .line 169
    iget-object v2, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveWavePath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 170
    invoke-direct {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getWaveOffset()V

    .line 172
    iget-object v2, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveWavePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 173
    const/4 v0, 0x0

    .local v0, "x":F
    :goto_0
    iget v2, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mMaxRight:F

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 174
    iget v2, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mWaveHeight:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->omega:D

    float-to-double v6, v0

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveOffset:F

    float-to-double v6, v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mWaveHeight:I

    int-to-double v4, v4

    add-double/2addr v2, v4

    double-to-float v1, v2

    .line 175
    .local v1, "y":F
    iget v2, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 176
    iget-object v2, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveWavePath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 173
    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v0, v2

    goto :goto_0

    .line 178
    .end local v1    # "y":F
    :cond_0
    iget-object v2, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveWavePath:Landroid/graphics/Path;

    iget v3, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->right:I

    int-to-float v3, v3

    iget v4, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 180
    return-void
.end method

.method private getWaveOffset()V
    .locals 2

    .prologue
    .line 186
    iget v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveOffset:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveOffset:F

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveOffset:F

    iget v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mWaveHz:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveOffset:F

    goto :goto_0
.end method

.method private getWaveTop()I
    .locals 5

    .prologue
    .line 149
    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getProgress()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 150
    .local v0, "mWaveToTop":I
    return v0
.end method

.method private initByAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "attr"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->unfinishColor:I

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->finishColor:I

    .line 70
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->waveColor:I

    .line 71
    const/4 v0, 0x3

    const/16 v1, 0x32

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->progress:I

    .line 72
    invoke-direct {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->initCilrclePaint()V

    .line 73
    invoke-direct {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->initTextPaint()V

    .line 74
    invoke-direct {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->initWavePaint()V

    .line 75
    return-void
.end method

.method private initCilrclePaint()V
    .locals 2

    .prologue
    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mPaint:Landroid/graphics/Paint;

    .line 93
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    return-void
.end method

.method private initTextPaint()V
    .locals 2

    .prologue
    .line 85
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->textPaint:Landroid/text/TextPaint;

    .line 86
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->textPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 87
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->textPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41e00000    # 28.0f

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 88
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->textPaint:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 89
    return-void
.end method

.method private initWavePaint()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveWavePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->waveColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveWavePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveWavePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    return-void
.end method

.method private measure(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 108
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 109
    .local v0, "mode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 110
    .local v2, "size":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 111
    move v1, v2

    .line 119
    .local v1, "result":I
    :cond_0
    :goto_0
    return v1

    .line 113
    .end local v1    # "result":I
    :cond_1
    iget v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->pelletHeight:I

    .line 114
    .restart local v1    # "result":I
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_0

    .line 115
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->progress:I

    return v0
.end method

.method public isAnimation()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->isAnimation:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 213
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 214
    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->startWave()V

    .line 215
    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getProgress()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v13, v0, v1

    .line 216
    .local v13, "yHeight":F
    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v12, v0, v8

    .line 217
    .local v12, "radius":F
    sub-float v0, v12, v13

    div-float/2addr v0, v12

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v6

    double-to-float v11, v0

    .line 218
    .local v11, "angle":F
    const/high16 v0, 0x42b40000    # 90.0f

    add-float v2, v0, v11

    .line 219
    .local v2, "startAngle":F
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float v1, v11, v8

    sub-float v3, v0, v1

    .line 220
    .local v3, "sweepAngle":F
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->unfinishColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 221
    iget-object v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->rectF:Landroid/graphics/RectF;

    iget-object v5, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 223
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 224
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p1, v0, v1, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 225
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->finishColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v6, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->rectF:Landroid/graphics/RectF;

    const/high16 v0, 0x43870000    # 270.0f

    sub-float v7, v0, v11

    mul-float/2addr v8, v11

    iget-object v10, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mPaint:Landroid/graphics/Paint;

    move-object v5, p1

    move v9, v4

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 227
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 229
    iget-boolean v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->isAnimation:Z

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveWavePath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mAboveWavePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 233
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 247
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 248
    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->startWave()V

    .line 249
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/market2345/customview/download/CleanAccelerationBallView;->measure(I)I

    move-result v2

    .line 100
    .local v2, "width":I
    invoke-direct {p0, p2}, Lcom/market2345/customview/download/CleanAccelerationBallView;->measure(I)I

    move-result v0

    .line 101
    .local v0, "height":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 102
    .local v1, "temp":I
    iget-object v3, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->rectF:Landroid/graphics/RectF;

    int-to-float v4, v1

    int-to-float v5, v1

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 103
    invoke-virtual {p0, v1, v1}, Lcom/market2345/customview/download/CleanAccelerationBallView;->setMeasuredDimension(II)V

    .line 104
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 253
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 254
    const/16 v0, 0x8

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->startOrStopWave(Z)V

    .line 255
    return-void

    .line 254
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsAnimation(Z)V
    .locals 0
    .param p1, "isAnimation"    # Z

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->isAnimation:Z

    .line 242
    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->invalidate()V

    .line 243
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    const/16 v1, 0x64

    .line 140
    iput p1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->progress:I

    .line 141
    iget v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->progress:I

    if-le v0, v1, :cond_0

    .line 142
    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->progress:I

    .line 146
    :goto_0
    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->requestLayout()V

    goto :goto_0
.end method

.method public startOrStopWave(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 202
    if-eqz p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mRefreshProgressRunnable:Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 204
    new-instance v0, Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;-><init>(Lcom/market2345/customview/download/CleanAccelerationBallView;Lcom/market2345/customview/download/CleanAccelerationBallView$1;)V

    iput-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mRefreshProgressRunnable:Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;

    .line 205
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mRefreshProgressRunnable:Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->post(Ljava/lang/Runnable;)Z

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mRefreshProgressRunnable:Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;

    invoke-virtual {p0, v0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public startWave()V
    .locals 6

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v0, v1

    .line 125
    .local v0, "width":I
    int-to-float v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mWaveLength:F

    .line 126
    iget-object v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->left:I

    .line 127
    invoke-direct {p0}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getWaveTop()I

    move-result v1

    iget v2, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mWaveHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->top:I

    .line 128
    iget-object v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    float-to-int v1, v1

    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->right:I

    .line 129
    iget v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->top:I

    iget v2, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mWaveHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->bottom:I

    .line 130
    iget v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->right:I

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    add-float/2addr v1, v2

    iput v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mMaxRight:F

    .line 131
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    iget v1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->mWaveLength:F

    float-to-double v4, v1

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/market2345/customview/download/CleanAccelerationBallView;->omega:D

    .line 133
    .end local v0    # "width":I
    :cond_0
    return-void
.end method
