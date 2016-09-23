.class public final Lcom/squareup/leakcanary/RefWatcher;
.super Ljava/lang/Object;
.source "RefWatcher.java"


# static fields
.field public static final DISABLED:Lcom/squareup/leakcanary/RefWatcher;


# instance fields
.field private final debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

.field private final gcTrigger:Lcom/squareup/leakcanary/GcTrigger;

.field private final heapDumper:Lcom/squareup/leakcanary/HeapDumper;

.field private final heapdumpListener:Lcom/squareup/leakcanary/HeapDump$Listener;

.field private final queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final retainedKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final watchExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 36
    new-instance v0, Lcom/squareup/leakcanary/RefWatcher;

    new-instance v1, Lcom/squareup/leakcanary/RefWatcher$1;

    invoke-direct {v1}, Lcom/squareup/leakcanary/RefWatcher$1;-><init>()V

    new-instance v2, Lcom/squareup/leakcanary/RefWatcher$2;

    invoke-direct {v2}, Lcom/squareup/leakcanary/RefWatcher$2;-><init>()V

    sget-object v3, Lcom/squareup/leakcanary/GcTrigger;->DEFAULT:Lcom/squareup/leakcanary/GcTrigger;

    new-instance v4, Lcom/squareup/leakcanary/RefWatcher$3;

    invoke-direct {v4}, Lcom/squareup/leakcanary/RefWatcher$3;-><init>()V

    new-instance v5, Lcom/squareup/leakcanary/RefWatcher$4;

    invoke-direct {v5}, Lcom/squareup/leakcanary/RefWatcher$4;-><init>()V

    invoke-direct/range {v0 .. v5}, Lcom/squareup/leakcanary/RefWatcher;-><init>(Ljava/util/concurrent/Executor;Lcom/squareup/leakcanary/DebuggerControl;Lcom/squareup/leakcanary/GcTrigger;Lcom/squareup/leakcanary/HeapDumper;Lcom/squareup/leakcanary/HeapDump$Listener;)V

    sput-object v0, Lcom/squareup/leakcanary/RefWatcher;->DISABLED:Lcom/squareup/leakcanary/RefWatcher;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/squareup/leakcanary/DebuggerControl;Lcom/squareup/leakcanary/GcTrigger;Lcom/squareup/leakcanary/HeapDumper;Lcom/squareup/leakcanary/HeapDump$Listener;)V
    .locals 1
    .param p1, "watchExecutor"    # Ljava/util/concurrent/Executor;
    .param p2, "debuggerControl"    # Lcom/squareup/leakcanary/DebuggerControl;
    .param p3, "gcTrigger"    # Lcom/squareup/leakcanary/GcTrigger;
    .param p4, "heapDumper"    # Lcom/squareup/leakcanary/HeapDumper;
    .param p5, "heapdumpListener"    # Lcom/squareup/leakcanary/HeapDump$Listener;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "watchExecutor"

    invoke-static {p1, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->watchExecutor:Ljava/util/concurrent/Executor;

    .line 64
    const-string v0, "debuggerControl"

    invoke-static {p2, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/DebuggerControl;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

    .line 65
    const-string v0, "gcTrigger"

    invoke-static {p3, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/GcTrigger;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->gcTrigger:Lcom/squareup/leakcanary/GcTrigger;

    .line 66
    const-string v0, "heapDumper"

    invoke-static {p4, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/HeapDumper;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->heapDumper:Lcom/squareup/leakcanary/HeapDumper;

    .line 67
    const-string v0, "heapdumpListener"

    invoke-static {p5, v0}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/HeapDump$Listener;

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->heapdumpListener:Lcom/squareup/leakcanary/HeapDump$Listener;

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->retainedKeys:Ljava/util/Set;

    .line 69
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 70
    return-void
.end method

.method private gone(Lcom/squareup/leakcanary/KeyedWeakReference;)Z
    .locals 2
    .param p1, "reference"    # Lcom/squareup/leakcanary/KeyedWeakReference;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/squareup/leakcanary/RefWatcher;->retainedKeys:Ljava/util/Set;

    iget-object v1, p1, Lcom/squareup/leakcanary/KeyedWeakReference;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeWeaklyReachableReferences()V
    .locals 3

    .prologue
    .line 140
    :goto_0
    iget-object v1, p0, Lcom/squareup/leakcanary/RefWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lcom/squareup/leakcanary/KeyedWeakReference;

    .local v0, "ref":Lcom/squareup/leakcanary/KeyedWeakReference;
    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/squareup/leakcanary/RefWatcher;->retainedKeys:Ljava/util/Set;

    iget-object v2, v0, Lcom/squareup/leakcanary/KeyedWeakReference;->key:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 143
    :cond_0
    return-void
.end method


# virtual methods
.method ensureGone(Lcom/squareup/leakcanary/KeyedWeakReference;J)V
    .locals 18
    .param p1, "reference"    # Lcom/squareup/leakcanary/KeyedWeakReference;
    .param p2, "watchStartNanoTime"    # J

    .prologue
    .line 106
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 108
    .local v12, "gcStartNanoTime":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v4, v12, p2

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 109
    .local v6, "watchDurationMs":J
    invoke-direct/range {p0 .. p0}, Lcom/squareup/leakcanary/RefWatcher;->removeWeaklyReachableReferences()V

    .line 110
    invoke-direct/range {p0 .. p1}, Lcom/squareup/leakcanary/RefWatcher;->gone(Lcom/squareup/leakcanary/KeyedWeakReference;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/leakcanary/RefWatcher;->debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

    invoke-interface {v2}, Lcom/squareup/leakcanary/DebuggerControl;->isDebuggerAttached()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/leakcanary/RefWatcher;->gcTrigger:Lcom/squareup/leakcanary/GcTrigger;

    invoke-interface {v2}, Lcom/squareup/leakcanary/GcTrigger;->runGc()V

    .line 114
    invoke-direct/range {p0 .. p0}, Lcom/squareup/leakcanary/RefWatcher;->removeWeaklyReachableReferences()V

    .line 115
    invoke-direct/range {p0 .. p1}, Lcom/squareup/leakcanary/RefWatcher;->gone(Lcom/squareup/leakcanary/KeyedWeakReference;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 116
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    .line 117
    .local v14, "startDumpHeap":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    sub-long v4, v14, v12

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    .line 119
    .local v8, "gcDurationMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/squareup/leakcanary/RefWatcher;->heapDumper:Lcom/squareup/leakcanary/HeapDumper;

    invoke-interface {v2}, Lcom/squareup/leakcanary/HeapDumper;->dumpHeap()Ljava/io/File;

    move-result-object v3

    .line 121
    .local v3, "heapDumpFile":Ljava/io/File;
    if-eqz v3, :cond_0

    .line 125
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v14

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v10

    .line 126
    .local v10, "heapDumpDurationMs":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/squareup/leakcanary/RefWatcher;->heapdumpListener:Lcom/squareup/leakcanary/HeapDump$Listener;

    move-object/from16 v16, v0

    new-instance v2, Lcom/squareup/leakcanary/HeapDump;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/squareup/leakcanary/KeyedWeakReference;->key:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/squareup/leakcanary/KeyedWeakReference;->name:Ljava/lang/String;

    invoke-direct/range {v2 .. v11}, Lcom/squareup/leakcanary/HeapDump;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJJ)V

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Lcom/squareup/leakcanary/HeapDump$Listener;->analyze(Lcom/squareup/leakcanary/HeapDump;)V

    goto :goto_0
.end method

.method public watch(Ljava/lang/Object;)V
    .locals 1
    .param p1, "watchedReference"    # Ljava/lang/Object;

    .prologue
    .line 77
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/squareup/leakcanary/RefWatcher;->watch(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public watch(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .param p1, "watchedReference"    # Ljava/lang/Object;
    .param p2, "referenceName"    # Ljava/lang/String;

    .prologue
    .line 87
    const-string v4, "watchedReference"

    invoke-static {p1, v4}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    const-string v4, "referenceName"

    invoke-static {p2, v4}, Lcom/squareup/leakcanary/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    iget-object v4, p0, Lcom/squareup/leakcanary/RefWatcher;->debuggerControl:Lcom/squareup/leakcanary/DebuggerControl;

    invoke-interface {v4}, Lcom/squareup/leakcanary/DebuggerControl;->isDebuggerAttached()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 103
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 93
    .local v2, "watchStartNanoTime":J
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/squareup/leakcanary/RefWatcher;->retainedKeys:Ljava/util/Set;

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/squareup/leakcanary/KeyedWeakReference;

    iget-object v4, p0, Lcom/squareup/leakcanary/RefWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v0, p2, v4}, Lcom/squareup/leakcanary/KeyedWeakReference;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ref/ReferenceQueue;)V

    .line 98
    .local v1, "reference":Lcom/squareup/leakcanary/KeyedWeakReference;
    iget-object v4, p0, Lcom/squareup/leakcanary/RefWatcher;->watchExecutor:Ljava/util/concurrent/Executor;

    new-instance v5, Lcom/squareup/leakcanary/RefWatcher$5;

    invoke-direct {v5, p0, v1, v2, v3}, Lcom/squareup/leakcanary/RefWatcher$5;-><init>(Lcom/squareup/leakcanary/RefWatcher;Lcom/squareup/leakcanary/KeyedWeakReference;J)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
