.class public Lcom/market2345/dumpclean/widget/SGTextView;
.super Landroid/widget/TextView;
.source "SGTextView.java"


# instance fields
.field fromAsset:Landroid/graphics/Typeface;

.field private mPaint:Landroid/graphics/Paint;

.field shader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/dumpclean/widget/SGTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->init()V

    .line 35
    const-string v0, "#ffffffff"

    const-string v1, "#00ffffff"

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/market2345/dumpclean/widget/SGTextView;->setStyle(Ljava/lang/String;Ljava/lang/String;I)V

    .line 36
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/cm_main_percent2345.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->fromAsset:Landroid/graphics/Typeface;

    .line 40
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    .line 91
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->getMeasuredWidth()I

    move-result v1

    .line 93
    .local v1, "width":I
    if-nez v1, :cond_0

    .line 94
    invoke-virtual {p0, v5, v5}, Lcom/market2345/dumpclean/widget/SGTextView;->measure(II)V

    .line 95
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v5

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 96
    invoke-virtual {p0, v1}, Lcom/market2345/dumpclean/widget/SGTextView;->setWidth(I)V

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->getBaseline()I

    move-result v4

    int-to-float v3, v4

    .line 100
    .local v3, "y":F
    int-to-float v4, v1

    iget-object v5, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    div-float v2, v4, v6

    .line 104
    .local v2, "x":F
    iget-object v4, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 110
    return-void
.end method

.method public setStyle(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "startColor"    # Ljava/lang/String;
    .param p2, "endColor"    # Ljava/lang/String;
    .param p3, "gradientHeighDp"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/market2345/dumpclean/widget/SGTextView;->fromAsset:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 50
    new-array v5, v3, [I

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v5, v0

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    aput v0, v5, v10

    .line 51
    .local v5, "colors":[I
    new-array v6, v3, [F

    fill-array-data v6, :array_0

    .line 52
    .local v6, "positions":[F
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->getContext()Landroid/content/Context;

    move-result-object v2

    int-to-float v3, p3

    invoke-static {v2, v3}, Lcom/market2345/dumpclean/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v4, v2

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->shader:Landroid/graphics/Shader;

    .line 55
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setDither(Z)V

    .line 57
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 59
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 60
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 61
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->getTextSize()F

    move-result v9

    .line 63
    .local v9, "textSize":F
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v2}, Lcom/market2345/dumpclean/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v8

    .line 64
    .local v8, "radio":I
    const/16 v0, 0x19

    if-le v8, v0, :cond_0

    .line 65
    const/16 v8, 0x19

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v8

    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/SGTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40c00000    # 6.0f

    invoke-static {v3, v4}, Lcom/market2345/dumpclean/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const-string v4, "#33000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 68
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    const-string v1, "#ffffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/SGTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 77
    return-void

    .line 51
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 0
    .param p1, "tf"    # Landroid/graphics/Typeface;
    .param p2, "style"    # I

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 84
    return-void
.end method
