.class Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$2;
.super Ljava/lang/Object;
.source "PagerSlidingTabStrip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->addTab(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;I)V
    .locals 0

    .prologue
    .line 298
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$2;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    iput p2, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$2;->this$0:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;

    # getter for: Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->pager:Lcom/market2345/util/PagedView;
    invoke-static {v0}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;->access$200(Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip;)Lcom/market2345/util/PagedView;

    move-result-object v0

    iget v1, p0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStrip$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/market2345/util/PagedView;->snapToPage(I)V

    .line 303
    return-void
.end method
