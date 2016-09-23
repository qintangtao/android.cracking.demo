.class public Lcom/market2345/account/model/ChangePasswordCallResult;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "ChangePasswordCallResult.java"


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/market2345/httpnew/BaseResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 3
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 21
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 22
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/market2345/account/model/ChangePasswordCallResult;->code:I

    .line 23
    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/account/model/ChangePasswordCallResult;->msg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    iput v2, p0, Lcom/market2345/account/model/ChangePasswordCallResult;->code:I

    .line 26
    const-string v2, "\u8fd4\u56de\u89e3\u6790\u51fa\u9519"

    iput-object v2, p0, Lcom/market2345/account/model/ChangePasswordCallResult;->msg:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasMore()Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method
