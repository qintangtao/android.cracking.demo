.class public Lcom/market2345/customview/DrawableCenterTextView;
.super Landroid/widget/TextView;
.source "DrawableCenterTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 44
    invoke-virtual {p0}, Lcom/market2345/customview/DrawableCenterTextView;->invalidate()V

    .line 45
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/market2345/customview/DrawableCenterTextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 27
    .local v4, "drawables":[Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 28
    const/4 v6, 0x0

    aget-object v1, v4, v6

    .line 29
    .local v1, "drawableLeft":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/market2345/customview/DrawableCenterTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p0}, Lcom/market2345/customview/DrawableCenterTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 31
    .local v5, "textWidth":F
    invoke-virtual {p0}, Lcom/market2345/customview/DrawableCenterTextView;->getCompoundDrawablePadding()I

    move-result v2

    .line 32
    .local v2, "drawablePadding":I
    const/4 v3, 0x0

    .line 33
    .local v3, "drawableWidth":I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 34
    int-to-float v6, v3

    add-float/2addr v6, v5

    int-to-float v7, v2

    add-float v0, v6, v7

    .line 35
    .local v0, "bodyWidth":F
    invoke-virtual {p0}, Lcom/market2345/customview/DrawableCenterTextView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    .end local v0    # "bodyWidth":F
    .end local v1    # "drawableLeft":Landroid/graphics/drawable/Drawable;
    .end local v2    # "drawablePadding":I
    .end local v3    # "drawableWidth":I
    .end local v5    # "textWidth":F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 39
    return-void
.end method
