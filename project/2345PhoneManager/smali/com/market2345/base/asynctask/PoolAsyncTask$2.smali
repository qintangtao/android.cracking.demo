.class Lcom/market2345/base/asynctask/PoolAsyncTask$2;
.super Lcom/market2345/base/asynctask/PoolAsyncTask$WorkerRunnable;
.source "PoolAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/base/asynctask/PoolAsyncTask;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/market2345/base/asynctask/PoolAsyncTask$WorkerRunnable",
        "<TParams;TResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/base/asynctask/PoolAsyncTask;


# direct methods
.method constructor <init>(Lcom/market2345/base/asynctask/PoolAsyncTask;)V
    .locals 1

    .prologue
    .line 276
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask$2;, "Lcom/market2345/base/asynctask/PoolAsyncTask.2;"
    iput-object p1, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$2;->this$0:Lcom/market2345/base/asynctask/PoolAsyncTask;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/market2345/base/asynctask/PoolAsyncTask$WorkerRunnable;-><init>(Lcom/market2345/base/asynctask/PoolAsyncTask$1;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask$2;, "Lcom/market2345/base/asynctask/PoolAsyncTask.2;"
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$2;->this$0:Lcom/market2345/base/asynctask/PoolAsyncTask;

    # getter for: Lcom/market2345/base/asynctask/PoolAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/market2345/base/asynctask/PoolAsyncTask;->access$300(Lcom/market2345/base/asynctask/PoolAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 280
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 282
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$2;->this$0:Lcom/market2345/base/asynctask/PoolAsyncTask;

    iget-object v1, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$2;->this$0:Lcom/market2345/base/asynctask/PoolAsyncTask;

    iget-object v2, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$2;->mParams:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/market2345/base/asynctask/PoolAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    # invokes: Lcom/market2345/base/asynctask/PoolAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;
    invoke-static {v0, v1}, Lcom/market2345/base/asynctask/PoolAsyncTask;->access$400(Lcom/market2345/base/asynctask/PoolAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
