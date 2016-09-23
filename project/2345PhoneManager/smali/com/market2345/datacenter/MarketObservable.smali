.class public Lcom/market2345/datacenter/MarketObservable;
.super Ljava/lang/Object;
.source "MarketObservable.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private loop:Z

.field observers:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/datacenter/MarketObserver;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/market2345/datacenter/MarketObservable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/datacenter/MarketObservable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/datacenter/MarketObservable;->loop:Z

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/market2345/datacenter/MarketObservable;->observers:Ljava/util/LinkedList;

    .line 32
    return-void
.end method


# virtual methods
.method public addObserver(Lcom/market2345/datacenter/MarketObserver;)V
    .locals 2
    .param p1, "observer"    # Lcom/market2345/datacenter/MarketObserver;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "observer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lcom/market2345/datacenter/MarketObservable;->loop:Z

    if-eqz v0, :cond_1

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "don\'t call addObserver() in update() method"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 49
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/market2345/datacenter/MarketObservable;->observers:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 50
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    return-void
.end method

.method public countObservers()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/market2345/datacenter/MarketObservable;->observers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V
    .locals 4
    .param p1, "observer"    # Lcom/market2345/datacenter/MarketObserver;

    .prologue
    .line 71
    monitor-enter p0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/market2345/datacenter/MarketObservable;->loop:Z

    .line 72
    iget-object v2, p0, Lcom/market2345/datacenter/MarketObservable;->observers:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/market2345/datacenter/MarketObserver;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 74
    .local v1, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/market2345/datacenter/MarketObserver;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 75
    :cond_1
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 76
    sget-object v2, Lcom/market2345/datacenter/MarketObservable;->TAG:Ljava/lang/String;

    const-string v3, "remove because of GC"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 71
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/market2345/datacenter/MarketObserver;>;>;"
    .end local v1    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/market2345/datacenter/MarketObserver;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 82
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/market2345/datacenter/MarketObserver;>;>;"
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/market2345/datacenter/MarketObservable;->loop:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized deleteObservers()V
    .locals 1

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/datacenter/MarketObservable;->observers:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyObservers()V
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/datacenter/MarketObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 103
    return-void
.end method

.method public notifyObservers(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 114
    monitor-enter p0

    .line 115
    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, p0, Lcom/market2345/datacenter/MarketObservable;->loop:Z

    .line 116
    iget-object v3, p0, Lcom/market2345/datacenter/MarketObservable;->observers:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/market2345/datacenter/MarketObserver;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 118
    .local v2, "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/market2345/datacenter/MarketObserver;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/datacenter/MarketObserver;

    .line 119
    .local v1, "observer":Lcom/market2345/datacenter/MarketObserver;
    if-nez v1, :cond_0

    .line 120
    sget-object v3, Lcom/market2345/datacenter/MarketObservable;->TAG:Ljava/lang/String;

    const-string v4, "remove because of GC"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 127
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/market2345/datacenter/MarketObserver;>;>;"
    .end local v1    # "observer":Lcom/market2345/datacenter/MarketObserver;
    .end local v2    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/market2345/datacenter/MarketObserver;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 123
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/market2345/datacenter/MarketObserver;>;>;"
    .restart local v1    # "observer":Lcom/market2345/datacenter/MarketObserver;
    .restart local v2    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/market2345/datacenter/MarketObserver;>;"
    :cond_0
    :try_start_1
    invoke-interface {v1, p0, p1}, Lcom/market2345/datacenter/MarketObserver;->update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V

    goto :goto_0

    .line 126
    .end local v1    # "observer":Lcom/market2345/datacenter/MarketObserver;
    .end local v2    # "reference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/market2345/datacenter/MarketObserver;>;"
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/market2345/datacenter/MarketObservable;->loop:Z

    .line 127
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    return-void
.end method

.method protected setChanged()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    return-void
.end method
