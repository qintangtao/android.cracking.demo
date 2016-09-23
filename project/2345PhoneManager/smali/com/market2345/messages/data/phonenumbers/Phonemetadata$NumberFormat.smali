.class public Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
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
    name = "NumberFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private domesticCarrierCodeFormattingRule_:Ljava/lang/String;

.field private format_:Ljava/lang/String;

.field private hasDomesticCarrierCodeFormattingRule:Z

.field private hasFormat:Z

.field private hasNationalPrefixFormattingRule:Z

.field private hasNationalPrefixOptionalWhenFormatting:Z

.field private hasPattern:Z

.field private leadingDigitsPattern_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nationalPrefixFormattingRule_:Ljava/lang/String;

.field private nationalPrefixOptionalWhenFormatting_:Z

.field private pattern_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static newBuilder()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat$Builder;
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat$Builder;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addLeadingDigitsPattern(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    return-object p0
.end method

.method public clearNationalPrefixFormattingRule()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 81
    return-object p0
.end method

.method public getDomesticCarrierCodeFormattingRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    return-object v0
.end method

.method public getLeadingDigitsPattern(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixFormattingRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDomesticCarrierCodeFormattingRule()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    return v0
.end method

.method public hasFormat()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    return v0
.end method

.method public hasNationalPrefixFormattingRule()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    return v0
.end method

.method public hasNationalPrefixOptionalWhenFormatting()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting:Z

    return v0
.end method

.method public hasPattern()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    return v0
.end method

.method public isNationalPrefixOptionalWhenFormatting()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    return v0
.end method

.method public leadingDigitPatterns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    return-object v0
.end method

.method public leadingDigitsPatternSize()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .locals 3
    .param p1, "other"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasPattern()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasFormat()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 117
    :cond_1
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v1

    .line 118
    .local v1, "leadingDigitsPatternSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 119
    invoke-virtual {p1, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->addLeadingDigitsPattern(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 124
    :cond_3
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 125
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 127
    :cond_4
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->isNationalPrefixOptionalWhenFormatting()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixOptionalWhenFormatting(Z)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 128
    return-object p0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 153
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 154
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v1

    .line 155
    .local v1, "leadingDigitsPatternSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 159
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 161
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 164
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixOptionalWhenFormatting(Z)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 165
    return-void
.end method

.method public setDomesticCarrierCodeFormattingRule(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    .line 106
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    .line 107
    return-object p0
.end method

.method public setFormat(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasFormat:Z

    .line 47
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    .line 75
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    .line 76
    return-object p0
.end method

.method public setNationalPrefixOptionalWhenFormatting(Z)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixOptionalWhenFormatting:Z

    .line 93
    iput-boolean p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    .line 94
    return-object p0
.end method

.method public setPattern(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasPattern:Z

    .line 36
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->pattern_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 133
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->format_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v1

    .line 135
    .local v1, "leadingDigitsPatternSize":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 136
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 137
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPattern_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    iget-boolean v2, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 141
    iget-boolean v2, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasNationalPrefixFormattingRule:Z

    if-eqz v2, :cond_1

    .line 142
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 144
    :cond_1
    iget-boolean v2, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 145
    iget-boolean v2, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->hasDomesticCarrierCodeFormattingRule:Z

    if-eqz v2, :cond_2

    .line 146
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->domesticCarrierCodeFormattingRule_:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 148
    :cond_2
    iget-boolean v2, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->nationalPrefixOptionalWhenFormatting_:Z

    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 149
    return-void
.end method
