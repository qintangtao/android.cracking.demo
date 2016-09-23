.class public abstract Lcom/market2345/httpnew/BaseResponseData;
.super Ljava/lang/Object;
.source "BaseResponseData.java"

# interfaces
.implements Lcom/market2345/httpnew/ResponseCluster;


# instance fields
.field public keyWord:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public responseCode:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setKeyWord(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyWord"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/market2345/httpnew/BaseResponseData;->keyWord:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/market2345/httpnew/BaseResponseData;->msg:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setResponseCode(I)V
    .locals 0
    .param p1, "responseCode"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/market2345/httpnew/BaseResponseData;->responseCode:I

    .line 25
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/market2345/httpnew/BaseResponseData;->url:Ljava/lang/String;

    .line 19
    return-void
.end method
