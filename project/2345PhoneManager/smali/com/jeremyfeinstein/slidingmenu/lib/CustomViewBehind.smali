.class public Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"


# static fields
.field private static final MARGIN_THRESHOLD:I = 0x30

.field private static final TAG:Ljava/lang/String; = "CustomViewBehind"


# instance fields
.field private mChildrenEnabled:Z

.field private mContent:Landroid/view/View;

.field private mFadeDegree:F

.field private mFadeEnabled:Z

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mMarginThreshold:I

.field private mMode:I

.field private mScrollScale:F

.field private mSecondaryContent:Landroid/view/View;

.field private mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mSelectedView:Landroid/view/View;

.field private mSelectorDrawable:Landroid/graphics/Bitmap;

.field private mSelectorEnabled:Z

.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mShadowWidth:I

.field private mTouchMode:I

.field private mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

.field private mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

.field private mWidthOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTouchMode:I

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    .line 504
    iput-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorEnabled:Z

    .line 50
    const/high16 v0, 0x42400000    # 48.0f

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    .line 51
    return-void
.end method

.method private getSelectorTop()I
    .locals 3

    .prologue
    .line 563
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v0

    .line 564
    .local v0, "y":I
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 565
    return v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 148
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V

    .line 149
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 9
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 477
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadeEnabled:Z

    if-nez v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 479
    :cond_0
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadeDegree:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 480
    .local v6, "alpha":I
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 481
    const/4 v7, 0x0

    .line 482
    .local v7, "left":I
    const/4 v8, 0x0

    .line 483
    .local v8, "right":I
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v0, :cond_2

    .line 485
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 486
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 501
    :cond_1
    :goto_1
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 488
    :cond_2
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 490
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_1

    .line 493
    :cond_3
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 495
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int v7, v0, v1

    .line 496
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 497
    int-to-float v1, v7

    int-to-float v3, v8

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 498
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v7

    .line 499
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int v8, v0, v1

    goto :goto_1
.end method

.method public drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
    .locals 8
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "openPercent"    # F

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 512
    iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorEnabled:Z

    if-nez v4, :cond_1

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 514
    :cond_1
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 516
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    const v5, 0x7f090024

    invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 517
    .local v3, "tag":Ljava/lang/String;
    const-string v4, "CustomViewBehindSelectedView"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 519
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 521
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p3

    float-to-int v1, v4

    .line 522
    .local v1, "offset":I
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v4, :cond_3

    .line 524
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 525
    .local v2, "right":I
    sub-int v0, v2, v1

    .line 526
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 527
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    int-to-float v5, v0

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 536
    .end local v0    # "left":I
    .end local v2    # "right":I
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 529
    :cond_3
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 532
    .restart local v0    # "left":I
    add-int v2, v0, v1

    .line 533
    .restart local v2    # "right":I
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v4

    invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 534
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    int-to-float v5, v5

    invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getSelectorTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 450
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    if-gtz v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const/4 v0, 0x0

    .line 453
    .local v0, "left":I
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v1, :cond_3

    .line 455
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    .line 471
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 472
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 457
    :cond_3
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 459
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_1

    .line 461
    :cond_4
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 463
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_5

    .line 465
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    .line 466
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I

    move-result v3

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 467
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 469
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    sub-int v0, v1, v2

    goto :goto_1
.end method

.method public getAbsLeftBound(Landroid/view/View;)I
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 341
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 343
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 349
    :goto_0
    return v0

    .line 345
    :cond_1
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 349
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAbsRightBound(Landroid/view/View;)I
    .locals 2
    .param p1, "content"    # Landroid/view/View;

    .prologue
    .line 354
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 362
    :goto_0
    return v0

    .line 358
    :cond_0
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 360
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 362
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBehindWidth()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getMarginThreshold()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    return v0
.end method

