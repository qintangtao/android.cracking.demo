.class Lcom/phonemanager2345/zhushou/ConnectionService$3;
.super Ljava/lang/Thread;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonemanager2345/zhushou/ConnectionService;->execCommand(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

.field final synthetic val$process:Ljava/lang/Process;

.field final synthetic val$reader:Ljava/io/BufferedReader;

.field final synthetic val$writer:Ljava/io/BufferedWriter;


# direct methods
.method constructor <init>(Lcom/phonemanager2345/zhushou/ConnectionService;Ljava/io/BufferedReader;Ljava/io/BufferedWriter;Ljava/lang/Process;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ConnectionService$3;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    iput-object p2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$3;->val$reader:Ljava/io/BufferedReader;

    iput-object p3, p0, Lcom/phonemanager2345/zhushou/ConnectionService$3;->val$writer:Ljava/io/BufferedWriter;

    iput-object p4, p0, Lcom/phonemanager2345/zhushou/ConnectionService$3;->val$process:Ljava/lang/Process;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 390
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$3;->val$reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "tmp":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 391
    sget-object v2, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[SHELL] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const-string v2, "exit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    sget-object v2, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    const-string v3, "[SHELL] execCommand end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :try_start_1
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$3;->val$writer:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$3;->val$process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    :cond_1
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$3;->val$reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 413
    sget-object v2, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    const-string v3, "[SHELL] reader close"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 417
    .end local v1    # "tmp":Ljava/lang/String;
    :goto_2
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    sget-object v2, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-class v2, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execCommand:1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 412
    :try_start_5
    iget-object v2, p0, Lcom/phonemanager2345/zhushou/ConnectionService$3;->val$reader:Ljava/io/BufferedReader;

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 413
    sget-object v2, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    const-string v3, "[SHELL] reader close"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 414
    :catch_1
    move-exception v2

    goto :goto_2

    .line 411
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 412
    :try_start_6
    iget-object v3, p0, Lcom/phonemanager2345/zhushou/ConnectionService$3;->val$reader:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 413
    sget-object v3, Lcom/phonemanager2345/zhushou/ConnectionService;->TAG:Ljava/lang/String;

    const-string v4, "[SHELL] reader close"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 415
    :goto_3
    throw v2

    .line 414
    :catch_2
    move-exception v3

    goto :goto_3

    .restart local v1    # "tmp":Ljava/lang/String;
    :catch_3
    move-exception v2

    goto :goto_2

    .line 400
    :catch_4
    move-exception v2

    goto :goto_1

    .line 396
    :catch_5
    move-exception v2

    goto :goto_0
.end method
