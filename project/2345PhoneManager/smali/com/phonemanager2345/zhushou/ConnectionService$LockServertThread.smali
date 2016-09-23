.class Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;
.super Ljava/lang/Thread;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonemanager2345/zhushou/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockServertThread"
.end annotation


# instance fields
.field inStream:Ljava/io/InputStream;

.field outStream:Ljava/io/OutputStream;

.field socket:Landroid/net/LocalSocket;

.field final synthetic this$0:Lcom/phonemanager2345/zhushou/ConnectionService;


# direct methods
.method public constructor <init>(Lcom/phonemanager2345/zhushou/ConnectionService;Landroid/net/LocalSocket;)V
    .locals 1
    .param p2, "socket"    # Landroid/net/LocalSocket;

    .prologue
    const/4 v0, 0x0

    .line 318
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 314
    iput-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->outStream:Ljava/io/OutputStream;

    .line 316
    iput-object v0, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->inStream:Ljava/io/InputStream;

    .line 319
    iput-object p2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->socket:Landroid/net/LocalSocket;

    .line 320
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 325
    :try_start_0
    sget-object v2, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    const-string v3, "LocalServerSocket begin:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->socket:Landroid/net/LocalSocket;

    iget-object v3, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->address:Landroid/net/LocalSocketAddress;
    invoke-static {v3}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$300(Lcom/phonemanager2345/zhushou/ConnectionService;)Landroid/net/LocalSocketAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 328
    sget-object v2, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    const-string v3, "connected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->outStream:Ljava/io/OutputStream;

    .line 330
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->outStream:Ljava/io/OutputStream;

    const-string v3, "com.phonemanager2345.zhushou.persistent\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 332
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->inStream:Ljava/io/InputStream;

    .line 334
    :goto_0
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->inStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, "value":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 335
    sget-object v2, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 343
    .end local v1    # "value":I
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v2, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LockServertThread * "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->active:Z
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$400(Lcom/phonemanager2345/zhushou/ConnectionService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 347
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    iget-object v3, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v3}, Lcom/phonemanager2345/zhushou/ConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/phonemanager2345/zhushou/ConnectionService;->execCommand(Landroid/content/Context;)V

    .line 349
    :cond_0
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # invokes: Lcom/phonemanager2345/zhushou/ConnectionService;->closeSocket()V
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$500(Lcom/phonemanager2345/zhushou/ConnectionService;)V

    .line 351
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    sget-object v2, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    const-string v3, "thread is killed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void

    .line 337
    .restart local v1    # "value":I
    :cond_1
    :try_start_2
    sget-object v2, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*close"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->outStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 339
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->inStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 340
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->socket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V

    .line 341
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->socket:Landroid/net/LocalSocket;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 346
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->active:Z
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$400(Lcom/phonemanager2345/zhushou/ConnectionService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 347
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    iget-object v3, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v3}, Lcom/phonemanager2345/zhushou/ConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/phonemanager2345/zhushou/ConnectionService;->execCommand(Landroid/content/Context;)V

    .line 349
    :cond_2
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # invokes: Lcom/phonemanager2345/zhushou/ConnectionService;->closeSocket()V
    invoke-static {v2}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$500(Lcom/phonemanager2345/zhushou/ConnectionService;)V

    goto :goto_1

    .line 346
    .end local v1    # "value":I
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # getter for: Lcom/phonemanager2345/zhushou/ConnectionService;->active:Z
    invoke-static {v3}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$400(Lcom/phonemanager2345/zhushou/ConnectionService;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 347
    iget-object v3, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    iget-object v4, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v4}, Lcom/phonemanager2345/zhushou/ConnectionService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/phonemanager2345/zhushou/ConnectionService;->execCommand(Landroid/content/Context;)V

    .line 349
    :cond_3
    iget-object v3, p0, Lcom/phonemanager2345/zhushou/ConnectionService$LockServertThread;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # invokes: Lcom/phonemanager2345/zhushou/ConnectionService;->closeSocket()V
    invoke-static {v3}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$500(Lcom/phonemanager2345/zhushou/ConnectionService;)V

    throw v2
.end method