.method public getMenuLeft(Landroid/view/View;I)I
    .locals 2
    .param p1, "content"    # Landroid/view/View;
    .param p2, "page"    # I

    .prologue
    .line 306
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v0, :cond_1

    .line 308
    packed-switch p2, :pswitch_data_0

    .line 336
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_1
    return v0

    .line 311
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 313
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 316
    :cond_1
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 318
    packed-switch p2, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 321
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_1

    .line 323
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 326
    :cond_2
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 328
    packed-switch p2, :pswitch_data_2

    :pswitch_6
    goto :goto_0

    .line 331
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_1

    .line 333
    :pswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 318
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    .line 328
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method public getMenuPage(I)I
    .locals 4
    .param p1, "page"    # I

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 255
    if-le p1, v3, :cond_1

    move p1, v0

    .line 256
    :cond_0
    :goto_0
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    if-le p1, v3, :cond_2

    .line 266
    :goto_1
    return v1

    .line 255
    :cond_1
    if-ge p1, v3, :cond_0

    move p1, v1

    goto :goto_0

    .line 260
    :cond_2
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v1, v3, :cond_3

    if-ge p1, v3, :cond_3

    move v1, v0

    .line 262
    goto :goto_1

    :cond_3
    move v1, p1

    .line 266
    goto :goto_1
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    return v0
.end method

.method public getScrollScale()F
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    return v0
.end method

.method public getSecondaryContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    return-object v0
.end method

.method public marginTouchAllowed(Landroid/view/View;I)Z
    .locals 6
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 367
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 368
    .local v0, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    .line 369
    .local v1, "right":I
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v4, :cond_2

    .line 371
    if-lt p2, v0, :cond_1

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v4, v0

    if-gt p2, v4, :cond_1

    .line 381
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v2, v3

    .line 371
    goto :goto_0

    .line 373
    :cond_2
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v4, v2, :cond_4

    .line 375
    if-gt p2, v1, :cond_3

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    sub-int v4, v1, v4

    if-ge p2, v4, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    .line 377
    :cond_4
    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 379
    if-lt p2, v0, :cond_5

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    add-int/2addr v4, v0

    if-le p2, v4, :cond_0

    :cond_5
    if-gt p2, v1, :cond_6

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    sub-int v4, v1, v4

    if-ge p2, v4, :cond_0

    :cond_6
    move v2, v3

    goto :goto_0

    :cond_7
    move v2, v3

    .line 381
    goto :goto_0
.end method

.method public menuClosedSlideAllowed(F)Z
    .locals 4
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 416
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    .line 418
    cmpl-float v2, p1, v3

    if-lez v2, :cond_1

    .line 428
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 418
    goto :goto_0

    .line 420
    :cond_2
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    .line 422
    cmpg-float v2, p1, v3

    if-ltz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 424
    :cond_3
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 428
    goto :goto_0
.end method

.method public menuOpenSlideAllowed(F)Z
    .locals 4
    .param p1, "dx"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 433
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v2, :cond_2

    .line 435
    cmpg-float v2, p1, v3

    if-gez v2, :cond_1

    .line 445
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 435
    goto :goto_0

    .line 437
    :cond_2
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v2, v0, :cond_3

    .line 439
    cmpl-float v2, p1, v3

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 441
    :cond_3
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    move v0, v1

    .line 445
    goto :goto_0
.end method

