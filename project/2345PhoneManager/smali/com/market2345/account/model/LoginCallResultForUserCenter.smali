.class public Lcom/market2345/account/model/LoginCallResultForUserCenter;
.super Lcom/market2345/account/model/RegisterCallResult;
.source "LoginCallResultForUserCenter.java"


# instance fields
.field private showCheckCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/market2345/account/model/RegisterCallResult;-><init>()V

    return-void
.end method

.method private getMSG(I)Ljava/lang/String;
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, "msg":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 69
    :pswitch_0
    const-string v0, "\u767b\u5f55\u5931\u8d25"

    .line 72
    :goto_0
    return-object v0

    .line 54
    :pswitch_1
    const-string v0, "\u7528\u6237\u540d\u6216\u5bc6\u7801\u9519\u8bef"

    .line 55
    goto :goto_0

    .line 57
    :pswitch_2
    const-string v0, "\u767b\u5f55\u6210\u529f"

    .line 58
    goto :goto_0

    .line 60
    :pswitch_3
    const-string v0, "\u5e10\u53f7\u9700\u8981\u6fc0\u6d3b"

    .line 61
    goto :goto_0

    .line 63
    :pswitch_4
    const-string v0, "\u9a8c\u8bc1\u7801\u9519\u8bef"

    .line 64
    goto :goto_0

    .line 66
    :pswitch_5
    const-string v0, "ip\u88ab\u9650\u5236\u8bf7\u8054\u7cfb\u5ba2\u670d"

    .line 67
    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private getPassMiddle(I)I
    .locals 1
    .param p1, "passId"    # I

    .prologue
    .line 47
    rem-int/lit16 v0, p1, 0xbb8

    if-nez v0, :cond_0

    div-int/lit16 v0, p1, 0xbb8

    :goto_0
    return v0

    :cond_0
    div-int/lit16 v0, p1, 0xbb8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 6
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 17
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v2, "sts"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->code:I

    .line 19
    iget v2, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->code:I

    invoke-direct {p0, v2}, Lcom/market2345/account/model/LoginCallResultForUserCenter;->getMSG(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->msg:Ljava/lang/String;

    .line 20
    const-string v2, "display"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->showCheckCode:Ljava/lang/String;

    .line 21
    iget v2, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->code:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 23
    new-instance v2, Lcom/market2345/account/model/UserInfo;

    invoke-direct {v2}, Lcom/market2345/account/model/UserInfo;-><init>()V

    iput-object v2, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->userInfo:Lcom/market2345/account/model/UserInfo;

    .line 24
    iget-object v2, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->userInfo:Lcom/market2345/account/model/UserInfo;

    const-string v3, "uid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/market2345/account/model/UserInfo;->uId:Ljava/lang/String;

    .line 25
    iget-object v2, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->userInfo:Lcom/market2345/account/model/UserInfo;

    const-string v3, "passid"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/market2345/account/model/UserInfo;->passId:Ljava/lang/String;

    .line 26
    iget-object v2, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->userInfo:Lcom/market2345/account/model/UserInfo;

    const-string v3, "token"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/market2345/account/model/UserInfo;->lastToken:Ljava/lang/String;

    .line 27
    iget-object v2, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->userInfo:Lcom/market2345/account/model/UserInfo;

    const-string v3, "0"

    iput-object v3, v2, Lcom/market2345/account/model/UserInfo;->regType:Ljava/lang/String;

    .line 28
    iget-object v2, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->userInfo:Lcom/market2345/account/model/UserInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://my.2345.com/member/avatar/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v4, v4, Lcom/market2345/account/model/UserInfo;->passId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/market2345/account/model/LoginCallResultForUserCenter;->getPassMiddle(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v4, v4, Lcom/market2345/account/model/UserInfo;->passId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_middle.jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/market2345/account/model/UserInfo;->avatarURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    iput v5, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->code:I

    .line 33
    const-string v2, "\u8fd4\u56de\u89e3\u6790\u51fa\u9519"

    iput-object v2, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->msg:Ljava/lang/String;

    goto :goto_0
.end method

.method public isNeedCheckCode()Z
    .locals 2

    .prologue
    .line 39
    const-string v0, "block"

    iget-object v1, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->showCheckCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSignSuccess()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 43
    iget v1, p0, Lcom/market2345/account/model/LoginCallResultForUserCenter;->code:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
