.class public Lcom/market2345/customview/AutoScrollViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "AutoScrollViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/customview/AutoScrollViewPager$MyHandler;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERVAL:I = 0x5dc

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x1

.field public static final SCROLL_WHAT:I = 0x0

.field public static final SLIDE_BORDER_MODE_CYCLE:I = 0x1

.field public static final SLIDE_BORDER_MODE_NONE:I = 0x0

.field public static final SLIDE_BORDER_MODE_TO_PARENT:I = 0x2


# instance fields
.field private autoScrollFactor:D

.field private direction:I

.field private downX:F

.field private handler:Landroid/os/Handler;

.field private interval:J

.field private isAutoScroll:Z

.field private isBorderAnimation:Z

.field private isCycle:Z

.field private isStopByTouch:Z

.field mDownX:F

.field mDownY:F

.field private scroller:Lcom/market2345/customview/CustomDurationScroller;

.field private slideBorderMode:I

.field private stopScrollWhenTouch:Z

.field private swipeScrollFactor:D

.field private touchX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 79
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 40
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->interval:J

    .line 44
    iput v2, p0, Lcom/market2345/customview/AutoScrollViewPager;->direction:I

    .line 48
    iput-boolean v2, p0, Lcom/market2345/customview/AutoScrollViewPager;->isCycle:Z

    .line 52
    iput-boolean v2, p0, Lcom/market2345/customview/AutoScrollViewPager;->stopScrollWhenTouch:Z

    .line 56
    iput v3, p0, Lcom/market2345/customview/AutoScrollViewPager;->slideBorderMode:I

    .line 60
    iput-boolean v2, p0, Lcom/market2345/customview/AutoScrollViewPager;->isBorderAnimation:Z

    .line 64
    iput-wide v4, p0, Lcom/market2345/customview/AutoScrollViewPager;->autoScrollFactor:D

    .line 68
    iput-wide v4, p0, Lcom/market2345/customview/AutoScrollViewPager;->swipeScrollFactor:D

    .line 71
    iput-boolean v3, p0, Lcom/market2345/customview/AutoScrollViewPager;->isAutoScroll:Z

    .line 72
    iput-boolean v3, p0, Lcom/market2345/customview/AutoScrollViewPager;->isStopByTouch:Z

    .line 73
    iput v6, p0, Lcom/market2345/customview/AutoScrollViewPager;->touchX:F

    iput v6, p0, Lcom/market2345/customview/AutoScrollViewPager;->downX:F

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->scroller:Lcom/market2345/customview/CustomDurationScroller;

    .line 80
    invoke-direct {p0}, Lcom/market2345/customview/AutoScrollViewPager;->init()V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "paramContext"    # Landroid/content/Context;
    .param p2, "paramAttributeSet"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const-wide/16 v0, 0x5dc

    iput-wide v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->interval:J

    .line 44
    iput v2, p0, Lcom/market2345/customview/AutoScrollViewPager;->direction:I

    .line 48
    iput-boolean v2, p0, Lcom/market2345/customview/AutoScrollViewPager;->isCycle:Z

    .line 52
    iput-boolean v2, p0, Lcom/market2345/customview/AutoScrollViewPager;->stopScrollWhenTouch:Z

    .line 56
    iput v3, p0, Lcom/market2345/customview/AutoScrollViewPager;->slideBorderMode:I

    .line 60
    iput-boolean v2, p0, Lcom/market2345/customview/AutoScrollViewPager;->isBorderAnimation:Z

    .line 64
    iput-wide v4, p0, Lcom/market2345/customview/AutoScrollViewPager;->autoScrollFactor:D

    .line 68
    iput-wide v4, p0, Lcom/market2345/customview/AutoScrollViewPager;->swipeScrollFactor:D

    .line 71
    iput-boolean v3, p0, Lcom/market2345/customview/AutoScrollViewPager;->isAutoScroll:Z

    .line 72
    iput-boolean v3, p0, Lcom/market2345/customview/AutoScrollViewPager;->isStopByTouch:Z

    .line 73
    iput v6, p0, Lcom/market2345/customview/AutoScrollViewPager;->touchX:F

    iput v6, p0, Lcom/market2345/customview/AutoScrollViewPager;->downX:F

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->scroller:Lcom/market2345/customview/CustomDurationScroller;

    .line 85
    invoke-direct {p0}, Lcom/market2345/customview/AutoScrollViewPager;->init()V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/customview/AutoScrollViewPager;)D
    .locals 2
    .param p0, "x0"    # Lcom/market2345/customview/AutoScrollViewPager;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->autoScrollFactor:D

    return-wide v0
