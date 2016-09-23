.class public Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;
.super Landroid/widget/FrameLayout;
.source "CustomShowSlidingMenuButtonView.java"


# instance fields
.field private currX:F

.field private currY:F

.field private lastX:F

.field private lastY:F

.field private mErast:Landroid/graphics/Rect;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method private checkClick()V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->mErast:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->mErast:Landroid/graphics/Rect;

    iget v1, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->lastX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->lastY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->mErast:Landroid/graphics/Rect;

    iget v1, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->currX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->currY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 116
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->getMeasuredWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->getMeasuredHeight()I

    move-result v18

    sget-object v19, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v17 .. v19}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 73
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 74
    .local v10, "c":Landroid/graphics/Canvas;
    const/high16 v17, -0x34000000    # -3.3554432E7f

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f02014e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 76
    .local v14, "touchGraphic":Landroid/graphics/drawable/Drawable;
    sget-object v17, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020150

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 78
    .local v6, "bottomGraghic":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 79
    .local v16, "touchWidth":I
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 80
    .local v15, "touchHight":I
    new-instance v17, Landroid/graphics/Rect;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->mErast:Landroid/graphics/Rect;

    .line 81
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->getMeasuredWidth()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 82
    .local v9, "bottomWidth":I
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    .line 83
    .local v7, "bottomHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v17, v9

    div-int/lit8 v11, v17, 0x2

    .line 84
    .local v11, "left":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->mErast:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    div-int/lit8 v18, v15, 0x4

    sub-int v13, v17, v18

    .line 85
    .local v13, "top":I
    add-int v12, v11, v9

    .line 86
    .local v12, "right":I
    add-int v5, v13, v7

    .line 87
    .local v5, "bottom":I
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v11, v13, v12, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    .local v8, "bottomRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->mErast:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 89
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    invoke-virtual {v6, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {v14, v10}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 92
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 93
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 95
    return-void

    .line 76
    .end local v5    # "bottom":I
    .end local v6    # "bottomGraghic":Landroid/graphics/drawable/Drawable;
    .end local v7    # "bottomHeight":I
    .end local v8    # "bottomRect":Landroid/graphics/Rect;
    .end local v9    # "bottomWidth":I
    .end local v11    # "left":I
    .end local v12    # "right":I
    .end local v13    # "top":I
    .end local v15    # "touchHight":I
    .end local v16    # "touchWidth":I
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f020151

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto/16 :goto_0

    .line 81
    .restart local v6    # "bottomGraghic":Landroid/graphics/drawable/Drawable;
    .restart local v15    # "touchHight":I
    .restart local v16    # "touchWidth":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->getMeasuredWidth()I

    move-result v9

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 66
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 55
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->lastX:F

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->lastY:F

    goto :goto_0

    .line 59
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->currX:F

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->currY:F

    .line 61
    invoke-direct {p0}, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->checkClick()V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setmHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mHandler"    # Landroid/os/Handler;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/market2345/guide/customview/CustomShowSlidingMenuButtonView;->mHandler:Landroid/os/Handler;

    .line 100
    return-void
.end method
