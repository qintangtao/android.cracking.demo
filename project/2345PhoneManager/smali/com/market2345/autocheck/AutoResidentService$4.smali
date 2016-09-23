.class Lcom/market2345/autocheck/AutoResidentService$4;
.super Landroid/os/Handler;
.source "AutoResidentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/autocheck/AutoResidentService;->initNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/autocheck/AutoResidentService;

.field final synthetic val$requestLis:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;


# direct methods
.method constructor <init>(Lcom/market2345/autocheck/AutoResidentService;Landroid/os/Looper;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/market2345/autocheck/AutoResidentService$4;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    iput-object p3, p0, Lcom/market2345/autocheck/AutoResidentService$4;->val$requestLis:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService$4;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    # invokes: Lcom/market2345/autocheck/AutoResidentService;->isCanUpdate()Z
    invoke-static {v0}, Lcom/market2345/autocheck/AutoResidentService;->access$200(Lcom/market2345/autocheck/AutoResidentService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService$4;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-virtual {v0}, Lcom/market2345/autocheck/AutoResidentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/autocheck/AutoResidentService$4;->val$requestLis:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/market2345/http/MarketAPI;->checkUpgrade(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Landroid/os/Handler;)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService$4;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    # invokes: Lcom/market2345/autocheck/AutoResidentService;->isCanCallStatistics()Z
    invoke-static {v0}, Lcom/market2345/autocheck/AutoResidentService;->access$300(Lcom/market2345/autocheck/AutoResidentService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/market2345/autocheck/AutoResidentService$4$1;

    invoke-direct {v1, p0}, Lcom/market2345/autocheck/AutoResidentService$4$1;-><init>(Lcom/market2345/autocheck/AutoResidentService$4;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 251
    :cond_1
    return-void
.end method
