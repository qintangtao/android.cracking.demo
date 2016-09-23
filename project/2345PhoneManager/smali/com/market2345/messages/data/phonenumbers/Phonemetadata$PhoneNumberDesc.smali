.class public Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
.super Ljava/lang/Object;
.source "Phonemetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/phonenumbers/Phonemetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PhoneNumberDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private exampleNumber_:Ljava/lang/String;

.field private hasExampleNumber:Z

.field private hasNationalNumberPattern:Z

.field private hasPossibleNumberPattern:Z

.field private nationalNumberPattern_:Ljava/lang/String;

.field private possibleNumberPattern_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    .line 199
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public static newBuilder()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;
    .locals 1

    .prologue
    .line 183
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public exactlySameAs(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 2
    .param p1, "other"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    iget-object v1, p1, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    iget-object v1, p1, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    iget-object v1, p1, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExampleNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalNumberPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    return-object v0
.end method

.method public getPossibleNumberPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    return-object v0
.end method

.method public hasExampleNumber()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    return v0
.end method

.method public hasNationalNumberPattern()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    return v0
.end method

.method public hasPossibleNumberPattern()Z
    .locals 1

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern:Z

    return v0
.end method

.method public mergeFrom(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1
    .param p1, "other"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 220
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->setNationalNumberPattern(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 223
    :cond_0
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->setPossibleNumberPattern(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 226
    :cond_1
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->setExampleNumber(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 229
    :cond_2
    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->setNationalNumberPattern(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 260
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->setPossibleNumberPattern(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 264
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->setExampleNumber(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 267
    :cond_2
    return-void
.end method

.method public setExampleNumber(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    .line 215
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public setNationalNumberPattern(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    .line 193
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public setPossibleNumberPattern(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern:Z

    .line 204
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 240
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->nationalNumberPattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 244
    :cond_0
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 245
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasPossibleNumberPattern:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->possibleNumberPattern_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 249
    :cond_1
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 250
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber:Z

    if-eqz v0, :cond_2

    .line 251
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->exampleNumber_:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 253
    :cond_2
    return-void
.end method
