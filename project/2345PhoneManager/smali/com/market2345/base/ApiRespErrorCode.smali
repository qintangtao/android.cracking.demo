.class public Lcom/market2345/base/ApiRespErrorCode;
.super Ljava/lang/Object;
.source "ApiRespErrorCode.java"


# instance fields
.field private code:Ljava/lang/String;

.field private errorType:Lcom/market2345/base/ErrorType;

.field private msg:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/market2345/base/http/ApiInternalError;)V
    .locals 1
    .param p1, "apiInternalError"    # Lcom/market2345/base/http/ApiInternalError;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/base/ApiRespErrorCode;->code:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/market2345/base/ErrorType;->BIZ:Lcom/market2345/base/ErrorType;

    iput-object v0, p0, Lcom/market2345/base/ApiRespErrorCode;->errorType:Lcom/market2345/base/ErrorType;

    .line 19
    invoke-virtual {p1}, Lcom/market2345/base/http/ApiInternalError;->getCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/base/ApiRespErrorCode;->code:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/market2345/base/http/ApiInternalError;->getMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/base/ApiRespErrorCode;->msg:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/base/ApiRespErrorCode;->code:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/market2345/base/ErrorType;->BIZ:Lcom/market2345/base/ErrorType;

    iput-object v0, p0, Lcom/market2345/base/ApiRespErrorCode;->errorType:Lcom/market2345/base/ErrorType;

    .line 40
    iput-object p1, p0, Lcom/market2345/base/ApiRespErrorCode;->code:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/market2345/base/ApiRespErrorCode;->msg:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public static createBizError(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/base/ApiRespErrorCode;
    .locals 1
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 30
    new-instance v0, Lcom/market2345/base/ApiRespErrorCode;

    invoke-direct {v0, p0, p1}, Lcom/market2345/base/ApiRespErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createNonBizError(I)Lcom/market2345/base/ApiRespErrorCode;
    .locals 2
    .param p0, "code"    # I

    .prologue
    .line 65
    new-instance v0, Lcom/market2345/base/ApiRespErrorCode;

    sget-object v1, Lcom/market2345/base/http/ApiInternalError;->NETWORK_ERROR:Lcom/market2345/base/http/ApiInternalError;

    invoke-direct {v0, v1}, Lcom/market2345/base/ApiRespErrorCode;-><init>(Lcom/market2345/base/http/ApiInternalError;)V

    .line 66
    .local v0, "error":Lcom/market2345/base/ApiRespErrorCode;
    sget-object v1, Lcom/market2345/base/ErrorType;->NON_BIZ:Lcom/market2345/base/ErrorType;

    iput-object v1, v0, Lcom/market2345/base/ApiRespErrorCode;->errorType:Lcom/market2345/base/ErrorType;

    .line 67
    const/16 v1, 0x12c

    if-le p0, v1, :cond_0

    .line 68
    const/16 v1, 0x194

    if-ne p0, v1, :cond_1

    .line 69
    const-string v1, "\u627e\u4e0d\u5230\u8bf7\u6c42\u5730\u5740"

    iput-object v1, v0, Lcom/market2345/base/ApiRespErrorCode;->msg:Ljava/lang/String;

    .line 74
    :cond_0
    :goto_0
    return-object v0

    .line 70
    :cond_1
    const/16 v1, 0x1f4

    if-lt p0, v1, :cond_0

    .line 71
    const-string v1, "\u670d\u52a1\u5668\u5185\u90e8\u9519\u8bef"

    iput-object v1, v0, Lcom/market2345/base/ApiRespErrorCode;->msg:Ljava/lang/String;

    goto :goto_0
.end method

.method public static createNonBizError(Lcom/market2345/base/http/ApiInternalError;)Lcom/market2345/base/ApiRespErrorCode;
    .locals 2
    .param p0, "apiInternalError"    # Lcom/market2345/base/http/ApiInternalError;

    .prologue
    .line 24
    new-instance v0, Lcom/market2345/base/ApiRespErrorCode;

    invoke-direct {v0, p0}, Lcom/market2345/base/ApiRespErrorCode;-><init>(Lcom/market2345/base/http/ApiInternalError;)V

    .line 25
    .local v0, "apiRespErrorCode":Lcom/market2345/base/ApiRespErrorCode;
    sget-object v1, Lcom/market2345/base/ErrorType;->NON_BIZ:Lcom/market2345/base/ErrorType;

    iput-object v1, v0, Lcom/market2345/base/ApiRespErrorCode;->errorType:Lcom/market2345/base/ErrorType;

    .line 26
    return-object v0
.end method

.method public static createNonBizError(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/base/ApiRespErrorCode;
    .locals 2
    .param p0, "code"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v0, Lcom/market2345/base/ApiRespErrorCode;

    invoke-direct {v0, p0, p1}, Lcom/market2345/base/ApiRespErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .local v0, "apiRespErrorCode":Lcom/market2345/base/ApiRespErrorCode;
    sget-object v1, Lcom/market2345/base/ErrorType;->NON_BIZ:Lcom/market2345/base/ErrorType;

    iput-object v1, v0, Lcom/market2345/base/ApiRespErrorCode;->errorType:Lcom/market2345/base/ErrorType;

    .line 36
    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/market2345/base/ApiRespErrorCode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/market2345/base/ApiRespErrorCode;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public isBiz()Z
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/market2345/base/ApiRespErrorCode;->errorType:Lcom/market2345/base/ErrorType;

    sget-object v1, Lcom/market2345/base/ErrorType;->BIZ:Lcom/market2345/base/ErrorType;

    invoke-virtual {v0, v1}, Lcom/market2345/base/ErrorType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/market2345/base/ApiRespErrorCode;->msg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/market2345/base/ApiRespErrorCode;->msg:Ljava/lang/String;

    .line 60
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/base/ApiRespErrorCode;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
