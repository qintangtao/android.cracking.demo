.class Lcom/market2345/settings/rangebar/Bar;
.super Ljava/lang/Object;
.source "Bar.java"


# instance fields
.field private final mBarColor:I

.field private final mBarWeight:I

.field private final mLeftX:F

.field private mNumSegments:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPaintShadow:Landroid/graphics/Paint;

.field private final mRightX:F

.field private mShowText:Z

.field private mShowTickHeight:Z

.field private final mTextColor:I

.field private mTextDistance:F

.field private mTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTickDistance:F

.field private final mTickEndY:F

.field private final mTickHeight:F

.field private final mTickStartY:F

.field private final mY:F


# direct methods
.method constructor <init>(Landroid/content/Context;FFFIFFIZZLjava/util/List;FI)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "length"    # F
    .param p5, "tickCount"    # I
    .param p6, "tickHeightDP"    # F
    .param p7, "BarWeight"    # F
    .param p8, "BarColor"    # I
    .param p9, "showTickHeight"    # Z
    .param p10, "showText"    # Z
    .param p12, "textSize"    # F
    .param p13, "textColor"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "FFFIFFIZZ",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;FI)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p11, "textList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p2, p0, Lcom/market2345/settings/rangebar/Bar;->mLeftX:F

    .line 75
    add-float v3, p2, p4

    iput v3, p0, Lcom/market2345/settings/rangebar/Bar;->mRightX:F

    .line 76
    iput p3, p0, Lcom/market2345/settings/rangebar/Bar;->mY:F

    .line 78
    add-int/lit8 v3, p5, -0x1

    iput v3, p0, Lcom/market2345/settings/rangebar/Bar;->mNumSegments:I

    .line 79
    iget v3, p0, Lcom/market2345/settings/rangebar/Bar;->mNumSegments:I

    int-to-float v3, v3

    div-float v3, p4, v3

    iput v3, p0, Lcom/market2345/settings/rangebar/Bar;->mTickDistance:F

    .line 83
    invoke-static {p1, p6}, Lcom/market2345/util/SPUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/market2345/settings/rangebar/Bar;->mTickHeight:F

    .line 84
    invoke-static {p1, p7}, Lcom/market2345/util/SPUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    iput v3, p0, Lcom/market2345/settings/rangebar/Bar;->mBarWeight:I

    .line 85
    iput p8, p0, Lcom/market2345/settings/rangebar/Bar;->mBarColor:I

    .line 87
    iget v3, p0, Lcom/market2345/settings/rangebar/Bar;->mY:F

    iget v4, p0, Lcom/market2345/settings/rangebar/Bar;->mTickHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/market2345/settings/rangebar/Bar;->mTickStartY:F

    .line 88
    iget v3, p0, Lcom/market2345/settings/rangebar/Bar;->mY:F

    iget v4, p0, Lcom/market2345/settings/rangebar/Bar;->mTickHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, p0, Lcom/market2345/settings/rangebar/Bar;->mTickEndY:F

    .line 91
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/market2345/settings/rangebar/Bar;->mBarColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/market2345/settings/rangebar/Bar;->mBarWeight:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 94
    iget-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 96
    iget-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    move/from16 v0, p12

    invoke-static {p1, v0}, Lcom/market2345/util/SPUtil;->sp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 98
    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/market2345/settings/rangebar/Bar;->mShowTickHeight:Z

    .line 99
    move/from16 v0, p10

    iput-boolean v0, p0, Lcom/market2345/settings/rangebar/Bar;->mShowText:Z

    .line 100
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    .line 101
    iget v3, p0, Lcom/market2345/settings/rangebar/Bar;->mTickStartY:F

    const/high16 v4, 0x41200000    # 10.0f

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/market2345/settings/rangebar/Bar;->mTextDistance:F

    .line 103
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    .line 104
    iget-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 107
    .local v2, "size":I
    move v1, v2

    .local v1, "i":I
    :goto_0
    if-ge v1, p5, :cond_0

    .line 109
    iget-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    const-string v4, ""

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mPaintShadow:Landroid/graphics/Paint;

    .line 114
    iget-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mPaintShadow:Landroid/graphics/Paint;

    move/from16 v0, p13

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mPaintShadow:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 116
    iget-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mPaintShadow:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mPaintShadow:Landroid/graphics/Paint;

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 118
    iget-object v3, p0, Lcom/market2345/settings/rangebar/Bar;->mPaintShadow:Landroid/graphics/Paint;

    const/high16 v4, 0x40a00000    # 5.0f

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    move/from16 v0, p13

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 120
    move/from16 v0, p13

    iput v0, p0, Lcom/market2345/settings/rangebar/Bar;->mTextColor:I

    .line 121
    return-void
