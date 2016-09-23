.class Lcom/market2345/customview/AutoScrollViewPager$MyHandler;
.super Landroid/os/Handler;
.source "AutoScrollViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/customview/AutoScrollViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field mPager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/customview/AutoScrollViewPager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/market2345/customview/AutoScrollViewPager;)V
    .locals 1
    .param p1, "pager"    # Lcom/market2345/customview/AutoScrollViewPager;

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 275
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/customview/AutoScrollViewPager$MyHandler;->mPager:Ljava/lang/ref/WeakReference;

    .line 276
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 280
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 282
    iget-object v1, p0, Lcom/market2345/customview/AutoScrollViewPager$MyHandler;->mPager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/customview/AutoScrollViewPager;

    .line 283
    .local v0, "thePager":Lcom/market2345/customview/AutoScrollViewPager;
    if-eqz v0, :cond_0

    .line 284
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 286
    :pswitch_0
    # getter for: Lcom/market2345/customview/AutoScrollViewPager;->scroller:Lcom/market2345/customview/CustomDurationScroller;
    invoke-static {v0}, Lcom/market2345/customview/AutoScrollViewPager;->access$100(Lcom/market2345/customview/AutoScrollViewPager;)Lcom/market2345/customview/CustomDurationScroller;

    move-result-object v1

    # getter for: Lcom/market2345/customview/AutoScrollViewPager;->autoScrollFactor:D
    invoke-static {v0}, Lcom/market2345/customview/AutoScrollViewPager;->access$000(Lcom/market2345/customview/AutoScrollViewPager;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/market2345/customview/CustomDurationScroller;->setScrollDurationFactor(D)V

    .line 287
    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->scrollOnce()V

    .line 288
    # getter for: Lcom/market2345/customview/AutoScrollViewPager;->scroller:Lcom/market2345/customview/CustomDurationScroller;
    invoke-static {v0}, Lcom/market2345/customview/AutoScrollViewPager;->access$100(Lcom/market2345/customview/AutoScrollViewPager;)Lcom/market2345/customview/CustomDurationScroller;

    move-result-object v1

    # getter for: Lcom/market2345/customview/AutoScrollViewPager;->swipeScrollFactor:D
    invoke-static {v0}, Lcom/market2345/customview/AutoScrollViewPager;->access$200(Lcom/market2345/customview/AutoScrollViewPager;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/market2345/customview/CustomDurationScroller;->setScrollDurationFactor(D)V

    .line 289
    # getter for: Lcom/market2345/customview/AutoScrollViewPager;->interval:J
    invoke-static {v0}, Lcom/market2345/customview/AutoScrollViewPager;->access$300(Lcom/market2345/customview/AutoScrollViewPager;)J

    move-result-wide v2

    # getter for: Lcom/market2345/customview/AutoScrollViewPager;->scroller:Lcom/market2345/customview/CustomDurationScroller;
    invoke-static {v0}, Lcom/market2345/customview/AutoScrollViewPager;->access$100(Lcom/market2345/customview/AutoScrollViewPager;)Lcom/market2345/customview/CustomDurationScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/customview/CustomDurationScroller;->getDuration()I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    # invokes: Lcom/market2345/customview/AutoScrollViewPager;->sendScrollMessage(J)V
    invoke-static {v0, v2, v3}, Lcom/market2345/customview/AutoScrollViewPager;->access$400(Lcom/market2345/customview/AutoScrollViewPager;J)V

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
