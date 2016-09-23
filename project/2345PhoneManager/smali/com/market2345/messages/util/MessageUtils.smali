.class public Lcom/market2345/messages/util/MessageUtils;
.super Ljava/lang/Object;
.source "MessageUtils.java"


# static fields
.field private static mAliasEnabled:Z

.field private static mAliasRuleMaxChars:I

.field private static mAliasRuleMinChars:I

.field private static sNoSubjectStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/market2345/messages/util/MessageUtils;->mAliasEnabled:Z

    .line 20
    const/4 v0, 0x2

    sput v0, Lcom/market2345/messages/util/MessageUtils;->mAliasRuleMinChars:I

    .line 21
    const/16 v0, 0x30

    sput v0, Lcom/market2345/messages/util/MessageUtils;->mAliasRuleMaxChars:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    .end local p1    # "subject":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 89
    .restart local p1    # "subject":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/market2345/messages/util/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    if-nez v2, :cond_2

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/market2345/messages/util/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    .line 92
    :cond_2
    sget-object v2, Lcom/market2345/messages/util/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    array-length v1, v2

    .line 93
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 94
    sget-object v2, Lcom/market2345/messages/util/MessageUtils;->sNoSubjectStrings:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 95
    const/4 p1, 0x0

    goto :goto_0

    .line 93
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "columnRawBytes"    # I
    .param p2, "columnCharset"    # I

    .prologue
    .line 66
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, "rawBytes":Ljava/lang/String;
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 69
    .local v0, "charset":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    const-string v1, ""

    .line 74
    .end local v1    # "rawBytes":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 71
    .restart local v1    # "rawBytes":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_0

    .line 74
    new-instance v2, Lcom/market2345/messages/data/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/market2345/messages/data/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/market2345/messages/data/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v2}, Lcom/market2345/messages/data/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J

    .prologue
    .line 102
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/market2345/messages/util/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J
    .param p3, "fullFormat"    # Z

    .prologue
    .line 106
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 107
    .local v2, "then":Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 108
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 109
    .local v1, "now":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 112
    const v0, 0x80b00

    .line 117
    .local v0, "format_flags":I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_1

    .line 118
    or-int/lit8 v0, v0, 0x14

    .line 130
    :goto_0
    if-eqz p3, :cond_0

    .line 131
    or-int/lit8 v0, v0, 0x11

    .line 134
    :cond_0
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 119
    :cond_1
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_2

    .line 121
    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 124
    :cond_2
    or-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getAliasMaxChars()I
    .locals 1

    .prologue
    .line 32
    sget v0, Lcom/market2345/messages/util/MessageUtils;->mAliasRuleMaxChars:I

    return v0
.end method

.method public static getAliasMinChars()I
    .locals 1

    .prologue
    .line 28
    sget v0, Lcom/market2345/messages/util/MessageUtils;->mAliasRuleMinChars:I

    return v0
.end method

.method public static isAlias(Ljava/lang/String;)Z
    .locals 5
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-static {}, Lcom/market2345/messages/util/MessageUtils;->isAliasEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v3

    .line 43
    :cond_1
    if-nez p0, :cond_3

    move v2, v3

    .line 45
    .local v2, "len":I
    :goto_1
    invoke-static {}, Lcom/market2345/messages/util/MessageUtils;->getAliasMinChars()I

    move-result v4

    if-lt v2, v4, :cond_0

    invoke-static {}, Lcom/market2345/messages/util/MessageUtils;->getAliasMaxChars()I

    move-result v4

    if-gt v2, v4, :cond_0

    .line 49
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 53
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 54
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_2

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_0

    .line 52
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 43
    .end local v0    # "c":C
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    .line 59
    .restart local v1    # "i":I
    .restart local v2    # "len":I
    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isAliasEnabled()Z
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/market2345/messages/util/MessageUtils;->mAliasEnabled:Z

    return v0
.end method
