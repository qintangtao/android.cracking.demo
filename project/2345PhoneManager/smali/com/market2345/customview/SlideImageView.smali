.class public Lcom/market2345/customview/SlideImageView;
.super Landroid/widget/ImageView;
.source "SlideImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/customview/SlideImageView$MyHandler;
    }
.end annotation


# instance fields
.field private auto:Z

.field private context:Landroid/content/Context;

.field private currX:F

.field private currY:F

.field private currentLeft:I

.field private diatance:J

.field private hand:Landroid/graphics/drawable/Drawable;

.field private lastTime:J

.field private lastX:F

.field private lastY:F

.field private mHander:Landroid/os/Handler;

.field private mWidth:I

.field private mstopHander:Landroid/os/Handler;

.field private nextTime:J

.field private posiCalul:Lcom/market2345/customview/PositionCaculate;

.field private road:I

.field private self:Lcom/market2345/util/PagedView;

.field private sliding:Z

.field private spin:Landroid/graphics/drawable/Drawable;

.field private startLeft:I

.field private startTime:J

.field private startTop:I

.field private stopLeft:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v2, 0x0

    .line 150
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/market2345/customview/SlideImageView;->diatance:J

    .line 63
    iput-wide v2, p0, Lcom/market2345/customview/SlideImageView;->lastTime:J

    .line 65
    iput-wide v2, p0, Lcom/market2345/customview/SlideImageView;->nextTime:J

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/SlideImageView;->auto:Z

    .line 151
    iput-object p1, p0, Lcom/market2345/customview/SlideImageView;->context:Landroid/content/Context;

    .line 152
    invoke-direct {p0}, Lcom/market2345/customview/SlideImageView;->init()V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const-wide/16 v2, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/market2345/customview/SlideImageView;->diatance:J

    .line 63
    iput-wide v2, p0, Lcom/market2345/customview/SlideImageView;->lastTime:J

    .line 65
    iput-wide v2, p0, Lcom/market2345/customview/SlideImageView;->nextTime:J

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/SlideImageView;->auto:Z

    .line 81
    iput-object p1, p0, Lcom/market2345/customview/SlideImageView;->context:Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Lcom/market2345/customview/SlideImageView;->init()V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/market2345/customview/SlideImageView;->diatance:J

    .line 63
    iput-wide v2, p0, Lcom/market2345/customview/SlideImageView;->lastTime:J

    .line 65
    iput-wide v2, p0, Lcom/market2345/customview/SlideImageView;->nextTime:J

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/SlideImageView;->auto:Z

    .line 74
    iput-object p1, p0, Lcom/market2345/customview/SlideImageView;->context:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/market2345/customview/SlideImageView;->init()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/customview/SlideImageView;)Lcom/market2345/customview/PositionCaculate;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/customview/SlideImageView;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/customview/SlideImageView;->posiCalul:Lcom/market2345/customview/PositionCaculate;

    return-object v0
.end method

