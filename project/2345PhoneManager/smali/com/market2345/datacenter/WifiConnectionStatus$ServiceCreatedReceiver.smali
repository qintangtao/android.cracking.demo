.class Lcom/market2345/datacenter/WifiConnectionStatus$ServiceCreatedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/datacenter/WifiConnectionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceCreatedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/datacenter/WifiConnectionStatus;


# direct methods
.method constructor <init>(Lcom/market2345/datacenter/WifiConnectionStatus;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/market2345/datacenter/WifiConnectionStatus$ServiceCreatedReceiver;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    const-string v0, "com.market2345"

    invoke-static {}, Lcom/market2345/MarketApplication;->getProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus$ServiceCreatedReceiver;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    # getter for: Lcom/market2345/datacenter/WifiConnectionStatus;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/market2345/datacenter/WifiConnectionStatus;->access$200(Lcom/market2345/datacenter/WifiConnectionStatus;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/market2345/datacenter/WifiConnectionStatus$ServiceCreatedReceiver;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    # getter for: Lcom/market2345/datacenter/WifiConnectionStatus;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/datacenter/WifiConnectionStatus;->access$200(Lcom/market2345/datacenter/WifiConnectionStatus;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/market2345/datacenter/WifiConnectionStatus$ServiceCreatedReceiver;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    # getter for: Lcom/market2345/datacenter/WifiConnectionStatus;->paramDao:Landroid/content/ServiceConnection;
    invoke-static {v2}, Lcom/market2345/datacenter/WifiConnectionStatus;->access$300(Lcom/market2345/datacenter/WifiConnectionStatus;)Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 132
    :cond_0
    return-void
.end method
