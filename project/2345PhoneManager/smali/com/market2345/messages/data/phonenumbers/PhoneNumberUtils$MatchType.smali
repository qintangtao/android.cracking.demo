.class public final enum Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
.super Ljava/lang/Enum;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MatchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

.field public static final enum EXACT_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

.field public static final enum NOT_A_NUMBER:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

.field public static final enum NO_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

.field public static final enum NSN_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

.field public static final enum SHORT_NSN_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1139
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    const-string v1, "NOT_A_NUMBER"

    invoke-direct {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NOT_A_NUMBER:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    .line 1140
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    const-string v1, "NO_MATCH"

    invoke-direct {v0, v1, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NO_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    .line 1141
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    const-string v1, "SHORT_NSN_MATCH"

    invoke-direct {v0, v1, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->SHORT_NSN_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    .line 1142
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    const-string v1, "NSN_MATCH"

    invoke-direct {v0, v1, v5}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NSN_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    .line 1143
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    const-string v1, "EXACT_MATCH"

    invoke-direct {v0, v1, v6}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->EXACT_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    .line 1138
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NOT_A_NUMBER:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NO_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->SHORT_NSN_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NSN_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->EXACT_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->$VALUES:[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

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
    .line 1138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1138
    const-class v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    return-object v0
.end method

.method public static values()[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
    .locals 1

    .prologue
    .line 1138
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->$VALUES:[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    invoke-virtual {v0}, [Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    return-object v0
.end method
