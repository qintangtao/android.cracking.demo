.class final enum Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$1;
.super Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1165
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;-><init>(Ljava/lang/String;ILcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;)V

    return-void
.end method


# virtual methods
.method verify(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;)Z
    .locals 1
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/String;
    .param p3, "util"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    .prologue
    .line 1168
    invoke-virtual {p3, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isPossibleNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v0

    return v0
.end method
