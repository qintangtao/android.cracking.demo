.class Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$6;
.super Ljava/util/TimerTask;
.source "LeftSlidingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->start()V
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
    .line 667
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$6;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 671
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$6;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-boolean v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->isOver:Z

    if-eqz v1, :cond_0

    .line 672
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 673
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 674
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$6;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # getter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->hand:Landroid/os/Handler;
    invoke-static {v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$800(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 676
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
