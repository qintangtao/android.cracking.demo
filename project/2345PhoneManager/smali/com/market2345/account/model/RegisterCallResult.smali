.class public Lcom/market2345/account/model/RegisterCallResult;
.super Lcom/market2345/account/model/AccountBaseCallResult;
.source "RegisterCallResult.java"


# instance fields
.field public userInfo:Lcom/market2345/account/model/UserInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/market2345/account/model/AccountBaseCallResult;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 4
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 13
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    .local v2, "jObj":Lorg/json/JSONObject;
    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/market2345/account/model/RegisterCallResult;->code:I

    .line 15
    const-string v3, "msg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/market2345/account/model/RegisterCallResult;->msg:Ljava/lang/String;

    .line 16
    iget v3, p0, Lcom/market2345/account/model/RegisterCallResult;->code:I

    if-nez v3, :cond_0

    .line 17
    const-string v3, "userInfo"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 18
    .local v1, "infoObj":Lorg/json/JSONObject;
    new-instance v3, Lcom/market2345/account/model/UserInfo;

    invoke-direct {v3}, Lcom/market2345/account/model/UserInfo;-><init>()V

    iput-object v3, p0, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    .line 19
    iget-object v3, p0, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    invoke-virtual {v3, v1}, Lcom/market2345/account/model/UserInfo;->parseObject(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v1    # "infoObj":Lorg/json/JSONObject;
    .end local v2    # "jObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, -0x1

    iput v3, p0, Lcom/market2345/account/model/RegisterCallResult;->code:I

    .line 23
    const-string v3, "\u8fd4\u56de\u89e3\u6790\u51fa\u9519"

    iput-object v3, p0, Lcom/market2345/account/model/RegisterCallResult;->msg:Ljava/lang/String;

    goto :goto_0
.end method
