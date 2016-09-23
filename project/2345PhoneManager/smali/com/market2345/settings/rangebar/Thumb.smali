.class public Lcom/market2345/settings/rangebar/Thumb;
.super Ljava/lang/Object;
.source "Thumb.java"


# static fields
.field private static final DEFAULT_THUMB_COLOR_NORMAL:I = -0xcc4a1b

.field private static final DEFAULT_THUMB_COLOR_PRESSED:I = -0xcc4a1b

.field private static final DEFAULT_THUMB_RADIUS_DP:F = 14.0f

.field private static final MINIMUM_TARGET_RADIUS_DP:F = 24.0f


# instance fields
.field private final mHalfHeightNormal:F

.field private final mHalfHeightPressed:F

.field private final mHalfWidthNormal:F

.field private final mHalfWidthPressed:F

.field private final mImageNormal:Landroid/graphics/Bitmap;

.field private final mImagePressed:Landroid/graphics/Bitmap;

.field private mIsPressed:Z

.field private mPaintNormal:Landroid/graphics/Paint;

.field private mPaintPressed:Landroid/graphics/Paint;

.field private final mTargetRadiusPx:F

.field private mThumbColorNormal:I

.field private mThumbColorPressed:I

.field private mThumbRadiusPx:F

.field private mUseBitmap:Z

.field private mX:F

