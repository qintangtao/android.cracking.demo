.class Lcom/market2345/autocheck/AutoResidentService$4$1;
.super Ljava/lang/Object;
.source "AutoResidentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/autocheck/AutoResidentService$4;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/autocheck/AutoResidentService$4;


# direct methods
.method constructor <init>(Lcom/market2345/autocheck/AutoResidentService$4;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/market2345/autocheck/AutoResidentService$4$1;->this$1:Lcom/market2345/autocheck/AutoResidentService$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 227
    new-instance v0, Lcom/market2345/autocheck/HttpStatistics;

    invoke-direct {v0}, Lcom/market2345/autocheck/HttpStatistics;-><init>()V

    .line 228
    .local v0, "http":Lcom/market2345/autocheck/HttpStatistics;
    new-instance v1, Lcom/market2345/autocheck/AutoResidentService$4$1$1;

    invoke-direct {v1, p0, v0}, Lcom/market2345/autocheck/AutoResidentService$4$1$1;-><init>(Lcom/market2345/autocheck/AutoResidentService$4$1;Lcom/market2345/autocheck/HttpStatistics;)V

    invoke-virtual {v0, v1}, Lcom/market2345/autocheck/HttpStatistics;->setCallBack(Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;)V

    .line 247
    iget-object v1, p0, Lcom/market2345/autocheck/AutoResidentService$4$1;->this$1:Lcom/market2345/autocheck/AutoResidentService$4;

    iget-object v1, v1, Lcom/market2345/autocheck/AutoResidentService$4;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-virtual {v1}, Lcom/market2345/autocheck/AutoResidentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/autocheck/HttpStatistics;->requestRUL(Landroid/content/Context;)V

    .line 248
    return-void
.end method
