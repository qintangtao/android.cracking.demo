.class public Lcom/market2345/customview/LinearLayoutWithTopBottomLine;
.super Landroid/widget/LinearLayout;
.source "LinearLayoutWithTopBottomLine.java"


# instance fields
.field private topBottomLineColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-direct {p0}, Lcom/market2345/customview/LinearLayoutWithTopBottomLine;->initTopBottomLineColor()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/market2345/customview/LinearLayoutWithTopBottomLine;->initTopBottomLineColor()V

    .line 26
    return-void
.end method

.method private initTopBottomLineColor()V
    .locals 2

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/market2345/customview/LinearLayoutWithTopBottomLine;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/market2345/customview/LinearLayoutWithTopBottomLine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/LinearLayoutWithTopBottomLine;->topBottomLineColor:I

    .line 34
    :cond_0
    return-void
.end method


# virtual methods
.method public changeTopBottomLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/market2345/customview/LinearLayoutWithTopBottomLine;->topBottomLineColor:I

    .line 39
    invoke-virtual {p0}, Lcom/market2345/customview/LinearLayoutWithTopBottomLine;->invalidate()V

    .line 40
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 46
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 47
    .local v5, "paint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/market2345/customview/LinearLayoutWithTopBottomLine;->topBottomLineColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    invoke-virtual {p0}, Lcom/market2345/customview/LinearLayoutWithTopBottomLine;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/market2345/customview/LinearLayoutWithTopBottomLine;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/market2345/customview/LinearLayoutWithTopBottomLine;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 49
    invoke-virtual {p0}, Lcom/market2345/customview/LinearLayoutWithTopBottomLine;->getWidth()I

    move-result v0

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 50
    return-void
.end method
