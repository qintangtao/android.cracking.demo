.class public Lcom/market2345/customview/StickyNavLayout;
.super Landroid/widget/LinearLayout;
.source "StickyNavLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isTopHidden:Z

.field private mDragging:Z

.field private mInnerScrollView:Landroid/view/ViewGroup;

.field private mInnerTop:Landroid/view/View;

.field private mLastY:F

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNav:Landroid/view/View;

.field private mScroller:Landroid/widget/Scroller;

.field private mTop:Landroid/view/View;

.field private mTopViewHeight:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/market2345/customview/StickyNavLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/customview/StickyNavLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/customview/StickyNavLayout;->isTopHidden:Z

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/customview/StickyNavLayout;->setOrientation(I)V

    .line 54
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/customview/StickyNavLayout;->mScroller:Landroid/widget/Scroller;

    .line 55
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/customview/StickyNavLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 56
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/StickyNavLayout;->mTouchSlop:I

    .line 57
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/StickyNavLayout;->mMaximumVelocity:I

    .line 59
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/market2345/customview/StickyNavLayout;->mMinimumVelocity:I

    .line 62
    return-void
.end method

.method private getCurrentScrollView()V
    .locals 5

    .prologue
    .line 133
    iget-object v3, p0, Lcom/market2345/customview/StickyNavLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentPagerAdapter;

    .line 134
    .local v0, "adapter":Landroid/support/v4/app/FragmentPagerAdapter;
    if-eqz v0, :cond_0

    .line 135
    iget-object v3, p0, Lcom/market2345/customview/StickyNavLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 136
    .local v1, "currentItem":I
    iget-object v3, p0, Lcom/market2345/customview/StickyNavLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/app/FragmentPagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 137
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 138
    if-nez v1, :cond_1

    .line 139
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/market2345/customview/StickyNavLayout;->mInnerScrollView:Landroid/view/ViewGroup;

    .line 150
    .end local v1    # "currentItem":I
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    :goto_0
    return-void

    .line 141
    .restart local v1    # "currentItem":I
    .restart local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    .line 142
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0903af

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/market2345/customview/StickyNavLayout;->mInnerScrollView:Landroid/view/ViewGroup;

    goto :goto_0

    .line 144
    :cond_2
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 145
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f090415

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/market2345/customview/StickyNavLayout;->mInnerScrollView:Landroid/view/ViewGroup;

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/market2345/customview/StickyNavLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/market2345/customview/StickyNavLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/market2345/customview/StickyNavLayout;->scrollTo(II)V

    .line 227
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/market2345/detail/event/TopLayoutEvent;

    iget-object v2, p0, Lcom/market2345/customview/StickyNavLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/market2345/customview/StickyNavLayout;->mTopViewHeight:I

    invoke-direct {v1, v2, v3}, Lcom/market2345/detail/event/TopLayoutEvent;-><init>(FI)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0}, Lcom/market2345/customview/StickyNavLayout;->invalidate()V

    .line 230
    :cond_0
    return-void
.end method

