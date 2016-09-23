.class public final enum Lcom/market2345/messages/data/MessageItem$DeliveryStatus;
.super Ljava/lang/Enum;
.source "MessageItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/MessageItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeliveryStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/market2345/messages/data/MessageItem$DeliveryStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

.field public static final enum FAILED:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

.field public static final enum INFO:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

.field public static final enum NONE:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

.field public static final enum PENDING:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

.field public static final enum RECEIVED:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->NONE:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    new-instance v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v3}, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->INFO:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    new-instance v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->FAILED:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    new-instance v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v5}, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->PENDING:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    new-instance v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    const-string v1, "RECEIVED"

    invoke-direct {v0, v1, v6}, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->RECEIVED:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    sget-object v1, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->NONE:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->INFO:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->FAILED:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->PENDING:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->RECEIVED:Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->$VALUES:[Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/market2345/messages/data/MessageItem$DeliveryStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    return-object v0
.end method

.method public static values()[Lcom/market2345/messages/data/MessageItem$DeliveryStatus;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->$VALUES:[Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    invoke-virtual {v0}, [Lcom/market2345/messages/data/MessageItem$DeliveryStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/market2345/messages/data/MessageItem$DeliveryStatus;

    return-object v0
.end method
