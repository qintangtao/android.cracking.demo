.class public Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoResidentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/autocheck/AutoResidentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoResidentReceiver"
.end annotation


# static fields
.field public static final ACTION_APPNEEDUPDATE:Ljava/lang/String; = "com.2345.2345marketneedupdate.fromapplication"

.field public static final ACTION_APPSNEEDUPDATE:Ljava/lang/String; = "com.2345.appsneedupdate.fromapplication"

.field public static final ACTION_NEWAPPADDED:Ljava/lang/String; = "com.2345.newappadded"


# instance fields
.field public final actions:[Ljava/lang/String;

.field final synthetic this$0:Lcom/market2345/autocheck/AutoResidentService;


# direct methods
.method public constructor <init>(Lcom/market2345/autocheck/AutoResidentService;)V
    .locals 3

    .prologue
    .line 313
    iput-object p1, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 321
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.UMS_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.intent.action.UMS_DISCONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.2345.appsneedupdate.fromapplication"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.2345.newappadded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.2345.2345marketneedupdate.fromapplication"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->actions:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 327
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.intent.action.UMS_CONNECTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    iget-object v4, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    # getter for: Lcom/market2345/autocheck/AutoResidentService;->notifiManger:Lcom/market2345/notificationmanage/NotificationManager2345;
    invoke-static {v4}, Lcom/market2345/autocheck/AutoResidentService;->access$100(Lcom/market2345/autocheck/AutoResidentService;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyUSBConnection()V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 331
    :cond_1
    const-string v4, "android.intent.action.UMS_DISCONNECTED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 332
    iget-object v4, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    # getter for: Lcom/market2345/autocheck/AutoResidentService;->notifiManger:Lcom/market2345/notificationmanage/NotificationManager2345;
    invoke-static {v4}, Lcom/market2345/autocheck/AutoResidentService;->access$100(Lcom/market2345/autocheck/AutoResidentService;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelUSBConnectionNotification()V

    goto :goto_0

    .line 333
    :cond_2
    const-string v4, "com.2345.appsneedupdate.fromapplication"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 334
    const-string v4, "appscount"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 335
    .local v1, "count":I
    if-lez v1, :cond_0

    .line 336
    iget-object v4, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    # getter for: Lcom/market2345/autocheck/AutoResidentService;->notifiManger:Lcom/market2345/notificationmanage/NotificationManager2345;
    invoke-static {v4}, Lcom/market2345/autocheck/AutoResidentService;->access$100(Lcom/market2345/autocheck/AutoResidentService;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyAppsUpdate(I)V

    goto :goto_0

    .line 338
    .end local v1    # "count":I
    :cond_3
    const-string v4, "com.2345.newappadded"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 340
    const-string v4, "newapppackge"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 341
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver$1;

    invoke-direct {v4, p0, v3}, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver$1;-><init>(Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;Ljava/lang/String;)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-static {p1, v4, v5}, Lcom/market2345/http/MarketAPI;->checkUpgrade(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 362
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_4
    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 363
    iget-object v4, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-virtual {v4}, Lcom/market2345/autocheck/AutoResidentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/common/util/ApplicationUtils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 364
    .local v2, "net":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 365
    iget-object v4, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    # getter for: Lcom/market2345/autocheck/AutoResidentService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/market2345/autocheck/AutoResidentService;->access$400(Lcom/market2345/autocheck/AutoResidentService;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
