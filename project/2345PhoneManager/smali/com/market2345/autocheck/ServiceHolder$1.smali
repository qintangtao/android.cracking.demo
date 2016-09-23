.class Lcom/market2345/autocheck/ServiceHolder$1;
.super Landroid/os/Handler;
.source "ServiceHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/autocheck/ServiceHolder;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/autocheck/ServiceHolder;


# direct methods
.method constructor <init>(Lcom/market2345/autocheck/ServiceHolder;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/market2345/autocheck/ServiceHolder$1;->this$0:Lcom/market2345/autocheck/ServiceHolder;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 103
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/market2345/autocheck/ServiceHolder$1;->this$0:Lcom/market2345/autocheck/ServiceHolder;

    # getter for: Lcom/market2345/autocheck/ServiceHolder;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/autocheck/ServiceHolder;->access$200(Lcom/market2345/autocheck/ServiceHolder;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/autocheck/ServiceHolder$1;->this$0:Lcom/market2345/autocheck/ServiceHolder;

    # getter for: Lcom/market2345/autocheck/ServiceHolder;->holdServiceClass:Ljava/lang/Class;
    invoke-static {v3}, Lcom/market2345/autocheck/ServiceHolder;->access$300(Lcom/market2345/autocheck/ServiceHolder;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 104
    iget-object v2, p0, Lcom/market2345/autocheck/ServiceHolder$1;->this$0:Lcom/market2345/autocheck/ServiceHolder;

    # getter for: Lcom/market2345/autocheck/ServiceHolder;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/autocheck/ServiceHolder;->access$200(Lcom/market2345/autocheck/ServiceHolder;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 105
    iget-object v2, p0, Lcom/market2345/autocheck/ServiceHolder$1;->this$0:Lcom/market2345/autocheck/ServiceHolder;

    # getter for: Lcom/market2345/autocheck/ServiceHolder;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/autocheck/ServiceHolder;->access$200(Lcom/market2345/autocheck/ServiceHolder;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/market2345/autocheck/ServiceHolder$1;->this$0:Lcom/market2345/autocheck/ServiceHolder;

    # getter for: Lcom/market2345/autocheck/ServiceHolder;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/market2345/autocheck/ServiceHolder;->access$200(Lcom/market2345/autocheck/ServiceHolder;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
