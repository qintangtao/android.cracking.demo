.class Lcom/market2345/datacenter/WifiConnectionStatus$1$1;
.super Lcom/phonemanager2345/zhushou/BindstatusChanged$Stub;
.source "WifiConnectionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/datacenter/WifiConnectionStatus$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/datacenter/WifiConnectionStatus$1;


# direct methods
.method constructor <init>(Lcom/market2345/datacenter/WifiConnectionStatus$1;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/market2345/datacenter/WifiConnectionStatus$1$1;->this$1:Lcom/market2345/datacenter/WifiConnectionStatus$1;

    invoke-direct {p0}, Lcom/phonemanager2345/zhushou/BindstatusChanged$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public statusChanged(I)V
    .locals 4
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    .line 66
    iget-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus$1$1;->this$1:Lcom/market2345/datacenter/WifiConnectionStatus$1;

    iget-object v0, v0, Lcom/market2345/datacenter/WifiConnectionStatus$1;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    invoke-virtual {v0, p1}, Lcom/market2345/datacenter/WifiConnectionStatus;->setConnStatus(I)V

    .line 68
    const-string v0, "statusChanged"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "statusChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus$1$1;->this$1:Lcom/market2345/datacenter/WifiConnectionStatus$1;

    iget-object v0, v0, Lcom/market2345/datacenter/WifiConnectionStatus$1;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    # getter for: Lcom/market2345/datacenter/WifiConnectionStatus;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/datacenter/WifiConnectionStatus;->access$000(Lcom/market2345/datacenter/WifiConnectionStatus;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    if-nez p1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus$1$1;->this$1:Lcom/market2345/datacenter/WifiConnectionStatus$1;

    iget-object v0, v0, Lcom/market2345/datacenter/WifiConnectionStatus$1;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    # getter for: Lcom/market2345/datacenter/WifiConnectionStatus;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/datacenter/WifiConnectionStatus;->access$000(Lcom/market2345/datacenter/WifiConnectionStatus;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 73
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/market2345/datacenter/WifiConnectionStatus$1$1;->this$1:Lcom/market2345/datacenter/WifiConnectionStatus$1;

    iget-object v0, v0, Lcom/market2345/datacenter/WifiConnectionStatus$1;->this$0:Lcom/market2345/datacenter/WifiConnectionStatus;

    # getter for: Lcom/market2345/datacenter/WifiConnectionStatus;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/datacenter/WifiConnectionStatus;->access$000(Lcom/market2345/datacenter/WifiConnectionStatus;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
