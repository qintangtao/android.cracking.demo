.class Lcom/market2345/datacenter/WifiConnectionStatus$1;
.super Ljava/lang/Object;
.source "WifiConnectionStatus.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/datacenter/WifiConnectionStatus;->init(Landroid/os/Handler;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private observer:Lcom/phonemanager2345/zhushou/BindstatusChanged;

.field final synthetic this$0:Lcom/market2345/datacenter/WifiConnectionStatus;


# direct methods
.method constructor <init>(Lcom/market2345/datacenter/WifiConnectionStatus;)V
    .locals 1

    .prologue
    .line 60
    iput-object p1, p0, Lcom/market2345/datacenter/WifiConnectionStatus$1;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lcom/market2345/datacenter/WifiConnectionStatus$1$1;

    invoke-direct {v0, p0}, Lcom/market2345/datacenter/WifiConnectionStatus$1$1;-><init>(Lcom/market2345/datacenter/WifiConnectionStatus$1;)V

    iput-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus$1;->observer:Lcom/phonemanager2345/zhushou/BindstatusChanged;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/ComponentName;
    .param p2, "arg1"    # Landroid/os/IBinder;

    .prologue
    .line 86
    const-string v1, "onServiceConnected"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/market2345/datacenter/WifiConnectionStatus$1;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    invoke-static {p2}, Lcom/phonemanager2345/zhushou/CheckBindStstus$Stub;->asInterface(Landroid/os/IBinder;)Lcom/phonemanager2345/zhushou/CheckBindStstus;

    move-result-object v2

    # setter for: Lcom/market2345/datacenter/WifiConnectionStatus;->checkBindStstus:Lcom/phonemanager2345/zhushou/CheckBindStstus;
    invoke-static {v1, v2}, Lcom/market2345/datacenter/WifiConnectionStatus;->access$102(Lcom/market2345/datacenter/WifiConnectionStatus;Lcom/phonemanager2345/zhushou/CheckBindStstus;)Lcom/phonemanager2345/zhushou/CheckBindStstus;

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/market2345/datacenter/WifiConnectionStatus$1;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    # getter for: Lcom/market2345/datacenter/WifiConnectionStatus;->checkBindStstus:Lcom/phonemanager2345/zhushou/CheckBindStstus;
    invoke-static {v1}, Lcom/market2345/datacenter/WifiConnectionStatus;->access$100(Lcom/market2345/datacenter/WifiConnectionStatus;)Lcom/phonemanager2345/zhushou/CheckBindStstus;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/datacenter/WifiConnectionStatus$1;->observer:Lcom/phonemanager2345/zhushou/BindstatusChanged;

    invoke-interface {v1, v2}, Lcom/phonemanager2345/zhushou/CheckBindStstus;->checkStstus(Lcom/phonemanager2345/zhushou/BindstatusChanged;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 92
    iget-object v1, p0, Lcom/market2345/datacenter/WifiConnectionStatus$1;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    # getter for: Lcom/market2345/datacenter/WifiConnectionStatus;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/market2345/datacenter/WifiConnectionStatus;->access$000(Lcom/market2345/datacenter/WifiConnectionStatus;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus$1;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    # getter for: Lcom/market2345/datacenter/WifiConnectionStatus;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/datacenter/WifiConnectionStatus;->access$000(Lcom/market2345/datacenter/WifiConnectionStatus;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 82
    return-void
.end method
