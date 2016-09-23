.class Lcom/market2345/autocheck/AutoResidentService$4$1$1;
.super Ljava/lang/Object;
.source "AutoResidentService.java"

# interfaces
.implements Lcom/market2345/autocheck/HttpStatistics$ResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/autocheck/AutoResidentService$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isRetry:Z

.field final synthetic this$2:Lcom/market2345/autocheck/AutoResidentService$4$1;

.field final synthetic val$http:Lcom/market2345/autocheck/HttpStatistics;


# direct methods
.method constructor <init>(Lcom/market2345/autocheck/AutoResidentService$4$1;Lcom/market2345/autocheck/HttpStatistics;)V
    .locals 1

    .prologue
    .line 228
    iput-object p1, p0, Lcom/market2345/autocheck/AutoResidentService$4$1$1;->this$2:Lcom/market2345/autocheck/AutoResidentService$4$1;

    iput-object p2, p0, Lcom/market2345/autocheck/AutoResidentService$4$1$1;->val$http:Lcom/market2345/autocheck/HttpStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/autocheck/AutoResidentService$4$1$1;->isRetry:Z

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/market2345/autocheck/AutoResidentService$4$1$1;->isRetry:Z

    if-nez v0, :cond_0

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/autocheck/AutoResidentService$4$1$1;->isRetry:Z

    .line 242
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService$4$1$1;->val$http:Lcom/market2345/autocheck/HttpStatistics;

    iget-object v1, p0, Lcom/market2345/autocheck/AutoResidentService$4$1$1;->this$2:Lcom/market2345/autocheck/AutoResidentService$4$1;

    iget-object v1, v1, Lcom/market2345/autocheck/AutoResidentService$4$1;->this$1:Lcom/market2345/autocheck/AutoResidentService$4;

    iget-object v1, v1, Lcom/market2345/autocheck/AutoResidentService$4;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-virtual {v1}, Lcom/market2345/autocheck/AutoResidentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/autocheck/HttpStatistics;->requestRUL(Landroid/content/Context;)V

    .line 245
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService$4$1$1;->this$2:Lcom/market2345/autocheck/AutoResidentService$4$1;

    iget-object v0, v0, Lcom/market2345/autocheck/AutoResidentService$4$1;->this$1:Lcom/market2345/autocheck/AutoResidentService$4;

    iget-object v0, v0, Lcom/market2345/autocheck/AutoResidentService$4;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    const-string v1, "lastcallstatisticstime"

    # invokes: Lcom/market2345/autocheck/AutoResidentService;->saveTimes(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/market2345/autocheck/AutoResidentService;->access$000(Lcom/market2345/autocheck/AutoResidentService;Ljava/lang/String;)V

    .line 235
    return-void
.end method
