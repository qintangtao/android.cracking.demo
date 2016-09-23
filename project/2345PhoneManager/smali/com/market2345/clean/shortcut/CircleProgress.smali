.class public Lcom/market2345/clean/shortcut/CircleProgress;
.super Landroid/view/View;
.source "CircleProgress.java"


# static fields
.field private static final INSTANCE_FINISHED_STROKE_COLOR:Ljava/lang/String; = "finished_stroke_color"

.field private static final INSTANCE_MAX:Ljava/lang/String; = "max"

.field private static final INSTANCE_PREFIX:Ljava/lang/String; = "prefix"

.field private static final INSTANCE_PROGRESS:Ljava/lang/String; = "progress"

.field private static final INSTANCE_STATE:Ljava/lang/String; = "saved_instance"

.field private static final INSTANCE_SUFFIX:Ljava/lang/String; = "suffix"

.field private static final INSTANCE_TEXT_COLOR:Ljava/lang/String; = "text_color"

.field private static final INSTANCE_TEXT_SIZE:Ljava/lang/String; = "text_size"

.field private static final INSTANCE_UNFINISHED_STROKE_COLOR:Ljava/lang/String; = "unfinished_stroke_color"

.field public static circleStrokeWidth:F = 0.0f

.field private static defalut_inner_circle_color:I = 0x0

.field public static final hollowStrokeWidth:F = 5.0f


# instance fields
.field private circlePaint:Landroid/graphics/Paint;

.field private final default_finished_color:I

.field private final default_max:I

.field private final default_text_color:I

.field private final default_text_size:F

.field private final default_unfinished_color:I

.field private finishedColor:I

.field private innerCirclePaint:Landroid/graphics/Paint;

.field private max:I

.field private final min_size:I

.field private paint:Landroid/graphics/Paint;

.field private prefixText:Ljava/lang/String;

.field private progress:I

.field private rectF:Landroid/graphics/RectF;

.field private suffixText:Ljava/lang/String;

.field private textColor:I

.field private textPaint:Landroid/graphics/Paint;

.field private textSize:F

.field private textSizeSuffix:F

.field private textSuffixPaint:Landroid/text/TextPaint;

