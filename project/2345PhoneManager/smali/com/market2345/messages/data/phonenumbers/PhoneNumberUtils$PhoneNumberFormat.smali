.class public final enum Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;
.super Ljava/lang/Enum;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneNumberFormat"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

.field public static final enum E164:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

.field public static final enum INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

.field public static final enum NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

.field public static final enum RFC3966:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1096
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    const-string v1, "E164"

    invoke-direct {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->E164:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    .line 1097
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    const-string v1, "INTERNATIONAL"

    invoke-direct {v0, v1, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    .line 1098
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    const-string v1, "NATIONAL"

    invoke-direct {v0, v1, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    .line 1099
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    const-string v1, "RFC3966"

    invoke-direct {v0, v1, v5}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->RFC3966:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    .line 1095
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->E164:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->RFC3966:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    aput-object v1, v0, v5

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->$VALUES:[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

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
    .line 1095
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1095
    const-class v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    return-object v0
.end method

.method public static values()[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;
    .locals 1

    .prologue
    .line 1095
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->$VALUES:[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-virtual {v0}, [Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    return-object v0
.end method
