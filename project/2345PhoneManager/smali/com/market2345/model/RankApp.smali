.class public Lcom/market2345/model/RankApp;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "RankApp.java"


# instance fields
.field public list:Lcom/market2345/model/RankListInfo;

.field public response:Lcom/market2345/model/ResponseInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/market2345/httpnew/BaseResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 20
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 21
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/market2345/model/RankApp;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/RankApp;

    .line 22
    .local v0, "apps":Lcom/market2345/model/RankApp;
    iget-object v2, v0, Lcom/market2345/model/RankApp;->response:Lcom/market2345/model/ResponseInfo;

    iput-object v2, p0, Lcom/market2345/model/RankApp;->response:Lcom/market2345/model/ResponseInfo;

    .line 23
    iget-object v2, v0, Lcom/market2345/model/RankApp;->list:Lcom/market2345/model/RankListInfo;

    iput-object v2, p0, Lcom/market2345/model/RankApp;->list:Lcom/market2345/model/RankListInfo;

    .line 24
    return-void
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method
