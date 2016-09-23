.class Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;
.super Landroid/os/Handler;
.source "PoolAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/base/asynctask/PoolAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/base/asynctask/PoolAsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/base/asynctask/PoolAsyncTask$1;

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/market2345/base/asynctask/PoolAsyncTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 634
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;

    .line 635
    .local v0, "result":Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 644
    :goto_0
    return-void

    .line 638
    :pswitch_0
    iget-object v1, v0, Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;->mTask:Lcom/market2345/base/asynctask/PoolAsyncTask;

    iget-object v2, v0, Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    # invokes: Lcom/market2345/base/asynctask/PoolAsyncTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/market2345/base/asynctask/PoolAsyncTask;->access$600(Lcom/market2345/base/asynctask/PoolAsyncTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 641
    :pswitch_1
    iget-object v1, v0, Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;->mTask:Lcom/market2345/base/asynctask/PoolAsyncTask;

    iget-object v2, v0, Lcom/market2345/base/asynctask/PoolAsyncTask$AsyncTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/market2345/base/asynctask/PoolAsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 635
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
