.class public Lcom/market2345/customview/FillWidthImageView;
.super Landroid/widget/ImageView;
.source "FillWidthImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 18
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 25
    invoke-super/range {p0 .. p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 28
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/FillWidthImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    if-nez v16, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 32
    .local v15, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 34
    .local v4, "heightSpecMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/FillWidthImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    .line 35
    .local v13, "w":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/FillWidthImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 36
    .local v2, "h":I
    if-gtz v13, :cond_2

    .line 37
    const/4 v13, 0x1

    .line 38
    :cond_2
    if-gtz v2, :cond_3

    .line 39
    const/4 v2, 0x1

    .line 42
    :cond_3
    int-to-float v0, v13

    move/from16 v16, v0

    int-to-float v0, v2

    move/from16 v17, v0

    div-float v1, v16, v17

    .line 45
    .local v1, "desiredAspect":F
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    const/4 v12, 0x1

    .line 48
    .local v12, "resizeWidth":Z
    :goto_1
    const/high16 v16, 0x40000000    # 2.0f

    move/from16 v0, v16

    if-eq v4, v0, :cond_5

    const/4 v11, 0x1

    .line 50
    .local v11, "resizeHeight":Z
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/FillWidthImageView;->getPaddingLeft()I

    move-result v8

    .line 51
    .local v8, "pleft":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/FillWidthImageView;->getPaddingRight()I

    move-result v9

    .line 52
    .local v9, "pright":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/FillWidthImageView;->getPaddingTop()I

    move-result v10

    .line 53
    .local v10, "ptop":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/FillWidthImageView;->getPaddingBottom()I

    move-result v7

    .line 56
    .local v7, "pbottom":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/FillWidthImageView;->getMeasuredWidth()I

    move-result v14

    .line 57
    .local v14, "widthSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/FillWidthImageView;->getMeasuredHeight()I

    move-result v3

    .line 59
    .local v3, "heightSize":I
    if-eqz v12, :cond_6

    if-nez v11, :cond_6

    .line 62
    sub-int v16, v3, v10

    sub-int v16, v16, v7

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v1

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v16, v16, v8

    add-int v6, v16, v9

    .line 63
    .local v6, "newWidth":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3}, Lcom/market2345/customview/FillWidthImageView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 45
    .end local v3    # "heightSize":I
    .end local v6    # "newWidth":I
    .end local v7    # "pbottom":I
    .end local v8    # "pleft":I
    .end local v9    # "pright":I
    .end local v10    # "ptop":I
    .end local v11    # "resizeHeight":Z
    .end local v12    # "resizeWidth":Z
    .end local v14    # "widthSize":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 48
    .restart local v12    # "resizeWidth":Z
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 65
    .restart local v3    # "heightSize":I
    .restart local v7    # "pbottom":I
    .restart local v8    # "pleft":I
    .restart local v9    # "pright":I
    .restart local v10    # "ptop":I
    .restart local v11    # "resizeHeight":Z
    .restart local v14    # "widthSize":I
    :cond_6
    if-eqz v11, :cond_0

    if-nez v12, :cond_0

    .line 67
    sub-int v16, v14, v8

    sub-int v16, v16, v9

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v16, v16, v1

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    add-int v16, v16, v10

    add-int v5, v16, v7

    .line 68
    .local v5, "newHeight":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/market2345/customview/FillWidthImageView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method
