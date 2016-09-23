.class public Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
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
    name = "PhoneMetadata"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private countryCode_:I

.field private emergency_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private fixedLine_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private generalDesc_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private hasCountryCode:Z

.field private hasEmergency:Z

.field private hasFixedLine:Z

.field private hasGeneralDesc:Z

.field private hasId:Z

.field private hasInternationalPrefix:Z

.field private hasLeadingDigits:Z

.field private hasLeadingZeroPossible:Z

.field private hasMainCountryForCode:Z

.field private hasMobile:Z

.field private hasNationalPrefix:Z

.field private hasNationalPrefixForParsing:Z

.field private hasNationalPrefixTransformRule:Z

.field private hasNoInternationalDialling:Z

.field private hasPager:Z

.field private hasPersonalNumber:Z

.field private hasPreferredExtnPrefix:Z

.field private hasPreferredInternationalPrefix:Z

.field private hasPremiumRate:Z

.field private hasSameMobileAndFixedLinePattern:Z

.field private hasSharedCost:Z

.field private hasTollFree:Z

.field private hasUan:Z

.field private hasVoicemail:Z

.field private hasVoip:Z

.field private id_:Ljava/lang/String;

.field private internationalPrefix_:Ljava/lang/String;

.field private intlNumberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private leadingDigits_:Ljava/lang/String;

.field private leadingZeroPossible_:Z

.field private mainCountryForCode_:Z

.field private mobile_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private nationalPrefixForParsing_:Ljava/lang/String;

.field private nationalPrefixTransformRule_:Ljava/lang/String;

.field private nationalPrefix_:Ljava/lang/String;

.field private noInternationalDialling_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private numberFormat_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation
.end field

.field private pager_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private personalNumber_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private preferredExtnPrefix_:Ljava/lang/String;

.field private preferredInternationalPrefix_:Ljava/lang/String;

.field private premiumRate_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private sameMobileAndFixedLinePattern_:Z

.field private sharedCost_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private tollFree_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private uan_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private voicemail_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

.field private voip_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 304
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 318
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 332
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 346
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 360
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 374
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 388
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 402
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 416
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 430
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 444
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 458
    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 472
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    .line 483
    iput v1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 494
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 505
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 516
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 527
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 538
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 549
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 560
    iput-boolean v1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 570
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    .line 611
    iput-boolean v1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 625
    const-string v0, ""

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 636
    iput-boolean v1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 272
    return-void
.end method

