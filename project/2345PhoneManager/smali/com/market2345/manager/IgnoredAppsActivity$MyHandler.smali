.class Lcom/market2345/manager/IgnoredAppsActivity$MyHandler;
.super Landroid/os/Handler;
.source "IgnoredAppsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/manager/IgnoredAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field theActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/manager/IgnoredAppsActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/manager/IgnoredAppsActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/market2345/manager/IgnoredAppsActivity;

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity$MyHandler;->theActivity:Ljava/lang/ref/WeakReference;

    .line 47
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/market2345/manager/IgnoredAppsActivity$MyHandler;->theActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/manager/IgnoredAppsActivity;

    .line 52
    .local v0, "activity":Lcom/market2345/manager/IgnoredAppsActivity;
    if-eqz v0, :cond_2

    .line 53
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/util/Pair;

    if-eqz v2, :cond_2

    .line 54
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    .line 55
    .local v1, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "pref.ignore.num"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string v3, "pref.upgrade.num"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    :cond_0
    const-string v2, "janan"

    const-string v3, "\u771f\u7684\u5237\u65b0\u4e86"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getIgnoreNumber()I

    move-result v2

    # setter for: Lcom/market2345/manager/IgnoredAppsActivity;->currentIgnore:I
    invoke-static {v0, v2}, Lcom/market2345/manager/IgnoredAppsActivity;->access$002(Lcom/market2345/manager/IgnoredAppsActivity;I)I

    .line 58
    # getter for: Lcom/market2345/manager/IgnoredAppsActivity;->lastIgnore:I
    invoke-static {v0}, Lcom/market2345/manager/IgnoredAppsActivity;->access$100(Lcom/market2345/manager/IgnoredAppsActivity;)I

    move-result v2

    # getter for: Lcom/market2345/manager/IgnoredAppsActivity;->currentIgnore:I
    invoke-static {v0}, Lcom/market2345/manager/IgnoredAppsActivity;->access$000(Lcom/market2345/manager/IgnoredAppsActivity;)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 59
    # getter for: Lcom/market2345/manager/IgnoredAppsActivity;->currentIgnore:I
    invoke-static {v0}, Lcom/market2345/manager/IgnoredAppsActivity;->access$000(Lcom/market2345/manager/IgnoredAppsActivity;)I

    move-result v2

    # setter for: Lcom/market2345/manager/IgnoredAppsActivity;->lastIgnore:I
    invoke-static {v0, v2}, Lcom/market2345/manager/IgnoredAppsActivity;->access$102(Lcom/market2345/manager/IgnoredAppsActivity;I)I

    .line 60
    # invokes: Lcom/market2345/manager/IgnoredAppsActivity;->changeTitle()V
    invoke-static {v0}, Lcom/market2345/manager/IgnoredAppsActivity;->access$200(Lcom/market2345/manager/IgnoredAppsActivity;)V

    .line 61
    # invokes: Lcom/market2345/manager/IgnoredAppsActivity;->notifyAdapter()V
    invoke-static {v0}, Lcom/market2345/manager/IgnoredAppsActivity;->access$300(Lcom/market2345/manager/IgnoredAppsActivity;)V

    .line 63
    :cond_1
    # getter for: Lcom/market2345/manager/IgnoredAppsActivity;->currentIgnore:I
    invoke-static {v0}, Lcom/market2345/manager/IgnoredAppsActivity;->access$000(Lcom/market2345/manager/IgnoredAppsActivity;)I

    move-result v2

    if-nez v2, :cond_2

    .line 64
    # invokes: Lcom/market2345/manager/IgnoredAppsActivity;->notifyAdapter()V
    invoke-static {v0}, Lcom/market2345/manager/IgnoredAppsActivity;->access$300(Lcom/market2345/manager/IgnoredAppsActivity;)V

    .line 65
    invoke-virtual {v0}, Lcom/market2345/manager/IgnoredAppsActivity;->finish()V

    .line 70
    .end local v1    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    return-void
.end method
