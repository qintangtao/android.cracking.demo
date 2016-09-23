.class public Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "ClassifyResponseDatas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;
    }
.end annotation


# instance fields
.field public dataString:Ljava/lang/String;

.field public list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;

.field public response:Lcom/market2345/model/ResponseInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/market2345/httpnew/BaseResponseData;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 34
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 35
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v2, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;

    .line 36
    .local v0, "datas":Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    iput-object p1, p0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->dataString:Ljava/lang/String;

    .line 37
    iget-object v2, v0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->response:Lcom/market2345/model/ResponseInfo;

    iput-object v2, p0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->response:Lcom/market2345/model/ResponseInfo;

    .line 38
    iget-object v2, v0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;

    iput-object v2, p0, Lcom/market2345/slidemenu/model/ClassifyResponseDatas;->list:Lcom/market2345/slidemenu/model/ClassifyResponseDatas$ClassifyDataList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v0    # "datas":Lcom/market2345/slidemenu/model/ClassifyResponseDatas;
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method
