.class public Lcom/market2345/dumpclean/animation/MyTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "MyTranslateAnimation.java"


# instance fields
.field private scanHigh:I

.field private scanWidth:I

.field private screenWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "screenWidth"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 13
    iput p1, p0, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->screenWidth:I

    .line 14
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "paramFloat"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 29
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 30
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 31
    mul-float v1, p1, v2

    iget v2, p0, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->screenWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->scanWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 32
    .local v0, "f1":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 39
    :goto_0
    return-void

    .line 34
    .end local v0    # "f1":F
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->screenWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->scanWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float v0, v1, v2

    .line 36
    .restart local v0    # "f1":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    const/high16 v2, 0x43340000    # 180.0f

    iget v3, p0, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->scanWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->scanHigh:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 37
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v0, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 19
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 20
    iput p1, p0, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->scanWidth:I

    .line 21
    iput p2, p0, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->scanHigh:I

    .line 22
    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->setDuration(J)V

    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->setFillAfter(Z)V

    .line 24
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 25
    return-void
.end method
