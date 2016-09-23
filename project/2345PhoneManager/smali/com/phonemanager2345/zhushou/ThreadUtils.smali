.class public Lcom/phonemanager2345/zhushou/ThreadUtils;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phonemanager2345/zhushou/ThreadUtils$DefaultThreadFactory;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadUtils"

.field private static executor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/phonemanager2345/zhushou/ThreadUtils;->executor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 60
    invoke-static {}, Lcom/phonemanager2345/zhushou/ThreadUtils;->prepare()V

    .line 61
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadUtils;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void
.end method

.method public static declared-synchronized prepare()V
    .locals 3

    .prologue
    .line 25
    const-class v1, Lcom/phonemanager2345/zhushou/ThreadUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadUtils;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadUtils;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    const-class v0, Lcom/phonemanager2345/zhushou/ThreadUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ThreadUtils prepare"

    invoke-static {v0, v2}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/phonemanager2345/zhushou/ThreadUtils;->executor:Ljava/util/concurrent/ExecutorService;

    .line 30
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/phonemanager2345/zhushou/ThreadUtils;->executor:Ljava/util/concurrent/ExecutorService;

    .line 32
    const-class v0, Lcom/phonemanager2345/zhushou/ThreadUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ThreadUtils prepared"

    invoke-static {v0, v2}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_1
    monitor-exit v1

    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized shutdown()V
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/phonemanager2345/zhushou/ThreadUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadUtils;->executor:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 44
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadUtils;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadUtils;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 48
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/phonemanager2345/zhushou/ThreadUtils;->executor:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    monitor-exit v1

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "task":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<*>;"
    sget-object v0, Lcom/phonemanager2345/zhushou/ThreadUtils;->executor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
