.class public Lcom/market2345/http/ApiAsyncTask;
.super Landroid/os/AsyncTask;
.source "ApiAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final BUSSINESS_ERROR:I = 0x262

.field public static final SC_DATA_NOT_EXIST:I = 0xe1

.field public static final SC_ENCODE_ERROR:I = 0x1ab

.field public static final SC_ILLEGAL_COMMENT:I = 0xe8

.field public static final SC_ILLEGAL_USER_AGENT:I = 0x1a5

.field public static final SC_SERVER_DB_ERROR:I = 0x208

.field public static final SC_XML_ERROR:I = 0x1a6

.field public static final SC_XML_PARAMS_ERROR:I = 0x1a7

.field public static final TIMEOUT_ERROR:I = 0x258


# instance fields
.field private mClient:Lcom/market2345/http/AndroidHttpClient;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;

.field params:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private requestMethod:Lcom/market2345/http/RequestMethod;

.field private tt01:J

.field private tt02:J

.field private tt03:J

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/market2345/http/RequestMethod;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestMethod"    # Lcom/market2345/http/RequestMethod;
    .param p4, "handler"    # Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/market2345/http/RequestMethod;",
            "Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p5, "_params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/http/ApiAsyncTask;->tt01:J

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/http/ApiAsyncTask;->tt02:J

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/http/ApiAsyncTask;->tt03:J

    .line 67
    iput-object p1, p0, Lcom/market2345/http/ApiAsyncTask;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/market2345/http/ApiAsyncTask;->url:Ljava/lang/String;

    .line 69
    iput-object p3, p0, Lcom/market2345/http/ApiAsyncTask;->requestMethod:Lcom/market2345/http/RequestMethod;

    .line 70
    iput-object p4, p0, Lcom/market2345/http/ApiAsyncTask;->mHandler:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;

    .line 71
    iput-object p5, p0, Lcom/market2345/http/ApiAsyncTask;->params:Ljava/util/ArrayList;

    .line 73
    invoke-static {}, Lcom/market2345/http/HttpClientFactory;->get()Lcom/market2345/http/HttpClientFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/http/HttpClientFactory;->getHttpClient()Lcom/market2345/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/http/ApiAsyncTask;->mClient:Lcom/market2345/http/AndroidHttpClient;

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/http/ApiAsyncTask;->tt01:J

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/http/ApiAsyncTask;->tt03:J

    .line 76
    return-void
.end method