.field private unfinishedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lcom/market2345/clean/shortcut/CircleProgress;->circleStrokeWidth:F

    .line 41
    const-string v0, "#3097FD"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/market2345/clean/shortcut/CircleProgress;->defalut_inner_circle_color:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/clean/shortcut/CircleProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/clean/shortcut/CircleProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xcc

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->rectF:Landroid/graphics/RectF;

    .line 30
    iput v5, p0, Lcom/market2345/clean/shortcut/CircleProgress;->progress:I

    .line 34
    const-string v1, ""

    iput-object v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->prefixText:Ljava/lang/String;

    .line 35
    const-string v1, "%"

    iput-object v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->suffixText:Ljava/lang/String;

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textSizeSuffix:F

    .line 42
    const/16 v1, 0x42

    const/16 v2, 0x91

    const/16 v3, 0xf1

    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->default_finished_color:I

    .line 43
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->default_unfinished_color:I

    .line 44
    const/4 v1, -0x1

    iput v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->default_text_color:I

    .line 45
    const/16 v1, 0x64

    iput v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->default_max:I

    .line 58
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->paint:Landroid/graphics/Paint;

    .line 71
    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {p1, v1}, Lcom/market2345/dumpclean/DisplayUtil;->sp2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->default_text_size:F

    .line 72
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p1, v1}, Lcom/market2345/dumpclean/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->min_size:I

    .line 73
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-static {p1, v1}, Lcom/market2345/dumpclean/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    sput v1, Lcom/market2345/clean/shortcut/CircleProgress;->circleStrokeWidth:F

    .line 74
    const/high16 v1, 0x41500000    # 13.0f

    invoke-static {p1, v1}, Lcom/market2345/dumpclean/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textSizeSuffix:F

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/market2345/R$styleable;->CircleProgress:[I

    invoke-virtual {v1, p2, v2, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 76
    .local v0, "attributes":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Lcom/market2345/clean/shortcut/CircleProgress;->initByAttributes(Landroid/content/res/TypedArray;)V

    .line 77
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 79
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->initPainters()V

    .line 80
    return-void
.end method


# virtual methods
.method public getDrawText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getPrefixText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFinishedColor()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->finishedColor:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->max:I

    return v0
.end method

.method public getPrefixText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->prefixText:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->progress:I

    return v0
.end method

.method public getProgressPercentage()F
    .locals 2

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getRadius()F
    .locals 2

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v0, v1

    return v0
.end method

.method public getSuffixText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->suffixText:Ljava/lang/String;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->min_size:I

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->min_size:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textSize:F

    return v0
.end method

.method public getUnfinishedColor()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->unfinishedColor:I

    return v0
.end method

.method protected initByAttributes(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "attributes"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 83
    const/4 v0, 0x3

    iget v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->default_finished_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->finishedColor:I

    .line 84
    const/4 v0, 0x2

    iget v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->default_unfinished_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->unfinishedColor:I

    .line 85
    const/4 v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textColor:I

    .line 86
    const/4 v0, 0x4

    iget v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->default_text_size:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textSize:F

    .line 88
    const/4 v0, 0x1

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/market2345/clean/shortcut/CircleProgress;->setMax(I)V

    .line 89
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/market2345/clean/shortcut/CircleProgress;->setProgress(I)V

    .line 91
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/clean/shortcut/CircleProgress;->setPrefixText(Ljava/lang/String;)V

    .line 94
    :cond_0
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/clean/shortcut/CircleProgress;->setSuffixText(Ljava/lang/String;)V

    .line 97
    :cond_1
    return-void
.end method

.method protected initPainters()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 100
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textPaint:Landroid/graphics/Paint;

    .line 101
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 103
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    new-instance v0, Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textSuffixPaint:Landroid/text/TextPaint;

    .line 106
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textSuffixPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textSizeSuffix:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->circlePaint:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 109
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->circlePaint:Landroid/graphics/Paint;

    sget v1, Lcom/market2345/clean/shortcut/CircleProgress;->circleStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->innerCirclePaint:Landroid/graphics/Paint;

    .line 113
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->innerCirclePaint:Landroid/graphics/Paint;

    sget v1, Lcom/market2345/clean/shortcut/CircleProgress;->defalut_inner_circle_color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->innerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 115
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    return-void
.end method

.method public invalidate()V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->initPainters()V

    .line 121
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 122
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/market2345/clean/shortcut/CircleProgress;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 229
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const/high16 v3, 0x40a00000    # 5.0f

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/market2345/clean/shortcut/CircleProgress;->innerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 232
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getProgress()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v13, v0, v1

    .line 233
    .local v13, "yHeight":F
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 234
    .local v7, "radius":F
    sub-float v0, v7, v13

    div-float/2addr v0, v7

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    double-to-float v6, v0

    .line 236
    .local v6, "angle":F
    const/high16 v0, 0x42b40000    # 90.0f

    add-float v8, v0, v6

    .line 237
    .local v8, "startAngle":F
    const/high16 v0, 0x43b40000    # 360.0f

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v6

    sub-float v10, v0, v1

    .line 238
    .local v10, "sweepAngle":F
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getUnfinishedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 244
    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 245
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getFinishedColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->rectF:Landroid/graphics/RectF;

    const/high16 v0, 0x43870000    # 270.0f

    sub-float v2, v0, v6

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v3, v6, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/market2345/clean/shortcut/CircleProgress;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 255
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getDrawText()Ljava/lang/String;

    move-result-object v11

    .line 256
    .local v11, "text":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    iget-object v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    add-float v12, v0, v1

    .line 258
    .local v12, "textHeight":F
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v12

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 259
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getSuffixText()Ljava/lang/String;

    move-result-object v9

    .line 260
    .local v9, "suffixText":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v12

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textSuffixPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v9, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 265
    .end local v9    # "suffixText":Ljava/lang/String;
    .end local v12    # "textHeight":F
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 221
    sget v1, Lcom/market2345/clean/shortcut/CircleProgress;->circleStrokeWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v0, v1, v2

    .line 222
    .local v0, "temp":F
    iget-object v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->rectF:Landroid/graphics/RectF;

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 223
    invoke-virtual {p0, p1, p2}, Lcom/market2345/clean/shortcut/CircleProgress;->setMeasuredDimension(II)V

    .line 224
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 284
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 285
    check-cast v0, Landroid/os/Bundle;

    .line 286
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "text_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textColor:I

    .line 287
    const-string v1, "text_size"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textSize:F

    .line 288
    const-string v1, "finished_stroke_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->finishedColor:I

    .line 289
    const-string v1, "unfinished_stroke_color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->unfinishedColor:I

    .line 290
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->initPainters()V

    .line 291
    const-string v1, "max"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/market2345/clean/shortcut/CircleProgress;->setMax(I)V

    .line 292
    const-string v1, "progress"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/market2345/clean/shortcut/CircleProgress;->setProgress(I)V

    .line 293
    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->prefixText:Ljava/lang/String;

    .line 294
    const-string v1, "suffix"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->suffixText:Ljava/lang/String;

    .line 295
    const-string v1, "saved_instance"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 299
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 298
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 269
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "saved_instance"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 271
    const-string v1, "text_color"

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getTextColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 272
    const-string v1, "text_size"

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getTextSize()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 273
    const-string v1, "finished_stroke_color"

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getFinishedColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 274
    const-string v1, "unfinished_stroke_color"

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getUnfinishedColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 275
    const-string v1, "max"

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getMax()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 276
    const-string v1, "progress"

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getProgress()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 277
    const-string v1, "suffix"

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getSuffixText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "prefix"

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getPrefixText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-object v0
.end method

.method public setFinishedColor(I)V
    .locals 0
    .param p1, "finishedColor"    # I

    .prologue
    .line 170
    iput p1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->finishedColor:I

    .line 171
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->invalidate()V

    .line 172
    return-void
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 141
    if-lez p1, :cond_0

    .line 142
    iput p1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->max:I

    .line 143
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->invalidate()V

    .line 145
    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/String;)V
    .locals 0
    .param p1, "prefixText"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->prefixText:Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->invalidate()V

    .line 190
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->progress:I

    .line 130
    iget v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->progress:I

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getMax()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 131
    iget v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->progress:I

    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->getMax()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/market2345/clean/shortcut/CircleProgress;->progress:I

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->invalidate()V

    .line 134
    return-void
.end method

.method public setSuffixText(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffixText"    # Ljava/lang/String;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->suffixText:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->invalidate()V

    .line 199
    return-void
.end method

.method public setTextColor(I)V
    .locals 0
    .param p1, "textColor"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textColor:I

    .line 162
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->invalidate()V

    .line 163
    return-void
.end method

.method public setTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 152
    iput p1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->textSize:F

    .line 153
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->invalidate()V

    .line 154
    return-void
.end method

.method public setUnfinishedColor(I)V
    .locals 0
    .param p1, "unfinishedColor"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/market2345/clean/shortcut/CircleProgress;->unfinishedColor:I

    .line 180
    invoke-virtual {p0}, Lcom/market2345/clean/shortcut/CircleProgress;->invalidate()V

    .line 181
    return-void
.end method
