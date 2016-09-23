.class public final enum Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;
.super Ljava/lang/Enum;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ValidationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

.field public static final enum INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

.field public static final enum IS_POSSIBLE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

.field public static final enum TOO_LONG:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

.field public static final enum TOO_SHORT:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1150
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    const-string v1, "IS_POSSIBLE"

    invoke-direct {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->IS_POSSIBLE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    .line 1151
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    const-string v1, "INVALID_COUNTRY_CODE"

    invoke-direct {v0, v1, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    .line 1152
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    const-string v1, "TOO_SHORT"

    invoke-direct {v0, v1, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->TOO_SHORT:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    .line 1153
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    const-string v1, "TOO_LONG"

    invoke-direct {v0, v1, v5}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->TOO_LONG:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    .line 1149
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->IS_POSSIBLE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->TOO_SHORT:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->TOO_LONG:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->$VALUES:[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

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
    .line 1149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1149
    const-class v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    return-object v0
.end method

.method public static values()[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;
    .locals 1

    .prologue
    .line 1149
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->$VALUES:[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    invoke-virtual {v0}, [Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    return-object v0
.end method
