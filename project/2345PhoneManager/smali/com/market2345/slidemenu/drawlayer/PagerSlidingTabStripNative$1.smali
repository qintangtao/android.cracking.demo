.class Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;
.super Ljava/lang/Object;
.source "PagerSlidingTabStripNative.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;)V
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 245
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    # getter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$200(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;I)I

    .line 251
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    # getter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->currentPosition:I
    invoke-static {v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$100(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;)I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->scrollToChild(II)V
    invoke-static {v0, v1, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$300(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;II)V

    .line 252
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
