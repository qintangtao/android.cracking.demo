.class public Lcom/market2345/http/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# static fields
.field private static MARKET_CLIENT:Ljava/lang/String;

.field private static mInstance:Lcom/market2345/http/HttpClientFactory;


# instance fields
.field private mHttpClientMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/http/AndroidHttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string v0, "market"

    sput-object v0, Lcom/market2345/http/HttpClientFactory;->MARKET_CLIENT:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    monitor-enter p0

    .line 40
    :try_start_0
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/market2345/http/HttpClientFactory;->mHttpClientMap:Ljava/util/WeakHashMap;

    .line 41
    monitor-exit p0

    .line 42
    return-void

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized close()V
    .locals 3

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/market2345/http/HttpClientFactory;->mHttpClientMap:Ljava/util/WeakHashMap;

    sget-object v2, Lcom/market2345/http/HttpClientFactory;->MARKET_CLIENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/market2345/http/HttpClientFactory;->mHttpClientMap:Ljava/util/WeakHashMap;

    sget-object v2, Lcom/market2345/http/HttpClientFactory;->MARKET_CLIENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/http/AndroidHttpClient;

    .line 115
    .local v0, "client":Lcom/market2345/http/AndroidHttpClient;
    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Lcom/market2345/http/AndroidHttpClient;->close()V

    .line 121
    .end local v0    # "client":Lcom/market2345/http/AndroidHttpClient;
    :cond_0
    iget-object v1, p0, Lcom/market2345/http/HttpClientFactory;->mHttpClientMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->clear()V

    .line 122
    const/4 v1, 0x0

    sput-object v1, Lcom/market2345/http/HttpClientFactory;->mInstance:Lcom/market2345/http/HttpClientFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    monitor-exit p0

    return-void

    .line 112
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static get()Lcom/market2345/http/HttpClientFactory;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/market2345/http/HttpClientFactory;->mInstance:Lcom/market2345/http/HttpClientFactory;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/market2345/http/HttpClientFactory;

    invoke-direct {v0}, Lcom/market2345/http/HttpClientFactory;-><init>()V

    sput-object v0, Lcom/market2345/http/HttpClientFactory;->mInstance:Lcom/market2345/http/HttpClientFactory;

    .line 50
    :cond_0
    sget-object v0, Lcom/market2345/http/HttpClientFactory;->mInstance:Lcom/market2345/http/HttpClientFactory;

    return-object v0
.end method

.method private updateMarketHeader(Ljava/lang/String;)V
    .locals 3
    .param p1, "gHeader"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/market2345/http/HttpClientFactory;->mHttpClientMap:Ljava/util/WeakHashMap;

    sget-object v2, Lcom/market2345/http/HttpClientFactory;->MARKET_CLIENT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/http/AndroidHttpClient;

    .line 93
    .local v0, "client":Lcom/market2345/http/AndroidHttpClient;
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/market2345/http/AndroidHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "G-Header"

    invoke-interface {v1, v2, p1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 97
    :cond_0
    return-void
.end method


# virtual methods
.method public getHttpClient()Lcom/market2345/http/AndroidHttpClient;
    .locals 2

    .prologue
    .line 75
    const-string v1, ""

    invoke-static {v1}, Lcom/market2345/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Lcom/market2345/http/AndroidHttpClient;

    move-result-object v0

    .line 82
    .local v0, "client":Lcom/market2345/http/AndroidHttpClient;
    return-object v0
.end method
