.class public abstract enum Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;
.super Ljava/lang/Enum;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Leniency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

.field public static final enum EXACT_GROUPING:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

.field public static final enum POSSIBLE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

.field public static final enum STRICT_GROUPING:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

.field public static final enum VALID:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1165
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$1;

    const-string v1, "POSSIBLE"

    invoke-direct {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->POSSIBLE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    .line 1177
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$2;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->VALID:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    .line 1198
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$3;

    const-string v1, "STRICT_GROUPING"

    invoke-direct {v0, v1, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->STRICT_GROUPING:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    .line 1229
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$4;

    const-string v1, "EXACT_GROUPING"

    invoke-direct {v0, v1, v5}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->EXACT_GROUPING:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    .line 1160
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->POSSIBLE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->VALID:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->STRICT_GROUPING:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->EXACT_GROUPING:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    aput-object v1, v0, v5

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->$VALUES:[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

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
    .line 1160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;

    .prologue
    .line 1160
    invoke-direct {p0, p1, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1160
    const-class v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    return-object v0
.end method

.method public static values()[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;
    .locals 1

    .prologue
    .line 1160
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->$VALUES:[Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    invoke-virtual {v0}, [Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    return-object v0
.end method


# virtual methods
.method abstract verify(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;)Z
.end method
