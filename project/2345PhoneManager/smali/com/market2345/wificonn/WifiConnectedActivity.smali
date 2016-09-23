.class public Lcom/market2345/wificonn/WifiConnectedActivity;
.super Landroid/app/Activity;
.source "WifiConnectedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/market2345/datacenter/MarketObserver;


# instance fields
.field private mSession:Lcom/market2345/datacenter/DataCenterObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnectedActivity;->finish()V

    .line 89
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 84
    :goto_0
    :pswitch_0
    return-void

    .line 69
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/market2345/wificonn/WifiReceivedFilesActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/market2345/wificonn/WifiConnectedActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    :pswitch_2
    :try_start_0
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getWifiStatus()Lcom/market2345/datacenter/WifiConnectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/datacenter/WifiConnectionStatus;->getCheckBindStstus()Lcom/phonemanager2345/zhushou/CheckBindStstus;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-interface {v1, v2}, Lcom/phonemanager2345/zhushou/CheckBindStstus;->flushCommand(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "notification"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/market2345/home/HomeUtils;->startHomeClearTop(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x7f09041f
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v3, 0x7f0300d5

    invoke-virtual {p0, v3}, Lcom/market2345/wificonn/WifiConnectedActivity;->setContentView(I)V

    .line 38
    const v3, 0x7f090420

    invoke-virtual {p0, v3}, Lcom/market2345/wificonn/WifiConnectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 40
    .local v0, "connectedSuccess":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnectedActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 41
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "conn_mode"

    const v4, 0x7fffffff

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 42
    .local v2, "mode":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 44
    const v3, 0x7f02031c

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 50
    :cond_0
    :goto_0
    const v3, 0x7f09041f

    invoke-virtual {p0, v3}, Lcom/market2345/wificonn/WifiConnectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v3, 0x7f090422

    invoke-virtual {p0, v3}, Lcom/market2345/wificonn/WifiConnectedActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnectedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    iput-object v3, p0, Lcom/market2345/wificonn/WifiConnectedActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    .line 53
    iget-object v3, p0, Lcom/market2345/wificonn/WifiConnectedActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v3, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 54
    return-void

    .line 46
    :cond_1
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 48
    const v3, 0x7f02031b

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 60
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnectedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 61
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "arg0"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 94
    instance-of v1, p2, Landroid/util/Pair;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 96
    check-cast v0, Landroid/util/Pair;

    .line 97
    .local v0, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "pref.wifi.pc.link.status"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnectedActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getConnStatus()I

    move-result v1

    if-gtz v1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/market2345/wificonn/WifiConnectedActivity;->finish()V

    .line 105
    .end local v0    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method
