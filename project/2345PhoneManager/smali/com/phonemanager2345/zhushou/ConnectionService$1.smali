.class Lcom/phonemanager2345/zhushou/ConnectionService$1;
.super Ljava/lang/Thread;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phonemanager2345/zhushou/ConnectionService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonemanager2345/zhushou/ConnectionService;


# direct methods
.method constructor <init>(Lcom/phonemanager2345/zhushou/ConnectionService;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ConnectionService$1;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 75
    const-class v1, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doListen start=========>>"

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 76
    const-string v1, "netstat"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/market2345/util/ShellUtils;->execCommand(Ljava/lang/String;Z)Lcom/market2345/util/ShellUtils$CommandResult;

    move-result-object v0

    .line 77
    .local v0, "netstat":Lcom/market2345/util/ShellUtils$CommandResult;
    if-eqz v0, :cond_0

    .line 78
    const-class v1, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open ports:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/market2345/util/ShellUtils$CommandResult;->successMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "netstat.txt"

    invoke-static {v1, v2, v3, v4}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    iget-object v1, p0, Lcom/phonemanager2345/zhushou/ConnectionService$1;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    # invokes: Lcom/phonemanager2345/zhushou/ConnectionService;->doListen()V
    invoke-static {v1}, Lcom/phonemanager2345/zhushou/ConnectionService;->access$000(Lcom/phonemanager2345/zhushou/ConnectionService;)V

    .line 83
    const-class v1, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "doListen end=========>>"

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    return-void

    .line 80
    :cond_0
    const-class v1, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "netstat null"

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
