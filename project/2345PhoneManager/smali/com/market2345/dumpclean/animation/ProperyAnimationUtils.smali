.class public Lcom/market2345/dumpclean/animation/ProperyAnimationUtils;
.super Ljava/lang/Object;
.source "ProperyAnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static performAnimate(Landroid/view/View;II)V
    .locals 4
    .param p0, "target"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 15
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 16
    :cond_1
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->ofInt([I)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v0

    .line 17
    .local v0, "valueAnimator":Lcom/nineoldandroids/animation/ValueAnimator;
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setPivotX(Landroid/view/View;F)V

    .line 18
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/nineoldandroids/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    .line 19
    new-instance v1, Lcom/market2345/dumpclean/animation/ProperyAnimationUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/market2345/dumpclean/animation/ProperyAnimationUtils$1;-><init>(Landroid/view/View;II)V

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/ValueAnimator;->addUpdateListener(Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    const-wide/16 v2, 0x384

    invoke-virtual {v0, v2, v3}, Lcom/nineoldandroids/animation/ValueAnimator;->setDuration(J)Lcom/nineoldandroids/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nineoldandroids/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 16
    :array_0
    .array-data 4
        0x1
        0x64
    .end array-data
.end method
