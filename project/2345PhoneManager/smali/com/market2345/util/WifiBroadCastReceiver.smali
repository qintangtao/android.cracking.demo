.class public Lcom/market2345/util/WifiBroadCastReceiver;
.super Ljava/lang/Object;
.source "WifiBroadCastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public conti:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/util/WifiBroadCastReceiver;->conti:Z

    return-void
.end method

.method private static getBroadcast()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 26
    const-string v4, "java.net.preferIPv4Stack"

    const-string v5, "true"

    invoke-static {v4, v5}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "niEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 28
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 29
    .local v2, "ni":Ljava/net/NetworkInterface;
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v4

    if-nez v4, :cond_0

    .line 30
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InterfaceAddress;

    .line 31
    .local v1, "interfaceAddress":Ljava/net/InterfaceAddress;
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 32
    invoke-virtual {v1}, Ljava/net/InterfaceAddress;->getBroadcast()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 37
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "interfaceAddress":Ljava/net/InterfaceAddress;
    .end local v2    # "ni":Ljava/net/NetworkInterface;
    :goto_0
    return-object v4

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 44
    const/4 v4, 0x0

    .line 51
    .local v4, "ds":Ljava/net/DatagramSocket;
    :try_start_0
    new-instance v5, Ljava/net/DatagramSocket;

    const/16 v14, 0x283c

    invoke-direct {v5, v14}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .end local v4    # "ds":Ljava/net/DatagramSocket;
    .local v5, "ds":Ljava/net/DatagramSocket;
    const/16 v14, 0x400

    :try_start_1
    new-array v1, v14, [B

    .line 55
    .local v1, "buf":[B
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/market2345/util/WifiBroadCastReceiver;->conti:Z

    if-eqz v14, :cond_2

    .line 56
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v14, v1

    invoke-direct {v3, v1, v14}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 57
    .local v3, "datagramPacket":Ljava/net/DatagramPacket;
    invoke-virtual {v5, v3}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 58
    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v14

    new-array v8, v14, [B

    .line 59
    .local v8, "message":[B
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getLength()I

    move-result v16

    move/from16 v0, v16

    invoke-static {v1, v14, v8, v15, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 61
    .local v9, "object":Lcom/google/gson/JsonObject;
    const-string v14, "versioncode"

    const/16 v15, 0x26

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v14, "model"

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v14

    const-string v15, "phone"

    invoke-virtual {v14, v15}, Lcom/market2345/MarketApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 65
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    const-string v14, "imei"

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v14, "brand"

    sget-object v15, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v9, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v14

    const-string v15, "wifi"

    invoke-virtual {v14, v15}, Lcom/market2345/MarketApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiManager;

    .line 68
    .local v13, "wm":Landroid/net/wifi/WifiManager;
    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v14

    invoke-static {v14}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v7

    .line 69
    .local v7, "ipAddress":Ljava/lang/String;
    const-string v14, "ip"

    invoke-virtual {v9, v14, v7}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v14, "port"

    const/16 v15, 0x2c68

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v14, v15}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 71
    invoke-virtual {v9}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v11

    .line 72
    .local v11, "result":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 73
    .local v2, "data":[B
    new-instance v10, Ljava/net/DatagramPacket;

    array-length v14, v2

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v15

    invoke-virtual {v3}, Ljava/net/DatagramPacket;->getPort()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v10, v2, v14, v15, v0}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 75
    .local v10, "packet":Ljava/net/DatagramPacket;
    invoke-virtual {v5, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 76
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v14

    new-instance v15, Landroid/content/Intent;

    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v16

    const-class v17, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-direct/range {v15 .. v17}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v14, v15}, Lcom/market2345/MarketApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_0

    .line 79
    .end local v1    # "buf":[B
    .end local v2    # "data":[B
    .end local v3    # "datagramPacket":Ljava/net/DatagramPacket;
    .end local v7    # "ipAddress":Ljava/lang/String;
    .end local v8    # "message":[B
    .end local v9    # "object":Lcom/google/gson/JsonObject;
    .end local v10    # "packet":Ljava/net/DatagramPacket;
    .end local v11    # "result":Ljava/lang/String;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    .end local v13    # "wm":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v6

    move-object v4, v5

    .line 80
    .end local v5    # "ds":Ljava/net/DatagramSocket;
    .restart local v4    # "ds":Ljava/net/DatagramSocket;
    .local v6, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    if-eqz v4, :cond_0

    .line 82
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    :cond_0
    if-eqz v4, :cond_1

    .line 86
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    .line 89
    .end local v6    # "e":Ljava/io/IOException;
    :cond_1
    :goto_2
    return-void

    .line 85
    .end local v4    # "ds":Ljava/net/DatagramSocket;
    .restart local v1    # "buf":[B
    .restart local v5    # "ds":Ljava/net/DatagramSocket;
    :cond_2
    if-eqz v5, :cond_4

    .line 86
    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    move-object v4, v5

    .end local v5    # "ds":Ljava/net/DatagramSocket;
    .restart local v4    # "ds":Ljava/net/DatagramSocket;
    goto :goto_2

    .line 85
    .end local v1    # "buf":[B
    :catchall_0
    move-exception v14

    :goto_3
    if-eqz v4, :cond_3

    .line 86
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    :cond_3
    throw v14

    .line 85
    .end local v4    # "ds":Ljava/net/DatagramSocket;
    .restart local v5    # "ds":Ljava/net/DatagramSocket;
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5    # "ds":Ljava/net/DatagramSocket;
    .restart local v4    # "ds":Ljava/net/DatagramSocket;
    goto :goto_3

    .line 79
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v4    # "ds":Ljava/net/DatagramSocket;
    .restart local v1    # "buf":[B
    .restart local v5    # "ds":Ljava/net/DatagramSocket;
    :cond_4
    move-object v4, v5

    .end local v5    # "ds":Ljava/net/DatagramSocket;
    .restart local v4    # "ds":Ljava/net/DatagramSocket;
    goto :goto_2
.end method
