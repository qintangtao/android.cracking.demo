.class Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "CleanAccelerationBallView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/customview/download/CleanAccelerationBallView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/customview/download/CleanAccelerationBallView;


# direct methods
.method private constructor <init>(Lcom/market2345/customview/download/CleanAccelerationBallView;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;->this$0:Lcom/market2345/customview/download/CleanAccelerationBallView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/customview/download/CleanAccelerationBallView;Lcom/market2345/customview/download/CleanAccelerationBallView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/customview/download/CleanAccelerationBallView;
    .param p2, "x1"    # Lcom/market2345/customview/download/CleanAccelerationBallView$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;-><init>(Lcom/market2345/customview/download/CleanAccelerationBallView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const-wide/16 v4, 0x0

    .line 155
    iget-object v6, p0, Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;->this$0:Lcom/market2345/customview/download/CleanAccelerationBallView;

    monitor-enter v6

    .line 156
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 157
    .local v2, "start":J
    iget-object v7, p0, Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;->this$0:Lcom/market2345/customview/download/CleanAccelerationBallView;

    # invokes: Lcom/market2345/customview/download/CleanAccelerationBallView;->calculatePath()V
    invoke-static {v7}, Lcom/market2345/customview/download/CleanAccelerationBallView;->access$000(Lcom/market2345/customview/download/CleanAccelerationBallView;)V

    .line 158
    iget-object v7, p0, Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;->this$0:Lcom/market2345/customview/download/CleanAccelerationBallView;

    invoke-virtual {v7}, Lcom/market2345/customview/download/CleanAccelerationBallView;->invalidate()V

    .line 159
    const-wide/16 v8, 0x10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v2

    sub-long v0, v8, v10

    .line 160
    .local v0, "gap":J
    iget-object v7, p0, Lcom/market2345/customview/download/CleanAccelerationBallView$RefreshProgressRunnable;->this$0:Lcom/market2345/customview/download/CleanAccelerationBallView;

    cmp-long v8, v0, v4

    if-gez v8, :cond_0

    move-wide v0, v4

    .end local v0    # "gap":J
    :cond_0
    invoke-virtual {v7, p0, v0, v1}, Lcom/market2345/customview/download/CleanAccelerationBallView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 161
    monitor-exit v6

    .line 162
    return-void

    .line 161
    .end local v2    # "start":J
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
