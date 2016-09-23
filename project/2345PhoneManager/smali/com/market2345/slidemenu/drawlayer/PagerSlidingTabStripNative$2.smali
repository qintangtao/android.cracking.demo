.class Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$2;
.super Ljava/lang/Object;
.source "PagerSlidingTabStripNative.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;I)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$2;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iput p2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$2;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    # getter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->pager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->access$200(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative$2;->val$position:I

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 284
    return-void
.end method