.method public static newBuilder()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata$Builder;
    .locals 1

    .prologue
    .line 285
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata$Builder;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addIntlNumberFormat(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    .line 598
    if-nez p1, :cond_0

    .line 599
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    return-object p0
.end method

.method public addNumberFormat(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .prologue
    .line 579
    if-nez p1, :cond_0

    .line 580
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    return-object p0
.end method

.method public clearIntlNumberFormat()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 606
    return-object p0
.end method

.method public getCountryCode()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    return v0
.end method

.method public getEmergency()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getFixedLine()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getGeneralDesc()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getInternationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getIntlNumberFormat(I)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 594
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public getLeadingDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    return-object v0
.end method

.method public getMainCountryForCode()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public getMobile()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixForParsing()Ljava/lang/String;
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    return-object v0
.end method

.method public getNationalPrefixTransformRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    return-object v0
.end method

.method public getNoInternationalDialling()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getNumberFormat(I)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 576
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    return-object v0
.end method

.method public getPager()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPersonalNumber()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getPreferredExtnPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferredInternationalPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    return-object v0
.end method

.method public getPremiumRate()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getSharedCost()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getTollFree()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getUan()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoicemail()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public getVoip()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    return-object v0
.end method

.method public hasCountryCode()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    return v0
.end method

.method public hasEmergency()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    return v0
.end method

.method public hasFixedLine()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    return v0
.end method

.method public hasGeneralDesc()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 473
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    return v0
.end method

.method public hasInternationalPrefix()Z
    .locals 1

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    return v0
.end method

.method public hasLeadingDigits()Z
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    return v0
.end method

.method public hasLeadingZeroPossible()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    return v0
.end method

.method public hasMainCountryForCode()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    return v0
.end method

.method public hasMobile()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    return v0
.end method

.method public hasNationalPrefix()Z
    .locals 1

    .prologue
    .line 517
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    return v0
.end method

.method public hasNationalPrefixForParsing()Z
    .locals 1

    .prologue
    .line 539
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    return v0
.end method

.method public hasNationalPrefixTransformRule()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    return v0
.end method

.method public hasNoInternationalDialling()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    return v0
.end method

.method public hasPager()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    return v0
.end method

.method public hasPersonalNumber()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    return v0
.end method

.method public hasPreferredExtnPrefix()Z
    .locals 1

    .prologue
    .line 528
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    return v0
.end method

.method public hasPreferredInternationalPrefix()Z
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    return v0
.end method

.method public hasPremiumRate()Z
    .locals 1

    .prologue
    .line 347
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    return v0
.end method

.method public hasSameMobileAndFixedLinePattern()Z
    .locals 1

    .prologue
    .line 561
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    return v0
.end method

.method public hasSharedCost()Z
    .locals 1

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    return v0
.end method

.method public hasTollFree()Z
    .locals 1

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    return v0
.end method

.method public hasUan()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    return v0
.end method

.method public hasVoicemail()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    return v0
.end method

.method public hasVoip()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    return v0
.end method

.method public intlNumberFormatSize()I
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public intlNumberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public isLeadingZeroPossible()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    return v0
.end method

.method public isMainCountryForCode()Z
    .locals 1

    .prologue
    .line 613
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    return v0
.end method

.method public isSameMobileAndFixedLinePattern()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    return v0
.end method

.method public numberFormatSize()I
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public numberFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 572
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    return-object v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 8
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 753
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 754
    .local v1, "hasDesc":Z
    if-eqz v1, :cond_0

    .line 755
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 756
    .local v0, "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 757
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setGeneralDesc(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 759
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 760
    if-eqz v1, :cond_1

    .line 761
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 762
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 763
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setFixedLine(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 765
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 766
    if-eqz v1, :cond_2

    .line 767
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 768
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 769
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setMobile(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 771
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 772
    if-eqz v1, :cond_3

    .line 773
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 774
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 775
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setTollFree(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 777
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_3
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 778
    if-eqz v1, :cond_4

    .line 779
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 780
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 781
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setPremiumRate(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 783
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 784
    if-eqz v1, :cond_5

    .line 785
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 786
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 787
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setSharedCost(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 789
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 790
    if-eqz v1, :cond_6

    .line 791
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 792
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 793
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setPersonalNumber(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 795
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_6
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 796
    if-eqz v1, :cond_7

    .line 797
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 798
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 799
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setVoip(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 801
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_7
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 802
    if-eqz v1, :cond_8

    .line 803
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 804
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 805
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setPager(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 807
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 808
    if-eqz v1, :cond_9

    .line 809
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 810
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 811
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setUan(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 813
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_9
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 814
    if-eqz v1, :cond_a

    .line 815
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 816
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 817
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setVoicemail(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 819
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_a
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 820
    if-eqz v1, :cond_b

    .line 821
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 822
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 823
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setEmergency(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 825
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_b
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v1

    .line 826
    if-eqz v1, :cond_c

    .line 827
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;-><init>()V

    .line 828
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->readExternal(Ljava/io/ObjectInput;)V

    .line 829
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setNoInternationalDialling(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 832
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :cond_c
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setId(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 833
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setCountryCode(I)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 834
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setInternationalPrefix(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 836
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 837
    .local v2, "hasString":Z
    if-eqz v2, :cond_d

    .line 838
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 841
    :cond_d
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 842
    if-eqz v2, :cond_e

    .line 843
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefix(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 846
    :cond_e
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 847
    if-eqz v2, :cond_f

    .line 848
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setPreferredExtnPrefix(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 851
    :cond_f
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 852
    if-eqz v2, :cond_10

    .line 853
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixForParsing(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 856
    :cond_10
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 857
    if-eqz v2, :cond_11

    .line 858
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 861
    :cond_11
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setSameMobileAndFixedLinePattern(Z)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 863
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v5

    .line 864
    .local v5, "nationalFormatSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_12

    .line 865
    new-instance v6, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v6}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 866
    .local v6, "numFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v6, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 867
    iget-object v7, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 870
    .end local v6    # "numFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    :cond_12
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v4

    .line 871
    .local v4, "intlNumberFormatSize":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_13

    .line 872
    new-instance v6, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v6}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 873
    .restart local v6    # "numFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v6, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->readExternal(Ljava/io/ObjectInput;)V

    .line 874
    iget-object v7, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 877
    .end local v6    # "numFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    :cond_13
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setMainCountryForCode(Z)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 879
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v2

    .line 880
    if-eqz v2, :cond_14

    .line 881
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingDigits(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 884
    :cond_14
    invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z

    move-result v7

    invoke-virtual {p0, v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->setLeadingZeroPossible(Z)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 885
    return-void
.end method

.method public setCountryCode(I)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasCountryCode:Z

    .line 488
    iput p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    .line 489
    return-object p0
.end method

.method public setEmergency(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 448
    if-nez p1, :cond_0

    .line 449
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 451
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    .line 452
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 453
    return-object p0
.end method

.method public setFixedLine(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 308
    if-nez p1, :cond_0

    .line 309
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 311
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    .line 312
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 313
    return-object p0
.end method

.method public setGeneralDesc(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 297
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    .line 298
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 299
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 476
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasId:Z

    .line 477
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    .line 478
    return-object p0
.end method

.method public setInternationalPrefix(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasInternationalPrefix:Z

    .line 499
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    .line 500
    return-object p0
.end method

.method public setLeadingDigits(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    .line 630
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    .line 631
    return-object p0
.end method

.method public setLeadingZeroPossible(Z)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingZeroPossible:Z

    .line 641
    iput-boolean p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    .line 642
    return-object p0
.end method

.method public setMainCountryForCode(Z)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasMainCountryForCode:Z

    .line 619
    iput-boolean p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    .line 620
    return-object p0
.end method

.method public setMobile(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 323
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 325
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    .line 326
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 327
    return-object p0
.end method

.method public setNationalPrefix(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    .line 521
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    .line 522
    return-object p0
.end method

.method public setNationalPrefixForParsing(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 542
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    .line 543
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    .line 544
    return-object p0
.end method

.method public setNationalPrefixTransformRule(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 553
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    .line 554
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    .line 555
    return-object p0
.end method

.method public setNoInternationalDialling(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 463
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 465
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    .line 466
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 467
    return-object p0
.end method

.method public setPager(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 406
    if-nez p1, :cond_0

    .line 407
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 409
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    .line 410
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 411
    return-object p0
.end method

.method public setPersonalNumber(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 378
    if-nez p1, :cond_0

    .line 379
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 381
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    .line 382
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 383
    return-object p0
.end method

.method public setPreferredExtnPrefix(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 531
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    .line 532
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    .line 533
    return-object p0
.end method

.method public setPreferredInternationalPrefix(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    .line 510
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    .line 511
    return-object p0
.end method

.method public setPremiumRate(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 350
    if-nez p1, :cond_0

    .line 351
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 353
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    .line 354
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 355
    return-object p0
.end method

.method public setSameMobileAndFixedLinePattern(Z)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 564
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasSameMobileAndFixedLinePattern:Z

    .line 565
    iput-boolean p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    .line 566
    return-object p0
.end method

.method public setSharedCost(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 365
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 367
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    .line 368
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 369
    return-object p0
.end method

.method public setTollFree(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 336
    if-nez p1, :cond_0

    .line 337
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 339
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    .line 340
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 341
    return-object p0
.end method

.method public setUan(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 420
    if-nez p1, :cond_0

    .line 421
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 423
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    .line 424
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 425
    return-object p0
.end method

.method public setVoicemail(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 437
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    .line 438
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 439
    return-object p0
.end method

.method public setVoip(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "value"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 392
    if-nez p1, :cond_0

    .line 393
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 395
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    .line 396
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .line 397
    return-object p0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 646
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 647
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasGeneralDesc:Z

    if-eqz v3, :cond_0

    .line 648
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->generalDesc_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 650
    :cond_0
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 651
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasFixedLine:Z

    if-eqz v3, :cond_1

    .line 652
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->fixedLine_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 654
    :cond_1
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 655
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasMobile:Z

    if-eqz v3, :cond_2

    .line 656
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->mobile_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 658
    :cond_2
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 659
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasTollFree:Z

    if-eqz v3, :cond_3

    .line 660
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->tollFree_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 662
    :cond_3
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 663
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPremiumRate:Z

    if-eqz v3, :cond_4

    .line 664
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->premiumRate_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 666
    :cond_4
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 667
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasSharedCost:Z

    if-eqz v3, :cond_5

    .line 668
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->sharedCost_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 670
    :cond_5
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 671
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPersonalNumber:Z

    if-eqz v3, :cond_6

    .line 672
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->personalNumber_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 674
    :cond_6
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 675
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoip:Z

    if-eqz v3, :cond_7

    .line 676
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->voip_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 678
    :cond_7
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 679
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPager:Z

    if-eqz v3, :cond_8

    .line 680
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->pager_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 682
    :cond_8
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 683
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasUan:Z

    if-eqz v3, :cond_9

    .line 684
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->uan_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 686
    :cond_9
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 687
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasVoicemail:Z

    if-eqz v3, :cond_a

    .line 688
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->voicemail_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 690
    :cond_a
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 691
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasEmergency:Z

    if-eqz v3, :cond_b

    .line 692
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->emergency_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 694
    :cond_b
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 695
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNoInternationalDialling:Z

    if-eqz v3, :cond_c

    .line 696
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->noInternationalDialling_:Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 699
    :cond_c
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->id_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 700
    iget v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->countryCode_:I

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 701
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->internationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 703
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 704
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix:Z

    if-eqz v3, :cond_d

    .line 705
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->preferredInternationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 708
    :cond_d
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 709
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix:Z

    if-eqz v3, :cond_e

    .line 710
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 713
    :cond_e
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 714
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix:Z

    if-eqz v3, :cond_f

    .line 715
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->preferredExtnPrefix_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 718
    :cond_f
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 719
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixForParsing:Z

    if-eqz v3, :cond_10

    .line 720
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixForParsing_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 723
    :cond_10
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 724
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefixTransformRule:Z

    if-eqz v3, :cond_11

    .line 725
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->nationalPrefixTransformRule_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 728
    :cond_11
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->sameMobileAndFixedLinePattern_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 730
    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormatSize()I

    move-result v2

    .line 731
    .local v2, "numberFormatSize":I
    invoke-interface {p1, v2}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_12

    .line 733
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormat_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 732
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 736
    :cond_12
    invoke-virtual {p0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormatSize()I

    move-result v1

    .line 737
    .local v1, "intlNumberFormatSize":I
    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 738
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_13

    .line 739
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormat_:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    invoke-virtual {v3, p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 742
    :cond_13
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->mainCountryForCode_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 744
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 745
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits:Z

    if-eqz v3, :cond_14

    .line 746
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->leadingDigits_:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 749
    :cond_14
    iget-boolean v3, p0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->leadingZeroPossible_:Z

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeBoolean(Z)V

    .line 750
    return-void
.end method
