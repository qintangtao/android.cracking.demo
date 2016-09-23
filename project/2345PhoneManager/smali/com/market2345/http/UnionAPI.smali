.class public Lcom/market2345/http/UnionAPI;
.super Ljava/lang/Object;
.source "UnionAPI.java"


# static fields
.field public static final BASEURL:Ljava/lang/String; = "http://shouji.2345.com"

.field public static final CHECK_UNION_APP_URL:Ljava/lang/String; = "http://shouji.2345.com/api/getpackageurl.php"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnionAppUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 16
    .param p0, "versionCode"    # Ljava/lang/String;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v6, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "versioncode"

    move-object/from16 v0, p0

    invoke-direct {v12, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "packagename"

    move-object/from16 v0, p1

    invoke-direct {v12, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "uid"

    move-object/from16 v0, p2

    invoke-direct {v12, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 46
    .local v11, "sign":Ljava/lang/String;
    invoke-static {v11}, Lcom/market2345/common/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "code":Ljava/lang/String;
    new-instance v12, Lorg/apache/http/message/BasicNameValuePair;

    const-string v13, "sign"

    const/4 v14, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v1, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    const/4 v8, 0x0

    .line 49
    .local v8, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v10, 0x0

    .line 50
    .local v10, "response":Lorg/apache/http/HttpResponse;
    invoke-static {}, Lcom/market2345/http/HttpClientFactory;->get()Lcom/market2345/http/HttpClientFactory;

    move-result-object v12

    invoke-virtual {v12}, Lcom/market2345/http/HttpClientFactory;->getHttpClient()Lcom/market2345/http/AndroidHttpClient;

    move-result-object v4

    .line 53
    .local v4, "mClient":Lcom/market2345/http/AndroidHttpClient;
    :try_start_0
    const-string v12, "http://shouji.2345.com/api/getpackageurl.php"

    sget-object v13, Lcom/market2345/http/RequestMethod;->POST:Lcom/market2345/http/RequestMethod;

    invoke-static {v12, v13, v6}, Lcom/market2345/http/ApiRequestFactory;->getRequest(Ljava/lang/String;Lcom/market2345/http/RequestMethod;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v8

    .line 54
    invoke-virtual {v4, v8}, Lcom/market2345/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 55
    invoke-static {v10}, Lcom/market2345/http/HttpUtils;->getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v9

    .line 56
    .local v9, "resBack":Ljava/lang/String;
    new-instance v7, Lcom/google/gson/JsonParser;

    invoke-direct {v7}, Lcom/google/gson/JsonParser;-><init>()V

    .line 57
    .local v7, "parser":Lcom/google/gson/JsonParser;
    invoke-virtual {v7, v9}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 66
    .local v5, "obj":Lcom/google/gson/JsonObject;
    if-eqz v8, :cond_0

    .line 68
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 70
    :cond_0
    if-eqz v10, :cond_1

    .line 74
    :try_start_1
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 75
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_1

    .line 77
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 86
    const/4 v4, 0x0

    .line 89
    .end local v5    # "obj":Lcom/google/gson/JsonObject;
    .end local v7    # "parser":Lcom/google/gson/JsonParser;
    .end local v9    # "resBack":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 80
    .restart local v5    # "obj":Lcom/google/gson/JsonObject;
    .restart local v7    # "parser":Lcom/google/gson/JsonParser;
    .restart local v9    # "resBack":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "obj":Lcom/google/gson/JsonObject;
    .end local v7    # "parser":Lcom/google/gson/JsonParser;
    .end local v9    # "resBack":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 62
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    if-eqz v8, :cond_2

    .line 68
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 70
    :cond_2
    if-eqz v10, :cond_3

    .line 74
    :try_start_3
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 75
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_3

    .line 77
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 85
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :cond_3
    :goto_2
    invoke-virtual {v4}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 86
    const/4 v4, 0x0

    .line 89
    const/4 v5, 0x0

    goto :goto_1

    .line 80
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 82
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 66
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    if-eqz v8, :cond_4

    .line 68
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 70
    :cond_4
    if-eqz v10, :cond_5

    .line 74
    :try_start_4
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 75
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v3, :cond_5

    .line 77
    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 85
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :cond_5
    :goto_3
    invoke-virtual {v4}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 86
    const/4 v4, 0x0

    throw v12

    .line 80
    :catch_3
    move-exception v2

    .line 82
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method
