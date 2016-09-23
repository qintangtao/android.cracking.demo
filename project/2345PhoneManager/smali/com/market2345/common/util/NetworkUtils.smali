.class public Lcom/market2345/common/util/NetworkUtils;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLine1Number(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 240
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 241
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLocalIpAddress()Ljava/lang/String;
    .locals 6

    .prologue
    .line 210
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 211
    .local v0, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/NetworkInterface;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 213
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 214
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 215
    .local v1, "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 217
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 220
    .local v3, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v5

    if-nez v5, :cond_1

    .line 222
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 233
    .end local v1    # "enumIpAddr":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/InetAddress;>;"
    .end local v3    # "inetAddress":Ljava/net/InetAddress;
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    :goto_0
    return-object v5

    .line 229
    :catch_0
    move-exception v2

    .line 231
    .local v2, "ex":Ljava/net/SocketException;
    invoke-virtual {v2}, Ljava/net/SocketException;->printStackTrace()V

    .line 233
    .end local v2    # "ex":Ljava/net/SocketException;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 98
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 118
    :cond_0
    const/4 v3, -0x1

    :goto_0
    return v3

    .line 104
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 105
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 107
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 109
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 112
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    goto :goto_0

    .line 107
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getNetworkType(Landroid/content/Context;Z)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alert"    # Z

    .prologue
    .line 155
    invoke-static {p0, p1}, Lcom/market2345/common/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    invoke-static {p0}, Lcom/market2345/common/util/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    .line 161
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isMobileNetwork(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    invoke-static {p0}, Lcom/market2345/common/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/market2345/common/util/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 37
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 59
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 42
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 43
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 47
    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v3, v4, :cond_2

    .line 53
    const/4 v3, 0x1

    goto :goto_0

    .line 45
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isNetworkAvailable(Landroid/content/Context;Z)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alert"    # Z

    .prologue
    const/4 v3, 0x0

    .line 65
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 66
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 69
    .local v2, "info":[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_2

    .line 73
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_1

    .line 75
    const/4 v3, 0x1

    .line 84
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_0
    :goto_1
    return v3

    .line 71
    .restart local v1    # "i":I
    .restart local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    .end local v2    # "info":[Landroid/net/NetworkInfo;
    :cond_2
    if-eqz p1, :cond_0

    .line 82
    const v4, 0x7f0b00f3

    invoke-static {p0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public static isNetworkRoaming(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 176
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 201
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 182
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 183
    .local v1, "info":Landroid/net/NetworkInfo;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 184
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 186
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isPortUsed(I)Z
    .locals 13
    .param p0, "port"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 247
    const/4 v11, 0x2

    new-array v0, v11, [Ljava/lang/String;

    const-string v11, "netstat"

    aput-object v11, v0, v10

    const-string v11, "-an"

    aput-object v11, v0, v9

    .line 249
    .local v0, "cmds":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 250
    .local v7, "process":Ljava/lang/Process;
    const/4 v5, 0x0

    .line 251
    .local v5, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 252
    .local v1, "dis":Ljava/io/DataInputStream;
    const-string v6, ""

    .line 253
    .local v6, "line":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v8

    .line 257
    .local v8, "runtime":Ljava/lang/Runtime;
    :try_start_0
    invoke-virtual {v8, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 258
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 259
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .local v2, "dis":Ljava/io/DataInputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 263
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v11

    if-eqz v11, :cond_0

    .line 277
    if-eqz v2, :cond_1

    .line 279
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 281
    :cond_1
    if-eqz v5, :cond_2

    .line 283
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 285
    :cond_2
    if-eqz v7, :cond_3

    .line 287
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v1, v2

    .line 295
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :goto_1
    return v9

    .line 290
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catch_0
    move-exception v3

    .line 292
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 277
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    if-eqz v2, :cond_5

    .line 279
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 281
    :cond_5
    if-eqz v5, :cond_6

    .line 283
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 285
    :cond_6
    if-eqz v7, :cond_7

    .line 287
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_7
    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    :cond_8
    :goto_2
    move v9, v10

    .line 295
    goto :goto_1

    .line 290
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catch_1
    move-exception v3

    .line 292
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    .line 294
    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_2

    .line 269
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v4

    .line 271
    .local v4, "ie":Ljava/io/IOException;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 277
    if-eqz v1, :cond_9

    .line 279
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 281
    :cond_9
    if-eqz v5, :cond_a

    .line 283
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 285
    :cond_a
    if-eqz v7, :cond_8

    .line 287
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 290
    :catch_3
    move-exception v3

    .line 292
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 275
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v4    # "ie":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 277
    :goto_4
    if-eqz v1, :cond_b

    .line 279
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 281
    :cond_b
    if-eqz v5, :cond_c

    .line 283
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 285
    :cond_c
    if-eqz v7, :cond_d

    .line 287
    invoke-virtual {v7}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 293
    :cond_d
    :goto_5
    throw v9

    .line 290
    :catch_4
    move-exception v3

    .line 292
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 275
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catchall_1
    move-exception v9

    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_4

    .line 269
    .end local v1    # "dis":Ljava/io/DataInputStream;
    .restart local v2    # "dis":Ljava/io/DataInputStream;
    :catch_5
    move-exception v4

    move-object v1, v2

    .end local v2    # "dis":Ljava/io/DataInputStream;
    .restart local v1    # "dis":Ljava/io/DataInputStream;
    goto :goto_3
.end method

.method public static isWifiNetwork(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/market2345/common/util/NetworkUtils;->isWifiNetwork(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static isWifiNetwork(Landroid/content/Context;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alert"    # Z

    .prologue
    const/4 v0, 0x1

    .line 150
    invoke-static {p0, p1}, Lcom/market2345/common/util/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/market2345/common/util/NetworkUtils;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
