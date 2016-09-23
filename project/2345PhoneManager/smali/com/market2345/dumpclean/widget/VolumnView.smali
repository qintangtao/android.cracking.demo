.class public Lcom/market2345/dumpclean/widget/VolumnView;
.super Landroid/view/View;
.source "VolumnView.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field r1:F

.field r2:F

.field r3:F

.field w1:F

.field w2:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->progress:I

    .line 48
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r1:F

    .line 49
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r2:F

    .line 50
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r3:F

    .line 52
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w1:F

    .line 54
    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w2:F

    .line 39
    invoke-virtual {p0, p1}, Lcom/market2345/dumpclean/widget/VolumnView;->init(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->progress:I

    .line 48
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r1:F

    .line 49
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r2:F

    .line 50
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r3:F

    .line 52
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w1:F

    .line 54
    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w2:F

    .line 34
    invoke-virtual {p0, p1}, Lcom/market2345/dumpclean/widget/VolumnView;->init(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->progress:I

    .line 48
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r1:F

    .line 49
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r2:F

    .line 50
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r3:F

    .line 52
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w1:F

    .line 54
    const/high16 v0, 0x42100000    # 36.0f

    iput v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w2:F

    .line 29
    invoke-virtual {p0, p1}, Lcom/market2345/dumpclean/widget/VolumnView;->init(Landroid/content/Context;)V

    .line 30
    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    .line 44
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/VolumnView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202bc

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->bitmap:Landroid/graphics/Bitmap;

    .line 46
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 57
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/VolumnView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v6, v0

    .line 58
    .local v6, "cx":F
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/VolumnView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    .line 59
    .local v7, "cy":F
    iget v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w1:F

    div-float/2addr v0, v10

    sub-float v0, v6, v0

    iput v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r1:F

    .line 60
    iget v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w1:F

    div-float/2addr v0, v10

    sub-float v0, v6, v0

    iget v2, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w2:F

    div-float/2addr v2, v10

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r2:F

    .line 61
    iget v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w1:F

    div-float/2addr v0, v10

    sub-float v0, v6, v0

    iget v2, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w2:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r3:F

    .line 69
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w2:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    const-string v2, "#e6e6e6"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    iget v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r2:F

    iget-object v2, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v0, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 73
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/market2345/dumpclean/widget/VolumnView;->w2:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 75
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    const-string v2, "#f98d35"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r2:F

    sub-float v0, v6, v0

    iget v2, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r2:F

    sub-float v2, v7, v2

    iget v3, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r2:F

    add-float/2addr v3, v6

    iget v4, p0, Lcom/market2345/dumpclean/widget/VolumnView;->r2:F

    add-float/2addr v4, v7

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 78
    .local v1, "oval":Landroid/graphics/RectF;
    const/high16 v2, 0x43870000    # 270.0f

    iget v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->progress:I

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 86
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/market2345/dumpclean/widget/VolumnView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v2, v6, v2

    iget-object v3, p0, Lcom/market2345/dumpclean/widget/VolumnView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, v6, v3

    iget-object v4, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 89
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    const-string v2, "#4d4d4d"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/VolumnView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v0, v2}, Lcom/market2345/dumpclean/DisplayUtil;->dip2px(Landroid/content/Context;F)I

    move-result v9

    .line 92
    .local v9, "textsize":I
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    int-to-float v2, v9

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/market2345/dumpclean/widget/VolumnView;->progress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v8

    .line 95
    .local v8, "textWidth":F
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/market2345/dumpclean/widget/VolumnView;->progress:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    div-float v2, v8, v10

    sub-float v2, v6, v2

    div-int/lit8 v3, v9, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/market2345/dumpclean/widget/VolumnView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 99
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 100
    return-void
.end method

.method public setProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    const/16 v1, 0x64

    .line 109
    iput p1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->progress:I

    .line 110
    iget v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->progress:I

    if-lt v0, v1, :cond_0

    .line 111
    iput v1, p0, Lcom/market2345/dumpclean/widget/VolumnView;->progress:I

    .line 112
    :cond_0
    iget v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->progress:I

    if-gtz v0, :cond_1

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/dumpclean/widget/VolumnView;->progress:I

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/dumpclean/widget/VolumnView;->postInvalidate()V

    .line 116
    return-void
.end method