.end method

.method static synthetic access$100(Lcom/market2345/customview/AutoScrollViewPager;)Lcom/market2345/customview/CustomDurationScroller;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/customview/AutoScrollViewPager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->scroller:Lcom/market2345/customview/CustomDurationScroller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/customview/AutoScrollViewPager;)D
    .locals 2
    .param p0, "x0"    # Lcom/market2345/customview/AutoScrollViewPager;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->swipeScrollFactor:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/market2345/customview/AutoScrollViewPager;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/customview/AutoScrollViewPager;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->interval:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/market2345/customview/AutoScrollViewPager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/market2345/customview/AutoScrollViewPager;
    .param p1, "x1"    # J

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/market2345/customview/AutoScrollViewPager;->sendScrollMessage(J)V

    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lcom/market2345/customview/AutoScrollViewPager$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/customview/AutoScrollViewPager$MyHandler;-><init>(Lcom/market2345/customview/AutoScrollViewPager;)V

    iput-object v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->handler:Landroid/os/Handler;

    .line 104
    invoke-direct {p0}, Lcom/market2345/customview/AutoScrollViewPager;->setViewPagerScroller()V

    .line 105
    return-void
.end method

.method private sendScrollMessage(J)V
    .locals 3
    .param p1, "delayTimeInMills"    # J

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    iget-object v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 155
    return-void
.end method

.method private setViewPagerScroller()V
    .locals 6

    .prologue
    .line 162
    :try_start_0
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string v4, "mScroller"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 163
    .local v2, "scrollerField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 164
    const-class v3, Landroid/support/v4/view/ViewPager;

    const-string v4, "sInterpolator"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 165
    .local v1, "interpolatorField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 167
    new-instance v4, Lcom/market2345/customview/CustomDurationScroller;

    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Interpolator;

    invoke-direct {v4, v5, v3}, Lcom/market2345/customview/CustomDurationScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v4, p0, Lcom/market2345/customview/AutoScrollViewPager;->scroller:Lcom/market2345/customview/CustomDurationScroller;

    .line 168
    iget-object v3, p0, Lcom/market2345/customview/AutoScrollViewPager;->scroller:Lcom/market2345/customview/CustomDurationScroller;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v1    # "interpolatorField":Ljava/lang/reflect/Field;
    .end local v2    # "scrollerField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    .line 208
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 210
    .local v0, "action":I
    iget-boolean v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->stopScrollWhenTouch:Z

    if-eqz v5, :cond_0

    .line 211
    if-nez v0, :cond_5

    iget-boolean v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->isAutoScroll:Z

    if-eqz v5, :cond_5

    .line 212
    iput-boolean v8, p0, Lcom/market2345/customview/AutoScrollViewPager;->isStopByTouch:Z

    .line 213
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->stopAutoScroll()V

    .line 219
    :cond_0
    :goto_0
    iget v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->slideBorderMode:I

    if-eq v5, v7, :cond_1

    iget v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->slideBorderMode:I

    if-ne v5, v8, :cond_9

    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->touchX:F

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    .line 222
    iget v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->touchX:F

    iput v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->downX:F

    .line 224
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->getCurrentItem()I

    move-result v2

    .line 225
    .local v2, "currentItem":I
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 226
    .local v1, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v1, :cond_6

    move v3, v4

    .line 233
    .local v3, "pageCount":I
    :goto_1
    if-nez v2, :cond_3

    iget v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->downX:F

    iget v6, p0, Lcom/market2345/customview/AutoScrollViewPager;->touchX:F

    cmpg-float v5, v5, v6

    if-lez v5, :cond_4

    :cond_3
    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_9

    iget v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->downX:F

    iget v6, p0, Lcom/market2345/customview/AutoScrollViewPager;->touchX:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    .line 234
    :cond_4
    iget v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->slideBorderMode:I

    if-ne v5, v7, :cond_7

    .line 235
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 242
    :goto_2
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 265
    .end local v1    # "adapter":Landroid/support/v4/view/PagerAdapter;
    .end local v2    # "currentItem":I
    .end local v3    # "pageCount":I
    :goto_3
    return v4

    .line 214
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v8, :cond_0

    iget-boolean v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->isStopByTouch:Z

    if-eqz v5, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->startAutoScroll()V

    goto :goto_0

    .line 226
    .restart local v1    # "adapter":Landroid/support/v4/view/PagerAdapter;
    .restart local v2    # "currentItem":I
    :cond_6
    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    goto :goto_1

    .line 237
    .restart local v3    # "pageCount":I
    :cond_7
    if-le v3, v8, :cond_8

    .line 238
    sub-int v4, v3, v2

    add-int/lit8 v4, v4, -0x1

    iget-boolean v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->isBorderAnimation:Z

    invoke-virtual {p0, v4, v5}, Lcom/market2345/customview/AutoScrollViewPager;->setCurrentItem(IZ)V

    .line 240
    :cond_8
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    .line 246
    .end local v1    # "adapter":Landroid/support/v4/view/PagerAdapter;
    .end local v2    # "currentItem":I
    .end local v3    # "pageCount":I
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 265
    :goto_4
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_3

    .line 248
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/market2345/customview/AutoScrollViewPager;->mDownX:F

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/market2345/customview/AutoScrollViewPager;->mDownY:F

    .line 250
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 253
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/market2345/customview/AutoScrollViewPager;->mDownX:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/market2345/customview/AutoScrollViewPager;->mDownY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    .line 254
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 256
    :cond_a
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 261
    :pswitch_2
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_4

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 321
    iget v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->direction:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getInterval()J
    .locals 2

    .prologue
    .line 303
    iget-wide v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->interval:J

    return-wide v0
