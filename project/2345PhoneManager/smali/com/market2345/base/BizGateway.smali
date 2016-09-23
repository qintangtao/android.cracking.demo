.class public Lcom/market2345/base/BizGateway;
.super Ljava/lang/Object;
.source "BizGateway.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/market2345/base/http/ApiResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final apiGateway:Lcom/market2345/base/http/ApiGateway;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/market2345/base/http/ApiGateway",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/base/http/ApiGateway;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/base/http/ApiGateway",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/market2345/base/BizGateway;, "Lcom/market2345/base/BizGateway<TT;>;"
    .local p1, "apiGateway":Lcom/market2345/base/http/ApiGateway;, "Lcom/market2345/base/http/ApiGateway<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/market2345/base/BizGateway;->apiGateway:Lcom/market2345/base/http/ApiGateway;

    .line 19
    return-void
.end method
