.class public final Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
.super Ljava/lang/Object;
.source "PhoneNumberMatch.java"


# instance fields
.field private final number:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

.field private final rawString:Ljava/lang/String;

.field private final start:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "rawString"    # Ljava/lang/String;
    .param p3, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    if-gez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Start index must be >= 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    if-eqz p2, :cond_1

    if-nez p3, :cond_2

    .line 59
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 61
    :cond_2
    iput p1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->start:I

    .line 62
    iput-object p2, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->number:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 64
    return-void
.end method


# virtual methods
.method public end()I
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->start:I

    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 93
    if-ne p0, p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v1

    .line 96
    :cond_1
    instance-of v3, p1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    if-nez v3, :cond_2

    move v1, v2

    .line 97
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 99
    check-cast v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    .line 100
    .local v0, "other":Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    iget-object v4, v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->start:I

    iget v4, v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->start:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->number:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    iget-object v4, v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->number:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    invoke-virtual {v3, v4}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 88
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->start:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->number:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public number()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->number:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    return-object v0
.end method

.method public rawString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    return-object v0
.end method

.method public start()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->start:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberMatch ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->start()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->end()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->rawString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
