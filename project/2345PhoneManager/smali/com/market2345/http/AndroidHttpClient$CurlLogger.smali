.class Lcom/market2345/http/AndroidHttpClient$CurlLogger;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/http/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurlLogger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/http/AndroidHttpClient;


# direct methods
.method private constructor <init>(Lcom/market2345/http/AndroidHttpClient;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/market2345/http/AndroidHttpClient$CurlLogger;->this$0:Lcom/market2345/http/AndroidHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/http/AndroidHttpClient;Lcom/market2345/http/AndroidHttpClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/http/AndroidHttpClient;
    .param p2, "x1"    # Lcom/market2345/http/AndroidHttpClient$1;

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/market2345/http/AndroidHttpClient$CurlLogger;-><init>(Lcom/market2345/http/AndroidHttpClient;)V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    iget-object v1, p0, Lcom/market2345/http/AndroidHttpClient$CurlLogger;->this$0:Lcom/market2345/http/AndroidHttpClient;

    # getter for: Lcom/market2345/http/AndroidHttpClient;->curlConfiguration:Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;
    invoke-static {v1}, Lcom/market2345/http/AndroidHttpClient;->access$300(Lcom/market2345/http/AndroidHttpClient;)Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;

    move-result-object v0

    .line 570
    .local v0, "configuration":Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;
    if-eqz v0, :cond_0

    # invokes: Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;->isLoggable()Z
    invoke-static {v0}, Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;->access$400(Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    .line 574
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local p1    # "request":Lorg/apache/http/HttpRequest;
    const/4 v1, 0x0

    # invokes: Lcom/market2345/http/AndroidHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/market2345/http/AndroidHttpClient;->access$500(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;->println(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;->access$600(Lcom/market2345/http/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V

    .line 576
    :cond_0
    return-void
.end method
