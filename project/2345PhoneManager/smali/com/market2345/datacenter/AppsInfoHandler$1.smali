.class Lcom/market2345/datacenter/AppsInfoHandler$1;
.super Ljava/lang/Thread;
.source "AppsInfoHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/datacenter/AppsInfoHandler;->setUpdateList(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/datacenter/AppsInfoHandler;

.field final synthetic val$partialApps:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/market2345/datacenter/AppsInfoHandler;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/market2345/datacenter/AppsInfoHandler$1;->this$0:Lcom/market2345/datacenter/AppsInfoHandler;

    iput-object p2, p0, Lcom/market2345/datacenter/AppsInfoHandler$1;->val$partialApps:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler$1;->this$0:Lcom/market2345/datacenter/AppsInfoHandler;

    # getter for: Lcom/market2345/datacenter/AppsInfoHandler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/market2345/datacenter/AppsInfoHandler;->access$000(Lcom/market2345/datacenter/AppsInfoHandler;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/datacenter/AppsInfoHandler$1;->val$partialApps:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/common/util/Utils;->validateDownPartial(Landroid/content/Context;Ljava/util/Collection;)V

    .line 566
    iget-object v0, p0, Lcom/market2345/datacenter/AppsInfoHandler$1;->this$0:Lcom/market2345/datacenter/AppsInfoHandler;

    # getter for: Lcom/market2345/datacenter/AppsInfoHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/datacenter/AppsInfoHandler;->access$100(Lcom/market2345/datacenter/AppsInfoHandler;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 567
    return-void
.end method
