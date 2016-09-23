.class Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;
.super Ljava/lang/Object;
.source "PagerSlidingTabStripNative.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;


# direct methods
.method private constructor <init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;
    .param p2, "x1"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;-><init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 449
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    # getter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$200(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$300(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;II)V

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v0, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v0, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 455
    :cond_1
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 434
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I
    invoke-static {v0, p1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;I)I

    .line 435
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPositionOffset:F
    invoke-static {v0, p2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$402(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;F)F

    .line 437
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    # getter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$500(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p2

    float-to-int v1, v1

    # invokes: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollToChild(II)V
    invoke-static {v0, p1, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$300(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;II)V

    .line 439
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->invalidate()V

    .line 441
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v0, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v0, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 444
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 459
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v0, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v0, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->mCurrentPosition:I
    invoke-static {v1, p1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$602(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;I)I

    move-result v1

    # invokes: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->updateTabStyles(I)V
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$700(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;I)V

    .line 463
    return-void
.end method
