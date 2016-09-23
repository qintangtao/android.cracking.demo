.class Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Lcom/market2345/util/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;


# direct methods
.method private constructor <init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;
    .param p2, "x1"    # Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;-><init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v2, 0x0

    .line 471
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, p1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I

    .line 472
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F
    invoke-static {v0, p2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$402(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;F)F

    .line 477
    const/high16 v0, -0x3fc00000    # -3.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_4

    .line 479
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    const/high16 v1, 0x40800000    # 4.0f

    add-float/2addr v1, p2

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$402(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;F)F

    .line 480
    if-nez p1, :cond_3

    .line 482
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I

    .line 525
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # getter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$100(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)I

    move-result v0

    if-gez v0, :cond_1

    .line 527
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I

    .line 529
    :cond_1
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # getter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F
    invoke-static {v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$400(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)F

    move-result v1

    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # getter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->tabsContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$500(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    # invokes: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v0, p1, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$300(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;II)V

    .line 532
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->invalidate()V

    .line 534
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 536
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 538
    :cond_2
    return-void

    .line 486
    :cond_3
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    add-int/lit8 v1, p1, -0x4

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I

    goto :goto_0

    .line 489
    :cond_4
    const/high16 v0, -0x40000000    # -2.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_6

    .line 491
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    const/high16 v1, 0x40400000    # 3.0f

    add-float/2addr v1, p2

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$402(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;F)F

    .line 492
    if-nez p1, :cond_5

    .line 494
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I

    goto :goto_0

    .line 498
    :cond_5
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    add-int/lit8 v1, p1, -0x3

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I

    goto :goto_0

    .line 501
    :cond_6
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_8

    .line 503
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    const/high16 v1, 0x40000000    # 2.0f

    add-float/2addr v1, p2

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$402(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;F)F

    .line 504
    if-nez p1, :cond_7

    .line 506
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I

    goto :goto_0

    .line 510
    :cond_7
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    add-int/lit8 v1, p1, -0x2

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I

    goto :goto_0

    .line 513
    :cond_8
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, p2

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$402(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;F)F

    .line 516
    if-nez p1, :cond_9

    .line 518
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I

    goto/16 :goto_0

    .line 522
    :cond_9
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    add-int/lit8 v1, p1, -0x1

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I

    goto/16 :goto_0
.end method

.method public onPageSwitch(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 558
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 562
    :cond_0
    return-void
.end method

.method public onPageSwitch(Landroid/view/View;I)V
    .locals 2
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    const/4 v1, 0x0

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPositionOffset:F
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$402(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;F)F

    .line 545
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v0, p2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I

    .line 546
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    const/4 v1, 0x0

    # invokes: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v0, p2, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$300(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;II)V

    .line 547
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->invalidate()V

    .line 548
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # invokes: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->updateTabStyles(I)V
    invoke-static {v0, p2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$600(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)V

    .line 549
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$PageListener;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    iget-object v0, v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->delegatePageListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 553
    :cond_0
    return-void
.end method