.method private handleCommonError(I)Z
    .locals 1
    .param p1, "statusCode"    # I

    .prologue
    .line 228
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    .line 230
    const/4 v0, 0x1

    .line 242
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/market2345/http/ApiAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 20
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 82
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/http/ApiAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v14}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 84
    const/16 v14, 0x258

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 159
    :cond_0
    :goto_0
    return-object v11

    .line 87
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/market2345/http/ApiAsyncTask;->url:Ljava/lang/String;

    .line 88
    .local v9, "requestUrl":Ljava/lang/String;
    const/4 v11, 0x0

    .line 90
    .local v11, "result":Ljava/lang/Object;
    const/4 v8, 0x0

    .line 91
    .local v8, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v10, 0x0

    .line 95
    .local v10, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/http/ApiAsyncTask;->params:Ljava/util/ArrayList;

    if-eqz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/http/ApiAsyncTask;->params:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_4

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .local v3, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/http/ApiAsyncTask;->params:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 100
    .local v2, "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 129
    .end local v2    # "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v11    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 131
    .local v5, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 132
    const/16 v14, 0x258

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 142
    if-eqz v8, :cond_2

    .line 144
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 146
    :cond_2
    if-eqz v10, :cond_0

    .line 150
    :try_start_2
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 151
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_0

    .line 153
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 156
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    :catch_1
    move-exception v5

    .line 158
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 102
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v11    # "result":Ljava/lang/Object;
    :cond_3
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 103
    .local v12, "sign":Ljava/lang/String;
    invoke-static {v12}, Lcom/market2345/common/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "code":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/http/ApiAsyncTask;->params:Ljava/util/ArrayList;

    new-instance v15, Lorg/apache/http/message/BasicNameValuePair;

    const-string v16, "sign"

    const/16 v17, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "code":Ljava/lang/String;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "sign":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/http/ApiAsyncTask;->requestMethod:Lcom/market2345/http/RequestMethod;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/http/ApiAsyncTask;->params:Ljava/util/ArrayList;

    invoke-static {v9, v14, v15}, Lcom/market2345/http/ApiRequestFactory;->getRequest(Ljava/lang/String;Lcom/market2345/http/RequestMethod;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v8

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/market2345/http/ApiAsyncTask;->tt01:J

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/http/ApiAsyncTask;->mClient:Lcom/market2345/http/AndroidHttpClient;

    invoke-virtual {v14, v8}, Lcom/market2345/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/market2345/http/ApiAsyncTask;->tt02:J

    .line 112
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/http/ApiAsyncTask;->url:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/http/ApiAsyncTask;->tt02:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/http/ApiAsyncTask;->tt01:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v14

    invoke-interface {v14}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 114
    .local v13, "statusCode":I
    const/16 v14, 0xc8

    if-eq v14, v13, :cond_6

    .line 117
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    .line 142
    .end local v11    # "result":Ljava/lang/Object;
    if-eqz v8, :cond_5

    .line 144
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 146
    :cond_5
    if-eqz v10, :cond_0

    .line 150
    :try_start_4
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 151
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_0

    .line 153
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 156
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    :catch_2
    move-exception v5

    .line 158
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 121
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v11    # "result":Ljava/lang/Object;
    :cond_6
    :try_start_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/market2345/http/ApiAsyncTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/http/ApiAsyncTask;->url:Ljava/lang/String;

    invoke-static {v14, v15, v10}, Lcom/market2345/http/ApiResponseFactory;->getResponse(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v11

    .line 124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/market2345/http/ApiAsyncTask;->tt01:J

    .line 125
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/http/ApiAsyncTask;->url:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "jiexi"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/http/ApiAsyncTask;->tt01:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/market2345/http/ApiAsyncTask;->tt02:J

    move-wide/from16 v18, v0

    sub-long v16, v16, v18

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    if-nez v11, :cond_7

    const/16 v14, 0x262

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v11

    .line 142
    .end local v11    # "result":Ljava/lang/Object;
    :cond_7
    if-eqz v8, :cond_8

    .line 144
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 146
    :cond_8
    if-eqz v10, :cond_0

    .line 150
    :try_start_6
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 151
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_0

    .line 153
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 156
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    :catch_3
    move-exception v5

    .line 158
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 134
    .end local v5    # "e":Ljava/io/IOException;
    .end local v13    # "statusCode":I
    :catch_4
    move-exception v5

    .line 136
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    const/16 v14, 0x262

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v11

    .line 142
    if-eqz v8, :cond_9

    .line 144
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 146
    :cond_9
    if-eqz v10, :cond_0

    .line 150
    :try_start_8
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 151
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_0

    .line 153
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 156
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    :catch_5
    move-exception v5

    .line 158
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 142
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    if-eqz v8, :cond_a

    .line 144
    invoke-interface {v8}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 146
    :cond_a
    if-eqz v10, :cond_b

    .line 150
    :try_start_9
    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 151
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_b

    .line 153
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 159
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    :cond_b
    :goto_2
    throw v14

    .line 156
    :catch_6
    move-exception v5

    .line 158
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 8
    .param p1, "response"    # Ljava/lang/Object;

    .prologue
    .line 168
    iget-object v1, p0, Lcom/market2345/http/ApiAsyncTask;->mHandler:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;

    if-nez v1, :cond_1

    .line 195
    .end local p1    # "response":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 172
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/market2345/http/ApiAsyncTask;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/market2345/http/ApiAsyncTask;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 177
    :cond_2
    if-nez p1, :cond_3

    .line 179
    iget-object v1, p0, Lcom/market2345/http/ApiAsyncTask;->mHandler:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;

    iget-object v2, p0, Lcom/market2345/http/ApiAsyncTask;->url:Ljava/lang/String;

    const/16 v3, 0x262

    invoke-interface {v1, v2, v3}, Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;->onError(Ljava/lang/String;I)V

    goto :goto_0

    .line 182
    :cond_3
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_4

    move-object v0, p1

    .line 185
    check-cast v0, Ljava/lang/Integer;

    .line 186
    .local v0, "statusCode":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/market2345/http/ApiAsyncTask;->handleCommonError(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 188
    iget-object v1, p0, Lcom/market2345/http/ApiAsyncTask;->mHandler:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;

    iget-object v2, p0, Lcom/market2345/http/ApiAsyncTask;->url:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "response":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;->onError(Ljava/lang/String;I)V

    goto :goto_0

    .line 192
    .end local v0    # "statusCode":Ljava/lang/Integer;
    .restart local p1    # "response":Ljava/lang/Object;
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/market2345/http/ApiAsyncTask;->tt02:J

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/market2345/http/ApiAsyncTask;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "aaaa"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/market2345/http/ApiAsyncTask;->tt02:J

    iget-wide v6, p0, Lcom/market2345/http/ApiAsyncTask;->tt03:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/market2345/http/ApiAsyncTask;->mHandler:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;

    iget-object v2, p0, Lcom/market2345/http/ApiAsyncTask;->url:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;->onSuccess(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
