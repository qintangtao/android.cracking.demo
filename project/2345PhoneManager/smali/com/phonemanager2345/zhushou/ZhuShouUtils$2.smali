.class final Lcom/phonemanager2345/zhushou/ZhuShouUtils$2;
.super Ljava/lang/Object;
.source "ZhuShouUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonemanager2345/zhushou/ZhuShouUtils;->sendWifiDatapacket(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$ip:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ZhuShouUtils$2;->val$ip:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 625
    const/4 v2, 0x0

    .line 627
    .local v2, "ds":Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 628
    .end local v2    # "ds":Ljava/net/DatagramSocket;
    .local v3, "ds":Ljava/net/DatagramSocket;
    :goto_0
    :try_start_1
    sget-boolean v9, Lcom/phonemanager2345/zhushou/CommandHander;->stopSending:Z

    if-nez v9, :cond_2

    .line 629
    new-instance v5, Lcom/google/gson/JsonObject;

    invoke-direct {v5}, Lcom/google/gson/JsonObject;-><init>()V

    .line 630
    .local v5, "object":Lcom/google/gson/JsonObject;
    const-string v9, "versioncode"

    const/16 v10, 0x26

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 631
    const-string v9, "model"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v9

    const-string v10, "phone"

    invoke-virtual {v9, v10}, Lcom/market2345/MarketApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 634
    .local v8, "tm":Landroid/telephony/TelephonyManager;
    const-string v9, "imei"

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v9, "brand"

    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v9, v10}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    invoke-virtual {v5}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v7

    .line 637
    .local v7, "result":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 638
    .local v1, "data":[B
    iget-object v9, p0, Lcom/phonemanager2345/zhushou/ZhuShouUtils$2;->val$ip:Ljava/lang/String;

    invoke-static {v9}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 639
    .local v0, "address":Ljava/net/InetAddress;
    new-instance v6, Ljava/net/DatagramPacket;

    array-length v9, v1

    const/16 v10, 0xd5d

    invoke-direct {v6, v1, v9, v0, v10}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 640
    .local v6, "packet":Ljava/net/DatagramPacket;
    invoke-virtual {v3, v6}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 642
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v1    # "data":[B
    .end local v5    # "object":Lcom/google/gson/JsonObject;
    .end local v6    # "packet":Ljava/net/DatagramPacket;
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 643
    .end local v3    # "ds":Ljava/net/DatagramSocket;
    .restart local v2    # "ds":Ljava/net/DatagramSocket;
    .local v4, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 644
    if-eqz v2, :cond_0

    .line 645
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 648
    :cond_0
    if-eqz v2, :cond_1

    .line 649
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    .line 652
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    const/4 v9, 0x0

    sput-boolean v9, Lcom/phonemanager2345/zhushou/CommandHander;->stopSending:Z

    .line 653
    return-void

    .line 648
    .end local v2    # "ds":Ljava/net/DatagramSocket;
    .restart local v3    # "ds":Ljava/net/DatagramSocket;
    :cond_2
    if-eqz v3, :cond_4

    .line 649
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    move-object v2, v3

    .end local v3    # "ds":Ljava/net/DatagramSocket;
    .restart local v2    # "ds":Ljava/net/DatagramSocket;
    goto :goto_2

    .line 648
    :catchall_0
    move-exception v9

    :goto_3
    if-eqz v2, :cond_3

    .line 649
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V

    :cond_3
    throw v9

    .line 648
    .end local v2    # "ds":Ljava/net/DatagramSocket;
    .restart local v3    # "ds":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "ds":Ljava/net/DatagramSocket;
    .restart local v2    # "ds":Ljava/net/DatagramSocket;
    goto :goto_3

    .line 642
    :catch_1
    move-exception v4

    goto :goto_1

    .end local v2    # "ds":Ljava/net/DatagramSocket;
    .restart local v3    # "ds":Ljava/net/DatagramSocket;
    :cond_4
    move-object v2, v3

    .end local v3    # "ds":Ljava/net/DatagramSocket;
    .restart local v2    # "ds":Ljava/net/DatagramSocket;
    goto :goto_2
.end method