.end method

.method public getSlideBorderMode()I
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->slideBorderMode:I

    return v0
.end method

.method public isBorderAnimation()Z
    .locals 1

    .prologue
    .line 395
    iget-boolean v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->isBorderAnimation:Z

    return v0
.end method

.method public isCurrentAutoScroll()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->isAutoScroll:Z

    return v0
.end method

.method public isCycle()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->isCycle:Z

    return v0
.end method

.method public isStopScrollWhenTouch()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->stopScrollWhenTouch:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 90
    const/4 v2, 0x0

    .line 91
    .local v2, "height":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 92
    invoke-virtual {p0, v3}, Lcom/market2345/customview/AutoScrollViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "child":Landroid/view/View;
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, p1, v4}, Landroid/view/View;->measure(II)V

    .line 94
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 95
    .local v1, "h":I
    if-le v1, v2, :cond_0

    move v2, v1

    .line 91
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "h":I
    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 99
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/ViewPager;->onMeasure(II)V

    .line 100
    return-void
.end method

.method public scrollOnce()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 178
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 179
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    invoke-virtual {p0}, Lcom/market2345/customview/AutoScrollViewPager;->getCurrentItem()I

    move-result v1

    .line 181
    .local v1, "currentItem":I
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .local v3, "totalCount":I
    if-gt v3, v5, :cond_1

    .line 197
    .end local v3    # "totalCount":I
    :cond_0
    :goto_0
    return-void

    .line 185
    .restart local v3    # "totalCount":I
    :cond_1
    iget v4, p0, Lcom/market2345/customview/AutoScrollViewPager;->direction:I

    if-nez v4, :cond_3

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    .line 186
    .local v1, "nextItem":I
    .local v2, "currentItem":I
    :goto_1
    if-gez v1, :cond_4

    .line 187
    iget-boolean v4, p0, Lcom/market2345/customview/AutoScrollViewPager;->isCycle:Z

    if-eqz v4, :cond_2

    .line 188
    add-int/lit8 v4, v3, -0x1

    iget-boolean v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->isBorderAnimation:Z

    invoke-virtual {p0, v4, v5}, Lcom/market2345/customview/AutoScrollViewPager;->setCurrentItem(IZ)V

    :cond_2
    :goto_2
    move v1, v2

    .line 197
    .end local v2    # "currentItem":I
    .local v1, "currentItem":I
    goto :goto_0

    .line 185
    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v2, v1

    .end local v1    # "currentItem":I
    .restart local v2    # "currentItem":I
    goto :goto_1

    .line 190
    .local v1, "nextItem":I
    :cond_4
    if-ne v1, v3, :cond_5

    .line 191
    iget-boolean v4, p0, Lcom/market2345/customview/AutoScrollViewPager;->isCycle:Z

    if-eqz v4, :cond_2

    .line 192
    const/4 v4, 0x0

    iget-boolean v5, p0, Lcom/market2345/customview/AutoScrollViewPager;->isBorderAnimation:Z

    invoke-virtual {p0, v4, v5}, Lcom/market2345/customview/AutoScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_2

    .line 195
    :cond_5
    invoke-virtual {p0, v1, v5}, Lcom/market2345/customview/AutoScrollViewPager;->setCurrentItem(IZ)V

    goto :goto_2
