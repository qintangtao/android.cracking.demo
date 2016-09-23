.class Lcom/market2345/dumpclean/main/ScanFinishFragment$MyHandler;
.super Landroid/os/Handler;
.source "ScanFinishFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/dumpclean/main/ScanFinishFragment;
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
            "Lcom/market2345/dumpclean/main/ScanFinishFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/dumpclean/main/ScanFinishFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/market2345/dumpclean/main/ScanFinishFragment;

    .prologue
    .line 174
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 175
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment$MyHandler;->theFragment:Ljava/lang/ref/WeakReference;

    .line 176
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 180
    iget-object v1, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment$MyHandler;->theFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/main/ScanFinishFragment;

    .line 181
    .local v0, "fragment":Lcom/market2345/dumpclean/main/ScanFinishFragment;
    if-eqz v0, :cond_0

    .line 182
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 183
    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 184
    iget v1, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/market2345/dumpclean/main/ScanFinishFragment;->ACTION_HANDLE_SEND_ANIM:I

    if-ne v1, v2, :cond_1

    .line 185
    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->startAnim()V

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    sget v2, Lcom/market2345/dumpclean/main/ScanFinishFragment;->ACTION_SELECTED_CHANGE:I

    if-ne v1, v2, :cond_0

    # getter for: Lcom/market2345/dumpclean/main/ScanFinishFragment;->mListener:Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;
    invoke-static {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->access$000(Lcom/market2345/dumpclean/main/ScanFinishFragment;)Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    # getter for: Lcom/market2345/dumpclean/main/ScanFinishFragment;->mListener:Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;
    invoke-static {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->access$000(Lcom/market2345/dumpclean/main/ScanFinishFragment;)Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/market2345/dumpclean/main/ScanFinishFragment$OnScanFinishFragmentInteractionListener;->callback()V

    goto :goto_0

    .line 191
    :cond_2
    # getter for: Lcom/market2345/dumpclean/main/ScanFinishFragment;->handlerSendCount:I
    invoke-static {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->access$100(Lcom/market2345/dumpclean/main/ScanFinishFragment;)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 192
    # operator++ for: Lcom/market2345/dumpclean/main/ScanFinishFragment;->handlerSendCount:I
    invoke-static {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->access$108(Lcom/market2345/dumpclean/main/ScanFinishFragment;)I

    .line 193
    iget-object v1, v0, Lcom/market2345/dumpclean/main/ScanFinishFragment;->handler:Landroid/os/Handler;

    sget v2, Lcom/market2345/dumpclean/main/ScanFinishFragment;->ACTION_HANDLE_SEND_ANIM:I

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
