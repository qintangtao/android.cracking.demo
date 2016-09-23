.class Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->notifyDataSetChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 248
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 250
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # getter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->pager:Lcom/market2345/util/PagedView;
    invoke-static {v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$200(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)Lcom/market2345/util/PagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/util/PagedView;->getCurrentPage()I

    move-result v2

    # setter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v1, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$102(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)I

    .line 266
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # getter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->currentPosition:I
    invoke-static {v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$100(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)I

    move-result v2

    const/4 v3, 0x0

    # invokes: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->scrollToChild(II)V
    invoke-static {v1, v2, v3}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$300(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;II)V

    .line 267
    return-void

    .line 256
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$1;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method
