.class public Lcom/market2345/http/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field public static final METHOD_GET:I = 0x1

.field public static final METHOD_POST:I = 0x2

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/market2345/http/HttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/http/HttpUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputStreamResponse(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 3
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 67
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_0

    .line 75
    :goto_0
    return-object v2

    .line 69
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/market2345/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStringResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 3
    .param p0, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 44
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-nez v1, :cond_0

    .line 52
    :goto_0
    return-object v2

    .line 44
    :cond_0
    :try_start_0
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
