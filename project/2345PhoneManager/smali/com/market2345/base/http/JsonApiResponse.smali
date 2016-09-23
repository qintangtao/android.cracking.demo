.class public Lcom/market2345/base/http/JsonApiResponse;
.super Lcom/market2345/base/http/ApiResponse;
.source "JsonApiResponse.java"


# instance fields
.field public originalText:Ljava/lang/String;

.field private respJsonObject:Lorg/json/JSONObject;

.field private responseJsonArray:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "httpCode"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/market2345/base/http/ApiResponse;-><init>(I)V

    .line 28
    return-void
.end method

.method private getRespJsonString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 8
    .param p1, "responseBody"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    const-string v0, "UTF-8"

    .line 48
    .local v0, "charsetName":Ljava/lang/String;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 49
    .local v4, "streamReader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v3, "responseStrBuilder":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "inputStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "json":Ljava/lang/String;
    const-string v5, "ApiGateway"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JsonApiResponse:getRespJsonString:consume json response [response body "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    return-object v2
.end method


# virtual methods
.method public consumeResponse(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "responseBody"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/market2345/base/http/JsonApiResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 33
    invoke-direct {p0, p1}, Lcom/market2345/base/http/JsonApiResponse;->getRespJsonString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/base/http/JsonApiResponse;->originalText:Ljava/lang/String;

    .line 34
    new-instance v1, Lorg/json/JSONTokener;

    iget-object v2, p0, Lcom/market2345/base/http/JsonApiResponse;->originalText:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, "json":Ljava/lang/Object;
    instance-of v1, v0, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/market2345/base/http/JsonApiResponse;->originalText:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/market2345/base/http/JsonApiResponse;->respJsonObject:Lorg/json/JSONObject;

    .line 40
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/market2345/base/http/JsonApiResponse;->respJsonObject:Lorg/json/JSONObject;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/market2345/base/http/JsonApiResponse;->responseJsonArray:Lorg/json/JSONArray;

    if-nez v1, :cond_1

    .line 41
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "{}"

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/market2345/base/http/JsonApiResponse;->respJsonObject:Lorg/json/JSONObject;

    .line 44
    .end local v0    # "json":Ljava/lang/Object;
    :cond_1
    return-void

    .line 37
    .restart local v0    # "json":Ljava/lang/Object;
    :cond_2
    instance-of v1, v0, Lorg/json/JSONArray;

    if-eqz v1, :cond_0

    .line 38
    new-instance v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/market2345/base/http/JsonApiResponse;->originalText:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/market2345/base/http/JsonApiResponse;->responseJsonArray:Lorg/json/JSONArray;

    goto :goto_0
.end method

.method public getRespJsonObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/market2345/base/http/JsonApiResponse;->respJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResponseJsonArray()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/market2345/base/http/JsonApiResponse;->responseJsonArray:Lorg/json/JSONArray;

    return-object v0
.end method
