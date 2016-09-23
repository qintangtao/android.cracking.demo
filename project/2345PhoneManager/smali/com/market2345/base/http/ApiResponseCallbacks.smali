.class public interface abstract Lcom/market2345/base/http/ApiResponseCallbacks;
.super Ljava/lang/Object;
.source "ApiResponseCallbacks.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/market2345/base/http/ApiResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onBizFailure(Lcom/market2345/base/http/ApiResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public abstract onCallBackFailure()V
.end method

.method public abstract onComplete()V
.end method

.method public abstract onRequestFailure(Lcom/market2345/base/http/ApiResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onStart()V
.end method

.method public abstract onSuccess(Lcom/market2345/base/http/ApiResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
