.class public Lcom/market2345/slidemenu/model/ClassifyDatas;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "ClassifyDatas.java"


# instance fields
.field public jObj:Lcom/google/gson/JsonObject;

.field public responseEnty:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/market2345/httpnew/BaseResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    .line 32
    .local v0, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v0, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/slidemenu/model/ClassifyDatas;->jObj:Lcom/google/gson/JsonObject;

    .line 33
    iput-object p1, p0, Lcom/market2345/slidemenu/model/ClassifyDatas;->responseEnty:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method
