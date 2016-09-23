.class public Lcom/market2345/base/http/Http$Response;
.super Ljava/lang/Object;
.source "Http.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/base/http/Http;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation


# instance fields
.field private responseBody:Ljava/io/InputStream;

.field private statusCode:I


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, p0, Lcom/market2345/base/http/Http$Response;->statusCode:I

    .line 108
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/base/http/Http$Response;->responseBody:Ljava/io/InputStream;

    .line 109
    return-void
.end method


# virtual methods
.method public getResponseBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/market2345/base/http/Http$Response;->responseBody:Ljava/io/InputStream;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/market2345/base/http/Http$Response;->statusCode:I

    return v0
.end method
