.class public Lcom/market2345/ServerProcess$ServerThread;
.super Ljava/lang/Thread;
.source "ServerProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/ServerProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServerThread"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 41
    # getter for: Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/ServerProcess;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main thread start ~~~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 44
    :try_start_0
    new-instance v2, Landroid/net/LocalServerSocket;

    const-string v3, "com.market2345.serverprocess"

    invoke-direct {v2, v3}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/market2345/ServerProcess;->mSocket:Landroid/net/LocalServerSocket;
    invoke-static {v2}, Lcom/market2345/ServerProcess;->access$102(Landroid/net/LocalServerSocket;)Landroid/net/LocalServerSocket;

    .line 45
    # invokes: Lcom/market2345/ServerProcess;->notifyProcessCreated()V
    invoke-static {}, Lcom/market2345/ServerProcess;->access$200()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    new-instance v1, Lcom/market2345/ServerProcess$ServerThread;

    invoke-direct {v1}, Lcom/market2345/ServerProcess$ServerThread;-><init>()V

    .line 51
    .local v1, "thread":Lcom/market2345/ServerProcess$ServerThread;
    invoke-virtual {v1}, Lcom/market2345/ServerProcess$ServerThread;->start()V

    .line 52
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 53
    return-void

    .line 46
    .end local v1    # "thread":Lcom/market2345/ServerProcess$ServerThread;
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/ServerProcess;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nPID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 57
    # getter for: Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/ServerProcess;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalServerSocket begin!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    :try_start_0
    # getter for: Lcom/market2345/ServerProcess;->mSocket:Landroid/net/LocalServerSocket;
    invoke-static {}, Lcom/market2345/ServerProcess;->access$100()Landroid/net/LocalServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1

    .line 61
    .local v1, "socket":Landroid/net/LocalSocket;
    new-instance v2, Lcom/market2345/ServerProcess$ConnectThread;

    invoke-direct {v2, v1}, Lcom/market2345/ServerProcess$ConnectThread;-><init>(Landroid/net/LocalSocket;)V

    invoke-virtual {v2}, Lcom/market2345/ServerProcess$ConnectThread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    .end local v1    # "socket":Landroid/net/LocalSocket;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/market2345/ServerProcess;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/market2345/ServerProcess;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nPID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method
