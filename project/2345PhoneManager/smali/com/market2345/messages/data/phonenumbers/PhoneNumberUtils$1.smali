.class Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;J)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

.field final synthetic val$defaultRegion:Ljava/lang/String;

.field final synthetic val$leniency:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

.field final synthetic val$maxTries:J

.field final synthetic val$text:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;J)V
    .locals 1

    .prologue
    .line 3497
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;->this$0:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    iput-object p2, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;->val$text:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;->val$defaultRegion:Ljava/lang/String;

    iput-object p4, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;->val$leniency:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    iput-wide p5, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;->val$maxTries:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3499
    new-instance v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;

    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;->this$0:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;->val$text:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;->val$defaultRegion:Ljava/lang/String;

    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;->val$leniency:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    iget-wide v6, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;->val$maxTries:J

    invoke-direct/range {v1 .. v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;-><init>(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;J)V

    return-object v1
.end method
