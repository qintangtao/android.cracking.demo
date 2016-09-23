.class Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CountryCallingCodeAndNewIndex"
.end annotation


# instance fields
.field public final countryCallingCode:I

.field public final newIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "countryCode"    # I
    .param p2, "newIndex"    # I

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 719
    iput p1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    .line 720
    iput p2, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 721
    return-void
.end method
