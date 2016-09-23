.class public Lcom/market2345/util/HttpRequestHandler;
.super Ljava/lang/Object;
.source "HttpRequestHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final BUSSINESS_ERROR:I = 0x262

.field public static final NETWORKABLE_ERROR:I = 0x26c

.field public static final TIMEOUT_ERROR:I = 0x258


# instance fields
.field private code:I

.field private mClient:Lcom/market2345/http/AndroidHttpClient;

.field private mContext:Landroid/content/Context;

.field private mHander:Landroid/os/Handler;

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

.field private result:Ljava/lang/Object;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/market2345/http/RequestMethod;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Ljava/util/ArrayList;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestMethod"    # Lcom/market2345/http/RequestMethod;
    .param p4, "handler"    # Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
    .param p6, "mHander"    # Landroid/os/Handler;
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
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p5, "_params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/util/HttpRequestHandler;->code:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/util/HttpRequestHandler;->result:Ljava/lang/Object;

    .line 70
    iput-object p1, p0, Lcom/market2345/util/HttpRequestHandler;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/market2345/util/HttpRequestHandler;->url:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/market2345/util/HttpRequestHandler;->requestMethod:Lcom/market2345/http/RequestMethod;

    .line 73
    iput-object p4, p0, Lcom/market2345/util/HttpRequestHandler;->mHandler:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;

    .line 74
    iput-object p5, p0, Lcom/market2345/util/HttpRequestHandler;->params:Ljava/util/ArrayList;

    .line 75
    invoke-static {}, Lcom/market2345/http/HttpClientFactory;->get()Lcom/market2345/http/HttpClientFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/http/HttpClientFactory;->getHttpClient()Lcom/market2345/http/AndroidHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/util/HttpRequestHandler;->mClient:Lcom/market2345/http/AndroidHttpClient;

    .line 76
    iput-object p6, p0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/util/HttpRequestHandler;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/util/HttpRequestHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/util/HttpRequestHandler;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/util/HttpRequestHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/util/HttpRequestHandler;

    .prologue
    .line 34
    iget v0, p0, Lcom/market2345/util/HttpRequestHandler;->code:I

    return v0
.end method

.method static synthetic access$200(Lcom/market2345/util/HttpRequestHandler;)Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/util/HttpRequestHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/util/HttpRequestHandler;->mHandler:Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/util/HttpRequestHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/util/HttpRequestHandler;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/util/HttpRequestHandler;->result:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/market2345/util/HttpRequestHandler;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/util/HttpRequestHandler;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/market2345/util/HttpRequestHandler;->result:Ljava/lang/Object;

    return-object p1
.end method

