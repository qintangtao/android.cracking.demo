.class public Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;
.super Ljava/lang/Object;
.source "AsYouTypeFormatter.java"


# static fields
.field private static final CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

.field private static final DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final DIGIT_PLACEHOLDER:Ljava/lang/String; = "\u2008"

.field private static final ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

.field private static final EMPTY_METADATA:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

.field private static final MIN_LEADING_DIGITS_LENGTH:I = 0x3

.field private static final NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_BEFORE_NATIONAL_NUMBER:C = ' '

.field private static final STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private ableToFormat:Z

.field private accruedInput:Ljava/lang/StringBuilder;

.field private accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

.field private currentFormattingPattern:Ljava/lang/String;

.field private currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

.field private currentOutput:Ljava/lang/String;

.field private defaultCountry:Ljava/lang/String;

.field private defaultMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

.field private formattingTemplate:Ljava/lang/StringBuilder;

.field private inputHasFormatting:Z

.field private isCompleteNumber:Z

.field private isExpectingCountryCallingCode:Z

.field private lastMatchPosition:I

.field private nationalNumber:Ljava/lang/StringBuilder;

.field private nationalPrefixExtracted:Ljava/lang/String;

.field private originalPosition:I

.field private final phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

.field private positionToRemember:I

.field private possibleFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

.field private regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

