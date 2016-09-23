.class final enum Lcom/market2345/base/ErrorType;
.super Ljava/lang/Enum;
.source "ApiRespErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/base/ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/base/ErrorType;

.field public static final enum BIZ:Lcom/market2345/base/ErrorType;

.field public static final enum NON_BIZ:Lcom/market2345/base/ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 79
    new-instance v0, Lcom/market2345/base/ErrorType;

    const-string v1, "BIZ"

    invoke-direct {v0, v1, v2}, Lcom/market2345/base/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/base/ErrorType;->BIZ:Lcom/market2345/base/ErrorType;

    new-instance v0, Lcom/market2345/base/ErrorType;

    const-string v1, "NON_BIZ"

    invoke-direct {v0, v1, v3}, Lcom/market2345/base/ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/base/ErrorType;->NON_BIZ:Lcom/market2345/base/ErrorType;

    .line 78
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/market2345/base/ErrorType;

    sget-object v1, Lcom/market2345/base/ErrorType;->BIZ:Lcom/market2345/base/ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market2345/base/ErrorType;->NON_BIZ:Lcom/market2345/base/ErrorType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/market2345/base/ErrorType;->$VALUES:[Lcom/market2345/base/ErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/base/ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    const-class v0, Lcom/market2345/base/ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/base/ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/market2345/base/ErrorType;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/market2345/base/ErrorType;->$VALUES:[Lcom/market2345/base/ErrorType;

    invoke-virtual {v0}, [Lcom/market2345/base/ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/base/ErrorType;

    return-object v0
.end method
