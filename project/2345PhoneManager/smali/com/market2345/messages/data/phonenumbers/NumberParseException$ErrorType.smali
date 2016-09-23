.class public final enum Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;
.super Ljava/lang/Enum;
.source "NumberParseException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/phonenumbers/NumberParseException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

.field public static final enum INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

.field public static final enum NOT_A_NUMBER:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

.field public static final enum TOO_LONG:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

.field public static final enum TOO_SHORT_AFTER_IDD:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

.field public static final enum TOO_SHORT_NSN:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v1, "INVALID_COUNTRY_CODE"

    invoke-direct {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    .line 15
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v1, "NOT_A_NUMBER"

    invoke-direct {v0, v1, v3}, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    .line 19
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v1, "TOO_SHORT_AFTER_IDD"

    invoke-direct {v0, v1, v4}, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    .line 22
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v1, "TOO_SHORT_NSN"

    invoke-direct {v0, v1, v5}, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    .line 24
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v1, "TOO_LONG"

    invoke-direct {v0, v1, v6}, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    .line 10
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->$VALUES:[Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    return-object v0
.end method

.method public static values()[Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->$VALUES:[Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    invoke-virtual {v0}, [Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    return-object v0
.end method
