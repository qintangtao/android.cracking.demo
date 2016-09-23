.class Lcom/market2345/applist/AppListFragmentSpecial$6;
.super Ljava/lang/Object;
.source "AppListFragmentSpecial.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/applist/AppListFragmentSpecial;->setHttpCallback(Lcom/market2345/httpnew/HttpTransactionBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/AppListFragmentSpecial;


# direct methods
.method constructor <init>(Lcom/market2345/applist/AppListFragmentSpecial;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 19
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 295
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    const/4 v15, 0x0

    # setter for: Lcom/market2345/applist/AppListFragmentSpecial;->loading:Z
    invoke-static {v14, v15}, Lcom/market2345/applist/AppListFragmentSpecial;->access$102(Lcom/market2345/applist/AppListFragmentSpecial;Z)Z

    .line 296
    invoke-static/range {p1 .. p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v11

    .line 298
    .local v11, "success":Z
    if-eqz v11, :cond_c

    .line 299
    const/4 v14, 0x1

    sput v14, Lcom/market2345/applist/AppListFragmentSpecial;->showWhat:I

    .line 301
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    check-cast p2, Lcom/market2345/model/AppListDatasNew;

    .end local p2    # "response":Lcom/market2345/httpnew/ResponseCluster;
    move-object/from16 v0, p2

    iput-object v0, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    .line 302
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    if-eqz v14, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    iget-object v14, v14, Lcom/market2345/model/AppListDatasNew;->list:Ljava/util/ArrayList;

    if-eqz v14, :cond_b

    .line 303
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    invoke-virtual {v14}, Lcom/market2345/model/AppListDatasNew;->sort()Ljava/util/ArrayList;

    move-result-object v3

    .line 304
    .local v3, "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    const/4 v13, 0x0

    .line 305
    .local v13, "topicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/TopicItem;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    iget-object v14, v14, Lcom/market2345/model/AppListDatasNew;->topic:Lcom/market2345/model/Topic;

    if-eqz v14, :cond_0

    .line 306
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    iget-object v14, v14, Lcom/market2345/model/AppListDatasNew;->topic:Lcom/market2345/model/Topic;

    iget-object v13, v14, Lcom/market2345/model/Topic;->list:Ljava/util/ArrayList;

    .line 310
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-boolean v14, v14, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->ignoreInstalledApp:Z

    if-eqz v14, :cond_3

    .line 311
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v14

    invoke-static {v14}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    .line 312
    .local v5, "data":Lcom/market2345/datacenter/DataCenterObserver;
    invoke-virtual {v5}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v8

    .line 314
    .local v8, "installedApps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    :cond_1
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 315
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/model/App;

    .line 316
    .local v1, "app":Lcom/market2345/model/App;
    iget-object v14, v1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    if-eqz v14, :cond_1

    .line 317
    iget-object v14, v1, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 318
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 323
    .end local v1    # "app":Lcom/market2345/model/App;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    iget-object v14, v14, Lcom/market2345/model/AppListDatasNew;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v14, v14, Lcom/market2345/model/PageInfo;->page:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v15, v15, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    iget-object v15, v15, Lcom/market2345/model/AppListDatasNew;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v15, v15, Lcom/market2345/model/PageInfo;->pagecount:I

    if-eq v14, v15, :cond_3

    .line 324
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v14}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    .line 325
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-virtual {v14}, Lcom/market2345/applist/AppListFragmentSpecial;->lazyload()V

    .line 386
    .end local v3    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    .end local v5    # "data":Lcom/market2345/datacenter/DataCenterObserver;
    .end local v8    # "installedApps":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/market2345/model/InstalledApp;>;"
    .end local v9    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    .end local v13    # "topicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/TopicItem;>;"
    :goto_1
    return-void

    .line 329
    .restart local v3    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    .restart local v13    # "topicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/TopicItem;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    iget-object v14, v14, Lcom/market2345/model/AppListDatasNew;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v14, v14, Lcom/market2345/model/PageInfo;->page:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 330
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->recommendlist:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 331
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 332
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 333
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v15, v15, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    iget-object v15, v15, Lcom/market2345/model/AppListDatasNew;->pageAppString:Ljava/lang/String;

    invoke-virtual {v14, v15}, Lcom/market2345/applist/AppListFragmentSpecial;->saveCacheData(Ljava/lang/String;)V

    .line 336
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->recommendlist:Ljava/util/ArrayList;

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 337
    if-eqz v13, :cond_5

    .line 338
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 341
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->recommendlist:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 342
    .local v2, "appCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v2, :cond_8

    .line 343
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 344
    .local v4, "current":I
    add-int/lit8 v14, v4, 0x1

    rem-int/lit8 v14, v14, 0x7

    if-nez v14, :cond_7

    const/4 v10, 0x1

    .line 346
    .local v10, "next_type":I
    :goto_3
    const/4 v14, 0x1

    if-ne v10, v14, :cond_6

    .line 347
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_6

    .line 348
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/market2345/model/TopicItem;

    .line 349
    .local v12, "topic":Lcom/market2345/model/TopicItem;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 354
    .end local v12    # "topic":Lcom/market2345/model/TopicItem;
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v15, v15, Lcom/market2345/applist/AppListFragmentSpecial;->recommendlist:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 344
    .end local v10    # "next_type":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 356
    .end local v4    # "current":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->recommendlist:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 358
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v15, v15, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    # invokes: Lcom/market2345/applist/AppListFragmentSpecial;->initTopics(Lcom/market2345/model/AppListDatasNew;)V
    invoke-static {v14, v15}, Lcom/market2345/applist/AppListFragmentSpecial;->access$200(Lcom/market2345/applist/AppListFragmentSpecial;Lcom/market2345/model/AppListDatasNew;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    const/4 v15, 0x1

    # invokes: Lcom/market2345/applist/AppListFragmentSpecial;->setListViewDisplay(Z)V
    invoke-static {v14, v15}, Lcom/market2345/applist/AppListFragmentSpecial;->access$300(Lcom/market2345/applist/AppListFragmentSpecial;Z)V

    .line 360
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mLoading:Landroid/view/View;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    iget-object v14, v14, Lcom/market2345/model/AppListDatasNew;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v14, v14, Lcom/market2345/model/PageInfo;->page:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v15, v15, Lcom/market2345/applist/AppListFragmentSpecial;->mDatasNew:Lcom/market2345/model/AppListDatasNew;

    iget-object v15, v15, Lcom/market2345/model/AppListDatasNew;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v15, v15, Lcom/market2345/model/PageInfo;->pagecount:I

    if-ne v14, v15, :cond_9

    .line 363
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    invoke-virtual/range {v14 .. v18}, Lcom/market2345/applist/AppListFragmentSpecial;->changeVisiable(IIII)V

    .line 369
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    invoke-virtual {v14}, Lcom/market2345/applist/AppListWithTopicAdapter;->notifyDataSetChanged()V

    .line 370
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v14}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    .line 377
    .end local v2    # "appCount":I
    .end local v3    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    .end local v7    # "i":I
    .end local v13    # "topicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/TopicItem;>;"
    :goto_5
    new-instance v6, Lcom/market2345/applist/event/FragmentFinishEvent;

    invoke-direct {v6}, Lcom/market2345/applist/event/FragmentFinishEvent;-><init>()V

    .line 378
    .local v6, "event":Lcom/market2345/applist/event/FragmentFinishEvent;
    sget v14, Lcom/market2345/applist/AppListFragmentSpecial;->showWhat:I

    iput v14, v6, Lcom/market2345/applist/event/FragmentFinishEvent;->status:I

    .line 379
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v14

    invoke-virtual {v14, v6}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 385
    .end local v6    # "event":Lcom/market2345/applist/event/FragmentFinishEvent;
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->refreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v14}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    goto/16 :goto_1

    .line 364
    .restart local v2    # "appCount":I
    .restart local v3    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    .restart local v7    # "i":I
    .restart local v13    # "topicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/TopicItem;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v15, v15, Lcom/market2345/applist/AppListFragmentSpecial;->mListTopics:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v14, v15

    const/16 v15, 0x96

    if-lt v14, v15, :cond_a

    .line 365
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/market2345/applist/AppListFragmentSpecial;->changeVisiable(IIII)V

    goto :goto_4

    .line 367
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lcom/market2345/applist/AppListFragmentSpecial;->changeVisiable(IIII)V

    goto :goto_4

    .line 372
    .end local v2    # "appCount":I
    .end local v3    # "appsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/App;>;"
    .end local v7    # "i":I
    .end local v13    # "topicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/model/TopicItem;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v15, v15, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v15}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v15

    # invokes: Lcom/market2345/applist/AppListFragmentSpecial;->showError(I)V
    invoke-static {v14, v15}, Lcom/market2345/applist/AppListFragmentSpecial;->access$400(Lcom/market2345/applist/AppListFragmentSpecial;I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v14, v14, Lcom/market2345/applist/AppListFragmentSpecial;->specialAdapter:Lcom/market2345/applist/AppListWithTopicAdapter;

    invoke-virtual {v14}, Lcom/market2345/applist/AppListWithTopicAdapter;->notifyDataSetChanged()V

    goto :goto_5

    .line 382
    .restart local p2    # "response":Lcom/market2345/httpnew/ResponseCluster;
    :cond_c
    const/4 v14, 0x2

    sput v14, Lcom/market2345/applist/AppListFragmentSpecial;->showWhat:I

    .line 383
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/applist/AppListFragmentSpecial$6;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v15, v15, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v15}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v15

    # invokes: Lcom/market2345/applist/AppListFragmentSpecial;->showError(I)V
    invoke-static {v14, v15}, Lcom/market2345/applist/AppListFragmentSpecial;->access$400(Lcom/market2345/applist/AppListFragmentSpecial;I)V

    goto/16 :goto_6
.end method
