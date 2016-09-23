.class public Lcom/market2345/base/http/ApiGateway;
.super Ljava/lang/Object;
.source "ApiGateway.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/base/http/ApiGateway$RemoteCallTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/market2345/base/http/ApiResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final http:Lcom/market2345/base/http/Http;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    .local p0, "this":Lcom/market2345/base/http/ApiGateway;, "Lcom/market2345/base/http/ApiGateway<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/market2345/base/http/Http;

    invoke-direct {v0}, Lcom/market2345/base/http/Http;-><init>()V

    iput-object v0, p0, Lcom/market2345/base/http/ApiGateway;->http:Lcom/market2345/base/http/Http;

    .line 94
    return-void
.end method


# virtual methods
.method protected dispatch(Lcom/market2345/base/http/ApiResponse;Lcom/market2345/base/http/ApiResponseCallbacks;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/market2345/base/http/ApiResponseCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/market2345/base/http/ApiGateway;, "Lcom/market2345/base/http/ApiGateway<TT;>;"
    .local p1, "apiResponse":Lcom/market2345/base/http/ApiResponse;, "TT;"
    .local p2, "responseCallbacks":Lcom/market2345/base/http/ApiResponseCallbacks;, "Lcom/market2345/base/http/ApiResponseCallbacks<TT;>;"
    invoke-virtual {p1}, Lcom/market2345/base/http/ApiResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    :try_start_0
    invoke-interface {p2, p1}, Lcom/market2345/base/http/ApiResponseCallbacks;->onSuccess(Lcom/market2345/base/http/ApiResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    invoke-interface {p2}, Lcom/market2345/base/http/ApiResponseCallbacks;->onComplete()V

    .line 92
    return-void

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApiGateway:dispatch:Error:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    invoke-interface {p2}, Lcom/market2345/base/http/ApiResponseCallbacks;->onCallBackFailure()V

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v1, "request failed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ApiGateway:response:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/market2345/base/http/ApiResponse;->getResponseCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    invoke-interface {p2, p1}, Lcom/market2345/base/http/ApiResponseCallbacks;->onRequestFailure(Lcom/market2345/base/http/ApiResponse;)V

    goto :goto_0
.end method

.method public makeRequest(Lcom/market2345/base/http/ApiRequest;Lcom/market2345/base/http/ApiResponseCallbacks;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/base/http/ApiRequest",
            "<TT;>;",
            "Lcom/market2345/base/http/ApiResponseCallbacks",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/market2345/base/http/ApiGateway;, "Lcom/market2345/base/http/ApiGateway<TT;>;"
    .local p1, "apiRequest":Lcom/market2345/base/http/ApiRequest;, "Lcom/market2345/base/http/ApiRequest<TT;>;"
    .local p2, "responseCallbacks":Lcom/market2345/base/http/ApiResponseCallbacks;, "Lcom/market2345/base/http/ApiResponseCallbacks<TT;>;"
    new-instance v0, Lcom/market2345/base/http/ApiGateway$RemoteCallTask;

    invoke-direct {v0, p0, p2}, Lcom/market2345/base/http/ApiGateway$RemoteCallTask;-><init>(Lcom/market2345/base/http/ApiGateway;Lcom/market2345/base/http/ApiResponseCallbacks;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/market2345/base/http/ApiRequest;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/market2345/base/http/ApiGateway$RemoteCallTask;->execute([Ljava/lang/Object;)Lcom/market2345/base/asynctask/PoolAsyncTask;

    .line 75
    return-void
.end method

.method public makeSyncRequest(Lcom/market2345/base/http/ApiRequest;)Lcom/market2345/base/http/ApiResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/base/http/ApiRequest",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 26
    .local p0, "this":Lcom/market2345/base/http/ApiGateway;, "Lcom/market2345/base/http/ApiGateway<TT;>;"
    .local p1, "apiRequest":Lcom/market2345/base/http/ApiRequest;, "Lcom/market2345/base/http/ApiRequest<TT;>;"
    const/4 v5, 0x0

    .line 30
    .local v5, "responseBody":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/market2345/base/http/ApiRequest;->getUrlString()Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "urlString":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/market2345/base/http/ApiRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    .line 32
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "ApiGateway"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "req info [url="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ,headers="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string v7, "POST"

    invoke-virtual {p1}, Lcom/market2345/base/http/ApiRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 34
    invoke-virtual {p1}, Lcom/market2345/base/http/ApiRequest;->getPostEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 35
    .local v3, "postEntity":Lorg/apache/http/HttpEntity;
    iget-object v7, p0, Lcom/market2345/base/http/ApiGateway;->http:Lcom/market2345/base/http/Http;

    invoke-virtual {v7, v6, v2, v3}, Lcom/market2345/base/http/Http;->post(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lcom/market2345/base/http/Http$Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 51
    .end local v3    # "postEntity":Lorg/apache/http/HttpEntity;
    .local v4, "response":Lcom/market2345/base/http/Http$Response;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/market2345/base/http/Http$Response;->getResponseBody()Ljava/io/InputStream;

    move-result-object v5

    .line 52
    invoke-virtual {v4}, Lcom/market2345/base/http/Http$Response;->getStatusCode()I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/market2345/base/http/ApiRequest;->createResponse(I)Lcom/market2345/base/http/ApiResponse;

    move-result-object v0

    .line 53
    .local v0, "apiResponse":Lcom/market2345/base/http/ApiResponse;, "TT;"
    const-string v7, "ApiGateway"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "resp info [response code = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/market2345/base/http/ApiResponse;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    invoke-virtual {v0, v5}, Lcom/market2345/base/http/ApiResponse;->consumeResponse(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    if-eqz v5, :cond_0

    .line 66
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 68
    .end local v0    # "apiResponse":Lcom/market2345/base/http/ApiResponse;, "TT;"
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "response":Lcom/market2345/base/http/Http$Response;
    .end local v6    # "urlString":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v0

    .line 36
    .restart local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6    # "urlString":Ljava/lang/String;
    :cond_1
    :try_start_4
    const-string v7, "GET"

    invoke-virtual {p1}, Lcom/market2345/base/http/ApiRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 37
    iget-object v7, p0, Lcom/market2345/base/http/ApiGateway;->http:Lcom/market2345/base/http/Http;

    invoke-virtual {v7, v6, v2}, Lcom/market2345/base/http/Http;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/market2345/base/http/Http$Response;

    move-result-object v4

    .restart local v4    # "response":Lcom/market2345/base/http/Http$Response;
    goto :goto_0

    .line 38
    .end local v4    # "response":Lcom/market2345/base/http/Http$Response;
    :cond_2
    const-string v7, "PUT"

    invoke-virtual {p1}, Lcom/market2345/base/http/ApiRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 39
    invoke-virtual {p1}, Lcom/market2345/base/http/ApiRequest;->getPostEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 40
    .restart local v3    # "postEntity":Lorg/apache/http/HttpEntity;
    iget-object v7, p0, Lcom/market2345/base/http/ApiGateway;->http:Lcom/market2345/base/http/Http;

    invoke-virtual {v7, v6, v2, v3}, Lcom/market2345/base/http/Http;->post(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lcom/market2345/base/http/Http$Response;

    move-result-object v4

    .line 41
    .restart local v4    # "response":Lcom/market2345/base/http/Http$Response;
    goto :goto_0

    .line 42
    .end local v3    # "postEntity":Lorg/apache/http/HttpEntity;
    .end local v4    # "response":Lcom/market2345/base/http/Http$Response;
    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unsupported Http Method!"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 44
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v7, "ApiGateway"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    sget-object v7, Lcom/market2345/base/http/ApiInternalError;->REQ_ERROR:Lcom/market2345/base/http/ApiInternalError;

    invoke-virtual {v7}, Lcom/market2345/base/http/ApiInternalError;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/market2345/base/http/ApiRequest;->createResponse(I)Lcom/market2345/base/http/ApiResponse;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 64
    if-eqz v5, :cond_0

    .line 66
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 67
    :catch_1
    move-exception v7

    goto :goto_1

    .line 56
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "apiResponse":Lcom/market2345/base/http/ApiResponse;, "TT;"
    .restart local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "response":Lcom/market2345/base/http/Http$Response;
    .restart local v6    # "urlString":Ljava/lang/String;
    :catch_2
    move-exception v1

    .line 57
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_7
    const-string v7, "ApiGateway"

    const-string v8, "resp process failed\n"

    invoke-static {v7, v8}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    sget-object v7, Lcom/market2345/base/http/ApiInternalError;->PARSE_ERROR:Lcom/market2345/base/http/ApiInternalError;

    invoke-virtual {v7}, Lcom/market2345/base/http/ApiInternalError;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/market2345/base/http/ApiRequest;->createResponse(I)Lcom/market2345/base/http/ApiResponse;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 64
    .end local v0    # "apiResponse":Lcom/market2345/base/http/ApiResponse;, "TT;"
    if-eqz v5, :cond_0

    .line 66
    :try_start_8
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_1

    .line 67
    :catch_3
    move-exception v7

    goto :goto_1

    .line 61
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "response":Lcom/market2345/base/http/Http$Response;
    .end local v6    # "urlString":Ljava/lang/String;
    :catch_4
    move-exception v1

    .line 62
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_9
    sget-object v7, Lcom/market2345/base/http/ApiInternalError;->NETWORK_ERROR:Lcom/market2345/base/http/ApiInternalError;

    invoke-virtual {v7}, Lcom/market2345/base/http/ApiInternalError;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p1, v7}, Lcom/market2345/base/http/ApiRequest;->createResponse(I)Lcom/market2345/base/http/ApiResponse;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    .line 64
    if-eqz v5, :cond_0

    .line 66
    :try_start_a
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_1

    .line 67
    :catch_5
    move-exception v7

    goto/16 :goto_1

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v5, :cond_4

    .line 66
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 68
    :cond_4
    :goto_2
    throw v7

    .line 67
    .restart local v0    # "apiResponse":Lcom/market2345/base/http/ApiResponse;, "TT;"
    .restart local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "response":Lcom/market2345/base/http/Http$Response;
    .restart local v6    # "urlString":Ljava/lang/String;
    :catch_6
    move-exception v7

    goto/16 :goto_1

    .end local v0    # "apiResponse":Lcom/market2345/base/http/ApiResponse;, "TT;"
    .end local v2    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "response":Lcom/market2345/base/http/Http$Response;
    .end local v6    # "urlString":Ljava/lang/String;
    :catch_7
    move-exception v8

    goto :goto_2
.end method
