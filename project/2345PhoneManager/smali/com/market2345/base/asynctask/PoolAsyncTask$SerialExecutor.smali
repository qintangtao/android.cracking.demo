.class Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;
.super Ljava/lang/Object;
.source "PoolAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/base/asynctask/PoolAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerialExecutor"
.end annotation


# instance fields
.field mActive:Ljava/lang/Runnable;

.field final mTasks:Lcom/market2345/base/asynctask/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/market2345/base/asynctask/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Lcom/market2345/base/asynctask/ArrayDeque;

    invoke-direct {v0}, Lcom/market2345/base/asynctask/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;->mTasks:Lcom/market2345/base/asynctask/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/base/asynctask/PoolAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/base/asynctask/PoolAsyncTask$1;

    .prologue
    .line 217
    invoke-direct {p0}, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;->mTasks:Lcom/market2345/base/asynctask/ArrayDeque;

    new-instance v1, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor$1;-><init>(Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/market2345/base/asynctask/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;->scheduleNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :cond_0
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized scheduleNext()V
    .locals 2

    .prologue
    .line 237
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;->mTasks:Lcom/market2345/base/asynctask/ArrayDeque;

    invoke-virtual {v0}, Lcom/market2345/base/asynctask/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 238
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_0
    monitor-exit p0

    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
