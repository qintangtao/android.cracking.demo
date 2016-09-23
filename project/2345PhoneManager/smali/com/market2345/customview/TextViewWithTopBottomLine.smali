.class public Lcom/market2345/customview/TextViewWithTopBottomLine;
.super Landroid/widget/TextView;
.source "TextViewWithTopBottomLine.java"


# instance fields
.field private bottomLineColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0}, Lcom/market2345/customview/TextViewWithTopBottomLine;->initBottomLineColor()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-direct {p0}, Lcom/market2345/customview/TextViewWithTopBottomLine;->initBottomLineColor()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    invoke-direct {p0}, Lcom/market2345/customview/TextViewWithTopBottomLine;->initBottomLineColor()V

    .line 20
    return-void
.end method

.method private initBottomLineColor()V
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithTopBottomLine;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithTopBottomLine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/TextViewWithTopBottomLine;->bottomLineColor:I

    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public changeBottomLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/market2345/customview/TextViewWithTopBottomLine;->bottomLineColor:I

    .line 46
    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithTopBottomLine;->invalidate()V

    .line 47
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 53
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .local v5, "paint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/market2345/customview/TextViewWithTopBottomLine;->bottomLineColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithTopBottomLine;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithTopBottomLine;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithTopBottomLine;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 56
    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithTopBottomLine;->getWidth()I

    move-result v0

    int-to-float v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 57
    return-void
.end method
