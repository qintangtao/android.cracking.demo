.class final Lcom/market2345/dumpclean/animation/ProperyAnimationUtils$1;
.super Ljava/lang/Object;
.source "ProperyAnimationUtils.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/animation/ProperyAnimationUtils;->performAnimate(Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private mEvaluator:Lcom/nineoldandroids/animation/IntEvaluator;

.field final synthetic val$end:I

.field final synthetic val$start:I

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;II)V
    .locals 1

    .prologue
    .line 19
    iput-object p1, p0, Lcom/market2345/dumpclean/animation/ProperyAnimationUtils$1;->val$target:Landroid/view/View;

    iput p2, p0, Lcom/market2345/dumpclean/animation/ProperyAnimationUtils$1;->val$start:I

    iput p3, p0, Lcom/market2345/dumpclean/animation/ProperyAnimationUtils$1;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/nineoldandroids/animation/IntEvaluator;

    invoke-direct {v0}, Lcom/nineoldandroids/animation/IntEvaluator;-><init>()V

    iput-object v0, p0, Lcom/market2345/dumpclean/animation/ProperyAnimationUtils$1;->mEvaluator:Lcom/nineoldandroids/animation/IntEvaluator;

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Lcom/nineoldandroids/animation/ValueAnimator;)V
    .locals 6
    .param p1, "animator"    # Lcom/nineoldandroids/animation/ValueAnimator;

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/nineoldandroids/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 29
    .local v0, "currentValue":I
    int-to-float v2, v0

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v1, v2, v3

    .line 33
    .local v1, "fraction":F
    iget-object v2, p0, Lcom/market2345/dumpclean/animation/ProperyAnimationUtils$1;->val$target:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/dumpclean/animation/ProperyAnimationUtils$1;->mEvaluator:Lcom/nineoldandroids/animation/IntEvaluator;

    iget v4, p0, Lcom/market2345/dumpclean/animation/ProperyAnimationUtils$1;->val$start:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/market2345/dumpclean/animation/ProperyAnimationUtils$1;->val$end:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5}, Lcom/nineoldandroids/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    iget-object v2, p0, Lcom/market2345/dumpclean/animation/ProperyAnimationUtils$1;->val$target:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 36
    return-void
.end method
