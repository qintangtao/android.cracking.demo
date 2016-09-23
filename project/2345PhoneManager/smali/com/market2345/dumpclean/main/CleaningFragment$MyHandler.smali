.class Lcom/market2345/dumpclean/main/CleaningFragment$MyHandler;
.super Landroid/os/Handler;
.source "CleaningFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/dumpclean/main/CleaningFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyHandler"
.end annotation


# instance fields
.field theFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/dumpclean/main/CleaningFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/dumpclean/main/CleaningFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/market2345/dumpclean/main/CleaningFragment;

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 160
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/main/CleaningFragment$MyHandler;->theFragment:Ljava/lang/ref/WeakReference;

    .line 161
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v4, 0x11

    .line 165
    iget-object v1, p0, Lcom/market2345/dumpclean/main/CleaningFragment$MyHandler;->theFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/main/CleaningFragment;

    .line 166
    .local v0, "fragment":Lcom/market2345/dumpclean/main/CleaningFragment;
    if-eqz v0, :cond_0

    .line 167
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 168
    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/CleaningFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/CleaningFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/CleaningFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 169
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_0

    .line 170
    # invokes: Lcom/market2345/dumpclean/main/CleaningFragment;->startCleanAnimation()V
    invoke-static {v0}, Lcom/market2345/dumpclean/main/CleaningFragment;->access$000(Lcom/market2345/dumpclean/main/CleaningFragment;)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    iget-object v1, v0, Lcom/market2345/dumpclean/main/CleaningFragment;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
