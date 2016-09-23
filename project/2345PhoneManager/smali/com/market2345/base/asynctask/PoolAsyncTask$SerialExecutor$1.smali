.class Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor$1;
.super Ljava/lang/Object;
.source "PoolAsyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor$1;->this$0:Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;

    iput-object p2, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object v0, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor$1;->this$0:Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;

    invoke-virtual {v0}, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;->scheduleNext()V

    .line 229
    return-void

    .line 227
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor$1;->this$0:Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;

    invoke-virtual {v1}, Lcom/market2345/base/asynctask/PoolAsyncTask$SerialExecutor;->scheduleNext()V

    throw v0
.end method
