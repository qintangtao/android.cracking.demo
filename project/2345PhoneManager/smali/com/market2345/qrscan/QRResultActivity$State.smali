.class final enum Lcom/market2345/qrscan/QRResultActivity$State;
.super Ljava/lang/Enum;
.source "QRResultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/qrscan/QRResultActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/qrscan/QRResultActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/qrscan/QRResultActivity$State;

.field public static final enum APK:Lcom/market2345/qrscan/QRResultActivity$State;

.field public static final enum TEXT:Lcom/market2345/qrscan/QRResultActivity$State;

.field public static final enum URL:Lcom/market2345/qrscan/QRResultActivity$State;

.field public static final enum VCARD:Lcom/market2345/qrscan/QRResultActivity$State;

.field public static final enum VCARDCODE:Lcom/market2345/qrscan/QRResultActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 305
    new-instance v0, Lcom/market2345/qrscan/QRResultActivity$State;

    const-string v1, "APK"

    invoke-direct {v0, v1, v2}, Lcom/market2345/qrscan/QRResultActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/qrscan/QRResultActivity$State;->APK:Lcom/market2345/qrscan/QRResultActivity$State;

    new-instance v0, Lcom/market2345/qrscan/QRResultActivity$State;

    const-string v1, "VCARD"

    invoke-direct {v0, v1, v3}, Lcom/market2345/qrscan/QRResultActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/qrscan/QRResultActivity$State;->VCARD:Lcom/market2345/qrscan/QRResultActivity$State;

    new-instance v0, Lcom/market2345/qrscan/QRResultActivity$State;

    const-string v1, "VCARDCODE"

    invoke-direct {v0, v1, v4}, Lcom/market2345/qrscan/QRResultActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/qrscan/QRResultActivity$State;->VCARDCODE:Lcom/market2345/qrscan/QRResultActivity$State;

    new-instance v0, Lcom/market2345/qrscan/QRResultActivity$State;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v5}, Lcom/market2345/qrscan/QRResultActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/qrscan/QRResultActivity$State;->TEXT:Lcom/market2345/qrscan/QRResultActivity$State;

    new-instance v0, Lcom/market2345/qrscan/QRResultActivity$State;

    const-string v1, "URL"

    invoke-direct {v0, v1, v6}, Lcom/market2345/qrscan/QRResultActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/qrscan/QRResultActivity$State;->URL:Lcom/market2345/qrscan/QRResultActivity$State;

    .line 304
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/market2345/qrscan/QRResultActivity$State;

    sget-object v1, Lcom/market2345/qrscan/QRResultActivity$State;->APK:Lcom/market2345/qrscan/QRResultActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market2345/qrscan/QRResultActivity$State;->VCARD:Lcom/market2345/qrscan/QRResultActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/qrscan/QRResultActivity$State;->VCARDCODE:Lcom/market2345/qrscan/QRResultActivity$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market2345/qrscan/QRResultActivity$State;->TEXT:Lcom/market2345/qrscan/QRResultActivity$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/market2345/qrscan/QRResultActivity$State;->URL:Lcom/market2345/qrscan/QRResultActivity$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/market2345/qrscan/QRResultActivity$State;->$VALUES:[Lcom/market2345/qrscan/QRResultActivity$State;

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
    .line 304
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/qrscan/QRResultActivity$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 304
    const-class v0, Lcom/market2345/qrscan/QRResultActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/qrscan/QRResultActivity$State;

    return-object v0
.end method

.method public static values()[Lcom/market2345/qrscan/QRResultActivity$State;
    .locals 1

    .prologue
    .line 304
    sget-object v0, Lcom/market2345/qrscan/QRResultActivity$State;->$VALUES:[Lcom/market2345/qrscan/QRResultActivity$State;

    invoke-virtual {v0}, [Lcom/market2345/qrscan/QRResultActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/qrscan/QRResultActivity$State;

    return-object v0
.end method
