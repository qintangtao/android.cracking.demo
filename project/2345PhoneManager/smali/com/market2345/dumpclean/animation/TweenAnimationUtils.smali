.class public Lcom/market2345/dumpclean/animation/TweenAnimationUtils;
.super Ljava/lang/Object;
.source "TweenAnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getScreenWidth(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 26
    .local v0, "dm":Landroid/util/DisplayMetrics;
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 27
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v1
.end method

.method public static startAnimation(Landroid/content/Context;Landroid/view/View;ILcom/market2345/dumpclean/animation/AnimationListenerAdapter;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "id"    # I
    .param p3, "listener"    # Lcom/market2345/dumpclean/animation/AnimationListenerAdapter;

    .prologue
    .line 31
    invoke-static {p0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 32
    .local v0, "anim":Landroid/view/animation/Animation;
    if-eqz p3, :cond_0

    .line 33
    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 34
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 36
    return-void
.end method

.method public static startScanTranslateAnimation(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-static {p0}, Lcom/market2345/dumpclean/animation/TweenAnimationUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    .line 20
    .local v1, "screenWidth":I
    new-instance v0, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;

    invoke-direct {v0, v1}, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;-><init>(I)V

    .line 21
    .local v0, "scanAnimation":Lcom/market2345/dumpclean/animation/MyTranslateAnimation;
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/market2345/dumpclean/animation/MyTranslateAnimation;->setRepeatCount(I)V

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 23
    return-void
.end method
