.class public final enum Lcom/market2345/base/ServerRespCode;
.super Ljava/lang/Enum;
.source "ServerRespCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/base/ServerRespCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/base/ServerRespCode;

.field public static final enum SDP_OK:Lcom/market2345/base/ServerRespCode;


# instance fields
.field private final code:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final serverIndex:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/market2345/base/ServerRespCode;

    const-string v1, "SDP_OK"

    const-string v3, "code"

    const-string v4, "0"

    const-string v5, "zhushou.2345.com"

    invoke-direct/range {v0 .. v5}, Lcom/market2345/base/ServerRespCode;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/market2345/base/ServerRespCode;->SDP_OK:Lcom/market2345/base/ServerRespCode;

    .line 15
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/market2345/base/ServerRespCode;

    sget-object v1, Lcom/market2345/base/ServerRespCode;->SDP_OK:Lcom/market2345/base/ServerRespCode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/market2345/base/ServerRespCode;->$VALUES:[Lcom/market2345/base/ServerRespCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/market2345/base/ServerRespCode;->key:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcom/market2345/base/ServerRespCode;->code:Ljava/lang/String;

    .line 24
    const-string v0, "NA"

    iput-object v0, p0, Lcom/market2345/base/ServerRespCode;->serverIndex:Ljava/lang/String;

    .line 25
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;
    .param p5, "serverName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/market2345/base/ServerRespCode;->key:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lcom/market2345/base/ServerRespCode;->code:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/market2345/base/ServerRespCode;->serverIndex:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/base/ServerRespCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/market2345/base/ServerRespCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/base/ServerRespCode;

    return-object v0
.end method

.method public static values()[Lcom/market2345/base/ServerRespCode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/market2345/base/ServerRespCode;->$VALUES:[Lcom/market2345/base/ServerRespCode;

    invoke-virtual {v0}, [Lcom/market2345/base/ServerRespCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/base/ServerRespCode;

    return-object v0
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/market2345/base/ServerRespCode;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/market2345/base/ServerRespCode;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getServerIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/market2345/base/ServerRespCode;->serverIndex:Ljava/lang/String;

    return-object v0
.end method
