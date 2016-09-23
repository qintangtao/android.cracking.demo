.class public Lcom/market2345/base/http/Http;
.super Ljava/lang/Object;
.source "Http.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/base/http/Http$Response;
    }
.end annotation


# instance fields
.field private httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method private getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 71
    iget-object v9, p0, Lcom/market2345/base/http/Http;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    if-nez v9, :cond_0

    .line 72
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 73
    .local v1, "httpParams":Lorg/apache/http/params/BasicHttpParams;
    sget-object v9, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v9}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 74
    const-string v9, "UTF-8"

    invoke-static {v1, v9}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 75
    const/4 v9, 0x1

    invoke-static {v1, v9}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 76
    const v9, 0xea60

    invoke-static {v1, v9}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 77
    const/16 v9, 0x7530

    invoke-static {v1, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 78
    const/16 v9, 0x4000

    invoke-static {v1, v9}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 79
    invoke-static {v1, v10}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 80
    invoke-static {v1, v10}, Lorg/apache/http/client/params/HttpClientParams;->setAuthenticating(Lorg/apache/http/params/HttpParams;Z)V

    .line 82
    new-instance v4, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 83
    .local v4, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    .line 84
    .local v5, "socketFactory":Lorg/apache/http/conn/scheme/PlainSocketFactory;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "http"

    const/16 v10, 0x50

    invoke-direct {v2, v9, v5, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 85
    .local v2, "httpScheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v4, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 87
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v7

    .line 88
    .local v7, "trustStore":Ljava/security/KeyStore;
    invoke-virtual {v7, v11, v11}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 89
    new-instance v6, Lcom/market2345/base/http/MySSLSocketFactory;

    invoke-direct {v6, v7}, Lcom/market2345/base/http/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 90
    .local v6, "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    sget-object v8, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    .line 91
    .local v8, "x509HostnameVerifier":Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    invoke-virtual {v6, v8}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    .line 92
    invoke-static {v8}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 93
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v9, "https"

    const/16 v10, 0x1bb

    invoke-direct {v3, v9, v6, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 94
    .local v3, "httpsScheme":Lorg/apache/http/conn/scheme/Scheme;
    invoke-virtual {v4, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 96
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 97
    .local v0, "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v9, p0, Lcom/market2345/base/http/Http;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 99
    .end local v0    # "connManager":Lorg/apache/http/conn/ClientConnectionManager;
    .end local v1    # "httpParams":Lorg/apache/http/params/BasicHttpParams;
    .end local v2    # "httpScheme":Lorg/apache/http/conn/scheme/Scheme;
    .end local v3    # "httpsScheme":Lorg/apache/http/conn/scheme/Scheme;
    .end local v4    # "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v5    # "socketFactory":Lorg/apache/http/conn/scheme/PlainSocketFactory;
    .end local v6    # "sslSocketFactory":Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .end local v7    # "trustStore":Ljava/security/KeyStore;
    .end local v8    # "x509HostnameVerifier":Lorg/apache/http/conn/ssl/X509HostnameVerifier;
    :cond_0
    iget-object v9, p0, Lcom/market2345/base/http/Http;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v9
.end method

.method private makeRequest(Ljava/util/Map;Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/market2345/base/http/Http$Response;
    .locals 6
    .param p2, "method"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ")",
            "Lcom/market2345/base/http/Http$Response;"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 61
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v4, v5}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 65
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/market2345/base/http/Http;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 64
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lcom/market2345/base/http/Http$Response;

    invoke-virtual {v0, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/market2345/base/http/Http$Response;-><init>(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v4
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/util/Map;)Lcom/market2345/base/http/Http$Response;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/market2345/base/http/Http$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "uri":Ljava/net/URI;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, p2, v1}, Lcom/market2345/base/http/Http;->makeRequest(Ljava/util/Map;Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/market2345/base/http/Http$Response;

    move-result-object v1

    return-object v1
.end method

.method public post(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpEntity;)Lcom/market2345/base/http/Http$Response;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "httpEntity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/HttpEntity;",
            ")",
            "Lcom/market2345/base/http/Http$Response;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 53
    .local v1, "uri":Ljava/net/URI;
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 54
    .local v0, "method":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v0, p3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 55
    invoke-direct {p0, p2, v0}, Lcom/market2345/base/http/Http;->makeRequest(Ljava/util/Map;Lorg/apache/http/client/methods/HttpRequestBase;)Lcom/market2345/base/http/Http$Response;

    move-result-object v2

    return-object v2
.end method
