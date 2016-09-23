.class public abstract Lcom/market2345/account/model/AccountBaseCallResult;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "AccountBaseCallResult.java"


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/market2345/httpnew/BaseResponseData;-><init>()V

    .line 10
    const/4 v0, -0x1

    iput v0, p0, Lcom/market2345/account/model/AccountBaseCallResult;->code:I

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/account/model/AccountBaseCallResult;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasMore()Z
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x0

    return v0
.end method