.method public static isSuccessResponseCode(I)Z
    .locals 1
    .param p0, "responseCode"    # I

    .prologue
    .line 293
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 19

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 87
    const/16 v15, 0x258

    move-object/from16 v0, p0

    iput v15, v0, Lcom/market2345/util/HttpRequestHandler;->code:I

    .line 88
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    if-eqz v15, :cond_0

    .line 90
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    new-instance v16, Lcom/market2345/util/HttpRequestHandler$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/market2345/util/HttpRequestHandler$1;-><init>(Lcom/market2345/util/HttpRequestHandler;)V

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 99
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mClient:Lcom/market2345/http/AndroidHttpClient;

    invoke-virtual {v15}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 289
    :goto_0
    return-void

    .line 103
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/market2345/util/HttpRequestHandler;->url:Ljava/lang/String;

    .line 105
    .local v11, "requestUrl":Ljava/lang/String;
    const/4 v10, 0x0

    .line 106
    .local v10, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v12, 0x0

    .line 111
    .local v12, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    sget-object v15, Lcom/market2345/lm/util/GlobalParams;->BASE_URL_GETLIST:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_2

    sget-object v15, Lcom/market2345/lm/util/GlobalParams;->BASE_URL_GETUSERNAME:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 113
    :cond_2
    sget-object v11, Lcom/market2345/lm/util/GlobalParams;->BASE_URL:Ljava/lang/String;

    .line 115
    :cond_3
    sget-object v15, Lcom/market2345/lm/util/GlobalParams;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 118
    const-string v15, "http://zhushou.2345.com/index.php?c=ard&d=getUpdateNew"

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 119
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->params:Ljava/util/ArrayList;

    .line 120
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->params:Ljava/util/ArrayList;

    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "mac"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/util/HttpRequestHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->params:Ljava/util/ArrayList;

    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/util/HttpRequestHandler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v15

    invoke-virtual {v15}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledAppsJson()Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, "installedAppsJson":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->params:Ljava/util/ArrayList;

    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "packages"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    .end local v9    # "installedAppsJson":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->params:Ljava/util/ArrayList;

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->params:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_9

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v3, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->params:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 131
    .local v2, "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 239
    .end local v2    # "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v5

    .line 241
    .local v5, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 242
    const/16 v15, 0x258

    move-object/from16 v0, p0

    iput v15, v0, Lcom/market2345/util/HttpRequestHandler;->code:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    move-object/from16 v0, p0

    iget v15, v0, Lcom/market2345/util/HttpRequestHandler;->code:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    .line 253
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    if-eqz v15, :cond_5

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    new-instance v16, Lcom/market2345/util/HttpRequestHandler$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/market2345/util/HttpRequestHandler$3;-><init>(Lcom/market2345/util/HttpRequestHandler;)V

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 266
    :cond_5
    if-eqz v10, :cond_6

    .line 268
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 270
    :cond_6
    if-eqz v12, :cond_7

    .line 274
    :try_start_2
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 275
    .local v6, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_7

    .line 277
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 285
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mClient:Lcom/market2345/http/AndroidHttpClient;

    invoke-virtual {v15}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 286
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mClient:Lcom/market2345/http/AndroidHttpClient;

    goto/16 :goto_0

    .line 133
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_8
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 134
    .local v13, "sign":Ljava/lang/String;
    invoke-static {v13}, Lcom/market2345/common/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 135
    .local v4, "code":Ljava/lang/String;
    const/4 v15, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->params:Ljava/util/ArrayList;

    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "sign"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "code":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v13    # "sign":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->requestMethod:Lcom/market2345/http/RequestMethod;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/util/HttpRequestHandler;->params:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v11, v15, v0}, Lcom/market2345/http/ApiRequestFactory;->getRequest(Ljava/lang/String;Lcom/market2345/http/RequestMethod;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    .line 143
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3
    const/4 v15, 0x3

    if-ge v7, v15, :cond_a

    .line 147
    :try_start_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mClient:Lcom/market2345/http/AndroidHttpClient;

    invoke-virtual {v15, v10}, Lcom/market2345/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    .line 163
    :cond_a
    :try_start_5
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-interface {v15}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v14

    .line 164
    .local v14, "statusCode":I
    const/16 v15, 0xc8

    if-eq v15, v14, :cond_14

    .line 167
    move-object/from16 v0, p0

    iput v14, v0, Lcom/market2345/util/HttpRequestHandler;->code:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 251
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/market2345/util/HttpRequestHandler;->code:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_c

    .line 253
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    if-eqz v15, :cond_c

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    new-instance v16, Lcom/market2345/util/HttpRequestHandler$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/market2345/util/HttpRequestHandler$3;-><init>(Lcom/market2345/util/HttpRequestHandler;)V

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 266
    :cond_c
    if-eqz v10, :cond_d

    .line 268
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 270
    :cond_d
    if-eqz v12, :cond_e

    .line 274
    :try_start_6
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 275
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_e

    .line 277
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 285
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mClient:Lcom/market2345/http/AndroidHttpClient;

    invoke-virtual {v15}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 286
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mClient:Lcom/market2345/http/AndroidHttpClient;

    goto/16 :goto_0

    .line 150
    .end local v14    # "statusCode":I
    :catch_1
    move-exception v5

    .line 152
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    instance-of v15, v5, Lorg/apache/http/NoHttpResponseException;

    if-eqz v15, :cond_f

    const/4 v15, 0x2

    if-ne v7, v15, :cond_13

    .line 154
    :cond_f
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 244
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v7    # "i":I
    :catch_2
    move-exception v5

    .line 246
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 247
    const/16 v15, 0x262

    move-object/from16 v0, p0

    iput v15, v0, Lcom/market2345/util/HttpRequestHandler;->code:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 251
    move-object/from16 v0, p0

    iget v15, v0, Lcom/market2345/util/HttpRequestHandler;->code:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_10

    .line 253
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    if-eqz v15, :cond_10

    .line 255
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    new-instance v16, Lcom/market2345/util/HttpRequestHandler$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/market2345/util/HttpRequestHandler$3;-><init>(Lcom/market2345/util/HttpRequestHandler;)V

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 266
    :cond_10
    if-eqz v10, :cond_11

    .line 268
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 270
    :cond_11
    if-eqz v12, :cond_12

    .line 274
    :try_start_9
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 275
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_12

    .line 277
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 285
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    :cond_12
    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mClient:Lcom/market2345/http/AndroidHttpClient;

    invoke-virtual {v15}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 286
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mClient:Lcom/market2345/http/AndroidHttpClient;

    goto/16 :goto_0

    .line 158
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "i":I
    :cond_13
    :try_start_a
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 173
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v14    # "statusCode":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/util/HttpRequestHandler;->url:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v15, v0, v12}, Lcom/market2345/http/ApiResponseFactory;->getResponse(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->result:Ljava/lang/Object;

    .line 175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->result:Ljava/lang/Object;

    if-nez v15, :cond_18

    .line 177
    const/16 v15, 0x262

    move-object/from16 v0, p0

    iput v15, v0, Lcom/market2345/util/HttpRequestHandler;->code:I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_4

    .line 251
    .end local v7    # "i":I
    .end local v14    # "statusCode":I
    :catchall_0
    move-exception v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/market2345/util/HttpRequestHandler;->code:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_15

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_15

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v17, Lcom/market2345/util/HttpRequestHandler$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/market2345/util/HttpRequestHandler$3;-><init>(Lcom/market2345/util/HttpRequestHandler;)V

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 266
    :cond_15
    if-eqz v10, :cond_16

    .line 268
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 270
    :cond_16
    if-eqz v12, :cond_17

    .line 274
    :try_start_b
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 275
    .restart local v6    # "entity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_17

    .line 277
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    .line 285
    .end local v6    # "entity":Lorg/apache/http/HttpEntity;
    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/market2345/util/HttpRequestHandler;->mClient:Lcom/market2345/http/AndroidHttpClient;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 286
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/market2345/util/HttpRequestHandler;->mClient:Lcom/market2345/http/AndroidHttpClient;

    throw v15

    .line 181
    .restart local v7    # "i":I
    .restart local v14    # "statusCode":I
    :cond_18
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    if-eqz v15, :cond_b

    .line 183
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/market2345/util/HttpRequestHandler;->mHander:Landroid/os/Handler;

    new-instance v16, Lcom/market2345/util/HttpRequestHandler$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/market2345/util/HttpRequestHandler$2;-><init>(Lcom/market2345/util/HttpRequestHandler;)V

    invoke-virtual/range {v15 .. v16}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_4

    .line 280
    :catch_3
    move-exception v5

    .line 282
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 280
    .end local v7    # "i":I
    .end local v14    # "statusCode":I
    :catch_4
    move-exception v5

    .line 282
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 280
    .local v5, "e":Ljava/lang/Exception;
    :catch_5
    move-exception v5

    .line 282
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 280
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 282
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7
.end method
