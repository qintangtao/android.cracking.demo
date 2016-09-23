.class public Lcom/market2345/home/FakeActivityForPCService;
.super Landroid/app/Activity;
.source "FakeActivityForPCService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/home/FakeActivityForPCService$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 15
    new-instance v0, Lcom/market2345/home/FakeActivityForPCService$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/home/FakeActivityForPCService$MyHandler;-><init>(Lcom/market2345/home/FakeActivityForPCService;)V

    iput-object v0, p0, Lcom/market2345/home/FakeActivityForPCService;->mHandler:Landroid/os/Handler;

    .line 17
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    const-class v0, Lcom/market2345/home/FakeActivityForPCService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FakeActivityForPCService started"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->wtfAnyWay(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/market2345/home/FakeActivityForPCService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    iget-object v0, p0, Lcom/market2345/home/FakeActivityForPCService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 38
    return-void
.end method
