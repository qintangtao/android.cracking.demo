.class public Lcom/market2345/customview/Cling;
.super Landroid/widget/FrameLayout;
.source "Cling.java"


# instance fields
.field private currX:F

.field private currY:F

.field private desireHight:I

.field private desireWidth:I

.field private isLeft:Z

.field private lastX:F

.field private lastY:F

.field private mAppIconSize:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mButtonBarHeight:I

.field private mDrawIdentifier:Ljava/lang/String;

.field private mErasePaint:Landroid/graphics/Paint;

.field private mErast:Landroid/graphics/Rect;

.field private mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mIsInitialized:Z

.field private mPositionData:[I

.field private mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

.field private mPunchThroughGraphicCenterRadius:I

.field private mRevealRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/market2345/customview/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/customview/Cling;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    iput v0, p0, Lcom/market2345/customview/Cling;->desireWidth:I

    .line 82
    iput v0, p0, Lcom/market2345/customview/Cling;->desireHight:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/Cling;->isLeft:Z

    .line 111
    return-void
.end method

.method private checkClick()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/market2345/customview/Cling;->mErast:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 204
    iget-boolean v0, p0, Lcom/market2345/customview/Cling;->isLeft:Z

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/market2345/customview/Cling;->mErast:Landroid/graphics/Rect;

    iget v1, p0, Lcom/market2345/customview/Cling;->lastX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/market2345/customview/Cling;->lastY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/customview/Cling;->mErast:Landroid/graphics/Rect;

    iget v1, p0, Lcom/market2345/customview/Cling;->currX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/market2345/customview/Cling;->currY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/market2345/customview/Cling;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/market2345/customview/Cling;->mErast:Landroid/graphics/Rect;

    iget v1, p0, Lcom/market2345/customview/Cling;->lastX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/market2345/customview/Cling;->lastY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/customview/Cling;->mErast:Landroid/graphics/Rect;

    iget v1, p0, Lcom/market2345/customview/Cling;->currX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/market2345/customview/Cling;->currY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/market2345/customview/Cling;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private getPunchThroughPositions()[I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/market2345/customview/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-object v0, p0, Lcom/market2345/customview/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object v0, p0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/customview/Cling;->mIsInitialized:Z

    .line 136
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 234
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/market2345/customview/Cling;->mIsInitialized:Z

    if-eqz v13, :cond_2

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/Cling;->getMeasuredWidth()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/Cling;->getMeasuredHeight()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v13, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 239
    .local v2, "b":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 240
    .local v3, "c":Landroid/graphics/Canvas;
    invoke-static {}, Lcom/market2345/slidemenu/DataCacheForViewPager;->getInstance()Lcom/market2345/slidemenu/DataCacheForViewPager;

    move-result-object v13

    const-string v14, "window_width"

    invoke-virtual {v13, v14}, Lcom/market2345/slidemenu/DataCacheForViewPager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 241
    .local v12, "width":I
    invoke-static {}, Lcom/market2345/slidemenu/DataCacheForViewPager;->getInstance()Lcom/market2345/slidemenu/DataCacheForViewPager;

    move-result-object v13

    const-string v14, "window_height"

    invoke-virtual {v13, v14}, Lcom/market2345/slidemenu/DataCacheForViewPager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 243
    .local v9, "hight":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/customview/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_0

    .line 245
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020149

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/market2345/customview/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 247
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/customview/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v13, :cond_3

    .line 249
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/customview/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v12, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 250
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/customview/Cling;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 257
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/customview/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    if-nez v13, :cond_1

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020156

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/market2345/customview/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    .line 264
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/market2345/customview/Cling;->isLeft:Z

    if-eqz v13, :cond_4

    .line 268
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020316

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/market2345/customview/Cling;->desireWidth:I

    .line 269
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020316

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/market2345/customview/Cling;->desireHight:I

    .line 270
    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/customview/Cling;->desireWidth:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/customview/Cling;->desireHight:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    invoke-direct/range {v13 .. v17}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/market2345/customview/Cling;->mErast:Landroid/graphics/Rect;

    .line 280
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/customview/Cling;->mErast:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/customview/Cling;->mErasePaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/customview/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/customview/Cling;->mErast:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/customview/Cling;->mPunchThroughGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 284
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/market2345/customview/Cling;->isLeft:Z

    if-eqz v13, :cond_5

    .line 288
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02014b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v5, v13, Landroid/util/DisplayMetrics;->density:F

    .line 291
    .local v5, "density":F
    const/high16 v13, 0x41600000    # 14.0f

    mul-float/2addr v13, v5

    float-to-double v14, v13

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v6, v14

    .line 292
    .local v6, "disL":I
    const/high16 v13, 0x41880000    # 17.0f

    mul-float/2addr v13, v5

    float-to-double v14, v13

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v8, v14

    .line 298
    .local v8, "disT":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/market2345/customview/Cling;->desireWidth:I

    sub-int/2addr v14, v6

    move-object/from16 v0, p0

    iget v15, v0, Lcom/market2345/customview/Cling;->desireHight:I

    sub-int/2addr v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/customview/Cling;->desireWidth:I

    move/from16 v16, v0

    sub-int v16, v16, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/customview/Cling;->desireHight:I

    move/from16 v17, v0

    sub-int v17, v17, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 302
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02014a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 305
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    sub-int v13, v12, v13

    div-int/lit8 v10, v13, 0x2

    .line 306
    .local v10, "left":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/market2345/customview/Cling;->desireHight:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    add-int/2addr v13, v14

    add-int/lit8 v11, v13, 0x32

    .line 307
    .local v11, "top":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    add-int/2addr v14, v11

    invoke-virtual {v4, v10, v11, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 308
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 336
    :goto_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 342
    .end local v2    # "b":Landroid/graphics/Bitmap;
    .end local v3    # "c":Landroid/graphics/Canvas;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    .end local v5    # "density":F
    .end local v6    # "disL":I
    .end local v8    # "disT":I
    .end local v9    # "hight":I
    .end local v10    # "left":I
    .end local v11    # "top":I
    .end local v12    # "width":I
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 343
    return-void

    .line 254
    .restart local v2    # "b":Landroid/graphics/Bitmap;
    .restart local v3    # "c":Landroid/graphics/Canvas;
    .restart local v9    # "hight":I
    .restart local v12    # "width":I
    :cond_3
    const/high16 v13, -0x67000000

    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_0

    .line 278
    :cond_4
    new-instance v13, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/market2345/customview/Cling;->desireWidth:I

    sub-int v14, v12, v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/customview/Cling;->desireHight:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-direct {v13, v14, v15, v12, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/market2345/customview/Cling;->mErast:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 314
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020154

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v5, v13, Landroid/util/DisplayMetrics;->density:F

    .line 317
    .restart local v5    # "density":F
    const/high16 v13, 0x41600000    # 14.0f

    mul-float/2addr v13, v5

    float-to-double v14, v13

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v6, v14

    .line 318
    .restart local v6    # "disL":I
    const/high16 v13, 0x41880000    # 17.0f

    mul-float/2addr v13, v5

    float-to-double v14, v13

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v14, v14, v16

    double-to-int v8, v14

    .line 319
    .restart local v8    # "disT":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/market2345/customview/Cling;->desireWidth:I

    sub-int v13, v12, v13

    add-int/2addr v13, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int v7, v13, v14

    .line 325
    .local v7, "disLeft":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/market2345/customview/Cling;->desireHight:I

    sub-int/2addr v14, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    add-int/2addr v15, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/customview/Cling;->desireHight:I

    move/from16 v16, v0

    sub-int v16, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    add-int v16, v16, v17

    move/from16 v0, v16

    invoke-virtual {v13, v7, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v13, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/customview/Cling;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020155

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 329
    .restart local v4    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    sub-int v13, v12, v13

    div-int/lit8 v10, v13, 0x2

    .line 330
    .restart local v10    # "left":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/market2345/customview/Cling;->desireHight:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/customview/Cling;->mHandTouchGraphic:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    add-int/2addr v13, v14

    add-int/lit8 v11, v13, 0x32

    .line 331
    .restart local v11    # "top":I
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    add-int/2addr v13, v10

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    add-int/2addr v14, v11

    invoke-virtual {v4, v10, v11, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 332
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_2
.end method

.method public init()V
    .locals 3

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/market2345/customview/Cling;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/market2345/customview/Cling;->mErasePaint:Landroid/graphics/Paint;

    .line 123
    iget-object v0, p0, Lcom/market2345/customview/Cling;->mErasePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 124
    iget-object v0, p0, Lcom/market2345/customview/Cling;->mErasePaint:Landroid/graphics/Paint;

    const v1, 0xffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 125
    iget-object v0, p0, Lcom/market2345/customview/Cling;->mErasePaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/Cling;->mIsInitialized:Z

    .line 128
    :cond_0
    return-void
.end method

.method public isLeft()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/market2345/customview/Cling;->isLeft:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 197
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 186
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/market2345/customview/Cling;->lastX:F

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/market2345/customview/Cling;->lastY:F

    goto :goto_0

    .line 190
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/market2345/customview/Cling;->currX:F

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/market2345/customview/Cling;->currY:F

    .line 192
    invoke-direct {p0}, Lcom/market2345/customview/Cling;->checkClick()V

    goto :goto_0

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDesireHight(I)V
    .locals 0
    .param p1, "desireHight"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/market2345/customview/Cling;->desireHight:I

    .line 146
    return-void
.end method

.method public setDesireWidth(I)V
    .locals 0
    .param p1, "desireWidth"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/market2345/customview/Cling;->desireWidth:I

    .line 141
    return-void
.end method

.method public setLeft(Z)V
    .locals 0
    .param p1, "isLeft"    # Z

    .prologue
    .line 228
    iput-boolean p1, p0, Lcom/market2345/customview/Cling;->isLeft:Z

    .line 229
    return-void
.end method

.method public setSlidingMenu(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/market2345/customview/Cling;->mHandler:Landroid/os/Handler;

    .line 116
    return-void
.end method
