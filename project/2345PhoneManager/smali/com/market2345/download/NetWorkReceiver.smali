.class public Lcom/market2345/download/NetWorkReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetWorkReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 29
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 31
    .local v1, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 33
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_2

    .line 34
    :cond_0
    invoke-static {p1}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/download/DownloadManager;->onNetWorkDisconnect()V

    .line 39
    .end local v1    # "connManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :goto_0
    return-void

    .line 35
    .restart local v1    # "connManager":Landroid/net/ConnectivityManager;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 36
    invoke-static {p1}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/market2345/download/DownloadManager;->onConnectWifi()V

    goto :goto_0
.end method
