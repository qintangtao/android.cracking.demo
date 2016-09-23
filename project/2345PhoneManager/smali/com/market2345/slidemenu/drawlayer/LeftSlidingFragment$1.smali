.class Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$1;
.super Ljava/lang/Object;
.source "LeftSlidingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$1;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$1;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$1;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {v0}, Lcom/market2345/home/HomeTabActivity;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$1;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    # invokes: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->buttonOnClick(I)V
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$000(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;I)V

    goto :goto_0
.end method
