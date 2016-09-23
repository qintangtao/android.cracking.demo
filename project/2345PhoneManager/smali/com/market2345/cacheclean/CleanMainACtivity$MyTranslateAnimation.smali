.class public Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "CleanMainACtivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/cacheclean/CleanMainACtivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyTranslateAnimation"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanMainACtivity;


# direct methods
.method public constructor <init>(Lcom/market2345/cacheclean/CleanMainACtivity;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 7
    .param p1, "paramFloat"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 810
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 811
    const/high16 v2, 0x3f000000    # 0.5f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 813
    mul-float v2, p1, v3

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->screenWidth:I
    invoke-static {v3}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1800(Lcom/market2345/cacheclean/CleanMainACtivity;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->scanWidth:I
    invoke-static {v3}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1600(Lcom/market2345/cacheclean/CleanMainACtivity;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 814
    .local v1, "f2":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 822
    .end local v1    # "f2":F
    :goto_0
    return-void

    .line 818
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->screenWidth:I
    invoke-static {v3}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1800(Lcom/market2345/cacheclean/CleanMainACtivity;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->scanWidth:I
    invoke-static {v3}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1600(Lcom/market2345/cacheclean/CleanMainACtivity;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v0, v2, v3

    .line 819
    .local v0, "f1":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    const/high16 v3, 0x43340000    # 180.0f

    iget-object v4, p0, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->scanWidth:I
    invoke-static {v4}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1600(Lcom/market2345/cacheclean/CleanMainACtivity;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v5, p0, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # getter for: Lcom/market2345/cacheclean/CleanMainACtivity;->scanHigh:I
    invoke-static {v5}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1700(Lcom/market2345/cacheclean/CleanMainACtivity;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 820
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 799
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 800
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # setter for: Lcom/market2345/cacheclean/CleanMainACtivity;->scanWidth:I
    invoke-static {v0, p1}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1602(Lcom/market2345/cacheclean/CleanMainACtivity;I)I

    .line 801
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;->this$0:Lcom/market2345/cacheclean/CleanMainACtivity;

    # setter for: Lcom/market2345/cacheclean/CleanMainACtivity;->scanHigh:I
    invoke-static {v0, p2}, Lcom/market2345/cacheclean/CleanMainACtivity;->access$1702(Lcom/market2345/cacheclean/CleanMainACtivity;I)I

    .line 802
    const-wide/16 v0, 0xfa0

    invoke-virtual {p0, v0, v1}, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;->setDuration(J)V

    .line 803
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;->setFillAfter(Z)V

    .line 804
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/CleanMainACtivity$MyTranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 805
    return-void
.end method
