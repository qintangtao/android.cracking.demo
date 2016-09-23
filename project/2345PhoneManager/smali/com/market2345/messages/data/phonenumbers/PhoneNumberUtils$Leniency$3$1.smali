.class Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$3$1;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"

# interfaces
.implements Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$3;->verify(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$3;


# direct methods
.method constructor <init>(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$3;)V
    .locals 0

    .prologue
    .line 1208
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$3$1;->this$0:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkGroups(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 1
    .param p1, "util"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
    .param p2, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p3, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p4, "expectedNumberGroups"    # [Ljava/lang/String;

    .prologue
    .line 1212
    invoke-static {p1, p2, p3, p4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->allNumberGroupsRemainGrouped(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
