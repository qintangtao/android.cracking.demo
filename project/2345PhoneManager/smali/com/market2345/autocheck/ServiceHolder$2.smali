.class Lcom/market2345/autocheck/ServiceHolder$2;
.super Ljava/lang/Object;
.source "ServiceHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/autocheck/ServiceHolder;->isServiceStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/autocheck/ServiceHolder;


# direct methods
.method constructor <init>(Lcom/market2345/autocheck/ServiceHolder;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/market2345/autocheck/ServiceHolder$2;->this$0:Lcom/market2345/autocheck/ServiceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 123
    const/4 v2, 0x0

    .line 124
    .local v2, "isStart":Z
    iget-object v6, p0, Lcom/market2345/autocheck/ServiceHolder$2;->this$0:Lcom/market2345/autocheck/ServiceHolder;

    # getter for: Lcom/market2345/autocheck/ServiceHolder;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/market2345/autocheck/ServiceHolder;->access$200(Lcom/market2345/autocheck/ServiceHolder;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 125
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/16 v6, 0x64

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 126
    .local v4, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    if-eqz v4, :cond_1

    .line 127
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 128
    .local v5, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 129
    iget-object v6, p0, Lcom/market2345/autocheck/ServiceHolder$2;->this$0:Lcom/market2345/autocheck/ServiceHolder;

    # getter for: Lcom/market2345/autocheck/ServiceHolder;->holdServiceClass:Ljava/lang/Class;
    invoke-static {v6}, Lcom/market2345/autocheck/ServiceHolder;->access$300(Lcom/market2345/autocheck/ServiceHolder;)Ljava/lang/Class;

    move-result-object v7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    const/4 v2, 0x1

    .line 135
    :cond_0
    iget-object v6, p0, Lcom/market2345/autocheck/ServiceHolder$2;->this$0:Lcom/market2345/autocheck/ServiceHolder;

    # getter for: Lcom/market2345/autocheck/ServiceHolder;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/market2345/autocheck/ServiceHolder;->access$400(Lcom/market2345/autocheck/ServiceHolder;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 136
    .local v3, "ms":Landroid/os/Message;
    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, v2}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    iget-object v6, p0, Lcom/market2345/autocheck/ServiceHolder$2;->this$0:Lcom/market2345/autocheck/ServiceHolder;

    # getter for: Lcom/market2345/autocheck/ServiceHolder;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/market2345/autocheck/ServiceHolder;->access$400(Lcom/market2345/autocheck/ServiceHolder;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 140
    .end local v1    # "i":I
    .end local v3    # "ms":Landroid/os/Message;
    .end local v5    # "size":I
    :cond_1
    return-void

    .line 128
    .restart local v1    # "i":I
    .restart local v5    # "size":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
