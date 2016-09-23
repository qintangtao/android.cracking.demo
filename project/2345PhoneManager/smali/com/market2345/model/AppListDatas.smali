.class public Lcom/market2345/model/AppListDatas;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "AppListDatas.java"


# instance fields
.field public bufferApps:Lcom/market2345/model/PageApp;

.field public pageAppString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/market2345/httpnew/BaseResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 29
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/market2345/model/PageApp;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/model/PageApp;

    iput-object v1, p0, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    .line 30
    iput-object p1, p0, Lcom/market2345/model/AppListDatas;->pageAppString:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public hasMore()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 22
    iget-object v1, p0, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    iget-object v1, v1, Lcom/market2345/model/PageApp;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v1, v1, Lcom/market2345/model/PageInfo;->page:I

    iget-object v2, p0, Lcom/market2345/model/AppListDatas;->bufferApps:Lcom/market2345/model/PageApp;

    iget-object v2, v2, Lcom/market2345/model/PageApp;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v2, v2, Lcom/market2345/model/PageInfo;->pagecount:I

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
