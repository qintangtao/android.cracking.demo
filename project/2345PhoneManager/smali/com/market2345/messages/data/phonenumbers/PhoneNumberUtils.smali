.class public Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
.super Ljava/lang/Object;
.source "PhoneNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$2;,
        Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;,
        Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;,
        Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;,
        Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;,
        Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;,
        Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    }
.end annotation


# static fields
.field private static final ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALPHA_PHONE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

.field private static final CAPTURING_EXTN_DIGITS:Ljava/lang/String; = "(\\p{Nd}{1,7})"

.field private static final CCC_LENGTH:I

.field private static final CC_PATTERN:Ljava/util/regex/Pattern;

.field private static final CLIR_OFF:Ljava/lang/String; = "#31#"

.field private static final CLIR_ON:Ljava/lang/String; = "*31#"

.field private static final COLOMBIA_MOBILE_TO_FIXED_LINE_PREFIX:Ljava/lang/String; = "3"

.field private static final COUNTRY_CALLING_CALL:[Z

.field private static final DEFAULT_EXTN_PREFIX:Ljava/lang/String; = " ext. "

.field private static final DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final DIGITS:Ljava/lang/String; = "\\p{Nd}"

.field private static final EXTN_PATTERN:Ljava/util/regex/Pattern;

.field static final EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

.field private static final EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

.field private static final FG_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

.field private static final FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

.field public static final FORMAT_JAPAN:I = 0x2

.field public static final FORMAT_NANP:I = 0x1

.field public static final FORMAT_UNKNOWN:I = 0x0

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final MAX_INPUT_STRING_LENGTH:I = 0xfa

.field static final MAX_LENGTH_COUNTRY_CODE:I = 0x3

.field static final MAX_LENGTH_FOR_NSN:I = 0x10

.field static final META_DATA_FILE_PREFIX:Ljava/lang/String; = "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

.field private static final MIN_LENGTH_FOR_NSN:I = 0x2

.field static final MIN_MATCH:I = 0x7

.field private static final NANPA_COUNTRY_CODE:I = 0x1

.field private static final NANP_COUNTRIES:[Ljava/lang/String;

.field private static final NANP_STATE_DASH:I = 0x4

.field private static final NANP_STATE_DIGIT:I = 0x1

.field private static final NANP_STATE_ONE:I = 0x3

.field private static final NANP_STATE_PLUS:I = 0x2

.field static final NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

.field private static final NP_PATTERN:Ljava/util/regex/Pattern;

.field public static final PAUSE:C = ','

.field static final PLUS_CHARS:Ljava/lang/String; = "+\uff0b"

.field static final PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

.field static final PLUS_SIGN:C = '+'

.field static final REGEX_FLAGS:I = 0x42

.field public static final REGION_CODE_FOR_NON_GEO_ENTITY:Ljava/lang/String; = "001"

.field private static final RFC3966_EXTN_PREFIX:Ljava/lang/String; = ";ext="

.field private static final RFC3966_ISDN_SUBADDRESS:Ljava/lang/String; = ";isub="

.field private static final RFC3966_PHONE_CONTEXT:Ljava/lang/String; = ";phone-context="

.field private static final RFC3966_PREFIX:Ljava/lang/String; = "tel:"

.field private static final SECOND_NUMBER_START:Ljava/lang/String; = "[\\\\/] *x"

.field static final SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

.field private static final STAR_SIGN:C = '*'

.field private static final UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

.field private static final UNKNOWN_REGION:Ljava/lang/String; = "ZZ"

.field private static final UNWANTED_END_CHARS:Ljava/lang/String; = "[[\\P{N}&&\\P{L}]&&[^#]]+$"

.field static final UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_ALPHA:Ljava/lang/String;

.field private static final VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

.field private static final VALID_PHONE_NUMBER:Ljava/lang/String;

.field private static final VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

.field static final VALID_PUNCTUATION:Ljava/lang/String; = "-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e"

.field private static final VALID_START_CHAR:Ljava/lang/String; = "[+\uff0b\\p{Nd}]"

.field private static final VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

.field public static final WAIT:C = ';'

.field public static final WILD:C = 'N'

.field private static instance:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;


# instance fields
.field private countryCallingCodeToRegionCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final countryCodesForNonGeographicalRegion:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private currentFilePrefix:Ljava/lang/String;

.field private final nanpaRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

.field private final regionToMetadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/16 v15, 0x33

    const/16 v14, 0x32

    const/16 v13, 0x39

    const/16 v12, 0x37

    const/16 v11, 0x2d

    .line 82
    const-class v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    .line 136
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v2, "asciiDigitMappings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v9, 0x30

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x30

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/16 v9, 0x31

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x31

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/16 v9, 0x34

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/16 v9, 0x35

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/16 v9, 0x36

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const/16 v9, 0x38

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x38

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    new-instance v1, Ljava/util/HashMap;

    const/16 v9, 0x28

    invoke-direct {v1, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 149
    .local v1, "alphaMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    const/16 v9, 0x41

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const/16 v9, 0x42

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const/16 v9, 0x43

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const/16 v9, 0x44

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const/16 v9, 0x45

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/16 v9, 0x46

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const/16 v9, 0x47

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/16 v9, 0x48

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const/16 v9, 0x49

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/16 v9, 0x4a

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const/16 v9, 0x4b

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const/16 v9, 0x4c

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x35

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    const/16 v9, 0x4d

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const/16 v9, 0x4e

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const/16 v9, 0x4f

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x36

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const/16 v9, 0x50

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const/16 v9, 0x51

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    const/16 v9, 0x52

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const/16 v9, 0x53

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const/16 v9, 0x54

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x38

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const/16 v9, 0x55

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x38

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const/16 v9, 0x56

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x38

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const/16 v9, 0x57

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/16 v9, 0x58

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/16 v9, 0x59

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const/16 v9, 0x5a

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->ALPHA_MAPPINGS:Ljava/util/Map;

    .line 177
    new-instance v4, Ljava/util/HashMap;

    const/16 v9, 0x64

    invoke-direct {v4, v9}, Ljava/util/HashMap;-><init>(I)V

    .line 178
    .local v4, "combinedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 179
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 180
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    .line 182
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v5, "diallableCharMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 184
    const/16 v9, 0x2b

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x2b

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const/16 v9, 0x2a

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x2a

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v0, "allPlusNumberGroupings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Character;Ljava/lang/Character;>;"
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Character;

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v3

    .line 191
    .local v3, "c":C
    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 194
    .end local v3    # "c":C
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 196
    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const v9, 0xff0d

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/16 v9, 0x2010

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const/16 v9, 0x2011

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const/16 v9, 0x2012

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/16 v9, 0x2013

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const/16 v9, 0x2014

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const/16 v9, 0x2015

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const/16 v9, 0x2212

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const/16 v9, 0x2f

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x2f

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const v9, 0xff0f

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x2f

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const/16 v9, 0x3000

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const/16 v9, 0x2060

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x20

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const/16 v9, 0x2e

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const v9, 0xff0e

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/16 v10, 0x2e

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    .line 221
    const-string v9, "[\\d]+(?:[~\u2053\u223c\uff5e][\\d]+)?"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    .line 235
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "[, \\[\\]]"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->ALPHA_MAPPINGS:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "[, \\[\\]]"

    const-string v12, ""

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->VALID_ALPHA:Ljava/lang/String;

    .line 239
    const-string v9, "[+\uff0b]+"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    .line 240
    const-string v9, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]+"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    .line 241
    const-string v9, "(\\p{Nd})"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    .line 250
    const-string v9, "[+\uff0b\\p{Nd}]"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 258
    const-string v9, "[\\\\/] *x"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    .line 264
    const-string v9, "[[\\P{N}&&\\P{L}]&&[^#]]+$"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 268
    const-string v9, "(?:.*?[A-Za-z]){3}.*"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    .line 286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\p{Nd}{2}|[+\uff0b]*+(?:[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*]*\\p{Nd}){3,}[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->VALID_ALPHA:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\\p{Nd}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->VALID_PHONE_NUMBER:Ljava/lang/String;

    .line 307
    const-string v7, "x\uff58#\uff03~\uff5e"

    .line 311
    .local v7, "singleExtnSymbolsForMatching":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 313
    .local v8, "singleExtnSymbolsForParsing":Ljava/lang/String;
    invoke-static {v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    .line 314
    invoke-static {v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->createExtnPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    .line 727
    const/16 v9, 0x64

    new-array v9, v9, [Z

    fill-array-data v9, :array_0

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    .line 740
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    array-length v9, v9

    sput v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->CCC_LENGTH:I

    .line 1036
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(?:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")$"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x42

    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    .line 1041
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->VALID_PHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "(?:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->EXTN_PATTERNS_FOR_PARSING:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")?"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x42

    invoke-static {v9, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    .line 1044
    const-string v9, "(\\D+)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 1050
    const-string v9, "(\\$\\d)"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    .line 1051
    const-string v9, "\\$NP"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->NP_PATTERN:Ljava/util/regex/Pattern;

    .line 1052
    const-string v9, "\\$FG"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->FG_PATTERN:Ljava/util/regex/Pattern;

    .line 1053
    const-string v9, "\\$CC"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->CC_PATTERN:Ljava/util/regex/Pattern;

    .line 1058
    const-string v9, "\\(?\\$1\\)?"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    .line 1060
    const/4 v9, 0x0

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->instance:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    .line 3895
    const/16 v9, 0x18

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "US"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-string v11, "CA"

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "AS"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const-string v11, "AI"

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "AG"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const-string v11, "BS"

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "BB"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const-string v11, "BM"

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "VG"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    const-string v11, "KY"

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "DM"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    const-string v11, "DO"

    aput-object v11, v9, v10

    const/16 v10, 0xc

    const-string v11, "GD"

    aput-object v11, v9, v10

    const/16 v10, 0xd

    const-string v11, "GU"

    aput-object v11, v9, v10

    const/16 v10, 0xe

    const-string v11, "JM"

    aput-object v11, v9, v10

    const/16 v10, 0xf

    const-string v11, "PR"

    aput-object v11, v9, v10

    const/16 v10, 0x10

    const-string v11, "MS"

    aput-object v11, v9, v10

    const/16 v10, 0x11

    const-string v11, "MP"

    aput-object v11, v9, v10

    const/16 v10, 0x12

    const-string v11, "KN"

    aput-object v11, v9, v10

    const/16 v10, 0x13

    const-string v11, "LC"

    aput-object v11, v9, v10

    const/16 v10, 0x14

    const-string v11, "VC"

    aput-object v11, v9, v10

    const/16 v10, 0x15

    const-string v11, "TT"

    aput-object v11, v9, v10

    const/16 v10, 0x16

    const-string v11, "TC"

    aput-object v11, v9, v10

    const/16 v10, 0x17

    const-string v11, "VI"

    aput-object v11, v9, v10

    sput-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    return-void

    .line 727
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 1257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-string v0, "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->currentFilePrefix:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 93
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x140

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->supportedRegions:Ljava/util/Set;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x23

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->nanpaRegions:Ljava/util/Set;

    .line 1063
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regionToMetadataMap:Ljava/util/Map;

    .line 1069
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    .line 1074
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    .line 1079
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/RegexCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/market2345/messages/data/phonenumbers/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    .line 1258
    return-void
.end method

.method private buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3623
    const-string v4, ";phone-context="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 3624
    .local v1, "indexOfPhoneContext":I
    if-lez v1, :cond_3

    .line 3625
    const-string v4, ";phone-context="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int v3, v1, v4

    .line 3628
    .local v3, "phoneContextStart":I
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_0

    .line 3632
    const/16 v4, 0x3b

    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 3633
    .local v2, "phoneContextEnd":I
    if-lez v2, :cond_2

    .line 3634
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3642
    .end local v2    # "phoneContextEnd":I
    :cond_0
    :goto_0
    const-string v4, "tel:"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const-string v5, "tel:"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3652
    .end local v3    # "phoneContextStart":I
    :goto_1
    const-string v4, ";isub="

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 3653
    .local v0, "indexOfIsdn":I
    if-lez v0, :cond_1

    .line 3654
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {p2, v0, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3660
    :cond_1
    return-void

    .line 3636
    .end local v0    # "indexOfIsdn":I
    .restart local v2    # "phoneContextEnd":I
    .restart local v3    # "phoneContextStart":I
    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3647
    .end local v2    # "phoneContextEnd":I
    .end local v3    # "phoneContextStart":I
    :cond_3
    invoke-static {p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static checkPrefixIsIgnorable(Ljava/lang/String;II)Z
    .locals 3
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "forwardIndex"    # I
    .param p2, "backwardIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "trunk_prefix_was_read":Z
    :goto_0
    if-lt p2, p1, :cond_3

    .line 669
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v2

    if-ltz v2, :cond_2

    .line 670
    if-eqz v0, :cond_0

    .line 685
    :goto_1
    return v1

    .line 676
    :cond_0
    const/4 v0, 0x1

    .line 682
    :cond_1
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 678
    :cond_2
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 685
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;

    .prologue
    .line 3385
    invoke-direct {p0, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3387
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3389
    :cond_0
    const/4 v0, 0x0

    .line 3392
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .prologue
    .line 1322
    if-eqz p0, :cond_0

    .line 1324
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    :cond_0
    :goto_0
    return-void

    .line 1325
    :catch_0
    move-exception v0

    .line 1326
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "error closing input stream (ignored)"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static compare(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Ljava/lang/String;

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 341
    .local v0, "useStrict":Z
    invoke-static {p1, p2, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "useStrictComparation"    # Z

    .prologue
    .line 385
    if-eqz p2, :cond_0

    invoke-static {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 549
    const/4 v7, 0x0

    .line 550
    .local v7, "numNonDialableCharsInA":I
    const/4 v8, 0x0

    .line 552
    .local v8, "numNonDialableCharsInB":I
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 v10, 0x1

    .line 636
    :goto_0
    return v10

    .line 552
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 555
    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    .line 558
    :cond_4
    invoke-static {p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v4

    .line 559
    .local v4, "ia":I
    invoke-static {p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->indexOfLastNetworkChar(Ljava/lang/String;)I

    move-result v5

    .line 560
    .local v5, "ib":I
    const/4 v6, 0x0

    .line 562
    .local v6, "matched":I
    :cond_5
    :goto_1
    if-ltz v4, :cond_8

    if-ltz v5, :cond_8

    .line 564
    const/4 v9, 0x0

    .line 566
    .local v9, "skipCmp":Z
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 568
    .local v0, "ca":C
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_6

    .line 569
    add-int/lit8 v4, v4, -0x1

    .line 570
    const/4 v9, 0x1

    .line 571
    add-int/lit8 v7, v7, 0x1

    .line 574
    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 576
    .local v1, "cb":C
    invoke-static {v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v10

    if-nez v10, :cond_7

    .line 577
    add-int/lit8 v5, v5, -0x1

    .line 578
    const/4 v9, 0x1

    .line 579
    add-int/lit8 v8, v8, 0x1

    .line 582
    :cond_7
    if-nez v9, :cond_5

    .line 583
    if-eq v1, v0, :cond_9

    const/16 v10, 0x4e

    if-eq v0, v10, :cond_9

    const/16 v10, 0x4e

    if-eq v1, v10, :cond_9

    .line 590
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v9    # "skipCmp":Z
    :cond_8
    const/4 v10, 0x7

    if-ge v6, v10, :cond_b

    .line 591
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v2, v10, v7

    .line 592
    .local v2, "effectiveALen":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    sub-int v3, v10, v8

    .line 597
    .local v3, "effectiveBLen":I
    if-ne v2, v3, :cond_a

    if-ne v2, v6, :cond_a

    .line 598
    const/4 v10, 0x1

    goto :goto_0

    .line 586
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    .restart local v0    # "ca":C
    .restart local v1    # "cb":C
    .restart local v9    # "skipCmp":Z
    :cond_9
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 601
    .end local v0    # "ca":C
    .end local v1    # "cb":C
    .end local v9    # "skipCmp":Z
    .restart local v2    # "effectiveALen":I
    .restart local v3    # "effectiveBLen":I
    :cond_a
    const/4 v10, 0x0

    goto :goto_0

    .line 605
    .end local v2    # "effectiveALen":I
    .end local v3    # "effectiveBLen":I
    :cond_b
    const/4 v10, 0x7

    if-lt v6, v10, :cond_d

    if-ltz v4, :cond_c

    if-gez v5, :cond_d

    .line 606
    :cond_c
    const/4 v10, 0x1

    goto :goto_0

    .line 618
    :cond_d
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_e

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->matchIntlPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 621
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 624
    :cond_e
    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 627
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 630
    :cond_f
    add-int/lit8 v10, v5, 0x1

    invoke-static {p1, v10}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->matchTrunkPrefix(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    add-int/lit8 v10, v4, 0x1

    invoke-static {p0, v10}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->matchIntlPrefixAndCC(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 633
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 636
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 644
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static compareStrictly(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 20
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;
    .param p2, "acceptInvalidCCCPrefix"    # Z

    .prologue
    .line 845
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 846
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_1

    const/16 v18, 0x1

    .line 983
    :goto_0
    return v18

    .line 846
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 847
    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_3

    .line 848
    const/16 v18, 0x0

    goto :goto_0

    .line 851
    :cond_3
    const/4 v10, 0x0

    .line 852
    .local v10, "forwardIndexA":I
    const/4 v11, 0x0

    .line 854
    .local v11, "forwardIndexB":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v6

    .line 856
    .local v6, "cccA":Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    invoke-static/range {p1 .. p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    move-result-object v7

    .line 858
    .local v7, "cccB":Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    const/4 v5, 0x0

    .line 859
    .local v5, "bothHasCountryCallingCode":Z
    const/4 v13, 0x1

    .line 860
    .local v13, "okToIgnorePrefix":Z
    const/16 v16, 0x0

    .line 861
    .local v16, "trunkPrefixIsOmittedA":Z
    const/16 v17, 0x0

    .line 862
    .local v17, "trunkPrefixIsOmittedB":Z
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 863
    iget v0, v6, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v18, v0

    iget v0, v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->countryCallingCode:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    .line 865
    const/16 v18, 0x0

    goto :goto_0

    .line 869
    :cond_4
    const/4 v13, 0x0

    .line 870
    const/4 v5, 0x1

    .line 871
    iget v10, v6, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 872
    iget v11, v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 898
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v3, v18, -0x1

    .line 899
    .local v3, "backwardIndexA":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .line 900
    .local v4, "backwardIndexB":I
    :cond_6
    :goto_2
    if-lt v3, v10, :cond_f

    if-lt v4, v11, :cond_f

    .line 901
    const/4 v14, 0x0

    .line 902
    .local v14, "skip_compare":Z
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 903
    .local v8, "chA":C
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 904
    .local v9, "chB":C
    invoke-static {v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 905
    add-int/lit8 v3, v3, -0x1

    .line 906
    const/4 v14, 0x1

    .line 908
    :cond_7
    invoke-static {v9}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isSeparator(C)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 909
    add-int/lit8 v4, v4, -0x1

    .line 910
    const/4 v14, 0x1

    .line 913
    :cond_8
    if-nez v14, :cond_6

    .line 914
    if-eq v8, v9, :cond_e

    .line 915
    const/16 v18, 0x0

    goto :goto_0

    .line 873
    .end local v3    # "backwardIndexA":I
    .end local v4    # "backwardIndexB":I
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_9
    if-nez v6, :cond_a

    if-nez v7, :cond_a

    .line 876
    const/4 v13, 0x0

    goto :goto_1

    .line 878
    :cond_a
    if-eqz v6, :cond_c

    .line 879
    iget v10, v6, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    .line 887
    :cond_b
    :goto_3
    if-eqz v7, :cond_d

    .line 888
    iget v11, v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;->newIndex:I

    goto :goto_1

    .line 881
    :cond_c
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 882
    .local v15, "tmp":I
    if-ltz v15, :cond_b

    .line 883
    move v10, v15

    .line 884
    const/16 v16, 0x1

    goto :goto_3

    .line 890
    .end local v15    # "tmp":I
    :cond_d
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I

    move-result v15

    .line 891
    .restart local v15    # "tmp":I
    if-ltz v15, :cond_5

    .line 892
    move v11, v15

    .line 893
    const/16 v17, 0x1

    goto :goto_1

    .line 917
    .end local v15    # "tmp":I
    .restart local v3    # "backwardIndexA":I
    .restart local v4    # "backwardIndexB":I
    .restart local v8    # "chA":C
    .restart local v9    # "chB":C
    .restart local v14    # "skip_compare":Z
    :cond_e
    add-int/lit8 v3, v3, -0x1

    .line 918
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 922
    .end local v8    # "chA":C
    .end local v9    # "chB":C
    .end local v14    # "skip_compare":Z
    :cond_f
    if-eqz v13, :cond_17

    .line 923
    if-eqz v16, :cond_10

    if-le v10, v3, :cond_11

    :cond_10
    move-object/from16 v0, p0

    invoke-static {v0, v10, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_13

    .line 925
    :cond_11
    if-eqz p2, :cond_12

    .line 935
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 937
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 940
    :cond_13
    if-eqz v17, :cond_14

    if-le v11, v4, :cond_15

    :cond_14
    move-object/from16 v0, p1

    invoke-static {v0, v10, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->checkPrefixIsIgnorable(Ljava/lang/String;II)Z

    move-result v18

    if-nez v18, :cond_1e

    .line 942
    :cond_15
    if-eqz p2, :cond_16

    .line 943
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v18

    goto/16 :goto_0

    .line 945
    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 958
    :cond_17
    if-nez v5, :cond_19

    const/4 v12, 0x1

    .line 959
    .local v12, "maybeNamp":Z
    :goto_4
    if-lt v3, v10, :cond_1b

    .line 960
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 961
    .restart local v8    # "chA":C
    invoke-static {v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 962
    if-eqz v12, :cond_1a

    invoke-static {v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    .line 963
    const/4 v12, 0x0

    .line 968
    :cond_18
    add-int/lit8 v3, v3, -0x1

    .line 969
    goto :goto_4

    .line 958
    .end local v8    # "chA":C
    .end local v12    # "maybeNamp":Z
    :cond_19
    const/4 v12, 0x0

    goto :goto_4

    .line 965
    .restart local v8    # "chA":C
    .restart local v12    # "maybeNamp":Z
    :cond_1a
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 970
    .end local v8    # "chA":C
    :cond_1b
    :goto_5
    if-lt v4, v11, :cond_1e

    .line 971
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 972
    .restart local v9    # "chB":C
    invoke-static {v9}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 973
    if-eqz v12, :cond_1d

    invoke-static {v9}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1d

    .line 974
    const/4 v12, 0x0

    .line 979
    :cond_1c
    add-int/lit8 v4, v4, -0x1

    .line 980
    goto :goto_5

    .line 976
    :cond_1d
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 983
    .end local v9    # "chB":C
    .end local v12    # "maybeNamp":Z
    :cond_1e
    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public static convertAlphaCharactersInNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1452
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static createExtnPattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "singleExtnSymbols"    # Ljava/lang/String;

    .prologue
    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";ext=(\\p{Nd}{1,7})|[ \u00a0\\t,]*(?:e?xt(?:ensi(?:o\u0301?|\u00f3))?n?|\uff45?\uff58\uff54\uff4e?|["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]|int|anexo|\uff49\uff4e\uff54)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[:\\.\uff0e]?[ \u00a0\\t,-]*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\\p{Nd}{1,7})"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#?|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[- ]+("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\\p{Nd}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{1,5})#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 1599
    if-nez p0, :cond_0

    .line 1600
    const/4 v6, 0x0

    .line 1625
    :goto_0
    return-object v6

    .line 1603
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1604
    .local v3, "len":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1606
    .local v5, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_6

    .line 1607
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1609
    .local v0, "c":C
    const/16 v6, 0xa

    invoke-static {v0, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1610
    .local v1, "digit":I
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    .line 1611
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1606
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1612
    :cond_2
    const/16 v6, 0x2b

    if-ne v0, v6, :cond_4

    .line 1614
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1615
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "*31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "#31#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1616
    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1618
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_4
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1619
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1620
    :cond_5
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isStartsPostDial(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1625
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method static extractPossibleNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 1347
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->VALID_START_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1348
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1349
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 1351
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 1352
    .local v2, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1353
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1354
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stripped trailing characters: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1357
    :cond_0
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1358
    .local v1, "secondNumber":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1359
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    invoke-virtual {p0, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1363
    .end local v1    # "secondNumber":Ljava/util/regex/Matcher;
    .end local v2    # "trailingCharsMatcher":Ljava/util/regex/Matcher;
    .end local p0    # "number":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .restart local p0    # "number":Ljava/lang/String;
    :cond_2
    const-string p0, ""

    goto :goto_0
.end method

.method public static formatJapaneseNumber(Landroid/text/Editable;)V
    .locals 0
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 3973
    invoke-static {p0}, Lcom/market2345/messages/data/phonenumbers/JapanesePhoneNumberFormatter;->format(Landroid/text/Editable;)V

    .line 3974
    return-void
.end method

.method public static formatNanpNumber(Landroid/text/Editable;)V
    .locals 15
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x0

    .line 4012
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 4013
    .local v4, "length":I
    const-string v11, "+1-nnn-nnn-nnnn"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-le v4, v11, :cond_1

    .line 4107
    :cond_0
    :goto_0
    return-void

    .line 4016
    :cond_1
    const/4 v11, 0x5

    if-le v4, v11, :cond_0

    .line 4021
    invoke-interface {p0, v12, v4}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    .line 4024
    .local v9, "saved":Ljava/lang/CharSequence;
    invoke-static {p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    .line 4025
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v4

    .line 4030
    new-array v1, v13, [I

    .line 4031
    .local v1, "dashPositions":[I
    const/4 v5, 0x0

    .line 4033
    .local v5, "numDashes":I
    const/4 v10, 0x1

    .line 4034
    .local v10, "state":I
    const/4 v7, 0x0

    .line 4035
    .local v7, "numDigits":I
    const/4 v2, 0x0

    .local v2, "i":I
    move v6, v5

    .end local v5    # "numDashes":I
    .local v6, "numDashes":I
    :goto_1
    if-ge v2, v4, :cond_8

    .line 4036
    invoke-interface {p0, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    .line 4037
    .local v0, "c":C
    packed-switch v0, :pswitch_data_0

    .line 4081
    :cond_2
    :pswitch_0
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 4039
    :pswitch_1
    if-eqz v7, :cond_3

    if-ne v10, v14, :cond_4

    .line 4040
    :cond_3
    const/4 v10, 0x3

    move v5, v6

    .line 4035
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move v6, v5

    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    goto :goto_1

    .line 4053
    :cond_4
    :pswitch_2
    if-ne v10, v14, :cond_5

    .line 4055
    invoke-interface {p0, v12, v4, v9}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 4057
    :cond_5
    if-ne v10, v13, :cond_6

    .line 4059
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    .line 4064
    :goto_3
    const/4 v10, 0x1

    .line 4065
    add-int/lit8 v7, v7, 0x1

    .line 4066
    goto :goto_2

    .line 4060
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_6
    const/4 v11, 0x4

    if-eq v10, v11, :cond_b

    if-eq v7, v13, :cond_7

    const/4 v11, 0x6

    if-ne v7, v11, :cond_b

    .line 4062
    :cond_7
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    aput v2, v1, v6

    goto :goto_3

    .line 4069
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_3
    const/4 v10, 0x4

    move v5, v6

    .line 4070
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_2

    .line 4073
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :pswitch_4
    if-nez v2, :cond_2

    .line 4075
    const/4 v10, 0x2

    move v5, v6

    .line 4076
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_2

    .line 4086
    .end local v0    # "c":C
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_8
    const/4 v11, 0x7

    if-ne v7, v11, :cond_a

    .line 4088
    add-int/lit8 v5, v6, -0x1

    .line 4092
    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    :goto_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v5, :cond_9

    .line 4093
    aget v8, v1, v2

    .line 4094
    .local v8, "pos":I
    add-int v11, v8, v2

    add-int v12, v8, v2

    const-string v13, "-"

    invoke-interface {p0, v11, v12, v13}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 4092
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4098
    .end local v8    # "pos":I
    :cond_9
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v3

    .line 4099
    .local v3, "len":I
    :goto_6
    if-lez v3, :cond_0

    .line 4100
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    const/16 v12, 0x2d

    if-ne v11, v12, :cond_0

    .line 4101
    add-int/lit8 v11, v3, -0x1

    invoke-interface {p0, v11, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 4102
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .end local v3    # "len":I
    .end local v5    # "numDashes":I
    .restart local v6    # "numDashes":I
    :cond_a
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_4

    .end local v5    # "numDashes":I
    .restart local v0    # "c":C
    .restart local v6    # "numDashes":I
    :cond_b
    move v5, v6

    .end local v6    # "numDashes":I
    .restart local v5    # "numDashes":I
    goto :goto_3

    .line 4037
    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private formatNsn(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    .prologue
    .line 2421
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNsn(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private formatNsn(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 2432
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v2

    .line 2435
    .local v2, "intlNumberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    if-ne p3, v3, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v0

    .line 2439
    .local v0, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;>;"
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 2440
    .local v1, "formattingPattern":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v1, :cond_2

    .end local p1    # "number":Ljava/lang/String;
    :goto_1
    return-object p1

    .line 2435
    .end local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;>;"
    .end local v1    # "formattingPattern":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .restart local p1    # "number":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->intlNumberFormats()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2440
    .restart local v0    # "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;>;"
    .restart local v1    # "formattingPattern":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    :cond_2
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNsnUsingPattern(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private formatNsnUsingPattern(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;
    .param p4, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 2474
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getFormat()Ljava/lang/String;

    move-result-object v6

    .line 2475
    .local v6, "numberFormatRule":Ljava/lang/String;
    iget-object v7, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 2477
    .local v3, "m":Ljava/util/regex/Matcher;
    const-string v2, ""

    .line 2478
    .local v2, "formattedNationalNumber":Ljava/lang/String;
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    if-ne p3, v7, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 2482
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getDomesticCarrierCodeFormattingRule()Ljava/lang/String;

    move-result-object v0

    .line 2483
    .local v0, "carrierCodeFormattingRule":Ljava/lang/String;
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->CC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2487
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2489
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2503
    .end local v0    # "carrierCodeFormattingRule":Ljava/lang/String;
    :goto_0
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->RFC3966:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    if-ne p3, v7, :cond_1

    .line 2505
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->SEPARATOR_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 2506
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2507
    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2510
    :cond_0
    invoke-virtual {v4, v2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2512
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    return-object v2

    .line 2492
    :cond_2
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 2493
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    if-ne p3, v7, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 2496
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->FIRST_GROUP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2497
    .local v1, "firstGroupMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2499
    goto :goto_0

    .line 2500
    .end local v1    # "firstGroupMatcher":Ljava/util/regex/Matcher;
    :cond_3
    invoke-virtual {v3, v6}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static formatNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;

    .prologue
    .line 3863
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3864
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 3865
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "defaultFormattingType"    # I

    .prologue
    .line 3880
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3881
    .local v0, "text":Landroid/text/SpannableStringBuilder;
    invoke-static {v0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 3882
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatNumber(Landroid/text/Editable;I)V
    .locals 6
    .param p0, "text"    # Landroid/text/Editable;
    .param p1, "defaultFormattingType"    # I

    .prologue
    const/16 v5, 0x31

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 3931
    move v0, p1

    .line 3933
    .local v0, "formatType":I
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-le v1, v4, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_0

    .line 3934
    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_1

    .line 3935
    const/4 v0, 0x1

    .line 3944
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 3955
    :goto_1
    return-void

    .line 3936
    :cond_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    invoke-interface {p0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x38

    if-ne v1, v2, :cond_2

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    .line 3938
    const/4 v0, 0x2

    goto :goto_0

    .line 3940
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 3946
    :pswitch_0
    invoke-static {p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNanpNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 3949
    :pswitch_1
    invoke-static {p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatJapaneseNumber(Landroid/text/Editable;)V

    goto :goto_1

    .line 3952
    :pswitch_2
    invoke-static {p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->removeDashes(Landroid/text/Editable;)V

    goto :goto_1

    .line 3944
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z
    .locals 1
    .param p0, "nationalPrefixFormattingRule"    # Ljava/lang/String;

    .prologue
    .line 1744
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->FIRST_GROUP_ONLY_PREFIX_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private getCountryCodeForValidRegion(Ljava/lang/String;)I
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2876
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2877
    .local v0, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 2878
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid region code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2880
    :cond_0
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v1

    return v1
.end method

.method public static getFormatTypeForLocale(Ljava/util/Locale;)I
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 4117
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 4119
    .local v0, "country":Ljava/lang/String;
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getFormatTypeFromCountryCode(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getFormatTypeFromCountryCode(Ljava/lang/String;)I
    .locals 3
    .param p0, "country"    # Ljava/lang/String;

    .prologue
    .line 4124
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    array-length v1, v2

    .line 4125
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 4126
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->NANP_COUNTRIES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 4127
    const/4 v2, 0x1

    .line 4133
    :goto_1
    return v2

    .line 4125
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4130
    :cond_1
    const-string v2, "jp"

    invoke-virtual {v2, p0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 4131
    const/4 v2, 0x2

    goto :goto_1

    .line 4133
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized getInstance()Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
    .locals 3

    .prologue
    .line 1732
    const-class v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->instance:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    if-nez v0, :cond_0

    .line 1733
    const-string v0, "/com/android/i18n/phonenumbers/data/PhoneNumberMetadataProto"

    invoke-static {}, Lcom/market2345/messages/data/phonenumbers/CountryCodeToRegionCodeMap;->getCountryCodeToRegionCodeMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getInstance(Ljava/lang/String;Ljava/util/Map;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1736
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->instance:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1732
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized getInstance(Ljava/lang/String;Ljava/util/Map;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
    .locals 2
    .param p0, "baseFileLocation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;"
        }
    .end annotation

    .prologue
    .line 1690
    .local p1, "countryCallingCodeToRegionCodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    const-class v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->instance:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    if-nez v0, :cond_0

    .line 1691
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;-><init>()V

    sput-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->instance:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    .line 1692
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->instance:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    iput-object p1, v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    .line 1693
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->instance:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    invoke-direct {v0, p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->init(Ljava/lang/String;)V

    .line 1695
    :cond_0
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->instance:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 1690
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 1
    .param p1, "countryCallingCode"    # I
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1939
    const-string v0, "001"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForNonGeographicalRegion(I)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    goto :goto_0
.end method

.method private getNumberTypeHelper(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;
    .locals 3
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "metadata"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .prologue
    .line 2645
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2646
    .local v0, "generalNumberDesc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2648
    :cond_0
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->UNKNOWN:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    .line 2691
    :goto_0
    return-object v2

    .line 2651
    :cond_1
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2652
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->PREMIUM_RATE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto :goto_0

    .line 2654
    :cond_2
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2655
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->TOLL_FREE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto :goto_0

    .line 2657
    :cond_3
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2658
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->SHARED_COST:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto :goto_0

    .line 2660
    :cond_4
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2661
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->VOIP:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto :goto_0

    .line 2663
    :cond_5
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2664
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->PERSONAL_NUMBER:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto :goto_0

    .line 2666
    :cond_6
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2667
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->PAGER:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto :goto_0

    .line 2669
    :cond_7
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2670
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->UAN:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto :goto_0

    .line 2672
    :cond_8
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2673
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->VOICEMAIL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto :goto_0

    .line 2676
    :cond_9
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v1

    .line 2677
    .local v1, "isFixedLine":Z
    if-eqz v1, :cond_c

    .line 2678
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2679
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto :goto_0

    .line 2680
    :cond_a
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2681
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto/16 :goto_0

    .line 2683
    :cond_b
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->FIXED_LINE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto/16 :goto_0

    .line 2687
    :cond_c
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->isSameMobileAndFixedLinePattern()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2689
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->MOBILE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto/16 :goto_0

    .line 2691
    :cond_d
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->UNKNOWN:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    goto/16 :goto_0
.end method

.method private getRegionCodeForNumberFromRegionList(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2811
    .local p2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 2812
    .local v2, "nationalNumber":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2815
    .local v3, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 2816
    .local v1, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasLeadingDigits()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2817
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getLeadingDigits()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2825
    .end local v1    # "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v3    # "regionCode":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2821
    .restart local v1    # "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v3    # "regionCode":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNumberTypeHelper(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    move-result-object v4

    sget-object v5, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->UNKNOWN:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 2825
    .end local v1    # "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hasFormattingPatternForNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 7
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v5, 0x0

    .line 2256
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2257
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 2258
    .local v4, "phoneNumberRegion":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2260
    .local v2, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v2, :cond_1

    .line 2266
    :cond_0
    :goto_0
    return v5

    .line 2263
    :cond_1
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2264
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v1

    .line 2266
    .local v1, "formatRule":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v1, :cond_0

    const/4 v5, 0x1

    goto :goto_0
.end method

.method private hasUnexpectedItalianLeadingZero(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 1
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2252
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isLeadingZeroPossible(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValidCountryCallingCode(I)Z
    .locals 2
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 1771
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static indexOfLastNetworkChar(Ljava/lang/String;)I
    .locals 5
    .param p0, "a"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 369
    .local v0, "origLength":I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 370
    .local v1, "pIndex":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 372
    .local v3, "wIndex":I
    invoke-static {v1, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->minPositive(II)I

    move-result v2

    .line 374
    .local v2, "trimIndex":I
    if-gez v2, :cond_0

    .line 375
    add-int/lit8 v4, v0, -0x1

    .line 377
    :goto_0
    return v4

    :cond_0
    add-int/lit8 v4, v2, -0x1

    goto :goto_0
.end method

.method private init(Ljava/lang/String;)V
    .locals 7
    .param p1, "filePrefix"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 1261
    iput-object p1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->currentFilePrefix:Ljava/lang/String;

    .line 1262
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1263
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1266
    .local v2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v6, :cond_0

    const-string v3, "001"

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1268
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1271
    :cond_0
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->supportedRegions:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1277
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->supportedRegions:Ljava/util/Set;

    const-string v4, "001"

    invoke-interface {v3, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1278
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "invalid metadata (country calling code was mapped to the non-geo entity as well as specific region(s))"

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1281
    :cond_2
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->nanpaRegions:Ljava/util/Set;

    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1282
    return-void
.end method

.method private static isCountryCallingCode(I)Z
    .locals 1
    .param p0, "countryCallingCodeCandidate"    # I

    .prologue
    .line 746
    if-lez p0, :cond_0

    sget v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->CCC_LENGTH:I

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->COUNTRY_CALLING_CALL:[Z

    aget-boolean v0, v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isDialable(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1631
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isDialable(Ljava/lang/String;)Z
    .locals 3
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1648
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1649
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1650
    const/4 v2, 0x0

    .line 1653
    :goto_1
    return v2

    .line 1648
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1653
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isISODigit(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 458
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNationalNumberSuffixOfTheOther(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 4
    .param p1, "firstNumber"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 3741
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 3742
    .local v0, "firstNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 3744
    .local v1, "secondNumberNationalNumber":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final isNonSeparator(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 320
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x2a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x23

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z
    .locals 4
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "numberDesc"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    .prologue
    .line 2725
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2728
    .local v1, "possibleNumberPatternMatcher":Ljava/util/regex/Matcher;
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2731
    .local v0, "nationalNumberPatternMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static isSeparator(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 712
    invoke-static {p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final isStartsPostDial(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 1584
    const/16 v0, 0x2c

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidRegionCode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 1764
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->supportedRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isViablePhoneNumber(Ljava/lang/String;)Z
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1379
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 1380
    const/4 v1, 0x0

    .line 1383
    :goto_0
    return v1

    .line 1382
    :cond_0
    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->VALID_PHONE_NUMBER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1383
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method public static isWellFormedSmsAddress(Ljava/lang/String;)Z
    .locals 2
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 1640
    invoke-static {p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1642
    .local v0, "networkPortion":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static matchIntlPrefix(Ljava/lang/String;I)Z
    .locals 8
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v7, 0x31

    const/16 v6, 0x30

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 423
    const/4 v2, 0x0

    .line 424
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_7

    .line 425
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 427
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 446
    :pswitch_0
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 452
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v3

    .line 429
    .restart local v0    # "c":C
    :pswitch_1
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    const/4 v2, 0x1

    .line 424
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 430
    :cond_2
    if-ne v0, v6, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 431
    :cond_3
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 435
    :pswitch_2
    if-ne v0, v6, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 436
    :cond_4
    if-ne v0, v7, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 437
    :cond_5
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 441
    :pswitch_3
    if-ne v0, v7, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 442
    :cond_6
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 452
    .end local v0    # "c":C
    :cond_7
    if-eq v2, v4, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_8

    const/4 v5, 0x5

    if-ne v2, v5, :cond_0

    :cond_8
    move v3, v4

    goto :goto_1

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static matchIntlPrefixAndCC(Ljava/lang/String;I)Z
    .locals 7
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    const/16 v6, 0x31

    const/16 v5, 0x30

    const/4 v3, 0x0

    .line 468
    const/4 v2, 0x0

    .line 469
    .local v2, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_9

    .line 470
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 472
    .local v0, "c":C
    packed-switch v2, :pswitch_data_0

    .line 504
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 508
    .end local v0    # "c":C
    :cond_0
    :goto_1
    return v3

    .line 474
    .restart local v0    # "c":C
    :pswitch_0
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    const/4 v2, 0x1

    .line 469
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 475
    :cond_2
    if-ne v0, v5, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    .line 476
    :cond_3
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 480
    :pswitch_1
    if-ne v0, v5, :cond_4

    const/4 v2, 0x3

    goto :goto_2

    .line 481
    :cond_4
    if-ne v0, v6, :cond_5

    const/4 v2, 0x4

    goto :goto_2

    .line 482
    :cond_5
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 486
    :pswitch_2
    if-ne v0, v6, :cond_6

    const/4 v2, 0x5

    goto :goto_2

    .line 487
    :cond_6
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 493
    :pswitch_3
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x6

    goto :goto_2

    .line 494
    :cond_7
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 499
    :pswitch_4
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isISODigit(C)Z

    move-result v4

    if-eqz v4, :cond_8

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 500
    :cond_8
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 508
    .end local v0    # "c":C
    :cond_9
    const/4 v4, 0x6

    if-eq v2, v4, :cond_a

    const/4 v4, 0x7

    if-eq v2, v4, :cond_a

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :cond_a
    const/4 v3, 0x1

    goto :goto_1

    .line 472
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private static matchTrunkPrefix(Ljava/lang/String;I)Z
    .locals 4
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "len"    # I

    .prologue
    .line 516
    const/4 v1, 0x0

    .line 518
    .local v1, "found":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_2

    .line 519
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 521
    .local v0, "c":C
    const/16 v3, 0x30

    if-ne v0, v3, :cond_1

    if-nez v1, :cond_1

    .line 522
    const/4 v1, 0x1

    .line 518
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 523
    :cond_1
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    const/4 v1, 0x0

    .line 528
    .end local v0    # "c":C
    .end local v1    # "found":Z
    :cond_2
    return v1
.end method

.method private maybeAppendFormattedExtension(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "metadata"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "numberFormat"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;
    .param p4, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 2587
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2588
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->RFC3966:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    if-ne p3, v0, :cond_1

    .line 2589
    const-string v0, ";ext="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2598
    :cond_0
    :goto_0
    return-void

    .line 2591
    :cond_1
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredExtnPrefix()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2592
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredExtnPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2594
    :cond_2
    const-string v0, " ext. "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static minPositive(II)I
    .locals 0
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 347
    if-ltz p0, :cond_2

    if-ltz p1, :cond_2

    .line 348
    if-ge p0, p1, :cond_1

    .line 354
    .end local p0    # "a":I
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "a":I
    :cond_1
    move p0, p1

    .line 348
    goto :goto_0

    .line 349
    :cond_2
    if-gez p0, :cond_0

    .line 351
    if-ltz p1, :cond_3

    move p0, p1

    .line 352
    goto :goto_0

    .line 354
    :cond_3
    const/4 p0, -0x1

    goto :goto_0
.end method

.method static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1403
    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1404
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1405
    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->ALPHA_PHONE_MAPPINGS:Ljava/util/Map;

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    .line 1407
    :goto_0
    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method static normalize(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p0, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1419
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1420
    .local v0, "normalizedNumber":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    return-void
.end method

.method static normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;
    .locals 7
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "keepNonDigits"    # Z

    .prologue
    .line 1435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1436
    .local v5, "normalizedDigits":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-char v1, v0, v3

    .line 1437
    .local v1, "c":C
    const/16 v6, 0xa

    invoke-static {v1, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 1438
    .local v2, "digit":I
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 1439
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1436
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1440
    :cond_1
    if-eqz p1, :cond_0

    .line 1441
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1444
    .end local v1    # "c":C
    .end local v2    # "digit":I
    :cond_2
    return-object v5
.end method

.method public static normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .prologue
    .line 1431
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeDigits(Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;
    .locals 5
    .param p0, "number"    # Ljava/lang/String;
    .param p2, "removeNonMatches"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1672
    .local p1, "normalizationReplacements":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/Character;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1673
    .local v3, "normalizedNumber":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 1674
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1675
    .local v0, "character":C
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 1676
    .local v2, "newDigit":Ljava/lang/Character;
    if-eqz v2, :cond_1

    .line 1677
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1673
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1678
    :cond_1
    if-nez p2, :cond_0

    .line 1679
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1683
    .end local v0    # "character":C
    .end local v2    # "newDigit":Ljava/lang/Character;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 16
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "keepRawInput"    # Z
    .param p4, "checkRegion"    # Z
    .param p5, "phoneNumber"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/messages/data/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 3514
    if-nez p1, :cond_0

    .line 3515
    new-instance v2, Lcom/market2345/messages/data/phonenumbers/NumberParseException;

    sget-object v3, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The phone number supplied was null."

    invoke-direct {v2, v3, v6}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;-><init>(Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3517
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfa

    if-le v2, v3, :cond_1

    .line 3518
    new-instance v2, Lcom/market2345/messages/data/phonenumbers/NumberParseException;

    sget-object v3, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied was too long to parse."

    invoke-direct {v2, v3, v6}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;-><init>(Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3522
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 3523
    .local v14, "nationalNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->buildNationalNumberForParsing(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 3525
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3526
    new-instance v2, Lcom/market2345/messages/data/phonenumbers/NumberParseException;

    sget-object v3, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->NOT_A_NUMBER:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied did not seem to be a phone number."

    invoke-direct {v2, v3, v6}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;-><init>(Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3532
    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->checkRegionForParsing(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3533
    new-instance v2, Lcom/market2345/messages/data/phonenumbers/NumberParseException;

    sget-object v3, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "Missing or invalid default region."

    invoke-direct {v2, v3, v6}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;-><init>(Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3537
    :cond_3
    if-eqz p3, :cond_4

    .line 3538
    move-object/from16 v0, p5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setRawInput(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3542
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v11

    .line 3543
    .local v11, "extension":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 3544
    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setExtension(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3547
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 3550
    .local v4, "regionMetadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 3551
    .local v5, "normalizedNationalNumber":Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 3556
    .local v9, "countryCode":I
    :try_start_0
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeExtractCountryCode(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)I
    :try_end_0
    .catch Lcom/market2345/messages/data/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 3574
    :cond_6
    if-eqz v9, :cond_9

    .line 3575
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v15

    .line 3576
    .local v15, "phoneNumberRegion":Ljava/lang/String;
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3578
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v15}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v4

    .line 3592
    .end local v15    # "phoneNumberRegion":Ljava/lang/String;
    :cond_7
    :goto_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_b

    .line 3593
    new-instance v2, Lcom/market2345/messages/data/phonenumbers/NumberParseException;

    sget-object v3, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied is too short to be a phone number."

    invoke-direct {v2, v3, v6}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;-><init>(Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3558
    :catch_0
    move-exception v10

    .line 3559
    .local v10, "e":Lcom/market2345/messages/data/phonenumbers/NumberParseException;
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    .line 3560
    .local v13, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v10}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->getErrorType()Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    move-result-object v2

    sget-object v3, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    if-ne v2, v3, :cond_8

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 3563
    invoke-virtual {v13}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v2, p0

    move/from16 v6, p3

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeExtractCountryCode(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v9

    .line 3566
    if-nez v9, :cond_6

    .line 3567
    new-instance v2, Lcom/market2345/messages/data/phonenumbers/NumberParseException;

    sget-object v3, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "Could not interpret numbers after plus-sign."

    invoke-direct {v2, v3, v6}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;-><init>(Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3571
    :cond_8
    new-instance v2, Lcom/market2345/messages/data/phonenumbers/NumberParseException;

    invoke-virtual {v10}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->getErrorType()Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    invoke-virtual {v10}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v6}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;-><init>(Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3583
    .end local v10    # "e":Lcom/market2345/messages/data/phonenumbers/NumberParseException;
    .end local v13    # "matcher":Ljava/util/regex/Matcher;
    :cond_9
    invoke-static {v14}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalize(Ljava/lang/StringBuilder;)V

    .line 3584
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3585
    if-eqz p2, :cond_a

    .line 3586
    invoke-virtual {v4}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v9

    .line 3587
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 3588
    :cond_a
    if-eqz p3, :cond_7

    .line 3589
    invoke-virtual/range {p5 .. p5}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 3596
    :cond_b
    if-eqz v4, :cond_c

    .line 3597
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 3598
    .local v8, "carrierCode":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 3599
    if-eqz p3, :cond_c

    .line 3600
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setPreferredDomesticCarrierCode(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3603
    .end local v8    # "carrierCode":Ljava/lang/StringBuilder;
    :cond_c
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    .line 3604
    .local v12, "lengthOfNationalNumber":I
    const/4 v2, 0x2

    if-ge v12, v2, :cond_d

    .line 3605
    new-instance v2, Lcom/market2345/messages/data/phonenumbers/NumberParseException;

    sget-object v3, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_NSN:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied is too short to be a phone number."

    invoke-direct {v2, v3, v6}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;-><init>(Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3608
    :cond_d
    const/16 v2, 0x10

    if-le v12, v2, :cond_e

    .line 3609
    new-instance v2, Lcom/market2345/messages/data/phonenumbers/NumberParseException;

    sget-object v3, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->TOO_LONG:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v6, "The string supplied is too long to be a phone number."

    invoke-direct {v2, v3, v6}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;-><init>(Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v2

    .line 3612
    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_f

    .line 3613
    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setItalianLeadingZero(Z)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3615
    :cond_f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    move-object/from16 v0, p5

    invoke-virtual {v0, v2, v3}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3616
    return-void
.end method

.method private parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p1, "iddPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3238
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3239
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3240
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 3243
    .local v2, "matchEnd":I
    sget-object v6, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->CAPTURING_DIGIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3244
    .local v0, "digitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3245
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3246
    .local v3, "normalizedGroup":Ljava/lang/String;
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3253
    .end local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .end local v2    # "matchEnd":I
    .end local v3    # "normalizedGroup":Ljava/lang/String;
    :cond_0
    :goto_0
    return v4

    .line 3250
    .restart local v0    # "digitMatcher":Ljava/util/regex/Matcher;
    .restart local v2    # "matchEnd":I
    :cond_1
    invoke-virtual {p2, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v4, v5

    .line 3251
    goto :goto_0
.end method

.method private prefixNumberWithCountryCallingCode(ILcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "countryCallingCode"    # I
    .param p2, "numberFormat"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v3, 0x2b

    const/4 v2, 0x0

    .line 2402
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$2;->$SwitchMap$com$market2345$messages$data$phonenumbers$PhoneNumberUtils$PhoneNumberFormat:[I

    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2415
    :goto_0
    return-void

    .line 2404
    :pswitch_0
    invoke-virtual {p3, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2407
    :pswitch_1
    const-string v0, " "

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2410
    :pswitch_2
    const-string v0, "-"

    invoke-virtual {p3, v2, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tel:"

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2402
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "rawInput"    # Ljava/lang/String;
    .param p2, "nationalPrefix"    # Ljava/lang/String;
    .param p3, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2231
    invoke-static {p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2232
    .local v1, "normalizedNationalNumber":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2238
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isValidNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcom/market2345/messages/data/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2244
    :cond_0
    :goto_0
    return v2

    .line 2240
    :catch_0
    move-exception v0

    .line 2241
    .local v0, "e":Lcom/market2345/messages/data/phonenumbers/NumberParseException;
    goto :goto_0
.end method

.method private static removeDashes(Landroid/text/Editable;)V
    .locals 3
    .param p0, "text"    # Landroid/text/Editable;

    .prologue
    .line 3982
    const/4 v0, 0x0

    .line 3983
    .local v0, "p":I
    :goto_0
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3984
    invoke-interface {p0, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 3985
    add-int/lit8 v1, v0, 0x1

    invoke-interface {p0, v0, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_0

    .line 3987
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3990
    :cond_1
    return-void
.end method

.method static declared-synchronized resetInstance()V
    .locals 2

    .prologue
    .line 1703
    const-class v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->instance:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1704
    monitor-exit v0

    return-void

    .line 1703
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 992
    if-nez p0, :cond_0

    .line 993
    const/4 v5, 0x0

    .line 1009
    :goto_0
    return-object v5

    .line 995
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 996
    .local v3, "len":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 998
    .local v4, "ret":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 999
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1001
    .local v0, "c":C
    const/16 v5, 0xa

    invoke-static {v0, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 1002
    .local v1, "digit":I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 1003
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 998
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1004
    :cond_2
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNonSeparator(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1005
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1009
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;
    .locals 2
    .param p1, "numberPattern"    # Ljava/util/regex/Pattern;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2980
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 2981
    .local v0, "numberMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2982
    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->IS_POSSIBLE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    .line 2987
    :goto_0
    return-object v1

    .line 2984
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2985
    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->TOO_LONG:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    goto :goto_0

    .line 2987
    :cond_1
    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->TOO_SHORT:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    goto :goto_0
.end method

.method private static tryGetCountryCallingCodeAndNewIndex(Ljava/lang/String;Z)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;
    .locals 11
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "acceptThailandCase"    # Z

    .prologue
    const/16 v10, 0x36

    const/16 v9, 0x30

    const/16 v8, 0x31

    const/4 v6, 0x0

    .line 763
    const/4 v5, 0x0

    .line 764
    .local v5, "state":I
    const/4 v0, 0x0

    .line 765
    .local v0, "ccc":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 766
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 767
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 768
    .local v1, "ch":C
    packed-switch v5, :pswitch_data_0

    .line 837
    .end local v1    # "ch":C
    :cond_0
    :goto_1
    return-object v6

    .line 770
    .restart local v1    # "ch":C
    :pswitch_0
    const/16 v7, 0x2b

    if-ne v1, v7, :cond_2

    const/4 v5, 0x1

    .line 766
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 771
    :cond_2
    if-ne v1, v9, :cond_3

    const/4 v5, 0x2

    goto :goto_2

    .line 772
    :cond_3
    if-ne v1, v8, :cond_4

    .line 773
    if-eqz p1, :cond_0

    .line 774
    const/16 v5, 0x8

    goto :goto_2

    .line 778
    :cond_4
    invoke-static {v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 784
    :pswitch_1
    if-ne v1, v9, :cond_5

    const/4 v5, 0x3

    goto :goto_2

    .line 785
    :cond_5
    if-ne v1, v8, :cond_6

    const/4 v5, 0x4

    goto :goto_2

    .line 786
    :cond_6
    invoke-static {v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 792
    :pswitch_2
    if-ne v1, v8, :cond_7

    const/4 v5, 0x5

    goto :goto_2

    .line 793
    :cond_7
    invoke-static {v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 804
    :pswitch_3
    invoke-static {v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    .line 805
    .local v4, "ret":I
    if-lez v4, :cond_c

    .line 806
    mul-int/lit8 v7, v0, 0xa

    add-int v0, v7, v4

    .line 807
    const/16 v7, 0x64

    if-ge v0, v7, :cond_8

    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isCountryCallingCode(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 808
    :cond_8
    new-instance v6, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    add-int/lit8 v7, v2, 0x1

    invoke-direct {v6, v0, v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 810
    :cond_9
    const/4 v7, 0x1

    if-eq v5, v7, :cond_a

    const/4 v7, 0x3

    if-eq v5, v7, :cond_a

    const/4 v7, 0x5

    if-ne v5, v7, :cond_b

    .line 811
    :cond_a
    const/4 v5, 0x6

    goto :goto_2

    .line 813
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 815
    :cond_c
    invoke-static {v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 821
    .end local v4    # "ret":I
    :pswitch_4
    if-ne v1, v10, :cond_d

    const/16 v5, 0x9

    goto :goto_2

    .line 822
    :cond_d
    invoke-static {v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 827
    :pswitch_5
    if-ne v1, v10, :cond_0

    .line 828
    new-instance v6, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;

    const/16 v7, 0x42

    add-int/lit8 v8, v2, 0x1

    invoke-direct {v6, v7, v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$CountryCallingCodeAndNewIndex;-><init>(II)V

    goto :goto_1

    .line 768
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static tryGetISODigit(C)I
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 653
    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    .line 654
    add-int/lit8 v0, p0, -0x30

    .line 656
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static tryGetTrunkPrefixOmittedIndex(Ljava/lang/String;I)I
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "currentIndex"    # I

    .prologue
    const/4 v3, -0x1

    .line 698
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 699
    .local v2, "length":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 700
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 701
    .local v0, "ch":C
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->tryGetISODigit(C)I

    move-result v4

    if-ltz v4, :cond_1

    .line 702
    add-int/lit8 v3, v1, 0x1

    .line 707
    .end local v0    # "ch":C
    :cond_0
    return v3

    .line 703
    .restart local v0    # "ch":C
    :cond_1
    invoke-static {v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    if-nez v4, :cond_0

    .line 699
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method canBeInternationallyDialled(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 4
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v2, 0x1

    .line 3844
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 3845
    .local v0, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_1

    .line 3851
    :cond_0
    :goto_0
    return v2

    .line 3850
    :cond_1
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 3851
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getNoInternationalDialling()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatchingDesc(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0
.end method

.method chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .locals 6
    .param p2, "nationalNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;"
        }
    .end annotation

    .prologue
    .line 2447
    .local p1, "availableFormats":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 2448
    .local v2, "numFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->leadingDigitsPatternSize()I

    move-result v3

    .line 2449
    .local v3, "size":I
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2452
    :cond_1
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getPattern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 2453
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2458
    .end local v1    # "m":Ljava/util/regex/Matcher;
    .end local v2    # "numFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .end local v3    # "size":I
    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I
    .locals 6
    .param p1, "fullNumber"    # Ljava/lang/StringBuilder;
    .param p2, "nationalNumber"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v3, 0x0

    .line 3112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_1

    :cond_0
    move v2, v3

    .line 3125
    :goto_0
    return v2

    .line 3117
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 3118
    .local v1, "numberLength":I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    const/4 v4, 0x3

    if-gt v0, v4, :cond_3

    if-gt v0, v1, :cond_3

    .line 3119
    invoke-virtual {p1, v3, v0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3120
    .local v2, "potentialCountryCode":I
    iget-object v4, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3121
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 3118
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "potentialCountryCode":I
    :cond_3
    move v2, v3

    .line 3125
    goto :goto_0
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/Iterable;
    .locals 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3476
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;->VALID:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;J)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public findNumbers(Ljava/lang/CharSequence;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;J)Ljava/lang/Iterable;
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "leniency"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;
    .param p4, "maxTries"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;",
            "J)",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/market2345/messages/data/phonenumbers/PhoneNumberMatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3497
    new-instance v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$1;-><init>(Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$Leniency;J)V

    return-object v1
.end method

.method public format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    .prologue
    .line 1789
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1795
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v1

    .line 1796
    .local v1, "rawInput":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1802
    .end local v1    # "rawInput":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1800
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x14

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1801
    .local v0, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1802
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V
    .locals 5
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;
    .param p3, "formattedNumber"    # Ljava/lang/StringBuilder;

    .prologue
    .line 1812
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1813
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1814
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 1815
    .local v2, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->E164:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    if-ne p2, v4, :cond_0

    .line 1818
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->E164:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-direct {p0, v0, v4, p3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->prefixNumberWithCountryCallingCode(ILcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1838
    :goto_0
    return-void

    .line 1823
    :cond_0
    invoke-direct {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->hasValidCountryCallingCode(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1824
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1830
    :cond_1
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    .line 1833
    .local v3, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 1835
    .local v1, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-direct {p0, v2, v1, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNsn(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeAppendFormattedExtension(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1837
    invoke-direct {p0, v0, p2, p3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->prefixNumberWithCountryCallingCode(ILcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method public formatByPattern(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;
    .locals 11
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "numberFormat"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;",
            "Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1854
    .local p3, "userDefinedFormats":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1855
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v6

    .line 1856
    .local v6, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->hasValidCountryCallingCode(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1900
    .end local v6    # "nationalSignificantNumber":Ljava/lang/String;
    :goto_0
    return-object v6

    .line 1862
    .restart local v6    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 1864
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 1867
    .local v3, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v9, 0x14

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1869
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p3, v6}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v2

    .line 1871
    .local v2, "formattingPattern":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v2, :cond_1

    .line 1873
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1898
    :goto_1
    invoke-direct {p0, p1, v3, p2, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeAppendFormattedExtension(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1899
    invoke-direct {p0, v0, p2, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->prefixNumberWithCountryCallingCode(ILcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1900
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1875
    :cond_1
    new-instance v7, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 1879
    .local v7, "numFormatCopy":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v7, v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 1880
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 1881
    .local v5, "nationalPrefixFormattingRule":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 1882
    invoke-virtual {v3}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v4

    .line 1883
    .local v4, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    .line 1885
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->NP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1887
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->FG_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string v10, "\\$1"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1889
    invoke-virtual {v7, v5}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setNationalPrefixFormattingRule(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 1895
    .end local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {p0, v6, v7, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNsnUsingPattern(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1892
    .restart local v4    # "nationalPrefix":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    goto :goto_2
.end method

.method public formatInOriginalFormat(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 2131
    invoke-virtual/range {p1 .. p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-direct/range {p0 .. p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->hasUnexpectedItalianLeadingZero(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v17

    if-nez v17, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->hasFormattingPatternForNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 2135
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v5

    .line 2224
    :cond_1
    :goto_0
    return-object v5

    .line 2137
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasCountryCodeSource()Z

    move-result v17

    if-nez v17, :cond_3

    .line 2138
    sget-object v17, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 2141
    :cond_3
    sget-object v17, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$2;->$SwitchMap$com$market2345$messages$data$phonenumbers$Phonenumber$PhoneNumber$CountryCodeSource:[I

    invoke-virtual/range {p1 .. p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 2154
    invoke-virtual/range {p1 .. p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v16

    .line 2157
    .local v16, "regionCode":Ljava/lang/String;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    .line 2158
    .local v10, "nationalPrefix":Ljava/lang/String;
    sget-object v17, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v8

    .line 2159
    .local v8, "nationalFormat":Ljava/lang/String;
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    .line 2162
    :cond_4
    move-object v5, v8

    .line 2212
    .end local v8    # "nationalFormat":Ljava/lang/String;
    .end local v10    # "nationalPrefix":Ljava/lang/String;
    .end local v16    # "regionCode":Ljava/lang/String;
    .local v5, "formattedNumber":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v15

    .line 2215
    .local v15, "rawInput":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_1

    .line 2216
    sget-object v17, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v5, v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v11

    .line 2218
    .local v11, "normalizedFormattedNumber":Ljava/lang/String;
    sget-object v17, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v15, v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v12

    .line 2220
    .local v12, "normalizedRawInput":Ljava/lang/String;
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 2221
    move-object v5, v15

    goto :goto_0

    .line 2143
    .end local v5    # "formattedNumber":Ljava/lang/String;
    .end local v11    # "normalizedFormattedNumber":Ljava/lang/String;
    .end local v12    # "normalizedRawInput":Ljava/lang/String;
    .end local v15    # "rawInput":Ljava/lang/String;
    :pswitch_0
    sget-object v17, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v5

    .line 2144
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 2146
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :pswitch_1
    invoke-virtual/range {p0 .. p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatOutOfCountryCallingNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2147
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 2149
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :pswitch_2
    sget-object v17, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 2150
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 2166
    .end local v5    # "formattedNumber":Ljava/lang/String;
    .restart local v8    # "nationalFormat":Ljava/lang/String;
    .restart local v10    # "nationalPrefix":Ljava/lang/String;
    .restart local v16    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v10, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->rawInputContainsNationalPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2169
    move-object v5, v8

    .line 2170
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 2174
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v7

    .line 2175
    .local v7, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual/range {p0 .. p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v9

    .line 2176
    .local v9, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v4

    .line 2181
    .local v4, "formatRule":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v4, :cond_7

    .line 2182
    move-object v5, v8

    .line 2183
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto :goto_1

    .line 2188
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_7
    invoke-virtual {v4}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v3

    .line 2190
    .local v3, "candidateNationalPrefixRule":Ljava/lang/String;
    const-string v17, "$1"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 2191
    .local v6, "indexOfFirstGroup":I
    if-gtz v6, :cond_8

    .line 2192
    move-object v5, v8

    .line 2193
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_1

    .line 2195
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v3, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2197
    invoke-static {v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeDigitsOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2198
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_9

    .line 2200
    move-object v5, v8

    .line 2201
    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_1

    .line 2204
    .end local v5    # "formattedNumber":Ljava/lang/String;
    :cond_9
    new-instance v13, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v13}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 2205
    .local v13, "numFormatCopy":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v13, v4}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 2206
    invoke-virtual {v13}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->clearNationalPrefixFormattingRule()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 2207
    new-instance v14, Ljava/util/ArrayList;

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2208
    .local v14, "numberFormats":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;>;"
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2209
    sget-object v17, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2, v14}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatByPattern(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "formattedNumber":Ljava/lang/String;
    goto/16 :goto_1

    .line 2141
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public formatNationalNumberWithCarrierCode(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "carrierCode"    # Ljava/lang/String;

    .prologue
    .line 1915
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1916
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 1917
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->hasValidCountryCallingCode(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1934
    .end local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1924
    .restart local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v4

    .line 1926
    .local v4, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 1928
    .local v2, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v5, 0x14

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1929
    .local v1, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v5, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-direct {p0, v3, v2, v5, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNsn(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    sget-object v5, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-direct {p0, p1, v2, v5, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeAppendFormattedExtension(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1932
    sget-object v5, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-direct {p0, v0, v5, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->prefixNumberWithCountryCallingCode(ILcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 1934
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public formatNationalNumberWithPreferredCarrierCode(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "fallbackCarrierCode"    # Ljava/lang/String;

    .prologue
    .line 1963
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getPreferredDomesticCarrierCode()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "fallbackCarrierCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNationalNumberWithCarrierCode(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method formatNsnUsingPattern(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;
    .locals 1
    .param p1, "nationalNumber"    # Ljava/lang/String;
    .param p2, "formattingPattern"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .param p3, "numberFormat"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    .prologue
    .line 2465
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNsnUsingPattern(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public formatNumberForMobileDialing(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;
    .param p3, "withFormatting"    # Z

    .prologue
    const/4 v7, 0x1

    .line 1982
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 1983
    .local v0, "countryCallingCode":I
    invoke-direct {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->hasValidCountryCallingCode(I)Z

    move-result v8

    if-nez v8, :cond_1

    .line 1984
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasRawInput()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v7

    .line 2029
    :goto_0
    return-object v7

    .line 1984
    :cond_0
    const-string v7, ""

    goto :goto_0

    .line 1987
    :cond_1
    const-string v1, ""

    .line 1989
    .local v1, "formattedNumber":Ljava/lang/String;
    new-instance v8, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v8}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    invoke-virtual {v8, p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v8

    invoke-virtual {v8}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v4

    .line 1990
    .local v4, "numberNoExt":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v6

    .line 1991
    .local v6, "regionCode":Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1992
    invoke-virtual {p0, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNumberType(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    move-result-object v5

    .line 1993
    .local v5, "numberType":Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;
    sget-object v8, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->FIXED_LINE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    if-eq v5, v8, :cond_2

    sget-object v8, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->MOBILE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    if-eq v5, v8, :cond_2

    sget-object v8, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    if-ne v5, v8, :cond_4

    :cond_2
    move v3, v7

    .line 1997
    .local v3, "isFixedLineOrMobile":Z
    :goto_1
    const-string v8, "CO"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->FIXED_LINE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    if-ne v5, v8, :cond_5

    .line 1998
    const-string v8, "3"

    invoke-virtual {p0, v4, v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNationalNumberWithCarrierCode(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2029
    .end local v3    # "isFixedLineOrMobile":Z
    .end local v5    # "numberType":Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;
    :cond_3
    :goto_2
    if-eqz p3, :cond_c

    .end local v1    # "formattedNumber":Ljava/lang/String;
    :goto_3
    move-object v7, v1

    goto :goto_0

    .line 1993
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    .restart local v5    # "numberType":Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 2000
    .restart local v3    # "isFixedLineOrMobile":Z
    :cond_5
    const-string v8, "BR"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-eqz v3, :cond_7

    .line 2001
    invoke-virtual {v4}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasPreferredDomesticCarrierCode()Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, ""

    invoke-virtual {p0, v4, v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNationalNumberWithPreferredCarrierCode(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .end local v1    # "formattedNumber":Ljava/lang/String;
    .local v2, "formattedNumber":Ljava/lang/String;
    :goto_4
    move-object v1, v2

    .end local v2    # "formattedNumber":Ljava/lang/String;
    .restart local v1    # "formattedNumber":Ljava/lang/String;
    goto :goto_2

    :cond_6
    const-string v2, ""

    goto :goto_4

    .line 2011
    :cond_7
    if-eq v0, v7, :cond_8

    const-string v8, "001"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "MX"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    if-eqz v3, :cond_9

    :cond_8
    invoke-virtual {p0, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->canBeInternationallyDialled(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 2020
    sget-object v8, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-virtual {p0, v4, v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2022
    :cond_9
    sget-object v8, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-virtual {p0, v4, v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 2025
    .end local v3    # "isFixedLineOrMobile":Z
    .end local v5    # "numberType":Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;
    :cond_a
    invoke-virtual {p0, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->canBeInternationallyDialled(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2026
    if-eqz p3, :cond_b

    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-virtual {p0, v4, v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    :cond_b
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->E164:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-virtual {p0, v4, v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 2029
    :cond_c
    sget-object v8, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->DIALLABLE_CHAR_MAPPINGS:Ljava/util/Map;

    invoke-static {v1, v8, v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public formatOutOfCountryCallingNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 2053
    invoke-direct {p0, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 2054
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Trying to format number from invalid region "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". International formatting applied."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2058
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-virtual {p0, p1, v9}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v7

    .line 2111
    :cond_0
    :goto_0
    return-object v7

    .line 2060
    :cond_1
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2061
    .local v0, "countryCallingCode":I
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v7

    .line 2062
    .local v7, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->hasValidCountryCallingCode(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2065
    const/4 v9, 0x1

    if-ne v0, v9, :cond_2

    .line 2066
    invoke-virtual {p0, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNANPACountry(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2069
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-virtual {p0, p1, v10}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2071
    :cond_2
    invoke-direct {p0, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v9

    if-ne v0, v9, :cond_3

    .line 2078
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-virtual {p0, p1, v9}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 2081
    :cond_3
    invoke-virtual {p0, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v6

    .line 2082
    .local v6, "metadataForRegionCallingFrom":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v6}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v3

    .line 2086
    .local v3, "internationalPrefix":Ljava/lang/String;
    const-string v4, ""

    .line 2087
    .local v4, "internationalPrefixForFormatting":Ljava/lang/String;
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2088
    move-object v4, v3

    .line 2094
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v8

    .line 2096
    .local v8, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v5

    .line 2098
    .local v5, "metadataForRegion":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-direct {p0, v7, v5, v9}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNsn(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 2100
    .local v1, "formattedNationalNumber":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2101
    .local v2, "formattedNumber":Ljava/lang/StringBuilder;
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-direct {p0, p1, v5, v9, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeAppendFormattedExtension(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 2103
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_6

    .line 2104
    const-string v9, " "

    invoke-virtual {v2, v11, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v0}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v11, v10}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2111
    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 2089
    .end local v1    # "formattedNationalNumber":Ljava/lang/String;
    .end local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v5    # "metadataForRegion":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v8    # "regionCode":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasPreferredInternationalPrefix()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 2090
    invoke-virtual {v6}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 2107
    .restart local v1    # "formattedNationalNumber":Ljava/lang/String;
    .restart local v2    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v5    # "metadataForRegion":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v8    # "regionCode":Ljava/lang/String;
    :cond_6
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-direct {p0, v0, v9, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->prefixNumberWithCountryCallingCode(ILcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_2
.end method

.method public formatOutOfCountryKeepingAlphaChars(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCallingFrom"    # Ljava/lang/String;

    .prologue
    .line 2295
    invoke-virtual/range {p1 .. p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v12

    .line 2298
    .local v12, "rawInput":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_0

    .line 2299
    invoke-virtual/range {p0 .. p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatOutOfCountryCallingNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2379
    :goto_0
    return-object v14

    .line 2301
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    .line 2302
    .local v2, "countryCode":I
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->hasValidCountryCallingCode(I)Z

    move-result v14

    if-nez v14, :cond_1

    move-object v14, v12

    .line 2303
    goto :goto_0

    .line 2309
    :cond_1
    sget-object v14, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->ALL_PLUS_NUMBER_GROUPING_SYMBOLS:Ljava/util/Map;

    const/4 v15, 0x1

    invoke-static {v12, v14, v15}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalizeHelper(Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v12

    .line 2314
    invoke-virtual/range {p0 .. p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v10

    .line 2315
    .local v10, "nationalNumber":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_2

    .line 2316
    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 2317
    .local v3, "firstNationalNumberDigit":I
    const/4 v14, -0x1

    if-eq v3, v14, :cond_2

    .line 2318
    invoke-virtual {v12, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 2321
    .end local v3    # "firstNationalNumberDigit":I
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v9

    .line 2322
    .local v9, "metadataForRegionCallingFrom":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    const/4 v14, 0x1

    if-ne v2, v14, :cond_3

    .line 2323
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNANPACountry(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 2324
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 2326
    :cond_3
    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v14

    if-ne v2, v14, :cond_5

    .line 2328
    invoke-virtual {v9}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->numberFormats()Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v10}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v5

    .line 2331
    .local v5, "formattingPattern":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    if-nez v5, :cond_4

    move-object v14, v12

    .line 2333
    goto :goto_0

    .line 2335
    :cond_4
    new-instance v11, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    invoke-direct {v11}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;-><init>()V

    .line 2336
    .local v11, "newFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v11, v5}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->mergeFrom(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 2338
    const-string v14, "(\\d+)(.*)"

    invoke-virtual {v11, v14}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setPattern(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 2340
    const-string v14, "$1$2"

    invoke-virtual {v11, v14}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;->setFormat(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;

    .line 2346
    sget-object v14, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->NATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v11, v14}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->formatNsnUsingPattern(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 2348
    .end local v5    # "formattingPattern":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    .end local v11    # "newFormat":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$NumberFormat;
    :cond_5
    const-string v7, ""

    .line 2352
    .local v7, "internationalPrefixForFormatting":Ljava/lang/String;
    if-eqz v9, :cond_6

    .line 2353
    invoke-virtual {v9}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v6

    .line 2354
    .local v6, "internationalPrefix":Ljava/lang/String;
    sget-object v14, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->UNIQUE_INTERNATIONAL_PREFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v14, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object v7, v6

    .line 2359
    .end local v6    # "internationalPrefix":Ljava/lang/String;
    :cond_6
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2360
    .local v4, "formattedNumber":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v13

    .line 2362
    .local v13, "regionCode":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v8

    .line 2363
    .local v8, "metadataForRegion":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    sget-object v14, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v8, v14, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeAppendFormattedExtension(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    .line 2365
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_8

    .line 2366
    const/4 v14, 0x0

    const-string v15, " "

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v2}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    const-string v16, " "

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2379
    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 2354
    .end local v4    # "formattedNumber":Ljava/lang/StringBuilder;
    .end local v8    # "metadataForRegion":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v13    # "regionCode":Ljava/lang/String;
    .restart local v6    # "internationalPrefix":Ljava/lang/String;
    :cond_7
    invoke-virtual {v9}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getPreferredInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 2371
    .end local v6    # "internationalPrefix":Ljava/lang/String;
    .restart local v4    # "formattedNumber":Ljava/lang/StringBuilder;
    .restart local v8    # "metadataForRegion":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .restart local v13    # "regionCode":Ljava/lang/String;
    :cond_8
    sget-object v14, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Trying to format number from invalid region "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ". International formatting applied."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2375
    sget-object v14, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->prefixNumberWithCountryCallingCode(ILcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;Ljava/lang/StringBuilder;)V

    goto :goto_2
.end method

.method public getAsYouTypeFormatter(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 3104
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;

    invoke-direct {v0, p1}, Lcom/market2345/messages/data/phonenumbers/AsYouTypeFormatter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getCountryCodeForRegion(Ljava/lang/String;)I
    .locals 4
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2857
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2858
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid or missing region code ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") provided."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2862
    const/4 v0, 0x0

    .line 2864
    :goto_0
    return v0

    .restart local p1    # "regionCode":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getExampleNumber(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2524
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->FIXED_LINE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    invoke-virtual {p0, p1, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getExampleNumberForType(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v0

    return-object v0
.end method

.method public getExampleNumberForNonGeoEntity(I)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .locals 7
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2563
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForNonGeographicalRegion(I)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2564
    .local v2, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_1

    .line 2565
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2567
    .local v0, "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_0
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ZZ"

    invoke-virtual {p0, v3, v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/market2345/messages/data/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 2577
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :goto_0
    return-object v3

    .line 2570
    .restart local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :catch_0
    move-exception v1

    .line 2571
    .local v1, "e":Lcom/market2345/messages/data/phonenumbers/NumberParseException;
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2577
    .end local v0    # "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v1    # "e":Lcom/market2345/messages/data/phonenumbers/NumberParseException;
    :cond_0
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 2574
    :cond_1
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or unknown country calling code provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getExampleNumberForType(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .locals 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    .prologue
    const/4 v2, 0x0

    .line 2539
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2540
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or unknown region code provided: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2551
    :cond_0
    :goto_0
    return-object v2

    .line 2543
    :cond_1
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNumberDescByType(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    .line 2545
    .local v0, "desc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    :try_start_0
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasExampleNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2546
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->getExampleNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    :try_end_0
    .catch Lcom/market2345/messages/data/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 2548
    :catch_0
    move-exception v1

    .line 2549
    .local v1, "e":Lcom/market2345/messages/data/phonenumbers/NumberParseException;
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLengthOfGeographicalAreaCode(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 3
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v1, 0x0

    .line 1496
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 1497
    .local v0, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_1

    .line 1510
    :cond_0
    :goto_0
    return v1

    .line 1502
    :cond_1
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->hasNationalPrefix()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1506
    :cond_2
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberGeographical(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1510
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getLengthOfNationalDestinationCode(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)I

    move-result v1

    goto :goto_0
.end method

.method public getLengthOfNationalDestinationCode(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 6
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v5, 0x3

    .line 1546
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1549
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 1550
    .local v0, "copiedProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 1551
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 1556
    :goto_0
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;->INTERNATIONAL:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;

    invoke-virtual {p0, v0, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->format(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 1558
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 1562
    .local v2, "numberGroups":[Ljava/lang/String;
    array-length v3, v2

    if-gt v3, v5, :cond_1

    .line 1563
    const/4 v3, 0x0

    .line 1576
    :goto_1
    return v3

    .line 1553
    .end local v0    # "copiedProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .end local v1    # "nationalSignificantNumber":Ljava/lang/String;
    .end local v2    # "numberGroups":[Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .restart local v0    # "copiedProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    goto :goto_0

    .line 1566
    .restart local v1    # "nationalSignificantNumber":Ljava/lang/String;
    .restart local v2    # "numberGroups":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "AR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNumberType(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    move-result-object v3

    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->MOBILE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    if-ne v3, v4, :cond_2

    .line 1574
    aget-object v3, v2, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1576
    :cond_2
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    goto :goto_1
.end method

.method getMetadataForNonGeographicalRegion(I)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2713
    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 2714
    :try_start_0
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2715
    const/4 v0, 0x0

    monitor-exit v1

    .line 2721
    :goto_0
    return-object v0

    .line 2717
    :cond_0
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2718
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->currentFilePrefix:Ljava/lang/String;

    const-string v2, "001"

    invoke-virtual {p0, v0, v2, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2720
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2721
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 2720
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .locals 3
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2699
    invoke-direct {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isValidRegionCode(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2700
    const/4 v0, 0x0

    .line 2709
    :goto_0
    return-object v0

    .line 2702
    :cond_0
    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regionToMetadataMap:Ljava/util/Map;

    monitor-enter v1

    .line 2703
    :try_start_0
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2706
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->currentFilePrefix:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2708
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2709
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    goto :goto_0

    .line 2708
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->isItalianLeadingZero()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0"

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2392
    .local v0, "nationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2393
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2391
    .end local v0    # "nationalNumber":Ljava/lang/StringBuilder;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "stripNonDigits"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2898
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegion(Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2899
    .local v0, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_2

    .line 2900
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid or missing region code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_0

    const-string p1, "null"

    .end local p1    # "regionCode":Ljava/lang/String;
    :cond_0
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") provided."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v1, v2

    .line 2916
    :cond_1
    :goto_0
    return-object v1

    .line 2906
    .restart local p1    # "regionCode":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefix()Ljava/lang/String;

    move-result-object v1

    .line 2908
    .local v1, "nationalPrefix":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    move-object v1, v2

    .line 2909
    goto :goto_0

    .line 2911
    :cond_3
    if-eqz p2, :cond_1

    .line 2914
    const-string v2, "~"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method getNumberDescByType(Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .locals 2
    .param p1, "metadata"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p2, "type"    # Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    .prologue
    .line 2601
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$2;->$SwitchMap$com$market2345$messages$data$phonenumbers$PhoneNumberUtils$PhoneNumberType:[I

    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2624
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2603
    :pswitch_0
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getPremiumRate()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2605
    :pswitch_1
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getTollFree()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2607
    :pswitch_2
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getMobile()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2610
    :pswitch_3
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getFixedLine()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2612
    :pswitch_4
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getSharedCost()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2614
    :pswitch_5
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getVoip()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2616
    :pswitch_6
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getPersonalNumber()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2618
    :pswitch_7
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getPager()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2620
    :pswitch_8
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getUan()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2622
    :pswitch_9
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getVoicemail()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v0

    goto :goto_0

    .line 2601
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getNumberType(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;
    .locals 4
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2635
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v2

    .line 2636
    .local v2, "regionCode":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2637
    .local v0, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 2638
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->UNKNOWN:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    .line 2641
    :goto_0
    return-object v3

    .line 2640
    :cond_0
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2641
    .local v1, "nationalSignificantNumber":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNumberTypeHelper(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    move-result-object v3

    goto :goto_0
.end method

.method public getRegionCodeForCountryCode(I)Ljava/lang/String;
    .locals 3
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2834
    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2835
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    const-string v1, "ZZ"

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getRegionCodeForNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;
    .locals 7
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2794
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2795
    .local v0, "countryCode":I
    iget-object v3, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 2796
    .local v2, "regions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 2797
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    .line 2798
    .local v1, "numberString":Ljava/lang/String;
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing/invalid country_code ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") for number "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 2800
    const/4 v3, 0x0

    .line 2805
    .end local v1    # "numberString":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 2802
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 2803
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    .line 2805
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForNumberFromRegionList(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getRegionCodesForCountryCode(I)Ljava/util/List;
    .locals 3
    .param p1, "countryCallingCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2844
    iget-object v1, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCallingCodeToRegionCodeMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2845
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getSupportedGlobalNetworkCallingCodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCodesForNonGeographicalRegion:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1710
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->supportedRegions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isAlphaNumber(Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 2954
    invoke-static {p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2956
    const/4 v1, 0x0

    .line 2960
    :goto_0
    return v1

    .line 2958
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2959
    .local v0, "strippedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 2960
    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->VALID_ALPHA_PHONE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method isLeadingZeroPossible(I)Z
    .locals 2
    .param p1, "countryCallingCode"    # I

    .prologue
    .line 2934
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v0

    .line 2937
    .local v0, "mainMetadataForCallingCode":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v0, :cond_0

    .line 2938
    const/4 v1, 0x0

    .line 2940
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->isLeadingZeroPossible()Z

    move-result v1

    goto :goto_0
.end method

.method public isNANPACountry(Ljava/lang/String;)Z
    .locals 1
    .param p1, "regionCode"    # Ljava/lang/String;

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->nanpaRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isNumberGeographical(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "phoneNumber"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 1753
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNumberType(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    move-result-object v0

    .line 1756
    .local v0, "numberType":Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;
    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->FIXED_LINE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNumberMatch(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
    .locals 6
    .param p1, "firstNumberIn"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumberIn"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 3684
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3685
    .local v0, "firstNumber":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v0, p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3686
    new-instance v2, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3687
    .local v2, "secondNumber":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3690
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3691
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3692
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3693
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3694
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3695
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3696
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 3698
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3700
    :cond_0
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 3702
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->clearExtension()Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3705
    :cond_1
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3707
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NO_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    .line 3735
    :goto_0
    return-object v4

    .line 3709
    :cond_2
    invoke-virtual {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    .line 3710
    .local v1, "firstNumberCountryCode":I
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    .line 3712
    .local v3, "secondNumberCountryCode":I
    if-eqz v1, :cond_5

    if-eqz v3, :cond_5

    .line 3713
    invoke-virtual {v0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3714
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->EXACT_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    goto :goto_0

    .line 3715
    :cond_3
    if-ne v1, v3, :cond_4

    invoke-direct {p0, v0, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNationalNumberSuffixOfTheOther(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3720
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->SHORT_NSN_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    goto :goto_0

    .line 3723
    :cond_4
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NO_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    goto :goto_0

    .line 3727
    :cond_5
    invoke-virtual {v0, v3}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3729
    invoke-virtual {v0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->exactlySameAs(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3730
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NSN_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    goto :goto_0

    .line 3732
    :cond_6
    invoke-direct {p0, v0, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNationalNumberSuffixOfTheOther(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3733
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->SHORT_NSN_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    goto :goto_0

    .line 3735
    :cond_7
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NO_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    goto :goto_0
.end method

.method public isNumberMatch(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
    .locals 11
    .param p1, "firstNumber"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "secondNumber"    # Ljava/lang/String;

    .prologue
    .line 3801
    :try_start_0
    const-string v0, "ZZ"

    invoke-virtual {p0, p2, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v9

    .line 3802
    .local v9, "secondNumberAsProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v9}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatch(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
    :try_end_0
    .catch Lcom/market2345/messages/data/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 3830
    .end local v9    # "secondNumberAsProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    :cond_0
    :goto_0
    return-object v8

    .line 3803
    :catch_0
    move-exception v6

    .line 3804
    .local v6, "e":Lcom/market2345/messages/data/phonenumbers/NumberParseException;
    invoke-virtual {v6}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->getErrorType()Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    move-result-object v0

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    if-ne v0, v1, :cond_2

    .line 3808
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v7

    .line 3810
    .local v7, "firstNumberRegion":Ljava/lang/String;
    :try_start_1
    const-string v0, "ZZ"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3811
    invoke-virtual {p0, p2, v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v10

    .line 3812
    .local v10, "secondNumberWithFirstNumberRegion":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, v10}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatch(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    move-result-object v8

    .line 3813
    .local v8, "match":Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
    sget-object v0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->EXACT_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    if-ne v8, v0, :cond_0

    .line 3814
    sget-object v8, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NSN_MATCH:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    goto :goto_0

    .line 3820
    .end local v8    # "match":Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
    .end local v10    # "secondNumberWithFirstNumberRegion":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    :cond_1
    new-instance v5, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v5}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3821
    .local v5, "secondNumberProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3822
    invoke-virtual {p0, p1, v5}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatch(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
    :try_end_1
    .catch Lcom/market2345/messages/data/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto :goto_0

    .line 3824
    .end local v5    # "secondNumberProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1
    move-exception v0

    .line 3830
    .end local v7    # "firstNumberRegion":Ljava/lang/String;
    :cond_2
    sget-object v8, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NOT_A_NUMBER:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    goto :goto_0
.end method

.method public isNumberMatch(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
    .locals 19
    .param p1, "firstNumber"    # Ljava/lang/String;
    .param p2, "secondNumber"    # Ljava/lang/String;

    .prologue
    .line 3761
    :try_start_0
    const-string v3, "ZZ"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v17

    .line 3762
    .local v17, "firstNumberAsProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatch(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
    :try_end_0
    .catch Lcom/market2345/messages/data/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3784
    .end local v17    # "firstNumberAsProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    return-object v3

    .line 3763
    :catch_0
    move-exception v15

    .line 3764
    .local v15, "e":Lcom/market2345/messages/data/phonenumbers/NumberParseException;
    invoke-virtual {v15}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->getErrorType()Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_0

    .line 3766
    :try_start_1
    const-string v3, "ZZ"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v18

    .line 3767
    .local v18, "secondNumberAsProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatch(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
    :try_end_1
    .catch Lcom/market2345/messages/data/phonenumbers/NumberParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 3768
    .end local v18    # "secondNumberAsProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    :catch_1
    move-exception v16

    .line 3769
    .local v16, "e2":Lcom/market2345/messages/data/phonenumbers/NumberParseException;
    invoke-virtual/range {v16 .. v16}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;->getErrorType()Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    move-result-object v3

    sget-object v4, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    if-ne v3, v4, :cond_0

    .line 3771
    :try_start_2
    new-instance v8, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v8}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3772
    .local v8, "firstNumberProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    new-instance v14, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v14}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3773
    .local v14, "secondNumberProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3774
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    invoke-direct/range {v9 .. v14}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3775
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v14}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isNumberMatch(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;
    :try_end_2
    .catch Lcom/market2345/messages/data/phonenumbers/NumberParseException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    goto :goto_0

    .line 3776
    .end local v8    # "firstNumberProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .end local v14    # "secondNumberProto":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    :catch_2
    move-exception v3

    .line 3784
    .end local v16    # "e2":Lcom/market2345/messages/data/phonenumbers/NumberParseException;
    :cond_0
    sget-object v3, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;->NOT_A_NUMBER:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$MatchType;

    goto :goto_0
.end method

.method public isPossibleNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2970
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isPossibleNumberWithReason(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    move-result-object v0

    sget-object v1, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->IS_POSSIBLE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPossibleNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "regionDialingFrom"    # Ljava/lang/String;

    .prologue
    .line 3064
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isPossibleNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z
    :try_end_0
    .catch Lcom/market2345/messages/data/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3066
    :goto_0
    return v1

    .line 3065
    :catch_0
    move-exception v0

    .line 3066
    .local v0, "e":Lcom/market2345/messages/data/phonenumbers/NumberParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPossibleNumberWithReason(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;
    .locals 10
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 3013
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 3014
    .local v3, "nationalNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 3019
    .local v0, "countryCode":I
    invoke-direct {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->hasValidCountryCallingCode(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 3020
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    .line 3040
    :goto_0
    return-object v7

    .line 3022
    :cond_0
    invoke-virtual {p0, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v6

    .line 3024
    .local v6, "regionCode":Ljava/lang/String;
    invoke-direct {p0, v0, v6}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 3025
    .local v2, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 3027
    .local v1, "generalNumDesc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v7

    if-nez v7, :cond_3

    .line 3028
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    const-string v9, "Checking if number is possible with incomplete metadata."

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 3029
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 3030
    .local v4, "numberLength":I
    const/4 v7, 0x2

    if-ge v4, v7, :cond_1

    .line 3031
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->TOO_SHORT:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    goto :goto_0

    .line 3032
    :cond_1
    const/16 v7, 0x10

    if-le v4, v7, :cond_2

    .line 3033
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->TOO_LONG:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    goto :goto_0

    .line 3035
    :cond_2
    sget-object v7, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->IS_POSSIBLE:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    goto :goto_0

    .line 3038
    .end local v4    # "numberLength":I
    :cond_3
    iget-object v7, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 3040
    .local v5, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-direct {p0, v5, v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    move-result-object v7

    goto :goto_0
.end method

.method public isValidNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 2
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    .line 2742
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getRegionCodeForNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 2743
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isValidNumberForRegion(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isValidNumberForRegion(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 9
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "regionCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2763
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    .line 2764
    .local v0, "countryCode":I
    invoke-direct {p0, v0, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getMetadataForRegionOrCallingCode(ILjava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v2

    .line 2765
    .local v2, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v2, :cond_0

    const-string v7, "001"

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0, p2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getCountryCodeForValidRegion(Ljava/lang/String;)I

    move-result v7

    if-eq v0, v7, :cond_2

    :cond_0
    move v5, v6

    .line 2782
    :cond_1
    :goto_0
    return v5

    .line 2772
    :cond_2
    invoke-virtual {v2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v1

    .line 2773
    .local v1, "generalNumDesc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNationalSignificantNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 2778
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->hasNationalNumberPattern()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2779
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 2780
    .local v4, "numberLength":I
    const/4 v7, 0x2

    if-le v4, v7, :cond_3

    const/16 v7, 0x10

    if-le v4, v7, :cond_1

    :cond_3
    move v5, v6

    goto :goto_0

    .line 2782
    .end local v4    # "numberLength":I
    :cond_4
    invoke-direct {p0, v3, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->getNumberTypeHelper(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    move-result-object v7

    sget-object v8, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;->UNKNOWN:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$PhoneNumberType;

    if-ne v7, v8, :cond_1

    move v5, v6

    goto :goto_0
.end method

.method loadMetadataFromFile(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 13
    .param p1, "filePrefix"    # Ljava/lang/String;
    .param p2, "regionCode"    # Ljava/lang/String;
    .param p3, "countryCallingCode"    # I

    .prologue
    .line 1286
    const-string v9, "001"

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1287
    .local v4, "isNonGeoRegion":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v4, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1289
    .local v1, "fileName":Ljava/lang/String;
    const-class v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 1290
    .local v8, "source":Ljava/io/InputStream;
    if-nez v8, :cond_1

    .line 1291
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "missing metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1292
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "missing metadata: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .end local v1    # "fileName":Ljava/lang/String;
    .end local v8    # "source":Ljava/io/InputStream;
    :cond_0
    move-object v9, p2

    .line 1287
    goto :goto_0

    .line 1294
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v8    # "source":Ljava/io/InputStream;
    :cond_1
    const/4 v2, 0x0

    .line 1296
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v8}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1297
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .local v3, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    new-instance v6, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadataCollection;

    invoke-direct {v6}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadataCollection;-><init>()V

    .line 1298
    .local v6, "metadataCollection":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    invoke-virtual {v6, v3}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadataCollection;->readExternal(Ljava/io/ObjectInput;)V

    .line 1299
    invoke-virtual {v6}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadataCollection;->getMetadataList()Ljava/util/List;

    move-result-object v7

    .line 1300
    .local v7, "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1301
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "empty metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1302
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "empty metadata: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1313
    .end local v6    # "metadataCollection":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v7    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 1314
    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :goto_1
    :try_start_2
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "cannot load/parse metadata: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1315
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "cannot load/parse metadata: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1317
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-static {v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->close(Ljava/io/InputStream;)V

    throw v9

    .line 1304
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v6    # "metadataCollection":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .restart local v7    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :cond_2
    :try_start_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_3

    .line 1305
    sget-object v9, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->LOGGER:Ljava/util/logging/Logger;

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalid metadata (too many entries): "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1307
    :cond_3
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 1308
    .local v5, "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    if-eqz v4, :cond_4

    .line 1309
    iget-object v9, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->countryCodeToNonGeographicalMetadataMap:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1317
    :goto_3
    invoke-static {v3}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->close(Ljava/io/InputStream;)V

    .line 1319
    return-void

    .line 1311
    :cond_4
    :try_start_4
    iget-object v9, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regionToMetadataMap:Ljava/util/Map;

    invoke-interface {v9, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 1317
    .end local v5    # "metadata":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .end local v6    # "metadataCollection":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadataCollection;
    .end local v7    # "metadataList":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;>;"
    :catchall_1
    move-exception v9

    move-object v2, v3

    .end local v3    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 1313
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method maybeExtractCountryCode(Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;ZLcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)I
    .locals 15
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "defaultRegionMetadata"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "nationalNumber"    # Ljava/lang/StringBuilder;
    .param p4, "keepRawInput"    # Z
    .param p5, "phoneNumber"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/messages/data/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 3164
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    .line 3165
    const/4 v9, 0x0

    .line 3230
    :goto_0
    return v9

    .line 3167
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3169
    .local v4, "fullNumber":Ljava/lang/StringBuilder;
    const-string v7, "NonMatch"

    .line 3170
    .local v7, "possibleCountryIddPrefix":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 3171
    invoke-virtual/range {p2 .. p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getInternationalPrefix()Ljava/lang/String;

    move-result-object v7

    .line 3174
    :cond_1
    invoke-virtual {p0, v4, v7}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    .line 3176
    .local v1, "countryCodeSource":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    if-eqz p4, :cond_2

    .line 3177
    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3179
    :cond_2
    sget-object v12, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v1, v12, :cond_5

    .line 3180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x2

    if-gt v12, v13, :cond_3

    .line 3181
    new-instance v12, Lcom/market2345/messages/data/phonenumbers/NumberParseException;

    sget-object v13, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->TOO_SHORT_AFTER_IDD:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v14, "Phone number had an IDD, but after this was not long enough to be a viable phone number."

    invoke-direct {v12, v13, v14}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;-><init>(Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v12

    .line 3185
    :cond_3
    move-object/from16 v0, p3

    invoke-virtual {p0, v4, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->extractCountryCode(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)I

    move-result v9

    .line 3186
    .local v9, "potentialCountryCode":I
    if-eqz v9, :cond_4

    .line 3187
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0

    .line 3193
    :cond_4
    new-instance v12, Lcom/market2345/messages/data/phonenumbers/NumberParseException;

    sget-object v13, Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;->INVALID_COUNTRY_CODE:Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;

    const-string v14, "Country calling code supplied was not recognised."

    invoke-direct {v12, v13, v14}, Lcom/market2345/messages/data/phonenumbers/NumberParseException;-><init>(Lcom/market2345/messages/data/phonenumbers/NumberParseException$ErrorType;Ljava/lang/String;)V

    throw v12

    .line 3195
    .end local v9    # "potentialCountryCode":I
    :cond_5
    if-eqz p2, :cond_9

    .line 3199
    invoke-virtual/range {p2 .. p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v2

    .line 3200
    .local v2, "defaultCountryCode":I
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 3201
    .local v3, "defaultCountryCodeString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3202
    .local v6, "normalizedNumber":Ljava/lang/String;
    invoke-virtual {v6, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 3203
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3205
    .local v10, "potentialNationalNumber":Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v5

    .line 3206
    .local v5, "generalDesc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    iget-object v12, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {v5}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 3208
    .local v11, "validNumberPattern":Ljava/util/regex/Pattern;
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v10, v0, v12}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    .line 3210
    iget-object v12, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {v5}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->getPossibleNumberPattern()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 3215
    .local v8, "possibleNumberPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v11, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-nez v12, :cond_7

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v8, v12}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->testNumberLengthAgainstPattern(Ljava/util/regex/Pattern;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    move-result-object v12

    sget-object v13, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->TOO_LONG:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    if-ne v12, v13, :cond_9

    .line 3219
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3220
    if-eqz p4, :cond_8

    .line 3221
    sget-object v12, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setCountryCodeSource(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3223
    :cond_8
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    move v9, v2

    .line 3224
    goto/16 :goto_0

    .line 3229
    .end local v2    # "defaultCountryCode":I
    .end local v3    # "defaultCountryCodeString":Ljava/lang/String;
    .end local v5    # "generalDesc":Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;
    .end local v6    # "normalizedNumber":Ljava/lang/String;
    .end local v8    # "possibleNumberPattern":Ljava/util/regex/Pattern;
    .end local v10    # "potentialNationalNumber":Ljava/lang/StringBuilder;
    .end local v11    # "validNumberPattern":Ljava/util/regex/Pattern;
    :cond_9
    const/4 v12, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v12}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setCountryCode(I)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3230
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method maybeStripExtension(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 6
    .param p1, "number"    # Ljava/lang/StringBuilder;

    .prologue
    .line 3361
    sget-object v4, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->EXTN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 3364
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isViablePhoneNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3366
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-gt v1, v2, :cond_1

    .line 3367
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3370
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 3371
    .local v0, "extension":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3376
    .end local v0    # "extension":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "length":I
    :goto_1
    return-object v0

    .line 3366
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3376
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method maybeStripInternationalPrefixAndNormalize(Ljava/lang/StringBuilder;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;
    .locals 4
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "possibleIddPrefix"    # Ljava/lang/String;

    .prologue
    .line 3272
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 3273
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    .line 3286
    :goto_0
    return-object v2

    .line 3276
    :cond_0
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->PLUS_CHARS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 3277
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3278
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3280
    invoke-static {p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalize(Ljava/lang/StringBuilder;)V

    .line 3281
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0

    .line 3284
    :cond_1
    iget-object v2, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {v2, p2}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3285
    .local v0, "iddPattern":Ljava/util/regex/Pattern;
    invoke-static {p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->normalize(Ljava/lang/StringBuilder;)V

    .line 3286
    invoke-direct {p0, v0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parsePrefixAsIdd(Ljava/util/regex/Pattern;Ljava/lang/StringBuilder;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_IDD:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    goto :goto_0
.end method

.method maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z
    .locals 12
    .param p1, "number"    # Ljava/lang/StringBuilder;
    .param p2, "metadata"    # Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;
    .param p3, "carrierCode"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3303
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    .line 3304
    .local v3, "numberLength":I
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixForParsing()Ljava/lang/String;

    move-result-object v4

    .line 3305
    .local v4, "possibleNationalPrefix":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    .line 3349
    :cond_0
    :goto_0
    return v8

    .line 3310
    :cond_1
    iget-object v10, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {v10, v4}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 3311
    .local v5, "prefixMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3312
    iget-object v10, p0, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->regexCache:Lcom/market2345/messages/data/phonenumbers/RegexCache;

    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getGeneralDesc()Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;

    move-result-object v11

    invoke-virtual {v11}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneNumberDesc;->getNationalNumberPattern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/market2345/messages/data/phonenumbers/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3315
    .local v1, "nationalNumberRule":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    .line 3319
    .local v0, "isViableOriginalNumber":Z
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    .line 3320
    .local v2, "numOfGroups":I
    invoke-virtual {p2}, Lcom/market2345/messages/data/phonenumbers/Phonemetadata$PhoneMetadata;->getNationalPrefixTransformRule()Ljava/lang/String;

    move-result-object v6

    .line 3321
    .local v6, "transformRule":Ljava/lang/String;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_5

    .line 3324
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3328
    :cond_3
    if-eqz p3, :cond_4

    if-lez v2, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 3329
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3331
    :cond_4
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v10

    invoke-virtual {p1, v8, v10}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move v8, v9

    .line 3332
    goto :goto_0

    .line 3336
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 3337
    .local v7, "transformedNumber":Ljava/lang/StringBuilder;
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v8, v3, v10}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 3338
    if-eqz v0, :cond_6

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3342
    :cond_6
    if-eqz p3, :cond_7

    if-le v2, v9, :cond_7

    .line 3343
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3345
    :cond_7
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v8, v10, v11}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move v8, v9

    .line 3346
    goto/16 :goto_0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/messages/data/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 3417
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3418
    .local v0, "phoneNumber":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parse(Ljava/lang/String;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3419
    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/messages/data/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 3428
    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3429
    return-void
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .locals 1
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/messages/data/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    .line 3448
    new-instance v0, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v0}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3449
    .local v0, "phoneNumber":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {p0, p1, p2, v0}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3450
    return-object v0
.end method

.method public parseAndKeepRawInput(Ljava/lang/String;Ljava/lang/String;Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)V
    .locals 6
    .param p1, "numberToParse"    # Ljava/lang/String;
    .param p2, "defaultRegion"    # Ljava/lang/String;
    .param p3, "phoneNumber"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/market2345/messages/data/phonenumbers/NumberParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 3460
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->parseHelper(Ljava/lang/String;Ljava/lang/String;ZZLcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)V

    .line 3461
    return-void
.end method

.method public truncateTooLongNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z
    .locals 6
    .param p1, "number"    # Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .prologue
    const/4 v3, 0x1

    .line 3078
    invoke-virtual {p0, p1}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isValidNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3093
    :goto_0
    return v3

    .line 3081
    :cond_0
    new-instance v2, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    invoke-direct {v2}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;-><init>()V

    .line 3082
    .local v2, "numberCopy":Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;
    invoke-virtual {v2, p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->mergeFrom(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3083
    invoke-virtual {p1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->getNationalNumber()J

    move-result-wide v0

    .line 3085
    .local v0, "nationalNumber":J
    :cond_1
    const-wide/16 v4, 0xa

    div-long/2addr v0, v4

    .line 3086
    invoke-virtual {v2, v0, v1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    .line 3087
    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isPossibleNumberWithReason(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    move-result-object v4

    sget-object v5, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;->TOO_SHORT:Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils$ValidationResult;

    if-eq v4, v5, :cond_2

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_3

    .line 3089
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 3091
    :cond_3
    invoke-virtual {p0, v2}, Lcom/market2345/messages/data/phonenumbers/PhoneNumberUtils;->isValidNumber(Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3092
    invoke-virtual {p1, v0, v1}, Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;->setNationalNumber(J)Lcom/market2345/messages/data/phonenumbers/Phonenumber$PhoneNumber;

    goto :goto_0
.end method
