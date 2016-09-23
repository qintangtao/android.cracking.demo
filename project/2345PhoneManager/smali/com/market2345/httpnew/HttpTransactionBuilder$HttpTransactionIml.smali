.class Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;
.super Ljava/lang/Object;
.source "HttpTransactionBuilder.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpTransaction;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/httpnew/HttpTransactionBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HttpTransactionIml"
.end annotation


# instance fields
.field private callback:Lcom/market2345/httpnew/HttpCallback;

.field private cookie:Lorg/apache/http/cookie/Cookie;

.field private currentPage:I

.field private intentPageBuffer:I

.field private keyWord:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private method:Lcom/market2345/httpnew/HttpTransactionBuilder$Method;

.field private pageKey:Ljava/lang/String;

.field private params:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private parseObject:Lcom/market2345/httpnew/ResponseCluster;

.field final synthetic this$0:Lcom/market2345/httpnew/HttpTransactionBuilder;

.field private timeOut:I

.field private url:Ljava/lang/String;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/market2345/httpnew/HttpTransactionBuilder;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    iput-object p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->this$0:Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    sget-object v0, Lcom/market2345/httpnew/HttpTransactionBuilder$Method;->POST:Lcom/market2345/httpnew/HttpTransactionBuilder$Method;

    iput-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->method:Lcom/market2345/httpnew/HttpTransactionBuilder$Method;

    .line 183
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->url:Ljava/lang/String;

    .line 185
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->userAgent:Ljava/lang/String;

    .line 187
    const/16 v0, 0x1388

    iput v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->timeOut:I

    .line 191
    iput v1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->currentPage:I

    .line 193
    iput v1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->intentPageBuffer:I

    .line 210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;

    .line 212
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml$1;-><init>(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Landroid/os/Looper;Lcom/market2345/httpnew/HttpTransactionBuilder;)V

    iput-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->mHandler:Landroid/os/Handler;

    .line 223
    return-void
.end method

