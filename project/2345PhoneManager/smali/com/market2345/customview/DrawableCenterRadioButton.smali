.class public Lcom/market2345/customview/DrawableCenterRadioButton;
.super Landroid/widget/RadioButton;
.source "DrawableCenterRadioButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/market2345/customview/DrawableCenterRadioButton;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 39
    .local v3, "drawables":[Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_0

    .line 41
    aget-object v5, v3, v7

    if-eqz v5, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/market2345/customview/DrawableCenterRadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {p0}, Lcom/market2345/customview/DrawableCenterRadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 44
    .local v4, "textWidth":F
    invoke-virtual {p0}, Lcom/market2345/customview/DrawableCenterRadioButton;->getCompoundDrawablePadding()I

    move-result v1

    .line 45
    .local v1, "drawablePadding":I
    aget-object v5, v3, v7

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 46
    .local v2, "drawableWidth":I
    int-to-float v5, v2

    add-float/2addr v5, v4

    int-to-float v6, v1

    add-float v0, v5, v6

    .line 47
    .local v0, "bodyWidth":F
    invoke-virtual {p0}, Lcom/market2345/customview/DrawableCenterRadioButton;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    .end local v0    # "bodyWidth":F
    .end local v1    # "drawablePadding":I
    .end local v2    # "drawableWidth":I
    .end local v4    # "textWidth":F
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    return-void
.end method
