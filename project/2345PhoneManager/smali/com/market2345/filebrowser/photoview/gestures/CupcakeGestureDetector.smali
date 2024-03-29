.class public Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;
.super Ljava/lang/Object;
.source "CupcakeGestureDetector.java"

# interfaces
.implements Lcom/market2345/filebrowser/photoview/gestures/GestureDetector;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CupcakeGestureDetector"


# instance fields
.field private mIsDragging:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field protected mListener:Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;

.field final mMinimumVelocity:F

.field final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 49
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mMinimumVelocity:F

    .line 50
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mTouchSlop:F

    .line 51
    return-void
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method public isScaling()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 167
    :cond_0
    :goto_0
    return v7

    .line 79
    :pswitch_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 80
    iget-object v8, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_1

    .line 82
    iget-object v8, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 89
    :goto_1
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    .line 90
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v8

    iput v8, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    .line 91
    iput-boolean v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    goto :goto_0

    .line 86
    :cond_1
    const-string v8, "CupcakeGestureDetector"

    const-string v9, "Velocity tracker is null"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 97
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v4

    .line 98
    .local v4, "x":F
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v5

    .line 99
    .local v5, "y":F
    iget v8, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    sub-float v0, v4, v8

    .local v0, "dx":F
    iget v8, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    sub-float v1, v5, v8

    .line 101
    .local v1, "dy":F
    iget-boolean v8, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-nez v8, :cond_3

    .line 105
    mul-float v8, v0, v0

    mul-float v9, v1, v1

    add-float/2addr v8, v9

    invoke-static {v8}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v8

    iget v9, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mTouchSlop:F

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    move v6, v7

    :cond_2
    iput-boolean v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    .line 108
    :cond_3
    iget-boolean v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-eqz v6, :cond_0

    .line 110
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mListener:Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;

    invoke-interface {v6, v0, v1}, Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;->onDrag(FF)V

    .line 111
    iput v4, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    .line 112
    iput v5, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    .line 114
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 116
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 125
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :pswitch_2
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 127
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 128
    iput-object v12, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 135
    :pswitch_3
    iget-boolean v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-eqz v6, :cond_4

    .line 137
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_4

    .line 139
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    .line 140
    invoke-virtual {p0, p1}, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v6

    iput v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    .line 143
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 144
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    invoke-virtual {v6, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 146
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    .local v2, "vX":F
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    .line 150
    .local v3, "vY":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v8, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mMinimumVelocity:F

    cmpl-float v6, v6, v8

    if-ltz v6, :cond_4

    .line 152
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mListener:Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;

    iget v8, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    iget v9, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    neg-float v10, v2

    neg-float v11, v3

    invoke-interface {v6, v8, v9, v10, v11}, Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;->onFling(FFFF)V

    .line 158
    .end local v2    # "vX":F
    .end local v3    # "vY":F
    :cond_4
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_0

    .line 160
    iget-object v6, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 161
    iput-object v12, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setOnGestureListener(Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/market2345/filebrowser/photoview/gestures/CupcakeGestureDetector;->mListener:Lcom/market2345/filebrowser/photoview/gestures/OnGestureListener;

    .line 44
    return-void
.end method