.end method

.method public setAutoScrollDurationFactor(D)V
    .locals 1
    .param p1, "scrollFactor"    # D

    .prologue
    .line 148
    iput-wide p1, p0, Lcom/market2345/customview/AutoScrollViewPager;->autoScrollFactor:D

    .line 149
    return-void
.end method

.method public setBorderAnimation(Z)V
    .locals 0
    .param p1, "isBorderAnimation"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Lcom/market2345/customview/AutoScrollViewPager;->isBorderAnimation:Z

    .line 405
    return-void
.end method

.method public setCycle(Z)V
    .locals 0
    .param p1, "isCycle"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/market2345/customview/AutoScrollViewPager;->isCycle:Z

    .line 349
    return-void
.end method

.method public setDirection(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 330
    iput p1, p0, Lcom/market2345/customview/AutoScrollViewPager;->direction:I

    .line 331
    return-void
.end method

.method public setInterval(J)V
    .locals 1
    .param p1, "interval"    # J

    .prologue
    .line 312
    iput-wide p1, p0, Lcom/market2345/customview/AutoScrollViewPager;->interval:J

    .line 313
    return-void
.end method

.method public setSlideBorderMode(I)V
    .locals 0
    .param p1, "slideBorderMode"    # I

    .prologue
    .line 386
    iput p1, p0, Lcom/market2345/customview/AutoScrollViewPager;->slideBorderMode:I

    .line 387
    return-void
.end method

.method public setStopScrollWhenTouch(Z)V
    .locals 0
    .param p1, "stopScrollWhenTouch"    # Z

    .prologue
    .line 366
    iput-boolean p1, p0, Lcom/market2345/customview/AutoScrollViewPager;->stopScrollWhenTouch:Z

    .line 367
    return-void
.end method

.method public setSwipeScrollDurationFactor(D)V
    .locals 1
    .param p1, "scrollFactor"    # D

    .prologue
    .line 141
    iput-wide p1, p0, Lcom/market2345/customview/AutoScrollViewPager;->swipeScrollFactor:D

    .line 142
    return-void
.end method

.method public startAutoScroll()V
    .locals 6

    .prologue
    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->isAutoScroll:Z

    .line 116
    iget-wide v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->interval:J

    long-to-double v0, v0

    iget-object v2, p0, Lcom/market2345/customview/AutoScrollViewPager;->scroller:Lcom/market2345/customview/CustomDurationScroller;

    invoke-virtual {v2}, Lcom/market2345/customview/CustomDurationScroller;->getDuration()I

    move-result v2

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/market2345/customview/AutoScrollViewPager;->autoScrollFactor:D

    div-double/2addr v2, v4

    iget-wide v4, p0, Lcom/market2345/customview/AutoScrollViewPager;->swipeScrollFactor:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/market2345/customview/AutoScrollViewPager;->sendScrollMessage(J)V

    .line 117
    return-void
.end method

.method public startAutoScroll(I)V
    .locals 2
    .param p1, "delayTimeInMills"    # I

    .prologue
    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->isAutoScroll:Z

    .line 126
    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/market2345/customview/AutoScrollViewPager;->sendScrollMessage(J)V

    .line 127
    return-void
.end method

.method public stopAutoScroll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    iput-boolean v1, p0, Lcom/market2345/customview/AutoScrollViewPager;->isAutoScroll:Z

    .line 134
    iget-object v0, p0, Lcom/market2345/customview/AutoScrollViewPager;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    return-void
.end method
