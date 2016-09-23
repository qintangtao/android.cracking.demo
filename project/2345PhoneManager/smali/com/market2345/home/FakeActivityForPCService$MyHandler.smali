.class Lcom/market2345/home/FakeActivityForPCService$MyHandler;
.super Landroid/os/Handler;
.source "FakeActivityForPCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/home/FakeActivityForPCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field theActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/home/FakeActivityForPCService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/home/FakeActivityForPCService;)V
    .locals 1
    .param p1, "activityForPCService"    # Lcom/market2345/home/FakeActivityForPCService;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 20
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/home/FakeActivityForPCService$MyHandler;->theActivity:Ljava/lang/ref/WeakReference;

    .line 21
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 25
    iget-object v1, p0, Lcom/market2345/home/FakeActivityForPCService$MyHandler;->theActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/home/FakeActivityForPCService;

    .line 26
    .local v0, "activity":Lcom/market2345/home/FakeActivityForPCService;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0}, Lcom/market2345/home/FakeActivityForPCService;->finish()V

    .line 29
    :cond_0
    return-void
.end method