.method static synthetic access$102(Lcom/market2345/customview/SlideImageView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/customview/SlideImageView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    return p1
.end method

.method static synthetic access$202(Lcom/market2345/customview/SlideImageView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/customview/SlideImageView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/market2345/customview/SlideImageView;->sliding:Z

    return p1
.end method

.method static synthetic access$302(Lcom/market2345/customview/SlideImageView;J)J
    .locals 1
    .param p0, "x0"    # Lcom/market2345/customview/SlideImageView;
    .param p1, "x1"    # J

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/market2345/customview/SlideImageView;->startTime:J

    return-wide p1
.end method

.method private checkSlide()V
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Lcom/market2345/customview/SlideImageView;->lastX:F

    iget v1, p0, Lcom/market2345/customview/SlideImageView;->currX:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/market2345/customview/SlideImageView;->mstopHander:Landroid/os/Handler;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 234
    :cond_0
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/market2345/customview/SlideImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/customview/SlideImageView;->spin:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {p0}, Lcom/market2345/customview/SlideImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-static {}, Lcom/market2345/slidemenu/DataCacheForViewPager;->getInstance()Lcom/market2345/slidemenu/DataCacheForViewPager;

    move-result-object v0

    const-string v1, "window_width"

    invoke-virtual {v0, v1}, Lcom/market2345/slidemenu/DataCacheForViewPager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/SlideImageView;->mWidth:I

    .line 97
    iget v0, p0, Lcom/market2345/customview/SlideImageView;->mWidth:I

    iget-object v1, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x14

    iput v0, p0, Lcom/market2345/customview/SlideImageView;->startLeft:I

    .line 98
    iget-object v0, p0, Lcom/market2345/customview/SlideImageView;->spin:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/SlideImageView;->stopLeft:I

    .line 99
    iget v0, p0, Lcom/market2345/customview/SlideImageView;->startLeft:I

    iget v1, p0, Lcom/market2345/customview/SlideImageView;->stopLeft:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/market2345/customview/SlideImageView;->road:I

    .line 100
    iget v0, p0, Lcom/market2345/customview/SlideImageView;->startLeft:I

    iput v0, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    .line 101
    new-instance v0, Lcom/market2345/customview/PositionCaculate;

    iget-object v1, p0, Lcom/market2345/customview/SlideImageView;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/market2345/customview/PositionCaculate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/customview/SlideImageView;->posiCalul:Lcom/market2345/customview/PositionCaculate;

    .line 104
    new-instance v0, Lcom/market2345/customview/SlideImageView$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/customview/SlideImageView$MyHandler;-><init>(Lcom/market2345/customview/SlideImageView;)V

    iput-object v0, p0, Lcom/market2345/customview/SlideImageView;->mHander:Landroid/os/Handler;

    .line 105
    return-void
.end method


# virtual methods
.method public autoSlide()V
    .locals 2

    .prologue
    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/SlideImageView;->auto:Z

    .line 201
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/customview/SlideImageView;->startTime:J

    .line 202
    iget-object v0, p0, Lcom/market2345/customview/SlideImageView;->mHander:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 239
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 255
    new-instance v2, Landroid/graphics/Rect;

    const/16 v6, 0x46

    invoke-static {}, Lcom/market2345/slidemenu/DataCacheForViewPager;->getInstance()Lcom/market2345/slidemenu/DataCacheForViewPager;

    move-result-object v5

    const-string v7, "window_width"

    invoke-virtual {v5, v7}, Lcom/market2345/slidemenu/DataCacheForViewPager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0x8c

    invoke-direct {v2, v10, v6, v5, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 256
    .local v2, "r":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 257
    .local v1, "paint":Landroid/graphics/Paint;
    iget-object v5, p0, Lcom/market2345/customview/SlideImageView;->spin:Landroid/graphics/drawable/Drawable;

    const/16 v6, 0x32

    iget-object v7, p0, Lcom/market2345/customview/SlideImageView;->spin:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/lit8 v7, v7, 0x32

    iget-object v8, p0, Lcom/market2345/customview/SlideImageView;->spin:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 258
    iget-object v5, p0, Lcom/market2345/customview/SlideImageView;->spin:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 262
    iget-boolean v5, p0, Lcom/market2345/customview/SlideImageView;->auto:Z

    if-eqz v5, :cond_3

    .line 265
    iget-wide v6, p0, Lcom/market2345/customview/SlideImageView;->lastTime:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 267
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/market2345/customview/SlideImageView;->lastTime:J

    .line 268
    iget-wide v6, p0, Lcom/market2345/customview/SlideImageView;->lastTime:J

    iput-wide v6, p0, Lcom/market2345/customview/SlideImageView;->nextTime:J

    .line 276
    :goto_0
    const v0, 0x3951b717    # 2.0E-4f

    .line 277
    .local v0, "mDurationReciprocal":F
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/market2345/customview/SlideImageView;->startTime:J

    sub-long/2addr v6, v8

    long-to-int v3, v6

    .line 278
    .local v3, "timePassed":I
    int-to-float v5, v3

    mul-float v4, v5, v0

    .line 279
    .local v4, "x":F
    iget v5, p0, Lcom/market2345/customview/SlideImageView;->startLeft:I

    iget v6, p0, Lcom/market2345/customview/SlideImageView;->road:I

    neg-int v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    .line 280
    iget v5, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    iget v6, p0, Lcom/market2345/customview/SlideImageView;->stopLeft:I

    if-ge v5, v6, :cond_0

    .line 282
    iget v5, p0, Lcom/market2345/customview/SlideImageView;->stopLeft:I

    iput v5, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    .line 283
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/market2345/customview/SlideImageView;->startTime:J

    .line 284
    iput-boolean v10, p0, Lcom/market2345/customview/SlideImageView;->sliding:Z

    .line 286
    :cond_0
    iget v5, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    iget-object v6, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget v7, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {p1, v5, v10, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 287
    iget-object v5, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    iget-object v7, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget v8, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 288
    iget-object v5, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 290
    iget-boolean v5, p0, Lcom/market2345/customview/SlideImageView;->sliding:Z

    if-eqz v5, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/market2345/customview/SlideImageView;->invalidate()V

    .line 310
    .end local v0    # "mDurationReciprocal":F
    .end local v3    # "timePassed":I
    .end local v4    # "x":F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 311
    return-void

    .line 272
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/market2345/customview/SlideImageView;->nextTime:J

    .line 274
    iget-wide v6, p0, Lcom/market2345/customview/SlideImageView;->nextTime:J

    iput-wide v6, p0, Lcom/market2345/customview/SlideImageView;->lastTime:J

    goto :goto_0

    .line 296
    .restart local v0    # "mDurationReciprocal":F
    .restart local v3    # "timePassed":I
    .restart local v4    # "x":F
    :cond_2
    iget-object v5, p0, Lcom/market2345/customview/SlideImageView;->mHander:Landroid/os/Handler;

    const/4 v6, 0x3

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 301
    .end local v0    # "mDurationReciprocal":F
    .end local v3    # "timePassed":I
    .end local v4    # "x":F
    :cond_3
    iget v5, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    iget v6, p0, Lcom/market2345/customview/SlideImageView;->stopLeft:I

    if-ge v5, v6, :cond_4

    .line 303
    iget v5, p0, Lcom/market2345/customview/SlideImageView;->stopLeft:I

    iput v5, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    .line 305
    :cond_4
    iget v5, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    iget-object v6, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget v7, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {p1, v5, v10, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 306
    iget-object v5, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    iget-object v7, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iget v8, p0, Lcom/market2345/customview/SlideImageView;->currentLeft:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v5, v6, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 307
    iget-object v5, p0, Lcom/market2345/customview/SlideImageView;->hand:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 224
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 213
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/market2345/customview/SlideImageView;->lastX:F

    .line 214
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/market2345/customview/SlideImageView;->lastY:F

    goto :goto_0

    .line 217
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/market2345/customview/SlideImageView;->currX:F

    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/market2345/customview/SlideImageView;->currY:F

    .line 219
    invoke-direct {p0}, Lcom/market2345/customview/SlideImageView;->checkSlide()V

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMstopHander(Landroid/os/Handler;)V
    .locals 0
    .param p1, "mstopHander"    # Landroid/os/Handler;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/market2345/customview/SlideImageView;->mstopHander:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method public setSelf(Lcom/market2345/util/PagedView;)V
    .locals 0
    .param p1, "self"    # Lcom/market2345/util/PagedView;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/market2345/customview/SlideImageView;->self:Lcom/market2345/util/PagedView;

    .line 159
    return-void
.end method
