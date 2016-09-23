.class Lcom/market2345/manager/UpdateAppActivity$3;
.super Ljava/lang/Object;
.source "UpdateAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/manager/UpdateAppActivity;->downLoadAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/manager/UpdateAppActivity;


# direct methods
.method constructor <init>(Lcom/market2345/manager/UpdateAppActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/market2345/manager/UpdateAppActivity$3;->this$0:Lcom/market2345/manager/UpdateAppActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 193
    iget-object v4, p0, Lcom/market2345/manager/UpdateAppActivity$3;->this$0:Lcom/market2345/manager/UpdateAppActivity;

    invoke-static {v4}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v5

    iget-object v6, p0, Lcom/market2345/manager/UpdateAppActivity$3;->this$0:Lcom/market2345/manager/UpdateAppActivity;

    iget-object v4, p0, Lcom/market2345/manager/UpdateAppActivity$3;->this$0:Lcom/market2345/manager/UpdateAppActivity;

    # getter for: Lcom/market2345/manager/UpdateAppActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;
    invoke-static {v4}, Lcom/market2345/manager/UpdateAppActivity;->access$200(Lcom/market2345/manager/UpdateAppActivity;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/datacenter/DataCenterObserver;->getUpdateList()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    iget-object v7, p0, Lcom/market2345/manager/UpdateAppActivity$3;->this$0:Lcom/market2345/manager/UpdateAppActivity;

    # getter for: Lcom/market2345/manager/UpdateAppActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;
    invoke-static {v7}, Lcom/market2345/manager/UpdateAppActivity;->access$200(Lcom/market2345/manager/UpdateAppActivity;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v7

    invoke-virtual {v7}, Lcom/market2345/datacenter/DataCenterObserver;->getUpdateList()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    new-array v7, v7, [Lcom/market2345/model/App;

    invoke-interface {v4, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/market2345/model/App;

    invoke-virtual {v5, v6, v4}, Lcom/market2345/download/DownloadManager;->startIfReady(Landroid/app/Activity;[Lcom/market2345/model/App;)V

    .line 196
    iget-object v4, p0, Lcom/market2345/manager/UpdateAppActivity$3;->this$0:Lcom/market2345/manager/UpdateAppActivity;

    # getter for: Lcom/market2345/manager/UpdateAppActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;
    invoke-static {v4}, Lcom/market2345/manager/UpdateAppActivity;->access$200(Lcom/market2345/manager/UpdateAppActivity;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/datacenter/DataCenterObserver;->getUpdateList()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 197
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 198
    iget-object v4, p0, Lcom/market2345/manager/UpdateAppActivity$3;->this$0:Lcom/market2345/manager/UpdateAppActivity;

    invoke-virtual {v4}, Lcom/market2345/manager/UpdateAppActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Update_All"

    invoke-static {v4, v5}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    :cond_0
    iget-object v4, p0, Lcom/market2345/manager/UpdateAppActivity$3;->this$0:Lcom/market2345/manager/UpdateAppActivity;

    # getter for: Lcom/market2345/manager/UpdateAppActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;
    invoke-static {v4}, Lcom/market2345/manager/UpdateAppActivity;->access$200(Lcom/market2345/manager/UpdateAppActivity;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/datacenter/DataCenterObserver;->getUpdateList()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 202
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v4, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    iget-object v5, v0, Lcom/market2345/model/App;->version:Ljava/lang/String;

    iget v6, v0, Lcom/market2345/model/App;->versionCode:I

    iget-object v7, p0, Lcom/market2345/manager/UpdateAppActivity$3;->this$0:Lcom/market2345/manager/UpdateAppActivity;

    invoke-static {v4, v5, v6, v7}, Lcom/market2345/lm/activity/AppInstallReportUtil;->reportLMUpdate(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_1

    .line 205
    .end local v0    # "app":Lcom/market2345/model/App;
    :cond_1
    return-void
.end method
