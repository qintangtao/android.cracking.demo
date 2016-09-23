.class public Lcom/market2345/account/model/HasCheckCodeCallResult;
.super Lcom/market2345/account/model/AccountBaseCallResult;
.source "HasCheckCodeCallResult.java"


# instance fields
.field public code:I

.field public msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/market2345/account/model/AccountBaseCallResult;-><init>()V

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
    .line 15
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    .local v1, "obj":Lorg/json/JSONObject;
    const-string v2, "code"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/market2345/account/model/HasCheckCodeCallResult;->code:I

    .line 17
    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/account/model/HasCheckCodeCallResult;->msg:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .end local v1    # "obj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 18
    :catch_0
    move-exception v0

    .line 19
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput v2, p0, Lcom/market2345/account/model/HasCheckCodeCallResult;->code:I

    .line 20
    const-string v2, "\u8fd4\u56de\u89e3\u6790\u51fa\u9519"

    iput-object v2, p0, Lcom/market2345/account/model/HasCheckCodeCallResult;->msg:Ljava/lang/String;

    goto :goto_0
.end method
