.class Lcom/market2345/ServerProcess$ConnectThread;
.super Ljava/lang/Thread;
.source "ServerProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/ServerProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConnectThread"
.end annotation


# instance fields
.field private socket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;)V
    .locals 0
    .param p1, "socket"    # Landroid/net/LocalSocket;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/market2345/ServerProcess$ConnectThread;->socket:Landroid/net/LocalSocket;

    .line 76
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "action":Ljava/lang/String;
    const/4 v4, 0x0

    .line 83
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    iget-object v6, p0, Lcom/market2345/ServerProcess$ConnectThread;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 85
    .local v2, "is":Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_1
    # getter for: Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/ServerProcess;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getReader success"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 90
    move-object v0, v3

    .line 91
    # getter for: Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/ServerProcess;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "read action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 96
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v4, v5

    .line 97
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/io/IOException;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    # getter for: Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/ServerProcess;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    invoke-static {}, Lcom/market2345/ServerProcess;->cancelAllNotifications()V

    .line 101
    const-string v6, "com.phonemanager2345.zhushou.persistent"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    # invokes: Lcom/market2345/ServerProcess;->startService(Ljava/lang/String;Z)V
    invoke-static {v0, v9}, Lcom/market2345/ServerProcess;->access$300(Ljava/lang/String;Z)V

    .line 108
    # getter for: Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/ServerProcess;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "killed ID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    .line 114
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    # getter for: Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/ServerProcess;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "connect thread close"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void

    .line 93
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 94
    iget-object v6, p0, Lcom/market2345/ServerProcess$ConnectThread;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V

    .line 95
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/market2345/ServerProcess$ConnectThread;->socket:Landroid/net/LocalSocket;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 99
    invoke-static {}, Lcom/market2345/ServerProcess;->cancelAllNotifications()V

    .line 101
    const-string v6, "com.phonemanager2345.zhushou.persistent"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 107
    # invokes: Lcom/market2345/ServerProcess;->startService(Ljava/lang/String;Z)V
    invoke-static {v0, v9}, Lcom/market2345/ServerProcess;->access$300(Ljava/lang/String;Z)V

    .line 108
    # getter for: Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/ServerProcess;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "killed ID:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-static {v6}, Landroid/os/Process;->killProcess(I)V

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 111
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :cond_1
    # invokes: Lcom/market2345/ServerProcess;->startService(Ljava/lang/String;Z)V
    invoke-static {v0, v10}, Lcom/market2345/ServerProcess;->access$300(Ljava/lang/String;Z)V

    move-object v4, v5

    .line 113
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 111
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "line":Ljava/lang/String;
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_2
    # invokes: Lcom/market2345/ServerProcess;->startService(Ljava/lang/String;Z)V
    invoke-static {v0, v10}, Lcom/market2345/ServerProcess;->access$300(Ljava/lang/String;Z)V

    goto :goto_2

    .line 99
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    invoke-static {}, Lcom/market2345/ServerProcess;->cancelAllNotifications()V

    .line 101
    const-string v7, "com.phonemanager2345.zhushou.persistent"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 107
    # invokes: Lcom/market2345/ServerProcess;->startService(Ljava/lang/String;Z)V
    invoke-static {v0, v9}, Lcom/market2345/ServerProcess;->access$300(Ljava/lang/String;Z)V

    .line 108
    # getter for: Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/ServerProcess;->access$000()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "killed ID:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Landroid/os/Process;->killProcess(I)V

    .line 111
    :goto_4
    throw v6

    :cond_3
    # invokes: Lcom/market2345/ServerProcess;->startService(Ljava/lang/String;Z)V
    invoke-static {v0, v10}, Lcom/market2345/ServerProcess;->access$300(Ljava/lang/String;Z)V

    goto :goto_4

    .line 99
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 96
    .end local v2    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method
