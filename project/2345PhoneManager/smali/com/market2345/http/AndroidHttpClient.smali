.class public final Lcom/market2345/http/AndroidHttpClient;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/client/HttpClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/http/AndroidHttpClient$CurlLogger;,
        Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;
    }
.end annotation


# static fields
.field public static DEFAULT_SYNC_MIN_GZIP_BYTES:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "AndroidHttpClient"

.field private static final sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private volatile curlConfiguration:Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;

.field private final delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private mIsLoadCookies:Z

.field private mLeakedException:Ljava/lang/RuntimeException;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    const-wide/16 v0, 0x100

    sput-wide v0, Lcom/market2345/http/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    .line 95
    new-instance v0, Lcom/market2345/http/AndroidHttpClient$1;

    invoke-direct {v0}, Lcom/market2345/http/AndroidHttpClient$1;-><init>()V

    sput-object v0, Lcom/market2345/http/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "ccm"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/http/AndroidHttpClient;->mIsLoadCookies:Z

    .line 183
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 187
    new-instance v0, Lcom/market2345/http/AndroidHttpClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/market2345/http/AndroidHttpClient$2;-><init>(Lcom/market2345/http/AndroidHttpClient;Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 213
    return-void
.end method

.method static synthetic access$000()Lorg/apache/http/HttpRequestInterceptor;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/market2345/http/AndroidHttpClient;->sThreadCheckInterceptor:Lorg/apache/http/HttpRequestInterceptor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/market2345/http/AndroidHttpClient;)Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/http/AndroidHttpClient;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->curlConfiguration:Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "x1"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/market2345/http/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCompressedEntity(Ljava/io/InputStream;)Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 11
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 456
    const/16 v6, 0x1000

    new-array v1, v6, [B

    .line 457
    .local v1, "buffer":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 459
    .local v2, "bytesRead":I
    int-to-long v6, v2

    invoke-static {}, Lcom/market2345/http/AndroidHttpClient;->getMinGzipSize()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 461
    new-array v3, v2, [B

    .line 462
    .local v3, "data":[B
    invoke-static {v1, v10, v3, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 463
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v4, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 464
    .local v4, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 482
    .end local v3    # "data":[B
    :goto_0
    return-object v4

    .line 469
    .end local v4    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 470
    .local v0, "arr":Ljava/io/ByteArrayOutputStream;
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 474
    .local v5, "zipper":Ljava/io/OutputStream;
    :cond_1
    invoke-virtual {v5, v1, v10, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 475
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v6, -0x1

    if-ne v2, v6, :cond_1

    .line 477
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 478
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 479
    new-instance v4, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 480
    .restart local v4    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    const-string v6, "gzip"

    invoke-virtual {v4, v6}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCompressedEntity([B)Lorg/apache/http/entity/AbstractHttpEntity;
    .locals 8
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    array-length v3, p0

    int-to-long v4, v3

    invoke-static {}, Lcom/market2345/http/AndroidHttpClient;->getMinGzipSize()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 431
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v1, p0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 442
    .local v1, "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :goto_0
    return-object v1

    .line 435
    .end local v1    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 436
    .local v0, "arr":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 437
    .local v2, "zipper":Ljava/io/OutputStream;
    invoke-virtual {v2, p0}, Ljava/io/OutputStream;->write([B)V

    .line 438
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 439
    new-instance v1, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 440
    .restart local v1    # "entity":Lorg/apache/http/entity/AbstractHttpEntity;
    const-string v3, "gzip"

    invoke-virtual {v1, v3}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMinGzipSize()J
    .locals 2

    .prologue
    .line 491
    sget-wide v0, Lcom/market2345/http/AndroidHttpClient;->DEFAULT_SYNC_MIN_GZIP_BYTES:J

    return-wide v0
.end method

.method public static getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    .locals 5
    .param p0, "entity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 324
    .local v2, "responseStream":Ljava/io/InputStream;
    if-nez v2, :cond_0

    move-object v3, v2

    .line 334
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .local v3, "responseStream":Ljava/io/InputStream;
    :goto_0
    return-object v3

    .line 326
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_0
    invoke-interface {p0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v1

    .line 327
    .local v1, "header":Lorg/apache/http/Header;
    if-nez v1, :cond_1

    move-object v3, v2

    .line 328
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    goto :goto_0

    .line 329
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "contentEncoding":Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v3, v2

    .line 331
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    goto :goto_0

    .line 332
    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_2
    const-string v4, "gzip"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 333
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v3, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    move-object v2, v3

    .end local v3    # "responseStream":Ljava/io/InputStream;
    .restart local v2    # "responseStream":Ljava/io/InputStream;
    :cond_3
    move-object v3, v2

    .line 334
    .end local v2    # "responseStream":Ljava/io/InputStream;
    .restart local v3    # "responseStream":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public static modifyRequestContentType(Lorg/apache/http/HttpRequest;Ljava/lang/String;)V
    .locals 1
    .param p0, "request"    # Lorg/apache/http/HttpRequest;
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string v0, "Content-Type"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method public static modifyRequestToAcceptGzipResponse(Lorg/apache/http/HttpRequest;)V
    .locals 2
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 295
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-interface {p0, v0, v1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    return-void
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/market2345/http/AndroidHttpClient;
    .locals 2
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/market2345/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/http/AndroidHttpClient;

    move-result-object v0

    .line 169
    .local v0, "client":Lcom/market2345/http/AndroidHttpClient;
    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/http/AndroidHttpClient;
    .locals 9
    .param p0, "userAgent"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x1388

    const/16 v8, 0x50

    const/16 v7, 0x14

    const/4 v6, 0x0

    .line 118
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 122
    .local v3, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v3, v6}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 125
    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 126
    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 127
    const/16 v5, 0x2000

    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 130
    const/16 v5, 0x3c

    invoke-static {v3, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 132
    new-instance v0, Lorg/apache/http/conn/params/ConnPerRouteBean;

    invoke-direct {v0, v7}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    .line 134
    .local v0, "connPerRoute":Lorg/apache/http/conn/params/ConnPerRouteBean;
    new-instance v1, Lorg/apache/http/HttpHost;

    const-string v5, "locahost"

    invoke-direct {v1, v5, v8}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 135
    .local v1, "localhost":Lorg/apache/http/HttpHost;
    new-instance v5, Lorg/apache/http/conn/routing/HttpRoute;

    invoke-direct {v5, v1}, Lorg/apache/http/conn/routing/HttpRoute;-><init>(Lorg/apache/http/HttpHost;)V

    invoke-virtual {v0, v5, v7}, Lorg/apache/http/conn/params/ConnPerRouteBean;->setMaxForRoute(Lorg/apache/http/conn/routing/HttpRoute;I)V

    .line 136
    invoke-static {v3, v0}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 140
    invoke-static {v3, v6}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 147
    invoke-static {v3, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 148
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 149
    .local v4, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v7

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 150
    new-instance v5, Lorg/apache/http/conn/scheme/Scheme;

    const-string v6, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v7

    const/16 v8, 0x1bb

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v4, v5}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 152
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 156
    .local v2, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v5, Lcom/market2345/http/AndroidHttpClient;

    invoke-direct {v5, v2, v3}, Lcom/market2345/http/AndroidHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v5
.end method

.method private static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 18
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "logAuthToken"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 586
    .local v3, "builder":Ljava/lang/StringBuilder;
    const-string v13, "curl "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/http/Header;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_0
    if-ge v8, v9, :cond_2

    aget-object v7, v2, v8

    .line 590
    .local v7, "header":Lorg/apache/http/Header;
    if-nez p1, :cond_1

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Authorization"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-interface {v7}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Cookie"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 588
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 594
    :cond_1
    const-string v13, "--header \""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v13, "\" "

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 599
    .end local v7    # "header":Lorg/apache/http/Header;
    :cond_2
    invoke-interface/range {p0 .. p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v12

    .line 604
    .local v12, "uri":Ljava/net/URI;
    move-object/from16 v0, p0

    instance-of v13, v0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v13, :cond_3

    move-object/from16 v13, p0

    .line 606
    check-cast v13, Lorg/apache/http/impl/client/RequestWrapper;

    invoke-virtual {v13}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v10

    .line 607
    .local v10, "original":Lorg/apache/http/HttpRequest;
    instance-of v13, v10, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v13, :cond_3

    .line 609
    check-cast v10, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local v10    # "original":Lorg/apache/http/HttpRequest;
    invoke-interface {v10}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v12

    .line 613
    :cond_3
    const-string v13, "\""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 615
    const-string v13, "\""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    move-object/from16 v0, p0

    instance-of v13, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v13, :cond_4

    move-object/from16 v5, p0

    .line 619
    check-cast v5, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 620
    .local v5, "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v5}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 621
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 623
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v14

    const-wide/16 v16, 0x400

    cmp-long v13, v14, v16

    if-gez v13, :cond_5

    .line 625
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 626
    .local v11, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v4, v11}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 627
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v6

    .line 630
    .local v6, "entityString":Ljava/lang/String;
    const-string v13, " --data-ascii \""

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v5    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v6    # "entityString":Ljava/lang/String;
    .end local v11    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_4
    :goto_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 634
    .restart local v4    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v5    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_5
    const-string v13, " [TOO MUCH DATA TO INCLUDE]"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method


# virtual methods
.method public addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 2
    .param p1, "interceptor"    # Lorg/apache/http/HttpRequestInterceptor;

    .prologue
    .line 240
    if-nez p1, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getRequestInterceptorCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    goto :goto_0
.end method

.method public addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 2
    .param p1, "interceptor"    # Lorg/apache/http/HttpResponseInterceptor;

    .prologue
    .line 258
    if-nez p1, :cond_0

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v1, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getResponseInterceptorCount()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;I)V

    goto :goto_0
.end method

.method public clearCookies()V
    .locals 2

    .prologue
    .line 663
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 665
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 667
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/market2345/http/AndroidHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 348
    :cond_0
    return-void
.end method

.method public disableCurlLogging()V
    .locals 1

    .prologue
    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->curlConfiguration:Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;

    .line 560
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 542
    if-nez p1, :cond_0

    .line 544
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/4 v0, 0x7

    if-le p2, v0, :cond_2

    .line 548
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Level is out of range [2..7]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_2
    new-instance v0, Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILcom/market2345/http/AndroidHttpClient$1;)V

    iput-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->curlConfiguration:Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;

    .line 552
    return-void
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 410
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p4, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 415
    .local p3, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 400
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/http/client/methods/HttpUriRequest;",
            "Lorg/apache/http/client/ResponseHandler",
            "<+TT;>;",
            "Lorg/apache/http/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .prologue
    .line 405
    .local p2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<+TT;>;"
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;Lorg/apache/http/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "target"    # Lorg/apache/http/HttpHost;
    .param p2, "request"    # Lorg/apache/http/HttpRequest;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 395
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 277
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 278
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "AndroidHttpClient"

    const-string v1, "Leak found"

    iget-object v2, p0, Lcom/market2345/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->mLeakedException:Ljava/lang/RuntimeException;

    .line 283
    :cond_0
    return-void
.end method

.method public getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method public getCookies()Lorg/apache/http/client/CookieStore;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCookieStore()Lorg/apache/http/client/CookieStore;

    move-result-object v0

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public isLoadOwnCookies()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/market2345/http/AndroidHttpClient;->mIsLoadCookies:Z

    return v0
.end method

.method public loadCookies(Lorg/apache/http/client/CookieStore;)V
    .locals 1
    .param p1, "cookies"    # Lorg/apache/http/client/CookieStore;

    .prologue
    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/http/AndroidHttpClient;->mIsLoadCookies:Z

    .line 224
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setCookieStore(Lorg/apache/http/client/CookieStore;)V

    .line 225
    return-void
.end method

.method public removeRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V
    .locals 2
    .param p1, "interceptor"    # Lorg/apache/http/HttpRequestInterceptor;

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public removeResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V
    .locals 2
    .param p1, "interceptor"    # Lorg/apache/http/HttpResponseInterceptor;

    .prologue
    .line 267
    if-nez p1, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeResponseInterceptorByClass(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public useDefaultConnection()V
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1}, Lorg/apache/http/params/HttpParams;->removeParameter(Ljava/lang/String;)Z

    .line 366
    return-void
.end method

.method public useProxyConnection(Lorg/apache/http/HttpHost;)V
    .locals 2
    .param p1, "proxy"    # Lorg/apache/http/HttpHost;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/market2345/http/AndroidHttpClient;->delegate:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.route.default-proxy"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 358
    return-void
.end method
