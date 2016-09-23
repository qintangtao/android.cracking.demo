.class public abstract Lcom/market2345/base/asynctask/PoolAsyncTask;
.super Ljava/lang/Object;
.source "PoolAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/base/asynctask/PoolAsyncTask$4;,
        Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;,
        Lcom/market2345/base/asynctask/PoolAsyncTask$WorkerRunnable;,
        Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;,
        Lcom/market2345/base/asynctask/PoolAsyncTask$Status;,
        Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncTask"

.field private static final MAXIMUM_POOL_SIZE:I = 0x800

.field private static final MESSAGE_POST_PROGRESS:I = 0x2

.field private static final MESSAGE_POST_RESULT:I = 0x1

.field public static final SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static volatile sDefaultExecutor:Ljava/util/concurrent/Executor;

.field private static final sHandler:Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFuture:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask",
            "<TResult;>;"
        }
    .end annotation
.end field

.field private volatile mStatus:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

.field private final mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mWorker:Lcom/market2345/base/asynctask/PoolAsyncTask$WorkerRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/market2345/base/asynctask/PoolAsyncTask$WorkerRunnable",
            "<TParams;TResult;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 177
    new-instance v0, Lcom/market2345/base/asynctask/PoolAsyncTask$1;

    invoke-direct {v0}, Lcom/market2345/base/asynctask/PoolAsyncTask$1;-><init>()V

    sput-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 185
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 191
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x5

    const/16 v3, 0x800

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/market2345/base/asynctask/PoolAsyncTask;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/market2345/base/asynctask/PoolAsyncTask;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lcom/market2345/base/asynctask/PoolAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 199
    new-instance v0, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;

    invoke-direct {v0, v9}, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;-><init>(Lcom/market2345/base/asynctask/PoolAsyncTask$1;)V

    sput-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 204
    new-instance v0, Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;

    invoke-direct {v0, v9}, Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;-><init>(Lcom/market2345/base/asynctask/PoolAsyncTask$1;)V

    sput-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask;->sHandler:Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;

    .line 208
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 275
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->PENDING:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    iput-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mStatus:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    .line 214
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 215
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 276
    new-instance v0, Lcom/market2345/base/asynctask/PoolAsyncTask$2;

    invoke-direct {v0, p0}, Lcom/market2345/base/asynctask/PoolAsyncTask$2;-><init>(Lcom/market2345/base/asynctask/PoolAsyncTask;)V

    iput-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mWorker:Lcom/market2345/base/asynctask/PoolAsyncTask$WorkerRunnable;

    .line 286
    new-instance v0, Lcom/market2345/base/asynctask/PoolAsyncTask$3;

    iget-object v1, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mWorker:Lcom/market2345/base/asynctask/PoolAsyncTask$WorkerRunnable;

    invoke-direct {v0, p0, v1}, Lcom/market2345/base/asynctask/PoolAsyncTask$3;-><init>(Lcom/market2345/base/asynctask/PoolAsyncTask;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    .line 300
    return-void
.end method

.method static synthetic access$300(Lcom/market2345/base/asynctask/PoolAsyncTask;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/base/asynctask/PoolAsyncTask;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/base/asynctask/PoolAsyncTask;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/base/asynctask/PoolAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/market2345/base/asynctask/PoolAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/market2345/base/asynctask/PoolAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/base/asynctask/PoolAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/market2345/base/asynctask/PoolAsyncTask;->postResultIfNotInvoked(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/market2345/base/asynctask/PoolAsyncTask;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/base/asynctask/PoolAsyncTask;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/market2345/base/asynctask/PoolAsyncTask;->finish(Ljava/lang/Object;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 597
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 598
    return-void
.end method

.method private finish(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 622
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/market2345/base/asynctask/PoolAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0, p1}, Lcom/market2345/base/asynctask/PoolAsyncTask;->onCancelled(Ljava/lang/Object;)V

    .line 627
    :goto_0
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->FINISHED:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    iput-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mStatus:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    .line 628
    return-void

    .line 625
    :cond_0
    invoke-virtual {p0, p1}, Lcom/market2345/base/asynctask/PoolAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 264
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask;->sHandler:Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;

    invoke-virtual {v0}, Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;->getLooper()Landroid/os/Looper;

    .line 265
    return-void
.end method

.method private postResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    const/4 v5, 0x1

    .line 311
    sget-object v1, Lcom/market2345/base/asynctask/PoolAsyncTask;->sHandler:Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;

    new-instance v2, Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v2, p0, v3}, Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;-><init>(Lcom/market2345/base/asynctask/PoolAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5, v2}, Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 313
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 314
    return-object p1
.end method

.method private postResultIfNotInvoked(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    iget-object v1, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mTaskInvoked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 304
    .local v0, "wasTaskInvoked":Z
    if-nez v0, :cond_0

    .line 305
    invoke-direct {p0, p1}, Lcom/market2345/base/asynctask/PoolAsyncTask;->postResult(Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_0
    return-void
.end method

.method public static setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p0, "exec"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 269
    sput-object p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    .line 270
    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 2
    .param p1, "mayInterruptIfRunning"    # Z

    .prologue
    .line 460
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 461
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method protected varargs abstract doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)TResult;"
        }
    .end annotation
.end method

.method public final varargs execute([Ljava/lang/Object;)Lcom/market2345/base/asynctask/PoolAsyncTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TParams;)",
            "Lcom/market2345/base/asynctask/PoolAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 528
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TParams;"
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask;->sDefaultExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/market2345/base/asynctask/PoolAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/market2345/base/asynctask/PoolAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final varargs executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/market2345/base/asynctask/PoolAsyncTask;
    .locals 2
    .param p1, "exec"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "[TParams;)",
            "Lcom/market2345/base/asynctask/PoolAsyncTask",
            "<TParams;TProgress;TResult;>;"
        }
    .end annotation

    .prologue
    .line 566
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    .local p2, "params":[Ljava/lang/Object;, "[TParams;"
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mStatus:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    sget-object v1, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->PENDING:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 567
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask$4;->$SwitchMap$com$market2345$base$asynctask$PoolAsyncTask$Status:[I

    iget-object v1, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mStatus:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    invoke-virtual {v1}, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 578
    :cond_0
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask$Status;->RUNNING:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    iput-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mStatus:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    .line 580
    invoke-virtual {p0}, Lcom/market2345/base/asynctask/PoolAsyncTask;->onPreExecute()V

    .line 582
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mWorker:Lcom/market2345/base/asynctask/PoolAsyncTask$WorkerRunnable;

    iput-object p2, v0, Lcom/market2345/base/asynctask/PoolAsyncTask$WorkerRunnable;->mParams:[Ljava/lang/Object;

    .line 583
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 585
    return-object p0

    .line 569
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task is already running."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :pswitch_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .prologue
    .line 476
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .prologue
    .line 496
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mFuture:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getStatus()Lcom/market2345/base/asynctask/PoolAsyncTask$Status;
    .locals 1

    .prologue
    .line 323
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mStatus:Lcom/market2345/base/asynctask/PoolAsyncTask$Status;

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .prologue
    .line 427
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 414
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected onCancelled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 398
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    invoke-virtual {p0}, Lcom/market2345/base/asynctask/PoolAsyncTask;->onCancelled()V

    .line 399
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "result":Ljava/lang/Object;, "TResult;"
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 351
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    return-void
.end method

.method protected final varargs publishProgress([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    .prologue
    .line 615
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask;, "Lcom/market2345/base/asynctask/PoolAsyncTask<TParams;TProgress;TResult;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TProgress;"
    invoke-virtual {p0}, Lcom/market2345/base/asynctask/PoolAsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    sget-object v0, Lcom/market2345/base/asynctask/PoolAsyncTask;->sHandler:Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;

    const/4 v1, 0x2

    new-instance v2, Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;

    invoke-direct {v2, p0, p1}, Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;-><init>(Lcom/market2345/base/asynctask/PoolAsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 619
    :cond_0
    return-void
.end method
