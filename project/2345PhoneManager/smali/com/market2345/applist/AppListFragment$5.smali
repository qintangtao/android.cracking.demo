.class Lcom/market2345/applist/AppListFragment$5;
.super Ljava/lang/Object;
.source "AppListFragment.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/applist/AppListFragment;->setHttpCallback(Lcom/market2345/httpnew/HttpTransactionBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/AppListFragment;


# direct methods
.method constructor <init>(Lcom/market2345/applist/AppListFragment;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 13
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    .line 262
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    # setter for: Lcom/market2345/applist/AppListFragment;->loading:Z
    invoke-static {v7, v9}, Lcom/market2345/applist/AppListFragment;->access$102(Lcom/market2345/applist/AppListFragment;Z)Z

    .line 263
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 264
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    check-cast p2, Lcom/market2345/model/AppListDatas;

    .end local p2    # "response":Lcom/market2345/httpnew/ResponseCluster;
    iput-object p2, v7, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    .line 265
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    iget-object v7, v7, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    iget-object v7, v7, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    iget-object v7, v7, Lcom/market2345/model/PageApp;->list:Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    .line 266
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    iget-object v7, v7, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    iget-object v1, v7, Lcom/market2345/model/PageApp;->list:Ljava/util/ArrayList;

    .line 268
    .local v1, "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-boolean v7, v7, Lcom/market2345/applist/AppListFragment$ConfirmData;->ignoreInstalledApp:Z

    if-eqz v7, :cond_2

    .line 269
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v7

    invoke-static {v7}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v2

    .line 270
    .local v2, "data":Lcom/market2345/datacenter/DataCenterObserver;
    invoke-virtual {v2}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v4

    .line 271
    .local v4, "installedApps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 272
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 273
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v7, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/model/InstalledApp;

    .line 274
    .local v3, "installApp":Lcom/market2345/model/InstalledApp;
    iget-object v7, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    iget v7, v3, Lcom/market2345/model/InstalledApp;->versionCode:I

    iget v8, v0, Lcom/market2345/model/App;->versionCode:I

    if-lt v7, v8, :cond_0

    .line 277
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyyMMdd"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 278
    .local v6, "sd":Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    iget-wide v10, v3, Lcom/market2345/model/InstalledApp;->lastUpdateTime:J

    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 279
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 285
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v3    # "installApp":Lcom/market2345/model/InstalledApp;
    .end local v6    # "sd":Ljava/text/SimpleDateFormat;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 286
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v7}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    .line 287
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v7}, Lcom/market2345/applist/AppListFragment;->lazyload()V

    .line 313
    .end local v1    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    .end local v2    # "data":Lcom/market2345/datacenter/DataCenterObserver;
    .end local v4    # "installedApps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    :goto_1
    return-void

    .line 292
    .restart local v1    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    :cond_2
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->recommendlist:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 293
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v7, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 294
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->mLoading:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 295
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    iget-object v7, v7, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    iget-object v7, v7, Lcom/market2345/model/PageApp;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v7, v7, Lcom/market2345/model/PageInfo;->page:I

    if-ne v7, v12, :cond_3

    .line 296
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v8, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v8, v8, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    iget-object v8, v8, Lcom/market2345/model/AppListDatas;->pageAppString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/market2345/applist/AppListFragment;->saveCacheData(Ljava/lang/String;)V

    .line 298
    :cond_3
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    iget-object v7, v7, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    iget-object v7, v7, Lcom/market2345/model/PageApp;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v7, v7, Lcom/market2345/model/PageInfo;->page:I

    iget-object v8, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v8, v8, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    iget-object v8, v8, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    iget-object v8, v8, Lcom/market2345/model/PageApp;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v8, v8, Lcom/market2345/model/PageInfo;->pagecount:I

    if-ne v7, v8, :cond_5

    .line 299
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v7, v9, v9, v9, v12}, Lcom/market2345/applist/AppListFragment;->changeVisiable(IIII)V

    .line 303
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->specialAdapter:Lcom/market2345/applist/AppListAdapter;

    invoke-virtual {v7}, Lcom/market2345/applist/AppListAdapter;->notifyDataSetChanged()V

    .line 304
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v7}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    goto :goto_1

    .line 300
    :cond_5
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragment;->mDatas:Lcom/market2345/model/AppListDatas;

    iget-object v7, v7, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    iget-object v7, v7, Lcom/market2345/model/PageApp;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v7, v7, Lcom/market2345/model/PageInfo;->page:I

    const/16 v8, 0xa

    if-lt v7, v8, :cond_4

    .line 301
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v7, v9, v9, v12, v9}, Lcom/market2345/applist/AppListFragment;->changeVisiable(IIII)V

    goto :goto_2

    .line 306
    .end local v1    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    :cond_6
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v8, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v8, v8, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v8}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v8

    # invokes: Lcom/market2345/applist/AppListFragment;->showError(I)V
    invoke-static {v7, v8}, Lcom/market2345/applist/AppListFragment;->access$200(Lcom/market2345/applist/AppListFragment;I)V

    goto :goto_1

    .line 310
    .restart local p2    # "response":Lcom/market2345/httpnew/ResponseCluster;
    :cond_7
    iget-object v7, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v8, p0, Lcom/market2345/applist/AppListFragment$5;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v8, v8, Lcom/market2345/applist/AppListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v8}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v8

    # invokes: Lcom/market2345/applist/AppListFragment;->showError(I)V
    invoke-static {v7, v8}, Lcom/market2345/applist/AppListFragment;->access$200(Lcom/market2345/applist/AppListFragment;I)V

    goto/16 :goto_1
.end method
