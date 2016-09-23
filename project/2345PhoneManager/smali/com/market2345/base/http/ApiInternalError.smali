.class public final enum Lcom/market2345/base/http/ApiInternalError;
.super Ljava/lang/Enum;
.source "ApiInternalError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/base/http/ApiInternalError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/base/http/ApiInternalError;

.field public static final enum CALLER_ERROR:Lcom/market2345/base/http/ApiInternalError;

.field public static final enum INTERNAL_ERROR:Lcom/market2345/base/http/ApiInternalError;

.field public static final enum NETWORK_DNS_ERROR:Lcom/market2345/base/http/ApiInternalError;

.field public static final enum NETWORK_ERROR:Lcom/market2345/base/http/ApiInternalError;

.field public static final enum PARSE_ERROR:Lcom/market2345/base/http/ApiInternalError;

.field public static final enum REQ_ERROR:Lcom/market2345/base/http/ApiInternalError;

.field public static final enum UNKNOWN_ERROR:Lcom/market2345/base/http/ApiInternalError;


# instance fields
.field private code:Ljava/lang/String;

.field private msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 11
    new-instance v0, Lcom/market2345/base/http/ApiInternalError;

    const-string v1, "INTERNAL_ERROR"

    const-string v2, "-4"

    const-string v3, "\u5185\u90e8\u9519\u8bef:\u5931\u8d25\u54cd\u5e94\u5904\u7406"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/market2345/base/http/ApiInternalError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/market2345/base/http/ApiInternalError;->INTERNAL_ERROR:Lcom/market2345/base/http/ApiInternalError;

    .line 12
    new-instance v0, Lcom/market2345/base/http/ApiInternalError;

    const-string v1, "CALLER_ERROR"

    const-string v2, "-3"

    const-string v3, "\u8c03\u7528\u9519\u8bef:\u8c03\u7528\u65b9\u51fa\u9519"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/market2345/base/http/ApiInternalError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/market2345/base/http/ApiInternalError;->CALLER_ERROR:Lcom/market2345/base/http/ApiInternalError;

    .line 13
    new-instance v0, Lcom/market2345/base/http/ApiInternalError;

    const-string v1, "UNKNOWN_ERROR"

    const-string v2, "-5"

    const-string v3, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/market2345/base/http/ApiInternalError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/market2345/base/http/ApiInternalError;->UNKNOWN_ERROR:Lcom/market2345/base/http/ApiInternalError;

    .line 15
    new-instance v0, Lcom/market2345/base/http/ApiInternalError;

    const-string v1, "PARSE_ERROR"

    const-string v2, "-2"

    const-string v3, "\u89e3\u6790\u670d\u52a1\u5668\u7684\u8fd4\u56de\u65f6\u53d1\u751f\u9519\u8bef"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/market2345/base/http/ApiInternalError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/market2345/base/http/ApiInternalError;->PARSE_ERROR:Lcom/market2345/base/http/ApiInternalError;

    .line 16
    new-instance v0, Lcom/market2345/base/http/ApiInternalError;

    const-string v1, "REQ_ERROR"

    const-string v2, "-1"

    const-string v3, "\u8bf7\u6c42\u53d1\u9001\u5931\u8d25"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/market2345/base/http/ApiInternalError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/market2345/base/http/ApiInternalError;->REQ_ERROR:Lcom/market2345/base/http/ApiInternalError;

    .line 17
    new-instance v0, Lcom/market2345/base/http/ApiInternalError;

    const-string v1, "NETWORK_ERROR"

    const/4 v2, 0x5

    const-string v3, "-10"

    const-string v4, "\u7f51\u7edc\u5f02\u5e38\uff0c\u8bf7\u786e\u8ba4\u8fde\u63a5\u6210\u529f\u540e\u518d\u5c1d\u8bd5"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/market2345/base/http/ApiInternalError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/market2345/base/http/ApiInternalError;->NETWORK_ERROR:Lcom/market2345/base/http/ApiInternalError;

    .line 18
    new-instance v0, Lcom/market2345/base/http/ApiInternalError;

    const-string v1, "NETWORK_DNS_ERROR"

    const/4 v2, 0x6

    const-string v3, "-11"

    const-string v4, "\u57df\u540d\u65e0\u6cd5\u89e3\u6790"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/market2345/base/http/ApiInternalError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/market2345/base/http/ApiInternalError;->NETWORK_DNS_ERROR:Lcom/market2345/base/http/ApiInternalError;

    .line 10
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/market2345/base/http/ApiInternalError;

    sget-object v1, Lcom/market2345/base/http/ApiInternalError;->INTERNAL_ERROR:Lcom/market2345/base/http/ApiInternalError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/market2345/base/http/ApiInternalError;->CALLER_ERROR:Lcom/market2345/base/http/ApiInternalError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/market2345/base/http/ApiInternalError;->UNKNOWN_ERROR:Lcom/market2345/base/http/ApiInternalError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/market2345/base/http/ApiInternalError;->PARSE_ERROR:Lcom/market2345/base/http/ApiInternalError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/market2345/base/http/ApiInternalError;->REQ_ERROR:Lcom/market2345/base/http/ApiInternalError;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/market2345/base/http/ApiInternalError;->NETWORK_ERROR:Lcom/market2345/base/http/ApiInternalError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/market2345/base/http/ApiInternalError;->NETWORK_DNS_ERROR:Lcom/market2345/base/http/ApiInternalError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/base/http/ApiInternalError;->$VALUES:[Lcom/market2345/base/http/ApiInternalError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/market2345/base/http/ApiInternalError;->code:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/market2345/base/http/ApiInternalError;->msg:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static getByCode(Ljava/lang/String;)Lcom/market2345/base/http/ApiInternalError;
    .locals 5
    .param p0, "code"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/market2345/base/http/ApiInternalError;->values()[Lcom/market2345/base/http/ApiInternalError;

    move-result-object v0

    .local v0, "arr$":[Lcom/market2345/base/http/ApiInternalError;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 37
    .local v1, "e":Lcom/market2345/base/http/ApiInternalError;
    iget-object v4, v1, Lcom/market2345/base/http/ApiInternalError;->code:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    .end local v1    # "e":Lcom/market2345/base/http/ApiInternalError;
    :goto_1
    return-object v1

    .line 36
    .restart local v1    # "e":Lcom/market2345/base/http/ApiInternalError;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    .end local v1    # "e":Lcom/market2345/base/http/ApiInternalError;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/base/http/ApiInternalError;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/market2345/base/http/ApiInternalError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/base/http/ApiInternalError;

    return-object v0
.end method

.method public static values()[Lcom/market2345/base/http/ApiInternalError;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/market2345/base/http/ApiInternalError;->$VALUES:[Lcom/market2345/base/http/ApiInternalError;

    invoke-virtual {v0}, [Lcom/market2345/base/http/ApiInternalError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/base/http/ApiInternalError;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/base/http/ApiInternalError;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/market2345/base/http/ApiInternalError;->msg:Ljava/lang/String;

    return-object v0
.end method