.field private final mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FIIFII)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "y"    # F
    .param p3, "thumbColorNormal"    # I
    .param p4, "thumbColorPressed"    # I
    .param p5, "thumbRadiusDP"    # F
    .param p6, "thumbImageNormal"    # I
    .param p7, "thumbImagePressed"    # I

    .prologue
    const v7, -0xcc4a1b

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v6, -0x1

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mIsPressed:Z

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 98
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {v0, p6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mImageNormal:Landroid/graphics/Bitmap;

    .line 99
    invoke-static {v0, p7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mImagePressed:Landroid/graphics/Bitmap;

    .line 102
    cmpl-float v2, p5, v3

    if-nez v2, :cond_0

    if-ne p3, v6, :cond_0

    if-ne p4, v6, :cond_0

    .line 105
    iput-boolean v4, p0, Lcom/market2345/settings/rangebar/Thumb;->mUseBitmap:Z

    .line 140
    :goto_0
    iget-object v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mImageNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mHalfWidthNormal:F

    .line 141
    iget-object v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mImageNormal:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mHalfHeightNormal:F

    .line 143
    iget-object v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mImagePressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mHalfWidthPressed:F

    .line 144
    iget-object v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mImagePressed:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v5

    iput v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mHalfHeightPressed:F

    .line 148
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2, p5}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v1, v2

    .line 150
    .local v1, "targetRadius":I
    int-to-float v2, v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mTargetRadiusPx:F

    .line 152
    iget v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mHalfWidthNormal:F

    iput v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mX:F

    .line 153
    iput p2, p0, Lcom/market2345/settings/rangebar/Thumb;->mY:F

    .line 154
    return-void

    .line 111
    .end local v1    # "targetRadius":I
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mUseBitmap:Z

    .line 115
    cmpl-float v2, p5, v3

    if-nez v2, :cond_1

    .line 116
    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mThumbRadiusPx:F

    .line 120
    :goto_1
    if-ne p3, v6, :cond_2

    .line 121
    iput v7, p0, Lcom/market2345/settings/rangebar/Thumb;->mThumbColorNormal:I

    .line 125
    :goto_2
    if-ne p4, v6, :cond_3

    .line 126
    iput v7, p0, Lcom/market2345/settings/rangebar/Thumb;->mThumbColorPressed:I

    .line 131
    :goto_3
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mPaintNormal:Landroid/graphics/Paint;

    .line 132
    iget-object v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mPaintNormal:Landroid/graphics/Paint;

    iget v3, p0, Lcom/market2345/settings/rangebar/Thumb;->mThumbColorNormal:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 133
    iget-object v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 135
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mPaintPressed:Landroid/graphics/Paint;

    .line 136
    iget-object v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mPaintPressed:Landroid/graphics/Paint;

    iget v3, p0, Lcom/market2345/settings/rangebar/Thumb;->mThumbColorPressed:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 137
    iget-object v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mPaintPressed:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/16 :goto_0

    .line 118
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v4, p5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Lcom/market2345/settings/rangebar/Thumb;->mThumbRadiusPx:F

    goto :goto_1

    .line 123
    :cond_2
    iput p3, p0, Lcom/market2345/settings/rangebar/Thumb;->mThumbColorNormal:I

    goto :goto_2

    .line 128
    :cond_3
    iput p4, p0, Lcom/market2345/settings/rangebar/Thumb;->mThumbColorPressed:I

    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 225
    iget-boolean v5, p0, Lcom/market2345/settings/rangebar/Thumb;->mUseBitmap:Z

    if-eqz v5, :cond_2

    .line 228
    iget-boolean v5, p0, Lcom/market2345/settings/rangebar/Thumb;->mIsPressed:Z

    if-eqz v5, :cond_0

    iget-object v0, p0, Lcom/market2345/settings/rangebar/Thumb;->mImagePressed:Landroid/graphics/Bitmap;

    .line 230
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    iget-boolean v5, p0, Lcom/market2345/settings/rangebar/Thumb;->mIsPressed:Z

    if-eqz v5, :cond_1

    .line 232
    iget v5, p0, Lcom/market2345/settings/rangebar/Thumb;->mY:F

    iget v6, p0, Lcom/market2345/settings/rangebar/Thumb;->mHalfHeightPressed:F

    sub-float v4, v5, v6

    .line 233
    .local v4, "topPressed":F
    iget v5, p0, Lcom/market2345/settings/rangebar/Thumb;->mX:F

    iget v6, p0, Lcom/market2345/settings/rangebar/Thumb;->mHalfWidthPressed:F

    sub-float v2, v5, v6

    .line 234
    .local v2, "leftPressed":F
    invoke-virtual {p1, v0, v2, v4, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 253
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "leftPressed":F
    .end local v4    # "topPressed":F
    :goto_1
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/market2345/settings/rangebar/Thumb;->mImageNormal:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 238
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    iget v5, p0, Lcom/market2345/settings/rangebar/Thumb;->mY:F

    iget v6, p0, Lcom/market2345/settings/rangebar/Thumb;->mHalfHeightNormal:F

    sub-float v3, v5, v6

    .line 239
    .local v3, "topNormal":F
    iget v5, p0, Lcom/market2345/settings/rangebar/Thumb;->mX:F

    iget v6, p0, Lcom/market2345/settings/rangebar/Thumb;->mHalfWidthNormal:F

    sub-float v1, v5, v6

    .line 240
    .local v1, "leftNormal":F
    invoke-virtual {p1, v0, v1, v3, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 248
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "leftNormal":F
    .end local v3    # "topNormal":F
    :cond_2
    iget-boolean v5, p0, Lcom/market2345/settings/rangebar/Thumb;->mIsPressed:Z

    if-eqz v5, :cond_3

    .line 249
    iget v5, p0, Lcom/market2345/settings/rangebar/Thumb;->mX:F

    iget v6, p0, Lcom/market2345/settings/rangebar/Thumb;->mY:F

    iget v7, p0, Lcom/market2345/settings/rangebar/Thumb;->mThumbRadiusPx:F

    iget-object v8, p0, Lcom/market2345/settings/rangebar/Thumb;->mPaintPressed:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 251
    :cond_3
    iget v5, p0, Lcom/market2345/settings/rangebar/Thumb;->mX:F

    iget v6, p0, Lcom/market2345/settings/rangebar/Thumb;->mY:F

    iget v7, p0, Lcom/market2345/settings/rangebar/Thumb;->mThumbRadiusPx:F

    iget-object v8, p0, Lcom/market2345/settings/rangebar/Thumb;->mPaintNormal:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public getHalfHeight()F
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/market2345/settings/rangebar/Thumb;->mHalfHeightNormal:F

    return v0
.end method

.method public getHalfWidth()F
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/market2345/settings/rangebar/Thumb;->mHalfWidthNormal:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/market2345/settings/rangebar/Thumb;->mX:F

    return v0
.end method

.method public isInTargetZone(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 207
    iget v0, p0, Lcom/market2345/settings/rangebar/Thumb;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/market2345/settings/rangebar/Thumb;->mTargetRadiusPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/market2345/settings/rangebar/Thumb;->mY:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/market2345/settings/rangebar/Thumb;->mTargetRadiusPx:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 211
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPressed()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/market2345/settings/rangebar/Thumb;->mIsPressed:Z

    return v0
.end method

.method public press()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/settings/rangebar/Thumb;->mIsPressed:Z

    .line 186
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/settings/rangebar/Thumb;->mIsPressed:Z

    .line 191
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 170
    iput p1, p0, Lcom/market2345/settings/rangebar/Thumb;->mX:F

    .line 171
    return-void
.end method
