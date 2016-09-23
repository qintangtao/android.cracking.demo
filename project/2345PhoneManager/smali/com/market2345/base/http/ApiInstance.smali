.class public Lcom/market2345/base/http/ApiInstance;
.super Ljava/lang/Object;
.source "ApiInstance.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/market2345/base/http/ApiResponse;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static mContext:Landroid/content/Context;


# instance fields
.field public apiGateway:Lcom/market2345/base/http/ApiGateway;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/market2345/base/http/ApiGateway",
            "<TF;>;"
        }
    .end annotation
.end field

.field public mApiRespErrorCode:Lcom/market2345/base/ApiRespErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/market2345/base/http/ApiInstance;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    .local p0, "this":Lcom/market2345/base/http/ApiInstance;, "Lcom/market2345/base/http/ApiInstance<TF;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/market2345/base/http/ApiGateway;

    invoke-direct {v0}, Lcom/market2345/base/http/ApiGateway;-><init>()V

    iput-object v0, p0, Lcom/market2345/base/http/ApiInstance;->apiGateway:Lcom/market2345/base/http/ApiGateway;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/market2345/base/http/ApiInstance;->mContext:Landroid/content/Context;

    return-object v0
.end method