.method public fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const/4 v1, 0x0

    .line 202
    iget-object v0, p0, Lcom/market2345/customview/StickyNavLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/market2345/customview/StickyNavLayout;->getScrollY()I

    move-result v2

    iget v8, p0, Lcom/market2345/customview/StickyNavLayout;->mTopViewHeight:I

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 203
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/market2345/detail/event/TopLayoutEvent;

    invoke-virtual {p0}, Lcom/market2345/customview/StickyNavLayout;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/market2345/customview/StickyNavLayout;->mTopViewHeight:I

    invoke-direct {v1, v2, v3}, Lcom/market2345/detail/event/TopLayoutEvent;-><init>(FI)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 204
    invoke-virtual {p0}, Lcom/market2345/customview/StickyNavLayout;->invalidate()V

    .line 205
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 67
    const v1, 0x7f090014

    invoke-virtual {p0, v1}, Lcom/market2345/customview/StickyNavLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/customview/StickyNavLayout;->mTop:Landroid/view/View;

    .line 68
    const v1, 0x7f090010

    invoke-virtual {p0, v1}, Lcom/market2345/customview/StickyNavLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/customview/StickyNavLayout;->mNav:Landroid/view/View;

    .line 69
    const v1, 0x7f09001f

    invoke-virtual {p0, v1}, Lcom/market2345/customview/StickyNavLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/customview/StickyNavLayout;->mInnerTop:Landroid/view/View;

    .line 70
    const v1, 0x7f09002a

    invoke-virtual {p0, v1}, Lcom/market2345/customview/StickyNavLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "id_stickynavlayout_viewpager show used by ViewPager !"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 75
    :cond_0
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p0, Lcom/market2345/customview/StickyNavLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 76
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x1

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 98
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 100
    .local v4, "y":F
    packed-switch v0, :pswitch_data_0

    .line 129
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :cond_1
    :goto_1
    return v5

    .line 102
    :pswitch_1
    iput v4, p0, Lcom/market2345/customview/StickyNavLayout;->mLastY:F

    goto :goto_0

    .line 105
    :pswitch_2
    iget v6, p0, Lcom/market2345/customview/StickyNavLayout;->mLastY:F

    sub-float v2, v4, v6

    .line 106
    .local v2, "dy":F
    invoke-direct {p0}, Lcom/market2345/customview/StickyNavLayout;->getCurrentScrollView()V

    .line 108
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/market2345/customview/StickyNavLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 109
    iput-boolean v5, p0, Lcom/market2345/customview/StickyNavLayout;->mDragging:Z

    .line 112
    iget-object v6, p0, Lcom/market2345/customview/StickyNavLayout;->mInnerScrollView:Landroid/view/ViewGroup;

    instance-of v6, v6, Landroid/widget/ScrollView;

    if-eqz v6, :cond_2

    .line 113
    iget-boolean v6, p0, Lcom/market2345/customview/StickyNavLayout;->isTopHidden:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/market2345/customview/StickyNavLayout;->mInnerScrollView:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/market2345/customview/StickyNavLayout;->isTopHidden:Z

    if-eqz v6, :cond_0

    cmpl-float v6, v2, v8

    if-lez v6, :cond_0

    goto :goto_1

    .line 117
    :cond_2
    iget-object v6, p0, Lcom/market2345/customview/StickyNavLayout;->mInnerScrollView:Landroid/view/ViewGroup;

    instance-of v6, v6, Landroid/widget/ListView;

    if-eqz v6, :cond_0

    .line 118
    iget-object v3, p0, Lcom/market2345/customview/StickyNavLayout;->mInnerScrollView:Landroid/view/ViewGroup;

    check-cast v3, Landroid/widget/ListView;

    .line 119
    .local v3, "lv":Landroid/widget/ListView;
    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 120
    .local v1, "c":Landroid/view/View;
    iget-boolean v6, p0, Lcom/market2345/customview/StickyNavLayout;->isTopHidden:Z

    if-eqz v6, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/market2345/customview/StickyNavLayout;->isTopHidden:Z

    if-eqz v6, :cond_0

    cmpl-float v6, v2, v8

    if-lez v6, :cond_0

    goto :goto_1

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 82
    iget-object v1, p0, Lcom/market2345/customview/StickyNavLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 83
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/market2345/customview/StickyNavLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/market2345/customview/StickyNavLayout;->mNav:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/market2345/customview/StickyNavLayout;->mInnerTop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    iget-object v1, p0, Lcom/market2345/customview/StickyNavLayout;->mTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/market2345/customview/StickyNavLayout;->mInnerTop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/market2345/customview/StickyNavLayout;->mTopViewHeight:I

    .line 85
    invoke-virtual {p0}, Lcom/market2345/customview/StickyNavLayout;->invalidate()V

    .line 86
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/market2345/customview/StickyNavLayout;->mTop:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/market2345/customview/StickyNavLayout;->mInnerTop:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/market2345/customview/StickyNavLayout;->mTopViewHeight:I

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 92
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x0

    .line 154
    iget-object v6, p0, Lcom/market2345/customview/StickyNavLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 155
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 157
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    .line 158
    .local v4, "y1":F
    packed-switch v0, :pswitch_data_0

    .line 198
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_1
    return v5

    .line 160
    :pswitch_0
    iget-object v6, p0, Lcom/market2345/customview/StickyNavLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 161
    iget-object v6, p0, Lcom/market2345/customview/StickyNavLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    .line 162
    :cond_1
    iget-object v6, p0, Lcom/market2345/customview/StickyNavLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    .line 163
    iget-object v6, p0, Lcom/market2345/customview/StickyNavLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 164
    iput v4, p0, Lcom/market2345/customview/StickyNavLayout;->mLastY:F

    goto :goto_1

    .line 167
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 168
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget v7, p0, Lcom/market2345/customview/StickyNavLayout;->mLastY:F

    sub-float v1, v6, v7

    .line 169
    .local v1, "dy":F
    iget-boolean v6, p0, Lcom/market2345/customview/StickyNavLayout;->mDragging:Z

    if-nez v6, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/market2345/customview/StickyNavLayout;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    .line 170
    iput-boolean v5, p0, Lcom/market2345/customview/StickyNavLayout;->mDragging:Z

    .line 172
    :cond_2
    iget-boolean v5, p0, Lcom/market2345/customview/StickyNavLayout;->mDragging:Z

    if-eqz v5, :cond_3

    .line 173
    neg-float v5, v1

    float-to-int v5, v5

    invoke-virtual {p0, v8, v5}, Lcom/market2345/customview/StickyNavLayout;->scrollBy(II)V

    .line 174
    iput v3, p0, Lcom/market2345/customview/StickyNavLayout;->mLastY:F

    .line 175
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    new-instance v6, Lcom/market2345/detail/event/TopLayoutEvent;

    invoke-virtual {p0}, Lcom/market2345/customview/StickyNavLayout;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/market2345/customview/StickyNavLayout;->mTopViewHeight:I

    invoke-direct {v6, v7, v8}, Lcom/market2345/detail/event/TopLayoutEvent;-><init>(FI)V

    invoke-virtual {v5, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 177
    :cond_3
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    new-instance v6, Lcom/market2345/detail/event/TopLayoutEvent;

    invoke-virtual {p0}, Lcom/market2345/customview/StickyNavLayout;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/market2345/customview/StickyNavLayout;->mTopViewHeight:I

    invoke-direct {v6, v7, v8}, Lcom/market2345/detail/event/TopLayoutEvent;-><init>(FI)V

    invoke-virtual {v5, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 180
    .end local v1    # "dy":F
    .end local v3    # "y":F
    :pswitch_2
    iput v7, p0, Lcom/market2345/customview/StickyNavLayout;->mLastY:F

    .line 181
    iput-boolean v8, p0, Lcom/market2345/customview/StickyNavLayout;->mDragging:Z

    .line 182
    iget-object v5, p0, Lcom/market2345/customview/StickyNavLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_0

    .line 183
    iget-object v5, p0, Lcom/market2345/customview/StickyNavLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    goto :goto_0

    .line 187
    :pswitch_3
    iput v7, p0, Lcom/market2345/customview/StickyNavLayout;->mLastY:F

    .line 188
    iput-boolean v8, p0, Lcom/market2345/customview/StickyNavLayout;->mDragging:Z

    .line 189
    iget-object v5, p0, Lcom/market2345/customview/StickyNavLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    iget v7, p0, Lcom/market2345/customview/StickyNavLayout;->mMaximumVelocity:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 190
    iget-object v5, p0, Lcom/market2345/customview/StickyNavLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v5

    float-to-int v2, v5

    .line 191
    .local v2, "velocityY":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lcom/market2345/customview/StickyNavLayout;->mMinimumVelocity:I

    if-le v5, v6, :cond_4

    .line 192
    neg-int v5, v2

    invoke-virtual {p0, v5}, Lcom/market2345/customview/StickyNavLayout;->fling(I)V

    .line 194
    :cond_4
    iget-object v5, p0, Lcom/market2345/customview/StickyNavLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 209
    if-gez p2, :cond_0

    .line 210
    const/4 p2, 0x0

    .line 212
    :cond_0
    iget v0, p0, Lcom/market2345/customview/StickyNavLayout;->mTopViewHeight:I

    if-le p2, v0, :cond_1

    .line 213
    iget p2, p0, Lcom/market2345/customview/StickyNavLayout;->mTopViewHeight:I

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/customview/StickyNavLayout;->getScrollY()I

    move-result v0

    if-eq p2, v0, :cond_2

    .line 217
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 219
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/customview/StickyNavLayout;->getScrollY()I

    move-result v0

    iget v1, p0, Lcom/market2345/customview/StickyNavLayout;->mTopViewHeight:I

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/market2345/customview/StickyNavLayout;->isTopHidden:Z

    .line 221
    return-void

    .line 219
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