.end method

.method private drawTicks(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mTextColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 222
    iget-boolean v0, p0, Lcom/market2345/settings/rangebar/Bar;->mShowTickHeight:Z

    if-eqz v0, :cond_0

    .line 224
    iget v1, p0, Lcom/market2345/settings/rangebar/Bar;->mLeftX:F

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mTickStartY:F

    iget v3, p0, Lcom/market2345/settings/rangebar/Bar;->mLeftX:F

    iget v4, p0, Lcom/market2345/settings/rangebar/Bar;->mTickEndY:F

    iget-object v5, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 228
    :cond_0
    iget-boolean v0, p0, Lcom/market2345/settings/rangebar/Bar;->mShowText:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mLeftX:F

    iget v3, p0, Lcom/market2345/settings/rangebar/Bar;->mTextDistance:F

    iget-object v4, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 234
    :cond_1
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    iget v0, p0, Lcom/market2345/settings/rangebar/Bar;->mNumSegments:I

    if-ge v8, v0, :cond_4

    .line 236
    int-to-float v0, v8

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mTickDistance:F

    mul-float/2addr v0, v2

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mLeftX:F

    add-float v1, v0, v2

    .line 238
    .local v1, "x":F
    iget-boolean v0, p0, Lcom/market2345/settings/rangebar/Bar;->mShowTickHeight:Z

    if-eqz v0, :cond_2

    .line 240
    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mTickStartY:F

    iget v4, p0, Lcom/market2345/settings/rangebar/Bar;->mTickEndY:F

    iget-object v5, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 244
    :cond_2
    iget-boolean v0, p0, Lcom/market2345/settings/rangebar/Bar;->mShowText:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 246
    iget-object v2, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 247
    .local v9, "textWidth":F
    iget-object v0, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v9, v2

    sub-float v2, v1, v2

    iget v3, p0, Lcom/market2345/settings/rangebar/Bar;->mTextDistance:F

    iget-object v4, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 234
    .end local v9    # "textWidth":F
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 254
    .end local v1    # "x":F
    :cond_4
    iget-boolean v0, p0, Lcom/market2345/settings/rangebar/Bar;->mShowTickHeight:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/market2345/settings/rangebar/Bar;->mNumSegments:I

    if-lez v0, :cond_5

    .line 256
    iget v3, p0, Lcom/market2345/settings/rangebar/Bar;->mRightX:F

    iget v4, p0, Lcom/market2345/settings/rangebar/Bar;->mTickStartY:F

    iget v5, p0, Lcom/market2345/settings/rangebar/Bar;->mRightX:F

    iget v6, p0, Lcom/market2345/settings/rangebar/Bar;->mTickEndY:F

    iget-object v7, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 260
    :cond_5
    iget-boolean v0, p0, Lcom/market2345/settings/rangebar/Bar;->mShowText:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/market2345/settings/rangebar/Bar;->mNumSegments:I

    if-lez v0, :cond_6

    .line 262
    iget-object v2, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    iget v3, p0, Lcom/market2345/settings/rangebar/Bar;->mNumSegments:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    .line 263
    .restart local v9    # "textWidth":F
    iget-object v0, p0, Lcom/market2345/settings/rangebar/Bar;->mTextList:Ljava/util/List;

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mNumSegments:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mRightX:F

    sub-float/2addr v2, v9

    iget v3, p0, Lcom/market2345/settings/rangebar/Bar;->mTextDistance:F

    iget-object v4, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 265
    .end local v9    # "textWidth":F
    :cond_6
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 135
    iget-object v0, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/market2345/settings/rangebar/Bar;->mBarColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 136
    iget v1, p0, Lcom/market2345/settings/rangebar/Bar;->mLeftX:F

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mY:F

    iget v3, p0, Lcom/market2345/settings/rangebar/Bar;->mRightX:F

    iget v4, p0, Lcom/market2345/settings/rangebar/Bar;->mY:F

    iget-object v5, p0, Lcom/market2345/settings/rangebar/Bar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 137
    iget v1, p0, Lcom/market2345/settings/rangebar/Bar;->mLeftX:F

    iget v0, p0, Lcom/market2345/settings/rangebar/Bar;->mY:F

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mBarWeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    add-float v2, v0, v6

    iget v3, p0, Lcom/market2345/settings/rangebar/Bar;->mRightX:F

    iget v0, p0, Lcom/market2345/settings/rangebar/Bar;->mY:F

    iget v4, p0, Lcom/market2345/settings/rangebar/Bar;->mBarWeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float/2addr v0, v4

    add-float v4, v0, v6

    iget-object v5, p0, Lcom/market2345/settings/rangebar/Bar;->mPaintShadow:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 139
    invoke-direct {p0, p1}, Lcom/market2345/settings/rangebar/Bar;->drawTicks(Landroid/graphics/Canvas;)V

    .line 140
    return-void
.end method

.method getLeftX()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/market2345/settings/rangebar/Bar;->mLeftX:F

    return v0
.end method

.method getNearestTickCoordinate(Lcom/market2345/settings/rangebar/Thumb;)F
    .locals 5
    .param p1, "thumb"    # Lcom/market2345/settings/rangebar/Thumb;

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/market2345/settings/rangebar/Bar;->getNearestTickIndex(Lcom/market2345/settings/rangebar/Thumb;)I

    move-result v1

    .line 174
    .local v1, "nearestTickIndex":I
    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mLeftX:F

    int-to-float v3, v1

    iget v4, p0, Lcom/market2345/settings/rangebar/Bar;->mTickDistance:F

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 176
    .local v0, "nearestTickCoordinate":F
    return v0
.end method

.method getNearestTickIndex(Lcom/market2345/settings/rangebar/Thumb;)I
    .locals 4
    .param p1, "thumb"    # Lcom/market2345/settings/rangebar/Thumb;

    .prologue
    .line 189
    invoke-virtual {p1}, Lcom/market2345/settings/rangebar/Thumb;->getX()F

    move-result v1

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mLeftX:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mTickDistance:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mTickDistance:F

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 191
    .local v0, "nearestTickIndex":I
    return v0
.end method

.method getRightX()F
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/market2345/settings/rangebar/Bar;->mRightX:F

    return v0
.end method

.method setTickCount(I)V
    .locals 3
    .param p1, "tickCount"    # I

    .prologue
    .line 203
    iget v1, p0, Lcom/market2345/settings/rangebar/Bar;->mRightX:F

    iget v2, p0, Lcom/market2345/settings/rangebar/Bar;->mLeftX:F

    sub-float v0, v1, v2

    .line 205
    .local v0, "barLength":F
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/market2345/settings/rangebar/Bar;->mNumSegments:I

    .line 206
    iget v1, p0, Lcom/market2345/settings/rangebar/Bar;->mNumSegments:I

    int-to-float v1, v1

    div-float v1, v0, v1

    iput v1, p0, Lcom/market2345/settings/rangebar/Bar;->mTickDistance:F

    .line 207
    return-void
.end method