.field private shouldAddSpaceAfterNationalPrefix:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;-><init>()V

    const-string v1, "NA"

    invoke-virtual {v0, v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 55
    const-string v0, "\\[([^\\[\\]])*\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

    .line 61
    const-string v0, "\\d(?=[^,}][^,}])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 68
    const-string v0, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*(\\$\\d[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]*)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    .line 73
    const-string v0, "[- ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    .line 83
    const-string v0, "\u2008"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 36
    iput-boolean v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 40
    iput-boolean v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 41
    iput-boolean v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 42
    invoke-static {}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getInstance()Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    .line 84
    iput v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 87
    iput v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 90
    iput v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    .line 95
    iput-boolean v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/RegexCache;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/market2345/messages/data/phonenumbers/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    .line 112
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 114
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->defaultMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 115
    return-void
.end method

.method private ableToExtractLongerNdd()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 387
    .local v0, "indexOfPreviousNdd":I
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 389
    .end local v0    # "indexOfPreviousNdd":I
    :cond_0
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "nationalNumber"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    .line 441
    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 442
    .local v0, "prefixBeforeNationalNumberLength":I
    iget-boolean v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    if-eq v1, v4, :cond_0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 451
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private attemptToChooseFormattingPattern()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 462
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v2, :cond_1

    .line 463
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->getAvailableFormats(Ljava/lang/String;)V

    .line 464
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v0

    .line 466
    :goto_0
    return-object v0

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 372
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 373
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 374
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attemptToExtractCountryCallingCode()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 561
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 579
    :cond_0
    :goto_0
    return v4

    .line 564
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 565
    .local v3, "numberWithoutCountryCallingCode":Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    iget-object v6, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v0

    .line 566
    .local v0, "countryCode":I
    if-eqz v0, :cond_0

    .line 569
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 570
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    invoke-virtual {v4, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 572
    .local v2, "newRegionCode":Ljava/lang/String;
    const-string v4, "001"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 573
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    invoke-virtual {v4, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForNonGeographicalRegion(I)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 577
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, "countryCodeString":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 579
    const/4 v4, 0x1

    goto :goto_0

    .line 574
    .end local v1    # "countryCodeString":Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 575
    invoke-direct {p0, v2}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    iput-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_1
.end method

.method private attemptToExtractIdd()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 533
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\+|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 536
    .local v1, "internationalPrefix":Ljava/util/regex/Pattern;
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 537
    .local v0, "iddMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 538
    iput-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 539
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 540
    .local v2, "startOfCountryCallingCode":I
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 541
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 543
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-eq v4, v5, :cond_0

    .line 546
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 550
    .end local v2    # "startOfCountryCallingCode":I
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private createFormattingTemplate(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;)Z
    .locals 5
    .param p1, "format"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    const/4 v2, 0x0

    .line 200
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "numberPattern":Ljava/lang/String;
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v2

    .line 209
    :cond_1
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->CHARACTER_CLASS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "\\\\d"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->STANDALONE_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, "\\\\d"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 214
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, "tempTemplate":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 216
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getAvailableFormats(Ljava/lang/String;)V
    .locals 5
    .param p1, "leadingThreeDigits"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-boolean v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v4

    if-lez v4, :cond_2

    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v1

    .line 164
    .local v1, "formatList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v3

    .line 165
    .local v3, "nationalPrefixIsUsedByCountry":Z
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 166
    .local v0, "format":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    if-nez v4, :cond_1

    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->isNationalPrefixOptionalWhenFormatting()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 169
    :cond_1
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isFormatEligible(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 170
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    .end local v0    # "format":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .end local v1    # "formatList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "nationalPrefixIsUsedByCountry":Z
    :cond_2
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 174
    .restart local v1    # "formatList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "nationalPrefixIsUsedByCountry":Z
    :cond_3
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private getFormattingTemplate(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "numberPattern"    # Ljava/lang/String;
    .param p2, "numberFormat"    # Ljava/lang/String;

    .prologue
    .line 227
    const-string v1, "999999999999999"

    .line 228
    .local v1, "longestPhoneNumber":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {v4, p1}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 229
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 230
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "aPhoneNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 234
    const-string v3, ""

    .line 240
    :goto_0
    return-object v3

    .line 237
    :cond_0
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "template":Ljava/lang/String;
    const-string v4, "9"

    const-string v5, "\u2008"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    goto :goto_0
.end method

.method private getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getCountryCodeForRegion(Ljava/lang/String;)I

    move-result v0

    .line 121
    .local v0, "countryCallingCode":I
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    invoke-virtual {v3, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "mainCountry":Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->phoneUtil:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    invoke-virtual {v3, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 123
    .local v2, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    .line 128
    .end local v2    # "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    :goto_0
    return-object v2

    .restart local v2    # "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    :cond_0
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->EMPTY_METADATA:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0
.end method

.method private inputAccruedNationalNumber()Ljava/lang/String;
    .locals 4

    .prologue
    .line 475
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 476
    .local v1, "lengthOfNationalNumber":I
    if-lez v1, :cond_2

    .line 477
    const-string v2, ""

    .line 478
    .local v2, "tempNationalNumber":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 479
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-direct {p0, v3}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v2

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 481
    :cond_0
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v2}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 483
    .end local v0    # "i":I
    .end local v2    # "tempNationalNumber":Ljava/lang/String;
    :goto_1
    return-object v3

    .line 481
    .restart local v0    # "i":I
    .restart local v2    # "tempNationalNumber":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 483
    .end local v0    # "i":I
    .end local v2    # "tempNationalNumber":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private inputDigitHelper(C)Ljava/lang/String;
    .locals 5
    .param p1, "nextChar"    # C

    .prologue
    const/4 v4, 0x0

    .line 605
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->DIGIT_PATTERN:Ljava/util/regex/Pattern;

    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 606
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    iget v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 608
    .local v1, "tempTemplate":Ljava/lang/String;
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    iput v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 610
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 618
    .end local v1    # "tempTemplate":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 612
    :cond_0
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 615
    iput-boolean v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 617
    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 618
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;
    .locals 5
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 296
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    if-eqz p2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 302
    :cond_0
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isDigitOrLeadingPlusSign(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 303
    iput-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 304
    iput-boolean v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 308
    :goto_0
    iget-boolean v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v2, :cond_6

    .line 312
    iget-boolean v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    if-eqz v2, :cond_3

    .line 313
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_1
    :goto_1
    return-object v0

    .line 306
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->normalizeAndAccrueDigitsAndPlusSign(CZ)C

    move-result p1

    goto :goto_0

    .line 314
    :cond_3
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 315
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 316
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 318
    :cond_4
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ableToExtractLongerNdd()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 322
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->attemptToChoosePatternWithPrefixExtracted()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 325
    :cond_5
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 330
    :cond_6
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 343
    :goto_2
    iget-boolean v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    if-eqz v2, :cond_9

    .line 344
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->attemptToExtractCountryCallingCode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 345
    iput-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 347
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 334
    :pswitch_0
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 336
    :pswitch_1
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->attemptToExtractIdd()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 337
    iput-boolean v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    goto :goto_2

    .line 339
    :cond_8
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->removeNationalPrefixFromNationalNumber()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    .line 340
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 349
    :cond_9
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 350
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->inputDigitHelper(C)Ljava/lang/String;

    move-result-object v1

    .line 353
    .local v1, "tempNationalNumber":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->attemptToFormatAccruedDigits()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->narrowDownPossibleFormats(Ljava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->maybeCreateNewTemplate()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 359
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->inputAccruedNationalNumber()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 361
    :cond_a
    iget-boolean v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-eqz v2, :cond_b

    invoke-direct {p0, v1}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    move-object v0, v2

    goto/16 :goto_1

    :cond_b
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 365
    .end local v0    # "formattedNumber":Ljava/lang/String;
    .end local v1    # "tempNationalNumber":Ljava/lang/String;
    :cond_c
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->attemptToChooseFormattingPattern()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isDigitOrLeadingPlusSign(C)Z
    .locals 3
    .param p1, "nextChar"    # C

    .prologue
    const/4 v0, 0x1

    .line 393
    invoke-static {p1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFormatEligible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 178
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ELIGIBLE_FORMAT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private isNanpaNumberWithNationalPrefix()Z
    .locals 5

    .prologue
    const/16 v4, 0x31

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 496
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private maybeCreateNewTemplate()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 135
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 136
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 138
    .local v1, "numberFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "pattern":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    .end local v1    # "numberFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "pattern":Ljava/lang/String;
    :goto_1
    return v3

    .line 142
    .restart local v1    # "numberFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .restart local v2    # "pattern":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v1}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->createFormattingTemplate(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    iput-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 144
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    iput-boolean v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 149
    iput v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 150
    const/4 v3, 0x1

    goto :goto_1

    .line 152
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 155
    .end local v1    # "numberFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_2
    iput-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    goto :goto_1
.end method

.method private narrowDownPossibleFormats(Ljava/lang/String;)V
    .locals 7
    .param p1, "leadingDigits"    # Ljava/lang/String;

    .prologue
    .line 182
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x3

    .line 183
    .local v1, "indexOfLeadingDigitsPattern":I
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 184
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 185
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 186
    .local v0, "format":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v5

    if-le v5, v1, :cond_0

    .line 187
    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {v0, v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 190
    .local v3, "leadingDigitsPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 191
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v5

    if-nez v5, :cond_0

    .line 192
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 197
    .end local v0    # "format":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "leadingDigitsPattern":Ljava/util/regex/Pattern;
    .end local v4    # "m":Ljava/util/regex/Matcher;
    :cond_1
    return-void
.end method

.method private normalizeAndAccrueDigitsAndPlusSign(CZ)C
    .locals 3
    .param p1, "nextChar"    # C
    .param p2, "rememberPosition"    # Z

    .prologue
    .line 589
    const/16 v2, 0x2b

    if-ne p1, v2, :cond_1

    .line 590
    move v0, p1

    .line 591
    .local v0, "normalizedChar":C
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 598
    :goto_0
    if-eqz p2, :cond_0

    .line 599
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    iput v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 601
    :cond_0
    return v0

    .line 593
    .end local v0    # "normalizedChar":C
    :cond_1
    const/16 v1, 0xa

    .line 594
    .local v1, "radix":I
    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    invoke-static {v2, v1}, Ljava/lang/Character;->forDigit(II)C

    move-result v0

    .line 595
    .restart local v0    # "normalizedChar":C
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 596
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private removeNationalPrefixFromNationalNumber()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 502
    const/4 v3, 0x0

    .line 503
    .local v3, "startOfNationalNumber":I
    invoke-direct {p0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isNanpaNumberWithNationalPrefix()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 504
    const/4 v3, 0x1

    .line 505
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    const/16 v5, 0x31

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 506
    iput-boolean v7, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 520
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 521
    .local v1, "nationalPrefix":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 522
    return-object v1

    .line 507
    .end local v1    # "nationalPrefix":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v4}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 508
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v5}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 510
    .local v2, "nationalPrefixForParsing":Ljava/util/regex/Pattern;
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 511
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 515
    iput-boolean v7, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 516
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 517
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method attemptToFormatAccruedDigits()Ljava/lang/String;
    .locals 6

    .prologue
    .line 403
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 404
    .local v3, "numberFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {v3}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 405
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 406
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->NATIONAL_PREFIX_SEPARATORS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    iput-boolean v4, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 409
    invoke-virtual {v3}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "formattedNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->appendNationalNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 413
    .end local v0    # "formattedNumber":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "numberFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    :goto_0
    return-object v4

    :cond_1
    const-string v4, ""

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 247
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 248
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInput:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 249
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 250
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->formattingTemplate:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 251
    iput v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->lastMatchPosition:I

    .line 252
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentFormattingPattern:Ljava/lang/String;

    .line 253
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->prefixBeforeNationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 254
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalPrefixExtracted:Ljava/lang/String;

    .line 255
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->nationalNumber:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 256
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    .line 257
    iput-boolean v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->inputHasFormatting:Z

    .line 258
    iput v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    .line 259
    iput v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 260
    iput-boolean v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isCompleteNumber:Z

    .line 261
    iput-boolean v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->isExpectingCountryCallingCode:Z

    .line 262
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->possibleFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 263
    iput-boolean v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->shouldAddSpaceAfterNationalPrefix:Z

    .line 264
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->defaultMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->defaultCountry:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentMetaData:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 267
    :cond_0
    return-void
.end method

.method public getRememberedPosition()I
    .locals 4

    .prologue
    .line 421
    iget-boolean v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->ableToFormat:Z

    if-nez v2, :cond_1

    .line 422
    iget v1, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->originalPosition:I

    .line 432
    :cond_0
    return v1

    .line 424
    :cond_1
    const/4 v0, 0x0

    .local v0, "accruedInputIndex":I
    const/4 v1, 0x0

    .line 425
    .local v1, "currentOutputIndex":I
    :goto_0
    iget v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->positionToRemember:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 426
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->accruedInputWithoutFormatting:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_2

    .line 428
    add-int/lit8 v0, v0, 0x1

    .line 430
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public inputDigit(C)Ljava/lang/String;
    .locals 1
    .param p1, "nextChar"    # C

    .prologue
    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 280
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object v0
.end method

.method public inputDigitAndRememberPosition(C)Ljava/lang/String;
    .locals 1
    .param p1, "nextChar"    # C

    .prologue
    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->inputDigitWithOptionToRememberPosition(CZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;->currentOutput:Ljava/lang/String;

    return-object v0
.end method
