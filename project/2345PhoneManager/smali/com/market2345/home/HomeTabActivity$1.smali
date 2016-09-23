.class Lcom/market2345/home/HomeTabActivity$1;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/home/HomeTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/home/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/market2345/home/HomeTabActivity;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/market2345/home/HomeTabActivity$1;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpened()V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity$1;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-static {v0}, Lcom/market2345/lm/util/ChannelUtil;->isUnionShouldShow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 453
    :cond_0
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity$1;->this$0:Lcom/market2345/home/HomeTabActivity;

    iget-object v0, v0, Lcom/market2345/home/HomeTabActivity;->leftMenu:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity$1;->this$0:Lcom/market2345/home/HomeTabActivity;

    iget-object v0, v0, Lcom/market2345/home/HomeTabActivity;->leftMenu:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->onRefresh()V

    .line 457
    :cond_1
    return-void
.end method