.method static synthetic access$002(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1002(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->pageKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Lcom/market2345/httpnew/HttpTransactionBuilder$Method;)Lcom/market2345/httpnew/HttpTransactionBuilder$Method;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;
    .param p1, "x1"    # Lcom/market2345/httpnew/HttpTransactionBuilder$Method;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->method:Lcom/market2345/httpnew/HttpTransactionBuilder$Method;

    return-object p1
.end method

.method static synthetic access$202(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Lorg/apache/http/cookie/Cookie;)Lorg/apache/http/cookie/Cookie;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;
    .param p1, "x1"    # Lorg/apache/http/cookie/Cookie;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->cookie:Lorg/apache/http/cookie/Cookie;

    return-object p1
.end method

.method static synthetic access$302(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->url:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->keyWord:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;
    .param p1, "x1"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->timeOut:I

    return p1
.end method

.method static synthetic access$600(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;)Lcom/market2345/httpnew/HttpCallback;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->callback:Lcom/market2345/httpnew/HttpCallback;

    return-object v0
.end method

.method static synthetic access$702(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpCallback;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;
    .param p1, "x1"    # Lcom/market2345/httpnew/HttpCallback;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->callback:Lcom/market2345/httpnew/HttpCallback;

    return-object p1
.end method

.method static synthetic access$800(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;)Lcom/market2345/httpnew/ResponseCluster;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->parseObject:Lcom/market2345/httpnew/ResponseCluster;

    return-object v0
.end method

.method static synthetic access$802(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;Lcom/market2345/httpnew/ResponseCluster;)Lcom/market2345/httpnew/ResponseCluster;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;
    .param p1, "x1"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->parseObject:Lcom/market2345/httpnew/ResponseCluster;

    return-object p1
.end method

.method static synthetic access$902(Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;
    .param p1, "x1"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->intentPageBuffer:I

    return p1
.end method

.method private getGetRequestUrl(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 382
    .local p2, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 386
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/http/message/BasicNameValuePair;

    .line 387
    .local v2, "nvp":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 388
    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    .line 390
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    .end local v2    # "nvp":Lorg/apache/http/message/BasicNameValuePair;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 396
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "i":I
    .end local p1    # "url":Ljava/lang/String;
    :cond_2
    return-object p1
.end method

.method private getPostRequestEntity(Ljava/util/ArrayList;)Lorg/apache/http/HttpEntity;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Lorg/apache/http/HttpEntity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 411
    .local p1, "params":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 414
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v1, "UTF-8"

    invoke-direct {v0, p1, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    sget-object v4, Lcom/market2345/httpnew/HttpTransactionBuilder$Method;->GET:Lcom/market2345/httpnew/HttpTransactionBuilder$Method;

    iget-object v5, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->method:Lcom/market2345/httpnew/HttpTransactionBuilder$Method;

    if-ne v4, v5, :cond_0

    .line 360
    iget-object v4, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->url:Ljava/lang/String;

    iget-object v5, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v5}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->getGetRequestUrl(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 361
    .local v1, "finalUrl":Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 371
    .end local v1    # "finalUrl":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 363
    :cond_0
    sget-object v4, Lcom/market2345/httpnew/HttpTransactionBuilder$Method;->POST:Lcom/market2345/httpnew/HttpTransactionBuilder$Method;

    iget-object v5, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->method:Lcom/market2345/httpnew/HttpTransactionBuilder$Method;

    if-ne v4, v5, :cond_1

    .line 364
    iget-object v4, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->getPostRequestEntity(Ljava/util/ArrayList;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 365
    .local v0, "entity":Lorg/apache/http/HttpEntity;
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v4, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->url:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 366
    .local v3, "request":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v2, v3

    .line 369
    goto :goto_0

    .line 371
    .end local v0    # "entity":Lorg/apache/http/HttpEntity;
    .end local v3    # "request":Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isMultiPages()Z
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->pageKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyParams()V
    .locals 14

    .prologue
    .line 324
    iget-object v9, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->url:Ljava/lang/String;

    sget-object v10, Lcom/market2345/lm/util/GlobalParams;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 356
    :goto_0
    return-void

    .line 327
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 328
    .local v6, "paramsBuffer":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v9, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 329
    iget-object v9, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 330
    const/4 v5, 0x0

    .line 331
    .local v5, "included":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 332
    invoke-direct {p0}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->isMultiPages()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v9}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->pageKey:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 333
    iget-object v9, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v11, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->pageKey:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->currentPage:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    const/4 v5, 0x1

    .line 331
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 336
    :cond_2
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual {v9}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, "pra":Ljava/lang/String;
    const-string v9, "sign"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "versionCode"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 338
    iget-object v9, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 341
    .end local v7    # "pra":Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->isMultiPages()Z

    move-result v9

    if-eqz v9, :cond_4

    if-nez v5, :cond_4

    .line 342
    iget-object v9, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    iget-object v11, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->pageKey:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v13, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->currentPage:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_4
    iget-object v9, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "versionCode"

    const-string v12, "38"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v1, "builder":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/message/BasicNameValuePair;

    .line 349
    .local v0, "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    const-string v9, ""

    :goto_4
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    .line 351
    .end local v0    # "basicNameValuePair":Lorg/apache/http/message/BasicNameValuePair;
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 352
    .local v8, "sign":Ljava/lang/String;
    invoke-static {v8}, Lcom/market2345/common/util/Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/market2345/common/util/Utils;->strCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "code":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 354
    iget-object v9, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->params:Ljava/util/ArrayList;

    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "sign"

    invoke-direct {v10, v11, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method private verifyUrl()V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->url:Ljava/lang/String;

    sget-object v1, Lcom/market2345/lm/util/GlobalParams;->BASE_URL_GETLIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->url:Ljava/lang/String;

    sget-object v1, Lcom/market2345/lm/util/GlobalParams;->BASE_URL_GETUSERNAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    sget-object v0, Lcom/market2345/lm/util/GlobalParams;->BASE_URL:Ljava/lang/String;

    iput-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->url:Ljava/lang/String;

    .line 320
    :cond_1
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 0

    .prologue
    .line 228
    invoke-static {p0}, Lcom/market2345/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method public executeNextPage()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->parseObject:Lcom/market2345/httpnew/ResponseCluster;

    invoke-interface {v0}, Lcom/market2345/httpnew/ResponseCluster;->hasMore()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->isMultiPages()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->moveToNextPage()V

    .line 235
    invoke-static {p0}, Lcom/market2345/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 237
    :cond_0
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->currentPage:I

    return v0
.end method

.method public getKeyWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->keyWord:Ljava/lang/String;

    return-object v0
.end method

.method public isFastConnection()Z
    .locals 4

    .prologue
    .line 427
    iget-object v2, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 429
    .local v0, "connectMgr":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 430
    .local v1, "mobNetInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-static {v2, v3}, Lcom/market2345/http/MarketAPI;->isConnectionFast(II)Z

    move-result v2

    goto :goto_0
.end method

.method public moveToFirstPage()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x1

    iput v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->intentPageBuffer:I

    .line 450
    return-void
.end method

.method public moveToNextPage()V
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->intentPageBuffer:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->intentPageBuffer:I

    .line 438
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    .line 241
    const/16 v10, -0x64

    .line 242
    .local v10, "responseCode":I
    const-string v6, ""

    .line 243
    .local v6, "msg":Ljava/lang/String;
    const-string v11, ""

    .line 244
    .local v11, "responseEnty":Ljava/lang/String;
    iget v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->intentPageBuffer:I

    iput v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->currentPage:I

    .line 245
    iget-object v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 246
    const/16 v10, 0x26c

    .line 290
    :cond_0
    :goto_0
    const-string v12, "onSearchResult3"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/market2345/base/log/L;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    iget-object v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->callback:Lcom/market2345/httpnew/HttpCallback;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->parseObject:Lcom/market2345/httpnew/ResponseCluster;

    if-eqz v12, :cond_2

    .line 292
    iget-object v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->parseObject:Lcom/market2345/httpnew/ResponseCluster;

    iget-object v13, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->url:Ljava/lang/String;

    invoke-interface {v12, v13}, Lcom/market2345/httpnew/ResponseCluster;->setUrl(Ljava/lang/String;)V

    .line 293
    iget-object v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->keyWord:Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 294
    iget-object v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->parseObject:Lcom/market2345/httpnew/ResponseCluster;

    iget-object v13, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->keyWord:Ljava/lang/String;

    invoke-interface {v12, v13}, Lcom/market2345/httpnew/ResponseCluster;->setKeyWord(Ljava/lang/String;)V

    .line 297
    :cond_1
    :try_start_0
    iget-object v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->parseObject:Lcom/market2345/httpnew/ResponseCluster;

    invoke-interface {v12, v11}, Lcom/market2345/httpnew/ResponseCluster;->fill(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 302
    :goto_1
    iget-object v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->parseObject:Lcom/market2345/httpnew/ResponseCluster;

    invoke-interface {v12, v10}, Lcom/market2345/httpnew/ResponseCluster;->setResponseCode(I)V

    .line 303
    iget-object v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    .line 304
    .local v7, "msg1":Landroid/os/Message;
    iput v10, v7, Landroid/os/Message;->what:I

    .line 305
    iget-object v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->mHandler:Landroid/os/Handler;

    invoke-virtual {v12, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 308
    .end local v7    # "msg1":Landroid/os/Message;
    :cond_2
    return-void

    .line 249
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->verifyUrl()V

    .line 250
    invoke-direct {p0}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->verifyParams()V

    .line 251
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 252
    .local v4, "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    iget v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->timeOut:I

    invoke-static {v4, v12}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 253
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 254
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->cookie:Lorg/apache/http/cookie/Cookie;

    if-eqz v12, :cond_4

    .line 255
    new-instance v1, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v1}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    .line 256
    .local v1, "cookieStore":Lorg/apache/http/client/CookieStore;
    iget-object v12, p0, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->cookie:Lorg/apache/http/cookie/Cookie;

    invoke-interface {v1, v12}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V

    .line 257
    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 259
    .end local v1    # "cookieStore":Lorg/apache/http/client/CookieStore;
    :cond_4
    invoke-direct {p0}, Lcom/market2345/httpnew/HttpTransactionBuilder$HttpTransactionIml;->getRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v8

    .line 260
    .local v8, "request":Lorg/apache/http/client/methods/HttpUriRequest;
    const/4 v9, 0x0

    .line 262
    .local v9, "response":Lorg/apache/http/HttpResponse;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    const/4 v12, 0x3

    if-ge v5, v12, :cond_5

    .line 265
    :try_start_2
    invoke-virtual {v0, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v9

    .line 276
    :cond_5
    :try_start_3
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    .line 277
    const/16 v12, 0xc8

    if-ne v10, v12, :cond_0

    .line 278
    invoke-interface {v9}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 279
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    if-nez v3, :cond_8

    const/4 v11, 0x0

    .line 281
    :goto_3
    if-nez v11, :cond_0

    .line 282
    const/16 v10, 0x262

    goto/16 :goto_0

    .line 267
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v2

    .line 268
    .local v2, "e":Ljava/lang/Exception;
    instance-of v12, v2, Lorg/apache/http/NoHttpResponseException;

    if-eqz v12, :cond_6

    const/4 v12, 0x2

    if-ne v5, v12, :cond_7

    .line 269
    :cond_6
    throw v2

    .line 284
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    .end local v5    # "i":I
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v2

    .line 285
    .local v2, "e":Ljava/io/IOException;
    const/16 v10, 0x258

    .line 288
    goto/16 :goto_0

    .line 271
    .restart local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v4    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    .restart local v5    # "i":I
    .restart local v8    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .restart local v9    # "response":Lorg/apache/http/HttpResponse;
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 262
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 279
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    :cond_8
    invoke-static {v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    goto :goto_3

    .line 286
    .end local v0    # "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpParameters":Lorg/apache/http/params/BasicHttpParams;
    .end local v5    # "i":I
    .end local v8    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    .end local v9    # "response":Lorg/apache/http/HttpResponse;
    :catch_2
    move-exception v2

    .line 287
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 298
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v2

    .line 299
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 300
    const/16 v10, 0x262

    goto/16 :goto_1
.end method
