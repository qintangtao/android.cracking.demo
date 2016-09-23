.class Lcom/market2345/autocheck/AutoResidentService$5;
.super Ljava/util/TimerTask;
.source "AutoResidentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/autocheck/AutoResidentService;->registAlerm()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/autocheck/AutoResidentService;


# direct methods
.method constructor <init>(Lcom/market2345/autocheck/AutoResidentService;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/market2345/autocheck/AutoResidentService$5;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService$5;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-virtual {v0}, Lcom/market2345/autocheck/AutoResidentService;->initNeed()V

    .line 306
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService$5;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    # getter for: Lcom/market2345/autocheck/AutoResidentService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/autocheck/AutoResidentService;->access$400(Lcom/market2345/autocheck/AutoResidentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 307
    return-void
.end method
