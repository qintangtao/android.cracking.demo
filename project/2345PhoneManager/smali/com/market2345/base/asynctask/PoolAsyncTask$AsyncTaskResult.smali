.class Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;
.super Ljava/lang/Object;
.source "PoolAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/base/asynctask/PoolAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncTaskResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mData:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field

.field final mTask:Lcom/market2345/base/asynctask/PoolAsyncTask;


# direct methods
.method varargs constructor <init>(Lcom/market2345/base/asynctask/PoolAsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/market2345/base/asynctask/PoolAsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/base/asynctask/PoolAsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 656
    .local p0, "this":Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;, "Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 657
    iput-object p1, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;->mTask:Lcom/market2345/base/asynctask/PoolAsyncTask;

    .line 658
    iput-object p2, p0, Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    .line 659
    return-void
.end method
