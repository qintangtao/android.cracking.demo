.class public abstract Lcom/market2345/base/http/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# instance fields
.field protected httpResponseCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "httpCode"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/market2345/base/http/ApiResponse;->httpResponseCode:I

    .line 18
    return-void
.end method


# virtual methods
.method abstract consumeResponse(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/market2345/base/http/ApiResponse;->httpResponseCode:I

    return v0
.end method

.method public isSuccess()Z
    .locals 2

    .prologue
    .line 27
    iget v0, p0, Lcom/market2345/base/http/ApiResponse;->httpResponseCode:I

    div-int/lit8 v0, v0, 0x64

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
