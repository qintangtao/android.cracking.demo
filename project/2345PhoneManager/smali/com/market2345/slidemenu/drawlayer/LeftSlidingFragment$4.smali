.class Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$4;
.super Ljava/lang/Object;
.source "LeftSlidingFragment.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->initUnion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$4;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 8
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 400
    move-object v0, p2

    check-cast v0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;

    .line 401
    .local v0, "apps":Lcom/market2345/lm/bean/UnionDownloadAppsInfo;
    if-eqz v0, :cond_2

    iget-object v6, v0, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->url:Ljava/lang/String;

    sget-object v7, Lcom/market2345/lm/util/GlobalParams;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 402
    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->getSoftlist()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 403
    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->getSoftlist()Ljava/util/ArrayList;

    move-result-object v3

    .line 404
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/UnionAppInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v4, "packNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 406
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/lm/bean/UnionAppInfo;

    .line 407
    .local v2, "info":Lcom/market2345/lm/bean/UnionAppInfo;
    invoke-virtual {v2}, Lcom/market2345/lm/bean/UnionAppInfo;->getPackagename()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 409
    .end local v2    # "info":Lcom/market2345/lm/bean/UnionAppInfo;
    :cond_0
    iget-object v6, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$4;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v6}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 410
    iget-object v6, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$4;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v6}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/market2345/datacenter/DataCenterObserver;->setmLianMengApk(Ljava/util/ArrayList;)V

    .line 415
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "infos":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/lm/bean/UnionAppInfo;>;"
    .end local v4    # "packNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v0}, Lcom/market2345/lm/bean/UnionDownloadAppsInfo;->getSpreader_name()Ljava/lang/String;

    move-result-object v5

    .line 416
    .local v5, "str":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 417
    sput-object v5, Lcom/market2345/lm/util/GlobalParams;->UNAME:Ljava/lang/String;

    .line 418
    iget-object v6, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$4;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v6}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 419
    iget-object v6, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$4;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v6}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/market2345/lm/util/SPUtils;->setFastUserName(Landroid/content/Context;Ljava/lang/String;)V

    .line 422
    .end local v5    # "str":Ljava/lang/String;
    :cond_2
    return-void
.end method
