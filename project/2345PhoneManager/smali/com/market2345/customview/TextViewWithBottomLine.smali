.class public Lcom/market2345/customview/TextViewWithBottomLine;
.super Landroid/widget/TextView;
.source "TextViewWithBottomLine.java"


# instance fields
.field private bottomLineColor:I

.field private linePadding:I

.field private mHeight:I

.field private showBottom:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->mHeight:I

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->linePadding:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->showBottom:Z

    .line 40
    invoke-direct {p0}, Lcom/market2345/customview/TextViewWithBottomLine;->initBottomLineColor()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->mHeight:I

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->linePadding:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->showBottom:Z

    .line 33
    invoke-direct {p0}, Lcom/market2345/customview/TextViewWithBottomLine;->initBottomLineColor()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->mHeight:I

    .line 19
    const/16 v0, 0xa

    iput v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->linePadding:I

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->showBottom:Z

    .line 26
    invoke-direct {p0}, Lcom/market2345/customview/TextViewWithBottomLine;->initBottomLineColor()V

    .line 28
    return-void
.end method

.method private initBottomLineColor()V
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithBottomLine;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithBottomLine;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->bottomLineColor:I

    .line 51
    :cond_0
    return-void
.end method


# virtual methods
.method public changeBottomLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/market2345/customview/TextViewWithBottomLine;->bottomLineColor:I

    .line 56
    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithBottomLine;->invalidate()V

    .line 57
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 84
    iget-boolean v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->showBottom:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 87
    .local v5, "paint":Landroid/graphics/Paint;
    iget v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->bottomLineColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->linePadding:I

    int-to-float v1, v0

    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithBottomLine;->getHeight()I

    move-result v2

    iget v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->mHeight:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/market2345/customview/TextViewWithBottomLine;->mHeight:I

    :goto_0
    sub-int v0, v2, v0

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithBottomLine;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/market2345/customview/TextViewWithBottomLine;->linePadding:I

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/market2345/customview/TextViewWithBottomLine;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_0
    return-void

    .line 88
    .restart local v5    # "paint":Landroid/graphics/Paint;
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBottomHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/market2345/customview/TextViewWithBottomLine;->mHeight:I

    .line 67
    return-void
.end method

.method public setBottomLineColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/market2345/customview/TextViewWithBottomLine;->bottomLineColor:I

    .line 62
    return-void
.end method

.method public setLinePadding(I)V
    .locals 0
    .param p1, "linePadding"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/market2345/customview/TextViewWithBottomLine;->linePadding:I

    .line 77
    return-void
.end method

.method public setShowButtom(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/market2345/customview/TextViewWithBottomLine;->showBottom:Z

    .line 72
    return-void
.end method