.method public menuOpenTouchAllowed(Landroid/view/View;IF)Z
    .locals 1
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    .line 391
    iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 398
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 394
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 396
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z

    move-result v0

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public menuTouchInQuickReturn(Landroid/view/View;IF)Z
    .locals 4
    .param p1, "content"    # Landroid/view/View;
    .param p2, "currPage"    # I
    .param p3, "x"    # F

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 403
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_3

    if-nez p2, :cond_3

    .line 405
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, p3, v2

    if-ltz v2, :cond_2

    .line 411
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 405
    goto :goto_0

    .line 407
    :cond_3
    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-eq v2, v0, :cond_4

    iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-ne v2, v3, :cond_5

    if-ne p2, v3, :cond_5

    .line 409
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, p3, v2

    if-lez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 411
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mChildrenEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const v5, 0x7f08002b

    const/4 v4, 0x0

    .line 159
    sub-int v1, p4, p2

    .line 160
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 161
    .local v0, "height":I
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 162
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v2, v4, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 164
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x0

    .line 170
    invoke-static {v6, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getDefaultSize(II)I

    move-result v3

    .line 171
    .local v3, "width":I
    invoke-static {v6, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getDefaultSize(II)I

    move-result v2

    .line 172
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setMeasuredDimension(II)V

    .line 173
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08002b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-static {p1, v6, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v1

    .line 174
    .local v1, "contentWidth":I
    invoke-static {p2, v6, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getChildMeasureSpec(III)I

    move-result v0

    .line 175
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 176
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 177
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V

    .line 178
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 139
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mChildrenEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollBehindTo(Landroid/view/View;II)V
    .locals 5
    .param p1, "content"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, "vis":I
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    if-nez v1, :cond_3

    .line 275
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 276
    const/4 v0, 0x4

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    .line 299
    :cond_1
    :goto_0
    if-ne v0, v2, :cond_2

    .line 300
    const-string v1, "CustomViewBehind"

    const-string v2, "behind INVISIBLE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_2
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setVisibility(I)V

    .line 302
    return-void

    .line 279
    :cond_3
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_4

    .line 282
    const/4 v0, 0x4

    .line 283
    :cond_4
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    .line 285
    :cond_5
    iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 287
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-lt p2, v1, :cond_6

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 288
    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_7

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    if-nez p2, :cond_8

    move v0, v2

    .line 290
    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    if-gt p2, v1, :cond_9

    .line 292
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    add-int/2addr v1, p2

    int-to-float v1, v1

    iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    goto :goto_0

    :cond_6
    move v1, v3

    .line 287
    goto :goto_1

    :cond_7
    move v1, v3

    .line 288
    goto :goto_2

    :cond_8
    move v0, v3

    .line 289
    goto :goto_3

    .line 296
    :cond_9
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I

    move-result v3

    sub-int v3, p2, v3

    int-to-float v3, v3

    iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {p0, v1, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V

    goto/16 :goto_0
.end method

.method public scrollTo(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 126
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 128
    :cond_0
    return-void
.end method

.method public setCanvasTransformer(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V
    .locals 0
    .param p1, "t"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;

    .line 61
    return-void
.end method

.method public setChildrenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mChildrenEnabled:Z

    .line 120
    return-void
.end method

.method public setContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 88
    :cond_0
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public setCustomViewAbove(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V
    .locals 0
    .param p1, "customViewAbove"    # Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;

    .line 56
    return-void
.end method

.method public setFadeDegree(F)V
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 248
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The BehindFadeDegree must be between 0.0f and 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 250
    :cond_1
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadeDegree:F

    .line 251
    return-void
.end method

.method public setFadeEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadeEnabled:Z

    .line 244
    return-void
.end method

.method public setMarginThreshold(I)V
    .locals 0
    .param p1, "marginThreshold"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I

    .line 72
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 198
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_2
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I

    .line 206
    return-void
.end method

.method public setScrollScale(F)V
    .locals 0
    .param p1, "scrollScale"    # F

    .prologue
    .line 215
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F

    .line 216
    return-void
.end method

.method public setSecondaryContent(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->removeView(Landroid/view/View;)V

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    .line 109
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->addView(Landroid/view/View;)V

    .line 110
    return-void
.end method

.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 232
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 233
    return-void
.end method

.method public setSelectedView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const v2, 0x7f090024

    .line 548
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 551
    iput-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    .line 553
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 555
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    .line 556
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;

    const-string v1, "CustomViewBehindSelectedView"

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 557
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 559
    :cond_1
    return-void
.end method

.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 570
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;

    .line 571
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->refreshDrawableState()V

    .line 572
    return-void
.end method

.method public setSelectorEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 543
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorEnabled:Z

    .line 544
    return-void
.end method

.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "shadow"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 226
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 227
    return-void
.end method

.method public setShadowWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I

    .line 238
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V

    .line 239
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 386
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTouchMode:I

    .line 387
    return-void
.end method

.method public setWidthOffset(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 65
    iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I

    .line 66
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->requestLayout()V

    .line 67
    return-void
.end method
