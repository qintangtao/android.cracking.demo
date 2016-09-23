.class public Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonemanager2345/zhushou/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MonitorReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonemanager2345/zhushou/ConnectionService;


# direct methods
.method public constructor <init>(Lcom/phonemanager2345/zhushou/ConnectionService;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 270
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    const-string v2, "plugged"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 274
    .local v1, "plugType":I
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$100(Lcom/phonemanager2345/zhushou/ConnectionService;)Lcom/phonemanager2345/zhushou/BatteryInfo;

    move-result-object v2

    const-string v3, "level"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/phonemanager2345/zhushou/BatteryInfo;->mBatteryLevel:I

    .line 276
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$100(Lcom/phonemanager2345/zhushou/ConnectionService;)Lcom/phonemanager2345/zhushou/BatteryInfo;

    move-result-object v2

    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/phonemanager2345/zhushou/BatteryInfo;->mBatteryScale:I

    .line 277
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$100(Lcom/phonemanager2345/zhushou/ConnectionService;)Lcom/phonemanager2345/zhushou/BatteryInfo;

    move-result-object v2

    const-string v3, "voltage"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/phonemanager2345/zhushou/BatteryInfo;->mBatteryVoltage:I

    .line 278
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$100(Lcom/phonemanager2345/zhushou/ConnectionService;)Lcom/phonemanager2345/zhushou/BatteryInfo;

    move-result-object v2

    const-string v3, "temperature"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/phonemanager2345/zhushou/BatteryInfo;->mBatteryTemperature:I

    .line 280
    packed-switch v1, :pswitch_data_0

    .line 294
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$100(Lcom/phonemanager2345/zhushou/ConnectionService;)Lcom/phonemanager2345/zhushou/BatteryInfo;

    move-result-object v2

    const/4 v3, -0x1

    iput v3, v2, Lcom/phonemanager2345/zhushou/BatteryInfo;->powered:I

    .line 306
    .end local v1    # "plugType":I
    :cond_0
    :goto_0
    return-void

    .line 282
    .restart local v1    # "plugType":I
    :pswitch_0
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$100(Lcom/phonemanager2345/zhushou/ConnectionService;)Lcom/phonemanager2345/zhushou/BatteryInfo;

    move-result-object v2

    iput v5, v2, Lcom/phonemanager2345/zhushou/BatteryInfo;->powered:I

    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$100(Lcom/phonemanager2345/zhushou/ConnectionService;)Lcom/phonemanager2345/zhushou/BatteryInfo;

    move-result-object v2

    const/4 v3, 0x1

    iput v3, v2, Lcom/phonemanager2345/zhushou/BatteryInfo;->powered:I

    goto :goto_0

    .line 288
    :pswitch_2
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$100(Lcom/phonemanager2345/zhushou/ConnectionService;)Lcom/phonemanager2345/zhushou/BatteryInfo;

    move-result-object v2

    const/4 v3, 0x2

    iput v3, v2, Lcom/phonemanager2345/zhushou/BatteryInfo;->powered:I

    goto :goto_0

    .line 291
    :pswitch_3
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->bInfo:Lcom/phonemanager2345/zhushou/BatteryInfo;
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$100(Lcom/phonemanager2345/zhushou/ConnectionService;)Lcom/phonemanager2345/zhushou/BatteryInfo;

    move-result-object v2

    const/4 v3, 0x3

    iput v3, v2, Lcom/phonemanager2345/zhushou/BatteryInfo;->powered:I

    goto :goto_0

    .line 298
    .end local v1    # "plugType":I
    :cond_1
    const-string v2, "com.market2345.serverprocess.created"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V

    # setter for: Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;
    invoke-static {v2, v3}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$202(Lcom/phonemanager2345/zhushou/ConnectionService;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;

    .line 300
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    new-instance v3, Landroid/net/LocalSocketAddress;

    const-string v4, "com.market2345.serverprocess"

    invoke-direct {v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/phonemanager2345/zhushou/ConnectionService;->address:Landroid/net/LocalSocketAddress;
    invoke-static {v2, v3}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$302(Lcom/phonemanager2345/zhushou/ConnectionService;Landroid/net/LocalSocketAddress;)Landroid/net/LocalSocketAddress;

    .line 301
    new-instance v2, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;

    iget-object v3, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    iget-object v4, p0, Lcom/phonemanager2345/zhushou/ConnectionService$MonitorReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->socket:Landroid/net/LocalSocket;
    invoke-static {v4}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$200(Lcom/phonemanager2345/zhushou/ConnectionService;)Landroid/net/LocalSocket;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;-><init>(Lcom/phonemanager2345/zhushou/ConnectionService;Landroid/net/LocalSocket;)V

    invoke-virtual {v2}, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->start()V

    goto :goto_0

    .line 302
    :cond_2
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 303
    invoke-static {}, Lcom/phonemanager2345/zhushou/ZhuShouUtils;->releaseWakeLockByPower()V

    goto :goto_0

    .line 280
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
