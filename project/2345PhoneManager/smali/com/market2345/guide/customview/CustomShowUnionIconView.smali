.class public Lcom/market2345/guide/customview/CustomShowUnionIconView;
.super Landroid/widget/FrameLayout;
.source "CustomShowUnionIconView.java"


# instance fields
.field private currX:F

.field private currY:F

.field private iconInfo:Lcom/market2345/guide/model/UnionIconInfo;

.field private lastX:F

.field private lastY:F

.field private mErast:Landroid/graphics/Rect;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/market2345/guide/customview/CustomShowUnionIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/guide/customview/CustomShowUnionIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method private checkClick()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->mErast:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->mErast:Landroid/graphics/Rect;

    iget v1, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->lastX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->lastY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->mErast:Landroid/graphics/Rect;

    iget v1, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->currX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->currY:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->iconInfo:Lcom/market2345/guide/model/UnionIconInfo;

    if-nez v10, :cond_0

    .line 77
    invoke-static {}, Lcom/market2345/guide/model/UnionIconInfo;->getStaticInstance()Lcom/market2345/guide/model/UnionIconInfo;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->iconInfo:Lcom/market2345/guide/model/UnionIconInfo;

    .line 78
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowUnionIconView;->getMeasuredWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowUnionIconView;->getMeasuredHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 79
    .local v1, "b":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 80
    .local v2, "c":Landroid/graphics/Canvas;
    const/high16 v10, -0x34000000    # -3.3554432E7f

    invoke-virtual {v2, v10}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowUnionIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020157

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 82
    .local v7, "touchGraphic":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowUnionIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f020158

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 83
    .local v3, "topGraghic":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    .line 84
    .local v9, "touchWidth":I
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    .line 85
    .local v8, "touchHight":I
    new-instance v10, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->iconInfo:Lcom/market2345/guide/model/UnionIconInfo;

    iget v11, v11, Lcom/market2345/guide/model/UnionIconInfo;->centerX:I

    div-int/lit8 v12, v9, 0x2

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->iconInfo:Lcom/market2345/guide/model/UnionIconInfo;

    iget v12, v12, Lcom/market2345/guide/model/UnionIconInfo;->centerY:I

    div-int/lit8 v13, v8, 0x2

    sub-int/2addr v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->iconInfo:Lcom/market2345/guide/model/UnionIconInfo;

    iget v13, v13, Lcom/market2345/guide/model/UnionIconInfo;->centerX:I

    div-int/lit8 v14, v9, 0x2

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->iconInfo:Lcom/market2345/guide/model/UnionIconInfo;

    iget v14, v14, Lcom/market2345/guide/model/UnionIconInfo;->centerY:I

    div-int/lit8 v15, v8, 0x2

    add-int/2addr v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->mErast:Landroid/graphics/Rect;

    .line 86
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowUnionIconView;->getMeasuredWidth()I

    move-result v11

    if-ge v10, v11, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 87
    .local v6, "topWidth":I
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 88
    .local v4, "topHeight":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowUnionIconView;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v10, v6

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->mErast:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v4

    add-int/lit8 v11, v11, -0x3

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowUnionIconView;->getMeasuredWidth()I

    move-result v12

    sub-int/2addr v12, v6

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->mErast:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    add-int/lit8 v13, v13, -0x3

    invoke-direct {v5, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 89
    .local v5, "topRect":Landroid/graphics/Rect;
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 90
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->mErast:Landroid/graphics/Rect;

    invoke-virtual {v7, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 91
    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 92
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    invoke-virtual {v7, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 95
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 97
    return-void

    .line 86
    .end local v4    # "topHeight":I
    .end local v5    # "topRect":Landroid/graphics/Rect;
    .end local v6    # "topWidth":I
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/guide/customview/CustomShowUnionIconView;->getMeasuredWidth()I

    move-result v6

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 70
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 59
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->lastX:F

    .line 60
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->lastY:F

    goto :goto_0

    .line 63
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->currX:F

    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->currY:F

    goto :goto_0

    .line 56
    nop

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
    .line 101
    iput-object p1, p0, Lcom/market2345/guide/customview/CustomShowUnionIconView;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method
