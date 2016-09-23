.class public Lcom/market2345/util/PagedView;
.super Landroid/view/ViewGroup;
.source "PagedView.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/util/PagedView$Page;,
        Lcom/market2345/util/PagedView$SavedState;,
        Lcom/market2345/util/PagedView$ScrollInterpolator;,
        Lcom/market2345/util/PagedView$PageSwitchListener;
    }
.end annotation


# static fields
.field protected static final ALPHA_QUANTIZE_LEVEL:F = 1.0E-4f

.field static final AUTOMATIC_PAGE_SPACING:I = -0x1

.field private static final DEBUG:Z = false

.field private static final FLING_THRESHOLD_VELOCITY:I = 0x1f4

.field protected static final INVALID_PAGE:I = -0x1

.field protected static final INVALID_POINTER:I = -0x1

.field private static final MIN_FLING_VELOCITY:I = 0xfa

.field private static final MIN_LENGTH_FOR_FLING:I = 0x19

.field private static final MIN_SNAP_VELOCITY:I = 0x5dc

.field protected static final NANOTIME_DIV:F = 1.0E9f

.field private static final OVERSCROLL_ACCELERATE_FACTOR:F = 2.0f

.field private static final OVERSCROLL_DAMP_FACTOR:F = 0.14f

.field protected static final PAGE_SNAP_ANIMATION_DURATION:I = 0x226

.field private static final RETURN_TO_ORIGINAL_PAGE_THRESHOLD:F = 0.33f

.field private static final SIGNIFICANT_MOVE_THRESHOLD:F = 0.4f

.field protected static final SLOW_PAGE_SNAP_ANIMATION_DURATION:I = 0x3b6

.field private static final TAG:Ljava/lang/String; = "PagedView"

.field protected static final TOUCH_STATE_NEXT_PAGE:I = 0x3

.field protected static final TOUCH_STATE_PREV_PAGE:I = 0x2

.field protected static final TOUCH_STATE_REST:I = 0x0

.field protected static final TOUCH_STATE_SCROLLING:I = 0x1

.field protected static final sScrollIndicatorFadeInDuration:I = 0x96

.field protected static final sScrollIndicatorFadeOutDuration:I = 0x28a

.field protected static final sScrollIndicatorFlashDuration:I = 0x28a


# instance fields
.field hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

.field protected mActivePointerId:I

.field protected mAllowLongPress:Z

.field protected mAllowOverScroll:Z

.field protected mCellCountX:I

.field protected mCellCountY:I

.field protected mCenterPagesVertically:Z

