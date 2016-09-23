.class final Lcom/google/zxing/client/android/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/InactivityTimer$1;,
        Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;,
        Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityTask:Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;

.field private final powerStatusReceiver:Landroid/content/BroadcastReceiver;

.field private final taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/InactivityTimer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/google/zxing/client/android/InactivityTimer;->activity:Landroid/app/Activity;

    .line 53
    new-instance v0, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;

    invoke-direct {v0}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;-><init>()V

    invoke-virtual {v0}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;->build()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    iput-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    .line 54
    new-instance v0, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/google/zxing/client/android/InactivityTimer;Lcom/google/zxing/client/android/InactivityTimer$1;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    invoke-virtual {p0}, Lcom/google/zxing/client/android/InactivityTimer;->onActivity()V

    .line 56
    return-void
.end method

.method static synthetic access$200(Lcom/google/zxing/client/android/InactivityTimer;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/zxing/client/android/InactivityTimer;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/zxing/client/android/InactivityTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/zxing/client/android/InactivityTimer;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/google/zxing/client/android/InactivityTimer;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method private declared-synchronized cancel()V
    .locals 2

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->inactivityTask:Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;

    .line 80
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    if-eqz v0, :cond_0

    .line 82
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 83
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->inactivityTask:Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    .line 79
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method declared-synchronized onActivity()V
    .locals 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 61
    new-instance v0, Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;-><init>(Lcom/google/zxing/client/android/InactivityTimer;Lcom/google/zxing/client/android/InactivityTimer$1;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->inactivityTask:Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;

    .line 62
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->inactivityTask:Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 68
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 69
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/zxing/client/android/InactivityTimer;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0}, Lcom/google/zxing/client/android/InactivityTimer;->onActivity()V

    .line 75
    return-void
.end method

.method shutdown()V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 90
    return-void
.end method
