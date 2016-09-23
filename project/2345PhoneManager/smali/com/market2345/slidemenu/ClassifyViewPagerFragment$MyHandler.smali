.class Lcom/market2345/slidemenu/ClassifyViewPagerFragment$MyHandler;
.super Landroid/os/Handler;
.source "ClassifyViewPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/ClassifyViewPagerFragment;
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
            "Lcom/market2345/slidemenu/ClassifyViewPagerFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/slidemenu/ClassifyViewPagerFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/market2345/slidemenu/ClassifyViewPagerFragment;

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment$MyHandler;->theFragment:Ljava/lang/ref/WeakReference;

    .line 34
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 39
    iget-object v2, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment$MyHandler;->theFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;

    .line 40
    .local v0, "fragment":Lcom/market2345/slidemenu/ClassifyViewPagerFragment;
    if-eqz v0, :cond_0

    .line 41
    iget v1, p1, Landroid/os/Message;->what:I

    .line 42
    .local v1, "position":I
    # getter for: Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->data:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->access$000(Lcom/market2345/slidemenu/ClassifyViewPagerFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/ui/BaseFragment;

    invoke-virtual {v2}, Lcom/market2345/ui/BaseFragment;->showSelf()V

    .line 44
    .end local v1    # "position":I
    :cond_0
    return-void
.end method
