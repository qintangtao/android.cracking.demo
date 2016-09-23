.class final Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;
.super Ljava/lang/Object;
.source "PhoneNumberMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;,
        Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final GROUP_SEPARATOR:Ljava/util/regex/Pattern;

.field private static final LEAD_CLASS:Ljava/util/regex/Pattern;

.field private static final MATCHING_BRACKETS:Ljava/util/regex/Pattern;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final PUB_PAGES:Ljava/util/regex/Pattern;

.field private static final SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;


# instance fields
.field private lastMatch:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

.field private final leniency:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

.field private maxTries:J

.field private final phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

.field private final preferredRegion:Ljava/lang/String;

.field private searchIndex:I

.field private state:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 53
    const-string v12, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    .line 59
    const-string v12, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    .line 66
    const-string v12, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d [0-2]\\d$"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    .line 68
    const-string v12, ":[0-5]\\d"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    .line 93
    const-string v9, "(\\[\uff08\uff3b"

    .line 94
    .local v9, "openingParens":Ljava/lang/String;
    const-string v2, ")\\]\uff09\uff3d"

    .line 95
    .local v2, "closingParens":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[^"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 98
    .local v8, "nonParens":Ljava/lang/String;
    const/4 v12, 0x3

    invoke-static {v14, v12}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "bracketPairLimit":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(?:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "])?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "])?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(?:["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "])"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    .line 111
    const/4 v12, 0x2

    invoke-static {v14, v12}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "leadLimit":Ljava/lang/String;
    const/4 v12, 0x4

    invoke-static {v14, v12}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v11

    .line 117
    .local v11, "punctuationLimit":Ljava/lang/String;
    const/16 v3, 0x13

    .line 121
    .local v3, "digitBlockLimit":I
    invoke-static {v14, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "blockLimit":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 126
    .local v10, "punctuation":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\\p{Nd}"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v13, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 128
    .local v4, "digitSequence":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "+\uff0b"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "leadClassChars":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "leadClass":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    .line 131
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "\\p{Z}[^"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\\p{Nd}]*"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->GROUP_SEPARATOR:Ljava/util/regex/Pattern;

    .line 134
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x42

    invoke-static {v12, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    .line 139
    return-void
.end method

.method constructor <init>(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;J)V
    .locals 3
    .param p1, "util"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "leniency"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;
    .param p5, "maxTries"    # J

    .prologue
    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->state:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    .line 193
    if-eqz p1, :cond_0

    if-nez p4, :cond_1

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 196
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-gez v0, :cond_2

    .line 197
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 199
    :cond_2
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    .line 200
    if-eqz p2, :cond_3

    .end local p2    # "text":Ljava/lang/CharSequence;
    :goto_0
    iput-object p2, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    .line 201
    iput-object p3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    .line 202
    iput-object p4, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    .line 203
    iput-wide p5, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 204
    return-void

    .line 200
    .restart local p2    # "text":Ljava/lang/CharSequence;
    :cond_3
    const-string p2, ""

    goto :goto_0
.end method

.method static allNumberGroupsAreExactlyPresent(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "util"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p3, "formattedNumberGroups"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 476
    sget-object v5, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 479
    .local v0, "candidateGroups":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v5

    if-eqz v5, :cond_1

    array-length v5, v0

    add-int/lit8 v1, v5, -0x2

    .line 484
    .local v1, "candidateNumberGroupIndex":I
    :goto_0
    array-length v5, v0

    if-eq v5, v3, :cond_0

    aget-object v5, v0, v1

    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 501
    :cond_0
    :goto_1
    return v3

    .line 479
    .end local v1    # "candidateNumberGroupIndex":I
    :cond_1
    array-length v5, v0

    add-int/lit8 v1, v5, -0x1

    goto :goto_0

    .line 491
    .restart local v1    # "candidateNumberGroupIndex":I
    :cond_2
    array-length v5, p3

    add-int/lit8 v2, v5, -0x1

    .line 492
    .local v2, "formattedNumberGroupIndex":I
    :goto_2
    if-lez v2, :cond_4

    if-ltz v1, :cond_4

    .line 494
    aget-object v5, v0, v1

    aget-object v6, p3, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v4

    .line 496
    goto :goto_1

    .line 493
    :cond_3
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 501
    :cond_4
    if-ltz v1, :cond_5

    aget-object v5, v0, v1

    aget-object v6, p3, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_5
    move v3, v4

    goto :goto_1
.end method

.method static allNumberGroupsRemainGrouped(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "util"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p3, "formattedNumberGroups"    # [Ljava/lang/String;

    .prologue
    .line 442
    const/4 v0, 0x0

    .line 445
    .local v0, "fromIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p3

    if-ge v1, v3, :cond_2

    .line 448
    aget-object v3, p3, v1

    invoke-virtual {p2, v3, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 449
    if-gez v0, :cond_0

    .line 450
    const/4 v3, 0x0

    .line 469
    :goto_1
    return v3

    .line 453
    :cond_0
    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 454
    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 456
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 460
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v0, v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    .line 445
    .end local v2    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 469
    :cond_2
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_1
.end method

.method static checkNumberGroupingIsValid(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z
    .locals 7
    .param p0, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "util"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
    .param p3, "checker"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;

    .prologue
    const/4 v5, 0x1

    .line 535
    invoke-static {p1, v5}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 537
    .local v4, "normalizedCandidate":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    invoke-static {p2, p0, v6}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v2

    .line 538
    .local v2, "formattedNumberGroups":[Ljava/lang/String;
    invoke-interface {p3, p2, p0, v4, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 552
    :goto_0
    return v5

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v6

    invoke-static {v6}, Lcom/market2345/messages/data/phonenumbers/MetadataManager;->getAlternateFormatsForCountry(I)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 544
    .local v1, "alternateFormats":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v1, :cond_2

    .line 545
    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 546
    .local v0, "alternateFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    invoke-static {p2, p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-interface {p3, p2, p0, v4, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 552
    .end local v0    # "alternateFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static containsMoreThanOneSlash(Ljava/lang/String;)Z
    .locals 3
    .param p0, "candidate"    # Ljava/lang/String;

    .prologue
    .line 556
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 557
    .local v0, "firstSlashIndex":I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static containsOnlyValidXChars(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;)Z
    .locals 8
    .param p0, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "util"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    .prologue
    const/16 v7, 0x78

    const/16 v6, 0x58

    const/4 v3, 0x0

    .line 567
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_5

    .line 568
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 569
    .local v0, "charAtIndex":C
    if-eq v0, v7, :cond_0

    if-ne v0, v6, :cond_4

    .line 570
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 571
    .local v1, "charAtNextIndex":C
    if-eq v1, v7, :cond_1

    if-ne v1, v6, :cond_3

    .line 574
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 575
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, p0, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatch(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    move-result-object v4

    sget-object v5, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NSN_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    if-eq v4, v5, :cond_4

    .line 586
    .end local v0    # "charAtIndex":C
    .end local v1    # "charAtNextIndex":C
    :cond_2
    :goto_1
    return v3

    .line 580
    .restart local v0    # "charAtIndex":C
    .restart local v1    # "charAtNextIndex":C
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 567
    .end local v1    # "charAtNextIndex":C
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 586
    .end local v0    # "charAtIndex":C
    :cond_5
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private extractInnerMatch(Ljava/lang/String;I)Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    .locals 12
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 315
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->GROUP_SEPARATOR:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 317
    .local v1, "groupMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 319
    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v8

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 320
    .local v0, "firstGroupOnly":Ljava/lang/CharSequence;
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v7, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 322
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    .line 323
    .local v3, "match":Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    if-eqz v3, :cond_1

    .line 361
    .end local v0    # "firstGroupOnly":Ljava/lang/CharSequence;
    .end local v3    # "match":Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    :cond_0
    :goto_0
    return-object v3

    .line 326
    .restart local v0    # "firstGroupOnly":Ljava/lang/CharSequence;
    .restart local v3    # "match":Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    :cond_1
    iget-wide v8, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 328
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 330
    .local v5, "withoutFirstGroupStart":I
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 331
    .local v4, "withoutFirstGroup":Ljava/lang/CharSequence;
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v7, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 333
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    add-int v8, p2, v5

    invoke-direct {p0, v7, v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    .line 334
    if-nez v3, :cond_0

    .line 337
    iget-wide v8, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 339
    iget-wide v8, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-lez v7, :cond_4

    .line 340
    move v2, v5

    .line 341
    .local v2, "lastGroupStart":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 343
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    goto :goto_1

    .line 345
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "withoutLastGroup":Ljava/lang/CharSequence;
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v7, v6}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 348
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 352
    const/4 v3, 0x0

    goto :goto_0

    .line 354
    :cond_3
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    .line 355
    if-nez v3, :cond_0

    .line 358
    iget-wide v8, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 361
    .end local v0    # "firstGroupOnly":Ljava/lang/CharSequence;
    .end local v2    # "lastGroupStart":I
    .end local v3    # "match":Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    .end local v4    # "withoutFirstGroup":Ljava/lang/CharSequence;
    .end local v5    # "withoutFirstGroupStart":I
    .end local v6    # "withoutLastGroup":Ljava/lang/CharSequence;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private extractMatch(Ljava/lang/CharSequence;I)Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    .locals 5
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .prologue
    const/4 v1, 0x0

    .line 281
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-object v1

    .line 285
    :cond_1
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 286
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int/2addr v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "followingText":Ljava/lang/String;
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v3

    if-nez v3, :cond_0

    .line 293
    .end local v0    # "followingText":Ljava/lang/String;
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    .local v2, "rawString":Ljava/lang/String;
    invoke-direct {p0, v2, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/String;I)Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    .line 295
    .local v1, "match":Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    if-nez v1, :cond_0

    .line 301
    invoke-direct {p0, v2, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->extractInnerMatch(Ljava/lang/String;I)Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    goto :goto_0
.end method

.method private find(I)Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 214
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 215
    .local v2, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    iget-wide v4, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    invoke-virtual {v2, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 216
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 217
    .local v3, "start":I
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-interface {v4, v3, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 222
    .local v0, "candidate":Ljava/lang/CharSequence;
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v4, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 224
    invoke-direct {p0, v0, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->extractMatch(Ljava/lang/CharSequence;I)Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    .line 225
    .local v1, "match":Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    if-eqz v1, :cond_0

    .line 233
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    .end local v1    # "match":Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    .end local v3    # "start":I
    :goto_1
    return-object v1

    .line 229
    .restart local v0    # "candidate":Ljava/lang/CharSequence;
    .restart local v1    # "match":Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    .restart local v3    # "start":I
    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int p1, v3, v4

    .line 230
    iget-wide v4, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->maxTries:J

    goto :goto_0

    .line 233
    .end local v0    # "candidate":Ljava/lang/CharSequence;
    .end local v1    # "match":Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    .end local v3    # "start":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static getNationalNumberGroups(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;
    .locals 6
    .param p0, "util"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "formattingPattern"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    .line 511
    if-nez p2, :cond_1

    .line 513
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->RFC3966:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-virtual {p0, p1, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "rfc3966Format":Ljava/lang/String;
    const/16 v4, 0x3b

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 517
    .local v0, "endIndex":I
    if-gez v0, :cond_0

    .line 518
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 521
    :cond_0
    const/16 v4, 0x2d

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v3, v4, 0x1

    .line 522
    .local v3, "startIndex":I
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 526
    .end local v0    # "endIndex":I
    .end local v2    # "rfc3966Format":Ljava/lang/String;
    .end local v3    # "startIndex":I
    :goto_0
    return-object v4

    .line 525
    :cond_1
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->RFC3966:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-virtual {p0, v1, p2, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNsnUsingPattern(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static isInvalidPunctuationSymbol(C)Z
    .locals 2
    .param p0, "character"    # C

    .prologue
    .line 269
    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLatinLetter(C)Z
    .locals 4
    .param p0, "letter"    # C

    .prologue
    const/4 v1, 0x0

    .line 256
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 260
    :cond_0
    :goto_0
    return v1

    .line 259
    :cond_1
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 260
    .local v0, "block":Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static isNationalPrefixPresentIfRequired(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;)Z
    .locals 10
    .param p0, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "util"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    .prologue
    const/4 v7, 0x1

    .line 592
    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v8

    sget-object v9, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v8, v9, :cond_1

    .line 630
    :cond_0
    :goto_0
    return v7

    .line 595
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v8

    invoke-virtual {p1, v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "phoneNumberRegion":Ljava/lang/String;
    invoke-virtual {p1, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 598
    .local v2, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    .line 602
    invoke-virtual {p1, p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v8

    invoke-virtual {p1, v8, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 606
    .local v1, "formatRule":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 607
    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->isNationalPrefixOptionalWhenFormatting()Z

    move-result v8

    if-nez v8, :cond_0

    .line 613
    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v0

    .line 615
    .local v0, "candidateNationalPrefixRule":Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "$1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 617
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 625
    .local v6, "rawInputCopy":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 628
    .local v5, "rawInput":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {p1, v5, v2, v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    move-result v7

    goto :goto_0
.end method

.method private static limit(II)Ljava/lang/String;
    .locals 2
    .param p0, "lower"    # I
    .param p1, "upper"    # I

    .prologue
    .line 143
    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    if-ge p1, p0, :cond_1

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 146
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private parseAndVerify(Ljava/lang/String;I)Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    .locals 7
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    const/4 v4, 0x0

    .line 377
    :try_start_0
    sget-object v5, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-nez v5, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-object v4

    .line 383
    :cond_1
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    sget-object v6, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->VALID:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    invoke-virtual {v5, v6}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->compareTo(Ljava/lang/Enum;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 386
    if-lez p2, :cond_2

    sget-object v5, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_2

    .line 387
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    add-int/lit8 v6, p2, -0x1

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 389
    .local v3, "previousChar":C
    invoke-static {v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 393
    .end local v3    # "previousChar":C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, p2, v5

    .line 394
    .local v0, "lastCharIndex":I
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 395
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 396
    .local v1, "nextChar":C
    invoke-static {v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 402
    .end local v0    # "lastCharIndex":I
    .end local v1    # "nextChar":C
    :cond_3
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    iget-object v6, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    invoke-virtual {v5, p1, v6}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v2

    .line 403
    .local v2, "number":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    iget-object v6, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    invoke-virtual {v5, v2, p1, v6}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->verify(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 407
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 408
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 409
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 410
    new-instance v5, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    invoke-direct {v5, p2, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;-><init>(ILjava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)V
    :try_end_0
    .catch Lcom/market2345/messages/data/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 412
    .end local v2    # "number":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method private static trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .prologue
    .line 241
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 242
    .local v0, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 245
    :cond_0
    return-object p1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->state:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_0

    .line 635
    iget v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    invoke-direct {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->find(I)Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    .line 636
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    if-nez v0, :cond_1

    .line 637
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->state:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

    .line 643
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->state:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;->end()I

    move-result v0

    iput v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    .line 640
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->state:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

    goto :goto_0

    .line 643
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public next()Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    .locals 2

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 649
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    .line 654
    .local v0, "result":Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    .line 655
    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

    iput-object v1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->state:Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher$State;

    .line 656
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatcher;->next()Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 663
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
