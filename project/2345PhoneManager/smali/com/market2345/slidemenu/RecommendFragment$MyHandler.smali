.class Lcom/market2345/slidemenu/RecommendFragment$MyHandler;
.super Landroid/os/Handler;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/RecommendFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field theFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/slidemenu/RecommendFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/slidemenu/RecommendFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/market2345/slidemenu/RecommendFragment;

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/RecommendFragment$MyHandler;->theFragment:Ljava/lang/ref/WeakReference;

    .line 39
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 44
    iget-object v2, p0, Lcom/market2345/slidemenu/RecommendFragment$MyHandler;->theFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/RecommendFragment;

    .line 45
    .local v0, "fragment":Lcom/market2345/slidemenu/RecommendFragment;
    if-eqz v0, :cond_0

    .line 46
    iget v1, p1, Landroid/os/Message;->what:I

    .line 47
    .local v1, "position":I
    # getter for: Lcom/market2345/slidemenu/RecommendFragment;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/slidemenu/RecommendFragment;->access$000(Lcom/market2345/slidemenu/RecommendFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/ui/BaseFragment;

    invoke-virtual {v2}, Lcom/market2345/ui/BaseFragment;->showSelf()V

    .line 49
    # invokes: Lcom/market2345/slidemenu/RecommendFragment;->statisticEvents(I)V
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/RecommendFragment;->access$100(Lcom/market2345/slidemenu/RecommendFragment;I)V

    .line 51
    .end local v1    # "position":I
    :cond_0
    return-void
.end method