.field private mChildOffsets:[I

.field private mChildOffsetsWithLayoutScale:[I

.field private mChildRelativeOffsets:[I

.field protected mContentIsRefreshable:Z

.field protected mCurrentPage:I

.field private mDeferLoadAssociatedPagesUntilScrollCompletes:Z

.field protected mDeferScrollUpdate:Z

.field protected mDensity:F

.field private mDownMotionX:F

.field protected mFadeInAdjacentScreens:Z

.field protected mFirstLayout:Z

.field protected mFlingThresholdVelocity:I

.field protected mForceDrawAllChildrenNextFrame:Z

.field protected mForceScreenScrolled:Z

.field private mHasScrollIndicator:Z

.field protected mIsDataReady:Z

.field protected mIsPageMoving:Z

.field protected mLastMotionX:F

.field protected mLastMotionXRemainder:F

.field protected mLastMotionY:F

.field private mLastScreenCenter:I

.field protected mLayoutScale:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field protected mMaxScrollX:I

.field private mMaximumVelocity:I

.field protected mMinFlingVelocity:I

.field protected mMinSnapVelocity:I

.field private mMinimumWidth:I

.field protected mNextPage:I

.field protected mOverScrollX:I

.field protected mPageLayoutHeightGap:I

.field protected mPageLayoutPaddingBottom:I

.field protected mPageLayoutPaddingLeft:I

.field protected mPageLayoutPaddingRight:I

.field protected mPageLayoutPaddingTop:I

.field protected mPageLayoutWidthGap:I

.field protected mPageSpacing:I

.field private mPageSwitchListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/util/PagedView$PageSwitchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPagingTouchSlop:I

.field private mScrollIndicator:Landroid/view/View;

.field private mScrollIndicatorPaddingLeft:I

.field private mScrollIndicatorPaddingRight:I

.field protected mScroller:Landroid/widget/Scroller;

.field private mShouldShowScrollIndicator:Z

.field private mShouldShowScrollIndicatorImmediately:Z

.field protected mSmoothingTime:F

.field protected mTempVisiblePagesRange:[I

.field protected mTotalMotionX:F

.field protected mTouchSlop:I

.field protected mTouchState:I

.field protected mTouchX:F

.field protected mUnboundedScrollX:I

.field protected mUsePagingTouchSlop:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/util/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 270
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 274
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/util/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 279
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    iput-boolean v2, p0, Lcom/market2345/util/PagedView;->mFirstLayout:Z

    .line 97
    iput v1, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    .line 99
    iput v4, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    .line 117
    iput v4, p0, Lcom/market2345/util/PagedView;->mLastScreenCenter:I

    .line 135
    iput v1, p0, Lcom/market2345/util/PagedView;->mTouchState:I

    .line 137
    iput-boolean v1, p0, Lcom/market2345/util/PagedView;->mForceScreenScrolled:Z

    .line 141
    iput-boolean v2, p0, Lcom/market2345/util/PagedView;->mAllowLongPress:Z

    .line 165
    iput v1, p0, Lcom/market2345/util/PagedView;->mCellCountX:I

    .line 167
    iput v1, p0, Lcom/market2345/util/PagedView;->mCellCountY:I

    .line 171
    iput-boolean v2, p0, Lcom/market2345/util/PagedView;->mAllowOverScroll:Z

    .line 175
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/market2345/util/PagedView;->mTempVisiblePagesRange:[I

    .line 188
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/market2345/util/PagedView;->mLayoutScale:F

    .line 192
    iput v4, p0, Lcom/market2345/util/PagedView;->mActivePointerId:I

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/util/PagedView;->mPageSwitchListeners:Ljava/util/List;

    .line 199
    iput-boolean v2, p0, Lcom/market2345/util/PagedView;->mContentIsRefreshable:Z

    .line 202
    iput-boolean v2, p0, Lcom/market2345/util/PagedView;->mFadeInAdjacentScreens:Z

    .line 207
    iput-boolean v2, p0, Lcom/market2345/util/PagedView;->mUsePagingTouchSlop:Z

    .line 212
    iput-boolean v1, p0, Lcom/market2345/util/PagedView;->mDeferScrollUpdate:Z

    .line 214
    iput-boolean v1, p0, Lcom/market2345/util/PagedView;->mIsPageMoving:Z

    .line 217
    iput-boolean v2, p0, Lcom/market2345/util/PagedView;->mIsDataReady:Z

    .line 227
    iput-boolean v2, p0, Lcom/market2345/util/PagedView;->mHasScrollIndicator:Z

    .line 229
    iput-boolean v1, p0, Lcom/market2345/util/PagedView;->mShouldShowScrollIndicator:Z

    .line 231
    iput-boolean v1, p0, Lcom/market2345/util/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 2200
    new-instance v0, Lcom/market2345/util/PagedView$1;

    invoke-direct {v0, p0}, Lcom/market2345/util/PagedView$1;-><init>(Lcom/market2345/util/PagedView;)V

    iput-object v0, p0, Lcom/market2345/util/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    .line 281
    invoke-virtual {p0, v3}, Lcom/market2345/util/PagedView;->setPageSpacing(I)V

    .line 282
    iput v3, p0, Lcom/market2345/util/PagedView;->mPageLayoutPaddingTop:I

    .line 283
    iput v1, p0, Lcom/market2345/util/PagedView;->mPageLayoutPaddingBottom:I

    .line 284
    iput v3, p0, Lcom/market2345/util/PagedView;->mPageLayoutPaddingLeft:I

    .line 285
    iput v1, p0, Lcom/market2345/util/PagedView;->mPageLayoutPaddingRight:I

    .line 286
    iput v1, p0, Lcom/market2345/util/PagedView;->mPageLayoutWidthGap:I

    .line 287
    iput v1, p0, Lcom/market2345/util/PagedView;->mPageLayoutHeightGap:I

    .line 288
    iput v3, p0, Lcom/market2345/util/PagedView;->mScrollIndicatorPaddingLeft:I

    .line 289
    iput v1, p0, Lcom/market2345/util/PagedView;->mScrollIndicatorPaddingRight:I

    .line 290
    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->setHapticFeedbackEnabled(Z)V

    .line 291
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->init()V

    .line 292
    return-void
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 1713
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/util/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1715
    :cond_0
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1716
    return-void
.end method

.method private getClientWidth()I
    .locals 2

    .prologue
    .line 519
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1729
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1730
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1731
    .local v1, "pointerId":I
    iget v3, p0, Lcom/market2345/util/PagedView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1736
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1737
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/market2345/util/PagedView;->mDownMotionX:F

    iput v3, p0, Lcom/market2345/util/PagedView;->mLastMotionX:F

    .line 1738
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/market2345/util/PagedView;->mLastMotionY:F

    .line 1739
    const/4 v3, 0x0

    iput v3, p0, Lcom/market2345/util/PagedView;->mLastMotionXRemainder:F

    .line 1740
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/market2345/util/PagedView;->mActivePointerId:I

    .line 1741
    iget-object v3, p0, Lcom/market2345/util/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1743
    iget-object v3, p0, Lcom/market2345/util/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1746
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 1736
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollInfluenceCurve(F)F
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1412
    sub-float/2addr p1, v1

    .line 1413
    mul-float v0, p1, p1

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private pageScrolled(I)Z
    .locals 9
    .param p1, "xpos"    # I

    .prologue
    const/4 v7, 0x0

    .line 525
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    .line 527
    iget-object v8, p0, Lcom/market2345/util/PagedView;->mPageSwitchListeners:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/util/PagedView$PageSwitchListener;

    .line 529
    .local v1, "mPageSwitchListener":Lcom/market2345/util/PagedView$PageSwitchListener;
    if-eqz v1, :cond_0

    .line 531
    const/4 v8, 0x0

    invoke-interface {v1, v7, v8, v7}, Lcom/market2345/util/PagedView$PageSwitchListener;->onPageScrolled(IFI)V

    goto :goto_0

    .line 537
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mPageSwitchListener":Lcom/market2345/util/PagedView$PageSwitchListener;
    :cond_1
    invoke-direct {p0}, Lcom/market2345/util/PagedView;->getClientWidth()I

    move-result v5

    .line 538
    .local v5, "width":I
    iget v7, p0, Lcom/market2345/util/PagedView;->mPageLayoutWidthGap:I

    add-int v6, v5, v7

    .line 539
    .local v6, "widthWithMargin":I
    iget v7, p0, Lcom/market2345/util/PagedView;->mPageLayoutWidthGap:I

    int-to-float v7, v7

    int-to-float v8, v5

    div-float v2, v7, v8

    .line 541
    .local v2, "marginOffset":F
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getCurrentPage()I

    move-result v7

    mul-int/2addr v7, v5

    sub-int v7, p1, v7

    int-to-float v7, v7

    int-to-float v8, v5

    div-float v4, v7, v8

    .line 544
    .local v4, "pageOffset":F
    int-to-float v7, v6

    mul-float/2addr v7, v4

    float-to-int v3, v7

    .line 545
    .local v3, "offsetPixels":I
    iget-object v7, p0, Lcom/market2345/util/PagedView;->mPageSwitchListeners:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/util/PagedView$PageSwitchListener;

    .line 547
    .restart local v1    # "mPageSwitchListener":Lcom/market2345/util/PagedView$PageSwitchListener;
    if-eqz v1, :cond_2

    .line 549
    iget v7, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-interface {v1, v7, v4, v3}, Lcom/market2345/util/PagedView$PageSwitchListener;->onPageScrolled(IFI)V

    goto :goto_1

    .line 552
    .end local v1    # "mPageSwitchListener":Lcom/market2345/util/PagedView$PageSwitchListener;
    :cond_3
    const/4 v7, 0x1

    .end local v2    # "marginOffset":F
    .end local v3    # "offsetPixels":I
    .end local v4    # "pageOffset":F
    .end local v5    # "width":I
    .end local v6    # "widthWithMargin":I
    :cond_4
    return v7
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 1720
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 1722
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1723
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/util/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1725
    :cond_0
    return-void
.end method

.method private updateScrollingIndicatorPosition()V
    .locals 14

    .prologue
    .line 2322
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v10

    if-nez v10, :cond_1

    .line 2350
    :cond_0
    :goto_0
    return-void

    .line 2324
    :cond_1
    iget-object v10, p0, Lcom/market2345/util/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v10, :cond_0

    .line 2326
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v6

    .line 2327
    .local v6, "numPages":I
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredWidth()I

    move-result v8

    .line 2328
    .local v8, "pageWidth":I
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 2329
    .local v4, "lastChildIndex":I
    invoke-virtual {p0, v4}, Lcom/market2345/util/PagedView;->getChildOffset(I)I

    move-result v10

    invoke-virtual {p0, v4}, Lcom/market2345/util/PagedView;->getRelativeChildOffset(I)I

    move-result v11

    sub-int v5, v10, v11

    .line 2330
    .local v5, "maxScrollX":I
    iget v10, p0, Lcom/market2345/util/PagedView;->mScrollIndicatorPaddingLeft:I

    sub-int v10, v8, v10

    iget v11, p0, Lcom/market2345/util/PagedView;->mScrollIndicatorPaddingRight:I

    sub-int v9, v10, v11

    .line 2331
    .local v9, "trackWidth":I
    iget-object v10, p0, Lcom/market2345/util/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v11, p0, Lcom/market2345/util/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    iget-object v11, p0, Lcom/market2345/util/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingRight()I

    move-result v11

    sub-int v3, v10, v11

    .line 2333
    .local v3, "indicatorWidth":I
    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollX()I

    move-result v12

    int-to-float v12, v12

    int-to-float v13, v5

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 2334
    .local v7, "offset":F
    div-int v2, v9, v6

    .line 2335
    .local v2, "indicatorSpace":I
    sub-int v10, v9, v2

    int-to-float v10, v10

    mul-float/2addr v10, v7

    float-to-int v10, v10

    iget v11, p0, Lcom/market2345/util/PagedView;->mScrollIndicatorPaddingLeft:I

    add-int v1, v10, v11

    .line 2336
    .local v1, "indicatorPos":I
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->hasElasticScrollIndicator()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2338
    iget-object v10, p0, Lcom/market2345/util/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    if-eq v10, v2, :cond_0

    .line 2340
    iget-object v10, p0, Lcom/market2345/util/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2341
    iget-object v10, p0, Lcom/market2345/util/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 2346
    :cond_2
    div-int/lit8 v10, v2, 0x2

    div-int/lit8 v11, v3, 0x2

    sub-int v0, v10, v11

    .line 2347
    .local v0, "indicatorCenterOffset":I
    add-int/2addr v1, v0

    goto :goto_0
.end method


# virtual methods
.method protected acceleratedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1418
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1422
    .local v2, "screenSize":I
    const/high16 v3, 0x40000000    # 2.0f

    int-to-float v4, v2

    div-float v4, p1, v4

    mul-float v0, v3, v4

    .line 1424
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1445
    :goto_0
    return-void

    .line 1428
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1430
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1433
    :cond_1
    int-to-float v3, v2

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1434
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1436
    iput v1, p0, Lcom/market2345/util/PagedView;->mOverScrollX:I

    .line 1437
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1444
    :goto_1
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->invalidate()V

    goto :goto_0

    .line 1441
    :cond_2
    iget v3, p0, Lcom/market2345/util/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/market2345/util/PagedView;->mOverScrollX:I

    .line 1442
    iget v3, p0, Lcom/market2345/util/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1122
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1124
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1126
    :cond_0
    const/16 v0, 0x11

    if-ne p2, v0, :cond_2

    .line 1128
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    if-lez v0, :cond_1

    .line 1130
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1140
    :cond_1
    :goto_0
    return-void

    .line 1133
    :cond_2
    const/16 v0, 0x42

    if-ne p2, v0, :cond_1

    .line 1135
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 1137
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method public allowLongPress()Z
    .locals 1

    .prologue
    .line 2003
    iget-boolean v0, p0, Lcom/market2345/util/PagedView;->mAllowLongPress:Z

    return v0
.end method

.method protected cancelCurrentPageLongPress()V
    .locals 2

    .prologue
    .line 1380
    iget-boolean v1, p0, Lcom/market2345/util/PagedView;->mAllowLongPress:Z

    if-eqz v1, :cond_0

    .line 1382
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/market2345/util/PagedView;->mAllowLongPress:Z

    .line 1386
    iget v1, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1387
    .local v0, "currentPage":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1389
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1392
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected cancelScrollingIndicatorAnimations()V
    .locals 0

    .prologue
    .line 2250
    return-void
.end method

.method public computeScroll()V
    .locals 0

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->computeScrollHelper()Z

    .line 610
    return-void
.end method

.method protected computeScrollHelper()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 560
    iget-object v2, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 563
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollX()I

    move-result v1

    iget-object v2, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/market2345/util/PagedView;->mOverScrollX:I

    iget-object v2, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 565
    :cond_0
    iget-object v1, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/market2345/util/PagedView;->scrollTo(II)V

    .line 567
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->invalidate()V

    .line 603
    :cond_2
    :goto_0
    return v0

    .line 570
    :cond_3
    iget v2, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    if-eq v2, v4, :cond_5

    .line 572
    iget v2, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    .line 573
    iput v4, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    .line 574
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->notifyPageSwitchListener()V

    .line 577
    iget-boolean v2, p0, Lcom/market2345/util/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    if-eqz v2, :cond_4

    .line 579
    iget v2, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/market2345/util/PagedView;->loadAssociatedPages(I)V

    .line 580
    iput-boolean v1, p0, Lcom/market2345/util/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    .line 586
    :cond_4
    iget v1, p0, Lcom/market2345/util/PagedView;->mTouchState:I

    if-nez v1, :cond_2

    .line 588
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->pageEndMoving()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 603
    goto :goto_0
.end method

.method protected dampedOverScroll(F)V
    .locals 6
    .param p1, "amount"    # F

    .prologue
    const/4 v5, 0x0

    .line 1449
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredWidth()I

    move-result v2

    .line 1451
    .local v2, "screenSize":I
    int-to-float v3, v2

    div-float v0, p1, v3

    .line 1453
    .local v0, "f":F
    cmpl-float v3, v0, v5

    if-nez v3, :cond_0

    .line 1475
    :goto_0
    return-void

    .line 1455
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v3, v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/market2345/util/PagedView;->overScrollInfluenceCurve(F)F

    move-result v4

    mul-float v0, v3, v4

    .line 1458
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 1460
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v0, v3

    .line 1463
    :cond_1
    const v3, 0x3e0f5c29    # 0.14f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1464
    .local v1, "overScrollAmount":I
    cmpg-float v3, p1, v5

    if-gez v3, :cond_2

    .line 1466
    iput v1, p0, Lcom/market2345/util/PagedView;->mOverScrollX:I

    .line 1467
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 1474
    :goto_1
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->invalidate()V

    goto :goto_0

    .line 1471
    :cond_2
    iget v3, p0, Lcom/market2345/util/PagedView;->mMaxScrollX:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/market2345/util/PagedView;->mOverScrollX:I

    .line 1472
    iget v3, p0, Lcom/market2345/util/PagedView;->mMaxScrollX:I

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollY()I

    move-result v4

    invoke-super {p0, v3, v4}, Landroid/view/ViewGroup;->scrollTo(II)V

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1332
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/market2345/util/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1333
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1345
    iget v10, p0, Lcom/market2345/util/PagedView;->mActivePointerId:I

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 1346
    .local v0, "pointerIndex":I
    const/4 v10, -0x1

    if-ne v0, v10, :cond_1

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1350
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 1351
    .local v2, "x":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 1352
    .local v6, "y":F
    iget v10, p0, Lcom/market2345/util/PagedView;->mLastMotionX:F

    sub-float v10, v2, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 1353
    .local v3, "xDiff":I
    iget v10, p0, Lcom/market2345/util/PagedView;->mLastMotionY:F

    sub-float v10, v6, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v7, v10

    .line 1355
    .local v7, "yDiff":I
    iget v10, p0, Lcom/market2345/util/PagedView;->mTouchSlop:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 1356
    .local v1, "touchSlop":I
    iget v10, p0, Lcom/market2345/util/PagedView;->mPagingTouchSlop:I

    if-le v3, v10, :cond_5

    move v5, v9

    .line 1357
    .local v5, "xPaged":Z
    :goto_1
    if-le v3, v1, :cond_6

    move v4, v9

    .line 1358
    .local v4, "xMoved":Z
    :goto_2
    if-le v7, v1, :cond_2

    move v8, v9

    .line 1360
    .local v8, "yMoved":Z
    :cond_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    if-eqz v8, :cond_0

    .line 1362
    :cond_3
    iget-boolean v10, p0, Lcom/market2345/util/PagedView;->mUsePagingTouchSlop:Z

    if-eqz v10, :cond_7

    if-eqz v5, :cond_4

    .line 1365
    :goto_3
    iput v9, p0, Lcom/market2345/util/PagedView;->mTouchState:I

    .line 1366
    iget v9, p0, Lcom/market2345/util/PagedView;->mTotalMotionX:F

    iget v10, p0, Lcom/market2345/util/PagedView;->mLastMotionX:F

    sub-float/2addr v10, v2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    add-float/2addr v9, v10

    iput v9, p0, Lcom/market2345/util/PagedView;->mTotalMotionX:F

    .line 1367
    iput v2, p0, Lcom/market2345/util/PagedView;->mLastMotionX:F

    .line 1368
    const/4 v9, 0x0

    iput v9, p0, Lcom/market2345/util/PagedView;->mLastMotionXRemainder:F

    .line 1369
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    iput v9, p0, Lcom/market2345/util/PagedView;->mTouchX:F

    .line 1370
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    long-to-float v9, v10

    const v10, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v9, v10

    iput v9, p0, Lcom/market2345/util/PagedView;->mSmoothingTime:F

    .line 1371
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->pageBeginMoving()V

    .line 1374
    :cond_4
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->cancelCurrentPageLongPress()V

    goto :goto_0

    .end local v4    # "xMoved":Z
    .end local v5    # "xPaged":Z
    .end local v8    # "yMoved":Z
    :cond_5
    move v5, v8

    .line 1356
    goto :goto_1

    .restart local v5    # "xPaged":Z
    :cond_6
    move v4, v8

    .line 1357
    goto :goto_2

    .line 1362
    .restart local v4    # "xMoved":Z
    .restart local v8    # "yMoved":Z
    :cond_7
    if-eqz v4, :cond_4

    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 997
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v2, v9, 0x2

    .line 1001
    .local v2, "halfScreenSize":I
    iget v9, p0, Lcom/market2345/util/PagedView;->mOverScrollX:I

    add-int v7, v9, v2

    .line 1003
    .local v7, "screenCenter":I
    iget v9, p0, Lcom/market2345/util/PagedView;->mLastScreenCenter:I

    if-ne v7, v9, :cond_0

    iget-boolean v9, p0, Lcom/market2345/util/PagedView;->mForceScreenScrolled:Z

    if-eqz v9, :cond_1

    .line 1008
    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/market2345/util/PagedView;->mForceScreenScrolled:Z

    .line 1009
    invoke-virtual {p0, v7}, Lcom/market2345/util/PagedView;->screenScrolled(I)V

    .line 1010
    iput v7, p0, Lcom/market2345/util/PagedView;->mLastScreenCenter:I

    .line 1016
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v5

    .line 1019
    .local v5, "pageCount":I
    if-lez v5, :cond_5

    .line 1021
    iget-object v9, p0, Lcom/market2345/util/PagedView;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v9}, Lcom/market2345/util/PagedView;->getVisiblePages([I)V

    .line 1022
    iget-object v9, p0, Lcom/market2345/util/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    .line 1023
    .local v4, "leftScreen":I
    iget-object v9, p0, Lcom/market2345/util/PagedView;->mTempVisiblePagesRange:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .line 1024
    .local v6, "rightScreen":I
    const/4 v9, -0x1

    if-eq v4, v9, :cond_5

    const/4 v9, -0x1

    if-eq v6, v9, :cond_5

    .line 1028
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getDrawingTime()J

    move-result-wide v0

    .line 1030
    .local v0, "drawingTime":J
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1031
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollY()I

    move-result v10

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getBottom()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1044
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 1046
    invoke-virtual {p0, v3}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    .line 1047
    .local v8, "v":Landroid/view/View;
    iget-boolean v9, p0, Lcom/market2345/util/PagedView;->mForceDrawAllChildrenNextFrame:Z

    if-nez v9, :cond_2

    if-gt v4, v3, :cond_3

    if-gt v3, v6, :cond_3

    invoke-virtual {p0, v8}, Lcom/market2345/util/PagedView;->shouldDrawChild(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1049
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    invoke-virtual {p0, p1, v8, v0, v1}, Lcom/market2345/util/PagedView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1044
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1055
    :cond_3
    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1058
    .end local v8    # "v":Landroid/view/View;
    :cond_4
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/market2345/util/PagedView;->mForceDrawAllChildrenNextFrame:Z

    .line 1059
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1063
    .end local v0    # "drawingTime":J
    .end local v3    # "i":I
    .end local v4    # "leftScreen":I
    .end local v6    # "rightScreen":I
    :cond_5
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1100
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 1102
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getCurrentPage()I

    move-result v1

    if-lez v1, :cond_1

    .line 1104
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->snapToPage(I)V

    .line 1116
    :goto_0
    return v0

    .line 1108
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 1110
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 1112
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getCurrentPage()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->snapToPage(I)V

    goto :goto_0

    .line 1116
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method distanceInfluenceForSnapDuration(F)F
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 1839
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 1840
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v0, v2

    double-to-float p1, v0

    .line 1841
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected flashScrollingIndicator(Z)V
    .locals 4
    .param p1, "animated"    # Z

    .prologue
    .line 2211
    iget-object v0, p0, Lcom/market2345/util/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2212
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->showScrollingIndicator(Z)V

    .line 2213
    iget-object v0, p0, Lcom/market2345/util/PagedView;->hideScrollingIndicatorRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x28a

    invoke-virtual {p0, v0, v2, v3}, Lcom/market2345/util/PagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2214
    return-void

    .line 2212
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "focused"    # Landroid/view/View;

    .prologue
    .line 1152
    iget v3, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1153
    .local v0, "current":Landroid/view/View;
    move-object v2, p1

    .line 1156
    .local v2, "v":Landroid/view/View;
    :goto_0
    if-ne v2, v0, :cond_1

    .line 1158
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->focusableViewAvailable(Landroid/view/View;)V

    .line 1172
    :cond_0
    return-void

    .line 1161
    :cond_1
    if-eq v2, p0, :cond_0

    .line 1165
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 1166
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1168
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "v":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .param p1, "page"    # I

    .prologue
    .line 2099
    const/4 v0, 0x0

    add-int/lit8 v1, p1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    .line 2104
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v0

    .line 2105
    .local v0, "count":I
    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method protected getChildIndexForRelativeOffset(I)I
    .locals 5
    .param p1, "relativeOffset"    # I

    .prologue
    .line 1765
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v0

    .line 1768
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1770
    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 1771
    .local v2, "left":I
    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/market2345/util/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    add-int v3, v2, v4

    .line 1772
    .local v3, "right":I
    if-gt v2, p1, :cond_0

    if-gt p1, v3, :cond_0

    .line 1777
    .end local v1    # "i":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    :goto_1
    return v1

    .line 1768
    .restart local v1    # "i":I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1777
    .end local v2    # "left":I
    .end local v3    # "right":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method protected getChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 903
    iget v3, p0, Lcom/market2345/util/PagedView;->mLayoutScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/market2345/util/PagedView;->mChildOffsets:[I

    .line 906
    .local v0, "childOffsets":[I
    :goto_0
    if-eqz v0, :cond_2

    aget v3, v0, p1

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 908
    aget v2, v0, p1

    .line 924
    :cond_0
    :goto_1
    return v2

    .line 903
    .end local v0    # "childOffsets":[I
    :cond_1
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mChildOffsetsWithLayoutScale:[I

    goto :goto_0

    .line 912
    .restart local v0    # "childOffsets":[I
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 915
    invoke-virtual {p0, v2}, Lcom/market2345/util/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 916
    .local v2, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, p1, :cond_3

    .line 918
    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/market2345/util/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/market2345/util/PagedView;->mPageSpacing:I

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 916
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 920
    :cond_3
    if-eqz v0, :cond_0

    .line 922
    aput v2, v0, p1

    goto :goto_1
.end method

.method protected getChildWidth(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1785
    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 1786
    .local v0, "measuredWidth":I
    iget v1, p0, Lcom/market2345/util/PagedView;->mMinimumWidth:I

    .line 1787
    .local v1, "minWidth":I
    if-le v1, v0, :cond_0

    .end local v1    # "minWidth":I
    :goto_0
    return v1

    .restart local v1    # "minWidth":I
    :cond_0
    move v1, v0

    goto :goto_0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2362
    const-string v0, ""

    return-object v0
.end method

.method getNextPage()I
    .locals 2

    .prologue
    .line 360
    iget v0, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    goto :goto_0
.end method

.method getPageAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 370
    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getPageCount()I
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getPageForView(Landroid/view/View;)I
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1982
    const/4 v2, -0x1

    .line 1983
    .local v2, "result":I
    if-eqz p1, :cond_1

    .line 1985
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1986
    .local v3, "vp":Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v0

    .line 1987
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1989
    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 1995
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :goto_1
    return v1

    .line 1987
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v3    # "vp":Landroid/view/ViewParent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "vp":Landroid/view/ViewParent;
    :cond_1
    move v1, v2

    .line 1995
    goto :goto_1
.end method

.method getPageNearestToCenterOfScreen()I
    .locals 12

    .prologue
    .line 1792
    const v7, 0x7fffffff

    .line 1793
    .local v7, "minDistanceFromScreenCenter":I
    const/4 v8, -0x1

    .line 1794
    .local v8, "minDistanceFromScreenCenterIndex":I
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollX()I

    move-result v10

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int v9, v10, v11

    .line 1795
    .local v9, "screenCenter":I
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v1

    .line 1796
    .local v1, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_1

    .line 1798
    invoke-virtual {p0, v5}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v6

    .line 1799
    .local v6, "layout":Landroid/view/View;
    invoke-virtual {p0, v6}, Lcom/market2345/util/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v2

    .line 1800
    .local v2, "childWidth":I
    div-int/lit8 v4, v2, 0x2

    .line 1801
    .local v4, "halfChildWidth":I
    invoke-virtual {p0, v5}, Lcom/market2345/util/PagedView;->getChildOffset(I)I

    move-result v10

    add-int v0, v10, v4

    .line 1802
    .local v0, "childCenter":I
    sub-int v10, v0, v9

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1803
    .local v3, "distanceFromScreenCenter":I
    if-ge v3, v7, :cond_0

    .line 1805
    move v7, v3

    .line 1806
    move v8, v5

    .line 1796
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1809
    .end local v0    # "childCenter":I
    .end local v2    # "childWidth":I
    .end local v3    # "distanceFromScreenCenter":I
    .end local v4    # "halfChildWidth":I
    .end local v6    # "layout":Landroid/view/View;
    :cond_1
    return v8
.end method

.method protected getRelativeChildOffset(I)I
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 930
    iget-object v2, p0, Lcom/market2345/util/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/market2345/util/PagedView;->mChildRelativeOffsets:[I

    aget v2, v2, p1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 932
    iget-object v2, p0, Lcom/market2345/util/PagedView;->mChildRelativeOffsets:[I

    aget v0, v2, p1

    .line 942
    :cond_0
    :goto_0
    return v0

    .line 936
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPaddingRight()I

    move-result v3

    add-int v1, v2, v3

    .line 937
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->getChildWidth(I)I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 938
    .local v0, "offset":I
    iget-object v2, p0, Lcom/market2345/util/PagedView;->mChildRelativeOffsets:[I

    if-eqz v2, :cond_0

    .line 940
    iget-object v2, p0, Lcom/market2345/util/PagedView;->mChildRelativeOffsets:[I

    aput v0, v2, p1

    goto :goto_0
.end method

.method protected getScaledMeasuredWidth(Landroid/view/View;)I
    .locals 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 951
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 952
    .local v1, "measuredWidth":I
    iget v2, p0, Lcom/market2345/util/PagedView;->mMinimumWidth:I

    .line 953
    .local v2, "minWidth":I
    if-le v2, v1, :cond_0

    move v0, v2

    .line 954
    .local v0, "maxWidth":I
    :goto_0
    int-to-float v3, v0

    iget v4, p0, Lcom/market2345/util/PagedView;->mLayoutScale:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    .end local v0    # "maxWidth":I
    :cond_0
    move v0, v1

    .line 953
    goto :goto_0
.end method

.method protected getScrollProgress(ILandroid/view/View;I)F
    .locals 7
    .param p1, "screenCenter"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "page"    # I

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 1396
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 1398
    .local v1, "halfScreenSize":I
    invoke-virtual {p0, p2}, Lcom/market2345/util/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v4

    iget v5, p0, Lcom/market2345/util/PagedView;->mPageSpacing:I

    add-int v3, v4, v5

    .line 1399
    .local v3, "totalDistance":I
    invoke-virtual {p0, p3}, Lcom/market2345/util/PagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p3}, Lcom/market2345/util/PagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v0, p1, v4

    .line 1401
    .local v0, "delta":I
    int-to-float v4, v0

    int-to-float v5, v3

    mul-float/2addr v5, v6

    div-float v2, v4, v5

    .line 1402
    .local v2, "scrollProgress":F
    invoke-static {v2, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1403
    const/high16 v4, -0x40800000    # -1.0f

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1404
    return v2
.end method

.method protected getScrollingIndicator()Landroid/view/View;
    .locals 2

    .prologue
    .line 2179
    iget-boolean v1, p0, Lcom/market2345/util/PagedView;->mHasScrollIndicator:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/util/PagedView;->mScrollIndicator:Landroid/view/View;

    if-nez v1, :cond_0

    .line 2181
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2182
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2192
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_0
    iget-object v1, p0, Lcom/market2345/util/PagedView;->mScrollIndicator:Landroid/view/View;

    return-object v1
.end method

.method protected getVisiblePages([I)V
    .locals 9
    .param p1, "range"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    .line 959
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v2

    .line 961
    .local v2, "pageCount":I
    if-lez v2, :cond_2

    .line 963
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredWidth()I

    move-result v4

    .line 964
    .local v4, "screenWidth":I
    const/4 v1, 0x0

    .line 965
    .local v1, "leftScreen":I
    const/4 v3, 0x0

    .line 966
    .local v3, "rightScreen":I
    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 967
    .local v0, "currPage":Landroid/view/View;
    :goto_0
    add-int/lit8 v5, v2, -0x1

    if-ge v1, v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollX()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 969
    add-int/lit8 v1, v1, 0x1

    .line 970
    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 972
    :cond_0
    move v3, v1

    .line 973
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 974
    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v3, v5, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v4

    if-ge v5, v6, :cond_1

    .line 976
    add-int/lit8 v3, v3, 0x1

    .line 977
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    .line 979
    :cond_1
    aput v1, p1, v7

    .line 980
    aput v3, p1, v8

    .line 987
    .end local v0    # "currPage":Landroid/view/View;
    .end local v1    # "leftScreen":I
    .end local v3    # "rightScreen":I
    .end local v4    # "screenWidth":I
    :goto_2
    return-void

    .line 984
    :cond_2
    aput v5, p1, v7

    .line 985
    aput v5, p1, v8

    goto :goto_2
.end method

.method protected hasElasticScrollIndicator()Z
    .locals 1

    .prologue
    .line 2302
    const/4 v0, 0x1

    return v0
.end method

.method public hideScrollIndicatorTrack()V
    .locals 0

    .prologue
    .line 2358
    return-void
.end method

.method protected hideScrollingIndicator(Z)V
    .locals 2
    .param p1, "immediately"    # Z

    .prologue
    .line 2254
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 2294
    :cond_0
    :goto_0
    return-void

    .line 2256
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2259
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2260
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2263
    invoke-direct {p0}, Lcom/market2345/util/PagedView;->updateScrollingIndicatorPosition()V

    .line 2264
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->cancelScrollingIndicatorAnimations()V

    goto :goto_0
.end method

.method protected hitsNextPage(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1207
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->getRelativeChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/market2345/util/PagedView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 1199
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->getRelativeChildOffset(I)I

    move-result v0

    iget v1, p0, Lcom/market2345/util/PagedView;->mPageSpacing:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected indexToPage(I)I
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 375
    return p1
.end method

.method protected init()V
    .locals 5

    .prologue
    .line 301
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/market2345/util/PagedView$ScrollInterpolator;

    invoke-direct {v4}, Lcom/market2345/util/PagedView$ScrollInterpolator;-><init>()V

    invoke-direct {v2, v3, v4}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    .line 302
    invoke-static {}, Lcom/market2345/slidemenu/DataCacheForViewPager;->getInstance()Lcom/market2345/slidemenu/DataCacheForViewPager;

    move-result-object v2

    const-string v3, "defaultPosi"

    invoke-virtual {v2, v3}, Lcom/market2345/slidemenu/DataCacheForViewPager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 309
    .local v1, "o":Ljava/lang/Object;
    const/4 v2, 0x0

    iput v2, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    .line 311
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/market2345/util/PagedView;->mCenterPagesVertically:Z

    .line 313
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 314
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/market2345/util/PagedView;->mTouchSlop:I

    .line 315
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/market2345/util/PagedView;->mPagingTouchSlop:I

    .line 316
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/market2345/util/PagedView;->mMaximumVelocity:I

    .line 317
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/market2345/util/PagedView;->mDensity:F

    .line 319
    const/high16 v2, 0x43fa0000    # 500.0f

    iget v3, p0, Lcom/market2345/util/PagedView;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/util/PagedView;->mFlingThresholdVelocity:I

    .line 320
    const/high16 v2, 0x437a0000    # 250.0f

    iget v3, p0, Lcom/market2345/util/PagedView;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/util/PagedView;->mMinFlingVelocity:I

    .line 321
    const v2, 0x44bb8000    # 1500.0f

    iget v3, p0, Lcom/market2345/util/PagedView;->mDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/market2345/util/PagedView;->mMinSnapVelocity:I

    .line 322
    invoke-virtual {p0, p0}, Lcom/market2345/util/PagedView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 323
    return-void
.end method

.method protected invalidateCachedOffsets()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 880
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v0

    .line 882
    .local v0, "count":I
    if-nez v0, :cond_1

    .line 884
    iput-object v2, p0, Lcom/market2345/util/PagedView;->mChildOffsets:[I

    .line 885
    iput-object v2, p0, Lcom/market2345/util/PagedView;->mChildRelativeOffsets:[I

    .line 886
    iput-object v2, p0, Lcom/market2345/util/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 899
    :cond_0
    return-void

    .line 890
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/market2345/util/PagedView;->mChildOffsets:[I

    .line 891
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/market2345/util/PagedView;->mChildRelativeOffsets:[I

    .line 892
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/market2345/util/PagedView;->mChildOffsetsWithLayoutScale:[I

    .line 893
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 895
    iget-object v2, p0, Lcom/market2345/util/PagedView;->mChildOffsets:[I

    aput v3, v2, v1

    .line 896
    iget-object v2, p0, Lcom/market2345/util/PagedView;->mChildRelativeOffsets:[I

    aput v3, v2, v1

    .line 897
    iget-object v2, p0, Lcom/market2345/util/PagedView;->mChildOffsetsWithLayoutScale:[I

    aput v3, v2, v1

    .line 893
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected invalidatePageData()V
    .locals 2

    .prologue
    .line 2126
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/market2345/util/PagedView;->invalidatePageData(IZ)V

    .line 2127
    return-void
.end method

.method protected invalidatePageData(I)V
    .locals 1
    .param p1, "currentPage"    # I

    .prologue
    .line 2131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/market2345/util/PagedView;->invalidatePageData(IZ)V

    .line 2132
    return-void
.end method

.method protected invalidatePageData(IZ)V
    .locals 5
    .param p1, "currentPage"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, -0x1

    .line 2136
    iget-boolean v1, p0, Lcom/market2345/util/PagedView;->mIsDataReady:Z

    if-nez v1, :cond_1

    .line 2172
    :cond_0
    :goto_0
    return-void

    .line 2141
    :cond_1
    iget-boolean v1, p0, Lcom/market2345/util/PagedView;->mContentIsRefreshable:Z

    if-eqz v1, :cond_0

    .line 2144
    iget-object v1, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2145
    iput v3, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    .line 2153
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredWidth()I

    move-result v1

    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/market2345/util/PagedView;->measure(II)V

    .line 2156
    if-le p1, v3, :cond_2

    .line 2158
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->setCurrentPage(I)V

    .line 2162
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v0

    .line 2169
    .local v0, "count":I
    iget v1, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1, p2}, Lcom/market2345/util/PagedView;->loadAssociatedPages(IZ)V

    .line 2170
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->requestLayout()V

    goto :goto_0
.end method

.method protected isDataReady()Z
    .locals 1

    .prologue
    .line 345
    iget-boolean v0, p0, Lcom/market2345/util/PagedView;->mIsDataReady:Z

    return v0
.end method

.method protected isPageMoving()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/market2345/util/PagedView;->mIsPageMoving:Z

    return v0
.end method

.method protected isScrollingIndicatorEnabled()Z
    .locals 1

    .prologue
    .line 2197
    const/4 v0, 0x0

    return v0
.end method

.method protected loadAssociatedPages(I)V
    .locals 1
    .param p1, "page"    # I

    .prologue
    .line 2053
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/market2345/util/PagedView;->loadAssociatedPages(IZ)V

    .line 2054
    return-void
.end method

.method protected loadAssociatedPages(IZ)V
    .locals 5
    .param p1, "page"    # I
    .param p2, "immediateAndOnly"    # Z

    .prologue
    .line 2058
    iget-boolean v4, p0, Lcom/market2345/util/PagedView;->mContentIsRefreshable:Z

    if-eqz v4, :cond_2

    .line 2060
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v0

    .line 2061
    .local v0, "count":I
    if-ge p1, v0, :cond_2

    .line 2063
    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->getAssociatedLowerPageBound(I)I

    move-result v2

    .line 2064
    .local v2, "lowerPageBound":I
    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->getAssociatedUpperPageBound(I)I

    move-result v3

    .line 2078
    .local v3, "upperPageBound":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2080
    if-eq v1, p1, :cond_1

    if-eqz p2, :cond_1

    .line 2078
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2084
    :cond_1
    if-gt v2, v1, :cond_0

    if-gt v1, v3, :cond_0

    goto :goto_1

    .line 2095
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "lowerPageBound":I
    .end local v3    # "upperPageBound":I
    :cond_2
    return-void
.end method

.method protected maxOverScroll()F
    .locals 3

    .prologue
    .line 1488
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1489
    .local v0, "f":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-direct {p0, v2}, Lcom/market2345/util/PagedView;->overScrollInfluenceCurve(F)F

    move-result v2

    mul-float v0, v1, v2

    .line 1490
    const v1, 0x3e0f5c29    # 0.14f

    mul-float/2addr v1, v0

    return v1
.end method

.method protected notifyPageSwitchListener()V
    .locals 4

    .prologue
    .line 419
    iget-object v2, p0, Lcom/market2345/util/PagedView;->mPageSwitchListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/util/PagedView$PageSwitchListener;

    .line 421
    .local v1, "mPageSwitchListener":Lcom/market2345/util/PagedView$PageSwitchListener;
    if-eqz v1, :cond_0

    .line 423
    iget v2, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-interface {v1, v2, v3}, Lcom/market2345/util/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    goto :goto_0

    .line 426
    .end local v1    # "mPageSwitchListener":Lcom/market2345/util/PagedView$PageSwitchListener;
    :cond_1
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 868
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/util/PagedView;->mForceScreenScrolled:Z

    .line 869
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->invalidate()V

    .line 870
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->invalidateCachedOffsets()V

    .line 871
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 876
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1218
    invoke-direct {p0, p1}, Lcom/market2345/util/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1221
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v7

    if-gtz v7, :cond_1

    .line 1222
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    .line 1327
    :cond_0
    :goto_0
    return v5

    .line 1228
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1229
    .local v0, "action":I
    if-ne v0, v9, :cond_2

    iget v7, p0, Lcom/market2345/util/PagedView;->mTouchState:I

    if-eq v7, v5, :cond_0

    .line 1234
    :cond_2
    and-int/lit16 v7, v0, 0xff

    packed-switch v7, :pswitch_data_0

    .line 1327
    :cond_3
    :goto_1
    :pswitch_0
    iget v7, p0, Lcom/market2345/util/PagedView;->mTouchState:I

    if-nez v7, :cond_0

    move v5, v6

    goto :goto_0

    .line 1243
    :pswitch_1
    iget v7, p0, Lcom/market2345/util/PagedView;->mActivePointerId:I

    if-eq v7, v10, :cond_4

    .line 1245
    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 1261
    :cond_4
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1262
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1264
    .local v4, "y":F
    iput v2, p0, Lcom/market2345/util/PagedView;->mDownMotionX:F

    .line 1265
    iput v2, p0, Lcom/market2345/util/PagedView;->mLastMotionX:F

    .line 1266
    iput v4, p0, Lcom/market2345/util/PagedView;->mLastMotionY:F

    .line 1267
    iput v8, p0, Lcom/market2345/util/PagedView;->mLastMotionXRemainder:F

    .line 1268
    iput v8, p0, Lcom/market2345/util/PagedView;->mTotalMotionX:F

    .line 1269
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Lcom/market2345/util/PagedView;->mActivePointerId:I

    .line 1270
    iput-boolean v5, p0, Lcom/market2345/util/PagedView;->mAllowLongPress:Z

    .line 1277
    iget-object v7, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    iget-object v8, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8}, Landroid/widget/Scroller;->getCurrX()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1278
    .local v3, "xDist":I
    iget-object v7, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->isFinished()Z

    move-result v7

    if-nez v7, :cond_5

    iget v7, p0, Lcom/market2345/util/PagedView;->mTouchSlop:I

    if-ge v3, v7, :cond_6

    :cond_5
    move v1, v5

    .line 1279
    .local v1, "finishedScrolling":Z
    :goto_2
    if-eqz v1, :cond_7

    .line 1281
    iput v6, p0, Lcom/market2345/util/PagedView;->mTouchState:I

    .line 1282
    iget-object v7, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1292
    :goto_3
    iget v7, p0, Lcom/market2345/util/PagedView;->mTouchState:I

    if-eq v7, v9, :cond_3

    iget v7, p0, Lcom/market2345/util/PagedView;->mTouchState:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 1294
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    .line 1296
    invoke-virtual {p0, v2, v4}, Lcom/market2345/util/PagedView;->hitsPreviousPage(FF)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1298
    iput v9, p0, Lcom/market2345/util/PagedView;->mTouchState:I

    goto :goto_1

    .end local v1    # "finishedScrolling":Z
    :cond_6
    move v1, v6

    .line 1278
    goto :goto_2

    .line 1286
    .restart local v1    # "finishedScrolling":Z
    :cond_7
    iput v5, p0, Lcom/market2345/util/PagedView;->mTouchState:I

    goto :goto_3

    .line 1300
    :cond_8
    invoke-virtual {p0, v2, v4}, Lcom/market2345/util/PagedView;->hitsNextPage(FF)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1302
    const/4 v7, 0x3

    iput v7, p0, Lcom/market2345/util/PagedView;->mTouchState:I

    goto :goto_1

    .line 1311
    .end local v1    # "finishedScrolling":Z
    .end local v2    # "x":F
    .end local v3    # "xDist":I
    .end local v4    # "y":F
    :pswitch_3
    iput v6, p0, Lcom/market2345/util/PagedView;->mTouchState:I

    .line 1312
    iput-boolean v6, p0, Lcom/market2345/util/PagedView;->mAllowLongPress:Z

    .line 1313
    iput v10, p0, Lcom/market2345/util/PagedView;->mActivePointerId:I

    .line 1314
    invoke-direct {p0}, Lcom/market2345/util/PagedView;->releaseVelocityTracker()V

    goto :goto_1

    .line 1318
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/market2345/util/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1319
    invoke-direct {p0}, Lcom/market2345/util/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 798
    iget-boolean v8, p0, Lcom/market2345/util/PagedView;->mIsDataReady:Z

    if-nez v8, :cond_1

    .line 836
    :cond_0
    :goto_0
    return-void

    .line 805
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPaddingBottom()I

    move-result v9

    add-int v7, v8, v9

    .line 806
    .local v7, "verticalPadding":I
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v1

    .line 807
    .local v1, "childCount":I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/market2345/util/PagedView;->getRelativeChildOffset(I)I

    move-result v3

    .line 809
    .local v3, "childLeft":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_4

    .line 811
    invoke-virtual {p0, v6}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 812
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    .line 814
    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v5

    .line 815
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 816
    .local v2, "childHeight":I
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPaddingTop()I

    move-result v4

    .line 817
    .local v4, "childTop":I
    iget-boolean v8, p0, Lcom/market2345/util/PagedView;->mCenterPagesVertically:Z

    if-eqz v8, :cond_2

    .line 819
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v8, v7

    sub-int/2addr v8, v2

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v4, v8

    .line 824
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v3

    add-int v9, v4, v2

    invoke-virtual {v0, v3, v4, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 825
    iget v8, p0, Lcom/market2345/util/PagedView;->mPageSpacing:I

    add-int/2addr v8, v5

    add-int/2addr v3, v8

    .line 809
    .end local v2    # "childHeight":I
    .end local v4    # "childTop":I
    .end local v5    # "childWidth":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 829
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    iget-boolean v8, p0, Lcom/market2345/util/PagedView;->mFirstLayout:Z

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    if-ltz v8, :cond_0

    iget v8, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 831
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/market2345/util/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 832
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->updateCurrentPageScroll()V

    .line 833
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/market2345/util/PagedView;->setHorizontalScrollBarEnabled(Z)V

    .line 834
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/market2345/util/PagedView;->mFirstLayout:Z

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 615
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/util/PagedView;->mIsDataReady:Z

    move/from16 v19, v0

    if-nez v19, :cond_0

    .line 617
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 735
    :goto_0
    return-void

    .line 621
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 622
    .local v17, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v18

    .line 623
    .local v18, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 624
    .local v8, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 625
    .local v9, "heightSize":I
    const/high16 v19, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 627
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Workspace can only be used in EXACTLY mode."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 631
    :cond_1
    if-lez v18, :cond_2

    if-gtz v9, :cond_3

    .line 633
    :cond_2
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto :goto_0

    .line 644
    :cond_3
    const/4 v13, 0x0

    .line 646
    .local v13, "maxChildHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->getPaddingTop()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->getPaddingBottom()I

    move-result v20

    add-int v16, v19, v20

    .line 647
    .local v16, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->getPaddingRight()I

    move-result v20

    add-int v10, v19, v20

    .line 653
    .local v10, "horizontalPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v3

    .line 654
    .local v3, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v3, :cond_6

    .line 657
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    .line 658
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    .line 661
    .local v12, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 663
    const/high16 v7, -0x80000000

    .line 671
    .local v7, "childWidthMode":I
    :goto_2
    iget v0, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    const/16 v20, -0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 673
    const/high16 v5, -0x80000000

    .line 680
    .local v5, "childHeightMode":I
    :goto_3
    sub-int v19, v18, v10

    move/from16 v0, v19

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 681
    .local v6, "childWidthMeasureSpec":I
    sub-int v19, v9, v16

    move/from16 v0, v19

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 683
    .local v4, "childHeightMeasureSpec":I
    invoke-virtual {v2, v6, v4}, Landroid/view/View;->measure(II)V

    .line 684
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 654
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 667
    .end local v4    # "childHeightMeasureSpec":I
    .end local v5    # "childHeightMode":I
    .end local v6    # "childWidthMeasureSpec":I
    .end local v7    # "childWidthMode":I
    :cond_4
    const/high16 v7, 0x40000000    # 2.0f

    .restart local v7    # "childWidthMode":I
    goto :goto_2

    .line 677
    :cond_5
    const/high16 v5, 0x40000000    # 2.0f

    .restart local v5    # "childHeightMode":I
    goto :goto_3

    .line 689
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "childHeightMode":I
    .end local v7    # "childWidthMode":I
    .end local v12    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const/high16 v19, -0x80000000

    move/from16 v0, v19

    if-ne v8, v0, :cond_7

    .line 691
    add-int v9, v13, v16

    .line 694
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/market2345/util/PagedView;->setMeasuredDimension(II)V

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->invalidateCachedOffsets()V

    .line 703
    if-lez v3, :cond_8

    .line 709
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mPageSpacing:I

    move/from16 v19, v0

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 719
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/market2345/util/PagedView;->getRelativeChildOffset(I)I

    move-result v14

    .line 720
    .local v14, "offset":I
    sub-int v19, v18, v14

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/market2345/util/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 721
    .local v15, "spacing":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/market2345/util/PagedView;->setPageSpacing(I)V

    .line 725
    .end local v14    # "offset":I
    .end local v15    # "spacing":I
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/market2345/util/PagedView;->updateScrollingIndicatorPosition()V

    .line 727
    if-lez v3, :cond_9

    .line 729
    add-int/lit8 v19, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/market2345/util/PagedView;->getChildOffset(I)I

    move-result v19

    add-int/lit8 v20, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/market2345/util/PagedView;->getRelativeChildOffset(I)I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mMaxScrollX:I

    goto/16 :goto_0

    .line 733
    :cond_9
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mMaxScrollX:I

    goto/16 :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 0

    .prologue
    .line 454
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 459
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1081
    iget v2, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1083
    iget v0, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    .line 1089
    .local v0, "focusablePage":I
    :goto_0
    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 1090
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 1092
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1094
    :goto_1
    return v2

    .line 1087
    .end local v0    # "focusablePage":I
    .end local v1    # "v":Landroid/view/View;
    :cond_0
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    .restart local v0    # "focusablePage":I
    goto :goto_0

    .line 1094
    .restart local v1    # "v":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1497
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v18

    if-gtz v18, :cond_0

    .line 1498
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    .line 1676
    :goto_0
    return v18

    .line 1500
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/market2345/util/PagedView;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    .line 1502
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1504
    .local v4, "action":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 1676
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v18, 0x1

    goto :goto_0

    .line 1511
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->isFinished()Z

    move-result v18

    if-nez v18, :cond_2

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1517
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mLastMotionX:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mDownMotionX:F

    .line 1518
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mLastMotionXRemainder:F

    .line 1519
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mTotalMotionX:F

    .line 1520
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mActivePointerId:I

    .line 1521
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->pageBeginMoving()V

    goto :goto_1

    .line 1528
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 1531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mActivePointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 1532
    .local v12, "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1533
    .local v17, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mLastMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mLastMotionXRemainder:F

    move/from16 v19, v0

    add-float v18, v18, v19

    sub-float v6, v18, v17

    .line 1535
    .local v6, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mTotalMotionX:F

    move/from16 v18, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mTotalMotionX:F

    .line 1542
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_4

    .line 1544
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mTouchX:F

    move/from16 v18, v0

    add-float v18, v18, v6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mTouchX:F

    .line 1545
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    const v19, 0x4e6e6b28    # 1.0E9f

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mSmoothingTime:F

    .line 1546
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/market2345/util/PagedView;->mDeferScrollUpdate:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    .line 1548
    float-to-int v0, v6

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/market2345/util/PagedView;->scrollBy(II)V

    .line 1556
    :goto_2
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mLastMotionX:F

    .line 1557
    float-to-int v0, v6

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v6, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mLastMotionXRemainder:F

    goto/16 :goto_1

    .line 1554
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->invalidate()V

    goto :goto_2

    .line 1561
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->awakenScrollBars()Z

    goto/16 :goto_1

    .line 1566
    .end local v6    # "deltaX":F
    .end local v12    # "pointerIndex":I
    .end local v17    # "x":F
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lcom/market2345/util/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1571
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 1573
    move-object/from16 v0, p0

    iget v5, v0, Lcom/market2345/util/PagedView;->mActivePointerId:I

    .line 1574
    .local v5, "activePointerId":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 1575
    .restart local v12    # "pointerIndex":I
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v17

    .line 1576
    .restart local v17    # "x":F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/util/PagedView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1577
    .local v14, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v18, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mMaximumVelocity:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1578
    invoke-virtual {v14, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v15, v0

    .line 1579
    .local v15, "velocityX":I
    invoke-virtual {v14, v5}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1580
    .local v16, "velocityY":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mDownMotionX:F

    move/from16 v18, v0

    sub-float v18, v17, v18

    move/from16 v0, v18

    float-to-int v6, v0

    .line 1581
    .local v6, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/market2345/util/PagedView;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v11

    .line 1582
    .local v11, "pageWidth":I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v11

    move/from16 v19, v0

    const v20, 0x3ecccccd    # 0.4f

    mul-float v19, v19, v20

    cmpl-float v18, v18, v19

    if-lez v18, :cond_9

    const/4 v9, 0x1

    .line 1584
    .local v9, "isSignificantMove":Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mTotalMotionX:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mLastMotionX:F

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mLastMotionXRemainder:F

    move/from16 v20, v0

    add-float v19, v19, v20

    sub-float v19, v19, v17

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mTotalMotionX:F

    .line 1586
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mTotalMotionX:F

    move/from16 v18, v0

    const/high16 v19, 0x41c80000    # 25.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_a

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mFlingThresholdVelocity:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v18

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_a

    const/4 v8, 0x1

    .line 1594
    .local v8, "isFling":Z
    :goto_4
    const/4 v13, 0x0

    .line 1595
    .local v13, "returnToOriginalPage":Z
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v11

    move/from16 v19, v0

    const v20, 0x3ea8f5c3    # 0.33f

    mul-float v19, v19, v20

    cmpl-float v18, v18, v19

    if-lez v18, :cond_6

    int-to-float v0, v15

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->signum(F)F

    move-result v18

    int-to-float v0, v6

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->signum(F)F

    move-result v19

    cmpl-float v18, v18, v19

    if-eqz v18, :cond_6

    if-eqz v8, :cond_6

    .line 1597
    const/4 v13, 0x1

    .line 1607
    :cond_6
    if-eqz v9, :cond_7

    if-lez v6, :cond_7

    if-eqz v8, :cond_8

    :cond_7
    if-eqz v8, :cond_c

    if-lez v15, :cond_c

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    if-lez v18, :cond_c

    .line 1609
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget v7, v0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    .line 1610
    .local v7, "finalPage":I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15}, Lcom/market2345/util/PagedView;->snapToPageWithVelocity(II)V

    .line 1656
    .end local v5    # "activePointerId":I
    .end local v6    # "deltaX":I
    .end local v7    # "finalPage":I
    .end local v8    # "isFling":Z
    .end local v9    # "isSignificantMove":Z
    .end local v11    # "pageWidth":I
    .end local v12    # "pointerIndex":I
    .end local v13    # "returnToOriginalPage":Z
    .end local v14    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v15    # "velocityX":I
    .end local v16    # "velocityY":I
    .end local v17    # "x":F
    :goto_6
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mTouchState:I

    .line 1657
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mActivePointerId:I

    .line 1658
    invoke-direct/range {p0 .. p0}, Lcom/market2345/util/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1582
    .restart local v5    # "activePointerId":I
    .restart local v6    # "deltaX":I
    .restart local v11    # "pageWidth":I
    .restart local v12    # "pointerIndex":I
    .restart local v14    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v15    # "velocityX":I
    .restart local v16    # "velocityY":I
    .restart local v17    # "x":F
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 1586
    .restart local v9    # "isSignificantMove":Z
    :cond_a
    const/4 v8, 0x0

    goto :goto_4

    .line 1609
    .restart local v8    # "isFling":Z
    .restart local v13    # "returnToOriginalPage":Z
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v7, v18, -0x1

    goto :goto_5

    .line 1612
    :cond_c
    if-eqz v9, :cond_d

    if-gez v6, :cond_d

    if-eqz v8, :cond_e

    :cond_d
    if-eqz v8, :cond_10

    if-gez v15, :cond_10

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_10

    .line 1614
    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    .line 1615
    .restart local v7    # "finalPage":I
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v15}, Lcom/market2345/util/PagedView;->snapToPageWithVelocity(II)V

    goto :goto_6

    .line 1614
    .end local v7    # "finalPage":I
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    add-int/lit8 v7, v18, 0x1

    goto :goto_7

    .line 1619
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->snapToDestination()V

    goto :goto_6

    .line 1622
    .end local v5    # "activePointerId":I
    .end local v6    # "deltaX":I
    .end local v8    # "isFling":Z
    .end local v9    # "isSignificantMove":Z
    .end local v11    # "pageWidth":I
    .end local v12    # "pointerIndex":I
    .end local v13    # "returnToOriginalPage":Z
    .end local v14    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v15    # "velocityX":I
    .end local v16    # "velocityY":I
    .end local v17    # "x":F
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 1627
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1628
    .local v10, "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v10, v0, :cond_12

    .line 1630
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/market2345/util/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    .line 1634
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->snapToDestination()V

    goto/16 :goto_6

    .line 1637
    .end local v10    # "nextPage":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_15

    .line 1642
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1643
    .restart local v10    # "nextPage":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-eq v10, v0, :cond_14

    .line 1645
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/market2345/util/PagedView;->snapToPage(I)V

    goto/16 :goto_6

    .line 1649
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->snapToDestination()V

    goto/16 :goto_6

    .line 1654
    .end local v10    # "nextPage":I
    :cond_15
    invoke-virtual/range {p0 .. p1}, Lcom/market2345/util/PagedView;->onUnhandledTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_6

    .line 1662
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/PagedView;->mTouchState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_16

    .line 1664
    invoke-virtual/range {p0 .. p0}, Lcom/market2345/util/PagedView;->snapToDestination()V

    .line 1666
    :cond_16
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mTouchState:I

    .line 1667
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/market2345/util/PagedView;->mActivePointerId:I

    .line 1668
    invoke-direct/range {p0 .. p0}, Lcom/market2345/util/PagedView;->releaseVelocityTracker()V

    goto/16 :goto_1

    .line 1672
    :pswitch_5
    invoke-direct/range {p0 .. p1}, Lcom/market2345/util/PagedView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 1504
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1750
    return-void
.end method

.method protected overScroll(F)V
    .locals 0
    .param p1, "amount"    # F

    .prologue
    .line 1479
    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->dampedOverScroll(F)V

    .line 1480
    return-void
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/market2345/util/PagedView;->mIsPageMoving:Z

    if-nez v0, :cond_0

    .line 432
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/util/PagedView;->mIsPageMoving:Z

    .line 433
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->onPageBeginMoving()V

    .line 435
    :cond_0
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/market2345/util/PagedView;->mIsPageMoving:Z

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/util/PagedView;->mIsPageMoving:Z

    .line 442
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->onPageEndMoving()V

    .line 444
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1755
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1756
    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->indexToPage(I)I

    move-result v0

    .line 1757
    .local v0, "page":I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1759
    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->snapToPage(I)V

    .line 1761
    :cond_0
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1068
    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->indexToPage(I)I

    move-result v0

    .line 1069
    .local v0, "page":I
    iget v1, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1071
    :cond_0
    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->snapToPage(I)V

    .line 1072
    const/4 v1, 0x1

    .line 1074
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 1183
    if-eqz p1, :cond_0

    .line 1187
    iget v1, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 1188
    .local v0, "currentPage":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 1190
    .end local v0    # "currentPage":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1191
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 6
    .param p1, "screenCenter"    # I

    .prologue
    .line 840
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 844
    :cond_0
    iget v4, p0, Lcom/market2345/util/PagedView;->mOverScrollX:I

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/market2345/util/PagedView;->mOverScrollX:I

    iget v5, p0, Lcom/market2345/util/PagedView;->mMaxScrollX:I

    if-le v4, v5, :cond_3

    :cond_1
    const/4 v2, 0x1

    .line 846
    .local v2, "isInOverscroll":Z
    :goto_0
    iget-boolean v4, p0, Lcom/market2345/util/PagedView;->mFadeInAdjacentScreens:Z

    if-eqz v4, :cond_5

    if-nez v2, :cond_5

    .line 848
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_4

    .line 850
    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 851
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 853
    invoke-virtual {p0, p1, v0, v1}, Lcom/market2345/util/PagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 854
    .local v3, "scrollProgress":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    .line 848
    .end local v3    # "scrollProgress":F
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 844
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    .end local v2    # "isInOverscroll":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 858
    .restart local v1    # "i":I
    .restart local v2    # "isInOverscroll":Z
    :cond_4
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->invalidate()V

    .line 860
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public scrollBy(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 483
    iget v0, p0, Lcom/market2345/util/PagedView;->mUnboundedScrollX:I

    add-int/2addr v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/market2345/util/PagedView;->scrollTo(II)V

    .line 484
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1956
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    if-lez v0, :cond_0

    .line 1957
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->snapToPage(I)V

    .line 1964
    :cond_0
    :goto_0
    return-void

    .line 1961
    :cond_1
    iget v0, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    if-lez v0, :cond_0

    .line 1962
    iget v0, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1968
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1970
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1971
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->snapToPage(I)V

    .line 1978
    :cond_0
    :goto_0
    return-void

    .line 1975
    :cond_1
    iget v0, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 1976
    iget v0, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->snapToPage(I)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 489
    iput p1, p0, Lcom/market2345/util/PagedView;->mUnboundedScrollX:I

    .line 490
    if-gez p1, :cond_1

    .line 492
    const/4 v0, 0x0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 493
    iget-boolean v0, p0, Lcom/market2345/util/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    .line 495
    int-to-float v0, p1

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->overScroll(F)V

    .line 513
    :cond_0
    :goto_0
    int-to-float v0, p1

    iput v0, p0, Lcom/market2345/util/PagedView;->mTouchX:F

    .line 514
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/market2345/util/PagedView;->mSmoothingTime:F

    .line 515
    return-void

    .line 498
    :cond_1
    iget v0, p0, Lcom/market2345/util/PagedView;->mMaxScrollX:I

    if-le p1, v0, :cond_2

    .line 500
    iget v0, p0, Lcom/market2345/util/PagedView;->mMaxScrollX:I

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 501
    iget-boolean v0, p0, Lcom/market2345/util/PagedView;->mAllowOverScroll:Z

    if-eqz v0, :cond_0

    .line 503
    iget v0, p0, Lcom/market2345/util/PagedView;->mMaxScrollX:I

    sub-int v0, p1, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->overScroll(F)V

    goto :goto_0

    .line 508
    :cond_2
    iput p1, p0, Lcom/market2345/util/PagedView;->mOverScrollX:I

    .line 509
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 510
    invoke-direct {p0, p1}, Lcom/market2345/util/PagedView;->pageScrolled(I)Z

    goto :goto_0
.end method

.method public setAllowLongPress(Z)V
    .locals 0
    .param p1, "allowLongPress"    # Z

    .prologue
    .line 2012
    iput-boolean p1, p0, Lcom/market2345/util/PagedView;->mAllowLongPress:Z

    .line 2013
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 2
    .param p1, "currentPage"    # I

    .prologue
    .line 398
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 405
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 415
    :goto_0
    return-void

    .line 410
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    .line 411
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->updateCurrentPageScroll()V

    .line 413
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->notifyPageSwitchListener()V

    .line 414
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->invalidate()V

    goto :goto_0
.end method

.method protected setDataIsReady()V
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/util/PagedView;->mIsDataReady:Z

    .line 341
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 471
    iput-object p1, p0, Lcom/market2345/util/PagedView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 472
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPageCount()I

    move-result v0

    .line 473
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 475
    invoke-virtual {p0, v1}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    :cond_0
    return-void
.end method

.method public setPageSpacing(I)V
    .locals 0
    .param p1, "pageSpacing"    # I

    .prologue
    .line 791
    iput p1, p0, Lcom/market2345/util/PagedView;->mPageSpacing:I

    .line 792
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->invalidateCachedOffsets()V

    .line 793
    return-void
.end method

.method public setPageSwitchListener(Lcom/market2345/util/PagedView$PageSwitchListener;)V
    .locals 2
    .param p1, "pageSwitchListener"    # Lcom/market2345/util/PagedView$PageSwitchListener;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mPageSwitchListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    if-eqz p1, :cond_0

    .line 330
    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-interface {p1, v0, v1}, Lcom/market2345/util/PagedView$PageSwitchListener;->onPageSwitch(Landroid/view/View;I)V

    .line 332
    :cond_0
    return-void
.end method

.method protected shouldDrawChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 991
    const/4 v0, 0x1

    return v0
.end method

.method public showScrollIndicatorTrack()V
    .locals 0

    .prologue
    .line 2354
    return-void
.end method

.method protected showScrollingIndicator(Z)V
    .locals 3
    .param p1, "immediately"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2218
    iput-boolean v1, p0, Lcom/market2345/util/PagedView;->mShouldShowScrollIndicator:Z

    .line 2219
    iput-boolean v1, p0, Lcom/market2345/util/PagedView;->mShouldShowScrollIndicatorImmediately:Z

    .line 2220
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 2243
    :cond_0
    :goto_0
    return-void

    .line 2222
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->isScrollingIndicatorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2225
    iput-boolean v2, p0, Lcom/market2345/util/PagedView;->mShouldShowScrollIndicator:Z

    .line 2226
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getScrollingIndicator()Landroid/view/View;

    .line 2227
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mScrollIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2230
    invoke-direct {p0}, Lcom/market2345/util/PagedView;->updateScrollingIndicatorPosition()V

    .line 2231
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mScrollIndicator:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2232
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->cancelScrollingIndicatorAnimations()V

    goto :goto_0
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 1814
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/16 v1, 0x226

    invoke-virtual {p0, v0, v1}, Lcom/market2345/util/PagedView;->snapToPage(II)V

    .line 1815
    return-void
.end method

.method public snapToPage(I)V
    .locals 1
    .param p1, "whichPage"    # I

    .prologue
    .line 1891
    const/16 v0, 0x226

    invoke-virtual {p0, p1, v0}, Lcom/market2345/util/PagedView;->snapToPage(II)V

    .line 1892
    return-void
.end method

.method protected snapToPage(II)V
    .locals 5
    .param p1, "whichPage"    # I
    .param p2, "duration"    # I

    .prologue
    .line 1896
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1902
    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->getChildOffset(I)I

    move-result v3

    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->getRelativeChildOffset(I)I

    move-result v4

    sub-int v1, v3, v4

    .line 1903
    .local v1, "newX":I
    iget v2, p0, Lcom/market2345/util/PagedView;->mUnboundedScrollX:I

    .line 1904
    .local v2, "sX":I
    sub-int v0, v1, v2

    .line 1905
    .local v0, "delta":I
    invoke-virtual {p0, p1, v0, p2}, Lcom/market2345/util/PagedView;->snapToPage(III)V

    .line 1906
    return-void
.end method

.method protected snapToPage(III)V
    .locals 9
    .param p1, "whichPage"    # I
    .param p2, "delta"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 1910
    iput p1, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    .line 1911
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getFocusedChild()Landroid/view/View;

    move-result-object v6

    .line 1912
    .local v6, "focusedChild":Landroid/view/View;
    if-eqz v6, :cond_0

    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    if-eq p1, v0, :cond_0

    iget v0, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v6, v0, :cond_0

    .line 1914
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 1916
    :cond_0
    iget v0, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1918
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mPageSwitchListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/market2345/util/PagedView$PageSwitchListener;

    .line 1920
    .local v8, "mPageSwitchListener":Lcom/market2345/util/PagedView$PageSwitchListener;
    if-eqz v8, :cond_1

    .line 1922
    iget v0, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    invoke-interface {v8, v0}, Lcom/market2345/util/PagedView$PageSwitchListener;->onPageSwitch(I)V

    goto :goto_0

    .line 1926
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "mPageSwitchListener":Lcom/market2345/util/PagedView$PageSwitchListener;
    :cond_2
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->pageBeginMoving()V

    .line 1927
    invoke-virtual {p0, p3}, Lcom/market2345/util/PagedView;->awakenScrollBars(I)Z

    .line 1928
    if-nez p3, :cond_3

    .line 1930
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p3

    .line 1933
    :cond_3
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1934
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1935
    :cond_4
    iget-object v0, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/market2345/util/PagedView;->mUnboundedScrollX:I

    move v3, p2

    move v4, v2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1940
    iget-boolean v0, p0, Lcom/market2345/util/PagedView;->mDeferScrollUpdate:Z

    if-eqz v0, :cond_5

    .line 1942
    iget v0, p0, Lcom/market2345/util/PagedView;->mNextPage:I

    invoke-virtual {p0, v0}, Lcom/market2345/util/PagedView;->loadAssociatedPages(I)V

    .line 1949
    :goto_1
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->invalidate()V

    .line 1950
    return-void

    .line 1946
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/util/PagedView;->mDeferLoadAssociatedPagesUntilScrollCompletes:Z

    goto :goto_1
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 9
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1846
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1847
    invoke-virtual {p0}, Lcom/market2345/util/PagedView;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v4, v6, 0x2

    .line 1853
    .local v4, "halfScreenSize":I
    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->getChildOffset(I)I

    move-result v6

    invoke-virtual {p0, p1}, Lcom/market2345/util/PagedView;->getRelativeChildOffset(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 1854
    .local v5, "newX":I
    iget v6, p0, Lcom/market2345/util/PagedView;->mUnboundedScrollX:I

    sub-int v0, v5, v6

    .line 1855
    .local v0, "delta":I
    const/4 v3, 0x0

    .line 1857
    .local v3, "duration":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Lcom/market2345/util/PagedView;->mMinFlingVelocity:I

    if-ge v6, v7, :cond_0

    .line 1862
    const/16 v6, 0x226

    invoke-virtual {p0, p1, v6}, Lcom/market2345/util/PagedView;->snapToPage(II)V

    .line 1887
    :goto_0
    return-void

    .line 1873
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    mul-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1874
    .local v2, "distanceRatio":F
    int-to-float v6, v4

    int-to-float v7, v4

    invoke-virtual {p0, v2}, Lcom/market2345/util/PagedView;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v1, v6, v7

    .line 1876
    .local v1, "distance":F
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1877
    iget v6, p0, Lcom/market2345/util/PagedView;->mMinSnapVelocity:I

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1884
    const/high16 v6, 0x447a0000    # 1000.0f

    int-to-float v7, p2

    div-float v7, v1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    mul-int/lit8 v3, v6, 0x4

    .line 1886
    invoke-virtual {p0, p1, v0, v3}, Lcom/market2345/util/PagedView;->snapToPage(III)V

    goto :goto_0
.end method

.method protected updateCurrentPageScroll()V
    .locals 5

    .prologue
    .line 385
    iget v3, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/market2345/util/PagedView;->getChildOffset(I)I

    move-result v1

    .line 386
    .local v1, "offset":I
    iget v3, p0, Lcom/market2345/util/PagedView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/market2345/util/PagedView;->getRelativeChildOffset(I)I

    move-result v2

    .line 387
    .local v2, "relOffset":I
    sub-int v0, v1, v2

    .line 388
    .local v0, "newX":I
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/market2345/util/PagedView;->scrollTo(II)V

    .line 389
    iget-object v3, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v0}, Landroid/widget/Scroller;->setFinalX(I)V

    .line 390
    iget-object v3, p0, Lcom/market2345/util/PagedView;->mScroller:Landroid/widget/Scroller;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 391
    return-void
.end method
