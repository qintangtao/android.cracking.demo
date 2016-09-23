.class public Lcom/market2345/wificonn/ShadowActivity;
.super Landroid/app/Activity;
.source "ShadowActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Wakelock"
    }
.end annotation


# instance fields
.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    new-instance v0, Lcom/market2345/wificonn/ShadowActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/wificonn/ShadowActivity$1;-><init>(Lcom/market2345/wificonn/ShadowActivity;)V

    iput-object v0, p0, Lcom/market2345/wificonn/ShadowActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/market2345/wificonn/ShadowActivity;->finish()V

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v1, 0x7f0300b3

    invoke-virtual {p0, v1}, Lcom/market2345/wificonn/ShadowActivity;->setContentView(I)V

    .line 30
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/market2345/wificonn/ShadowActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 31
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "PARTIAL_WAKE_LOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/wificonn/ShadowActivity;->wl:Landroid/os/PowerManager$WakeLock;

    .line 32
    iget-object v1, p0, Lcom/market2345/wificonn/ShadowActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 34
    iget-object v1, p0, Lcom/market2345/wificonn/ShadowActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/market2345/wificonn/ShadowActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 41
    iget-object v0, p0, Lcom/market2345/wificonn/ShadowActivity;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 42
    iget-object v0, p0, Lcom/market2345/wificonn/ShadowActivity;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/market2345/wificonn/ShadowActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 43
    return-void
.end method
