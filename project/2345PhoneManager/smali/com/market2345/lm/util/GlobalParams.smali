.class public Lcom/market2345/lm/util/GlobalParams;
.super Ljava/lang/Object;
.source "GlobalParams.java"


# static fields
.field public static ABSDIR1:Ljava/lang/String; = null

.field public static BASEDIR:Ljava/lang/String; = null

.field public static BASE_URL:Ljava/lang/String; = null

.field public static BASE_URL_GETLIST:Ljava/lang/String; = null

.field public static BASE_URL_GETUSERNAME:Ljava/lang/String; = null

.field public static final DISAPEAR:Ljava/lang/String; = "disapear"

.field public static ENCODING_UTF8:Ljava/lang/String; = null

.field public static final NO_DISAPEAR:Ljava/lang/String; = "nodisapear"

.field public static final NO_ID:Ljava/lang/String; = "noid"

.field public static UID:Ljava/lang/String;

.field public static UIDNEW:Ljava/lang/String;

.field public static UNAME:Ljava/lang/String;

.field public static UNION_DISAPEAR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-string v0, "http://shouji.2345.com/api/getlist4android.php"

    sput-object v0, Lcom/market2345/lm/util/GlobalParams;->BASE_URL:Ljava/lang/String;

    .line 16
    const-string v0, "http://shouji.2345.com/api/getlist4android_getList.php"

    sput-object v0, Lcom/market2345/lm/util/GlobalParams;->BASE_URL_GETLIST:Ljava/lang/String;

    .line 18
    const-string v0, "http://shouji.2345.com/api/getlist4android_getUsername.php"

    sput-object v0, Lcom/market2345/lm/util/GlobalParams;->BASE_URL_GETUSERNAME:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/market2345/lm/util/GlobalParams;->UIDNEW:Ljava/lang/String;

    .line 24
    const-string v0, "/2345\u624b\u673a\u52a9\u624b/fasttransition/webapps/2345"

    sput-object v0, Lcom/market2345/lm/util/GlobalParams;->BASEDIR:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/market2345/lm/util/GlobalParams;->BASEDIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/lm/util/GlobalParams;->ABSDIR1:Ljava/lang/String;

    .line 28
    const-string v0, "UTF-8"

    sput-object v0, Lcom/market2345/lm/util/GlobalParams;->ENCODING_UTF8:Ljava/lang/String;

    .line 30
    const-string v0, ""

    sput-object v0, Lcom/market2345/lm/util/GlobalParams;->UNION_DISAPEAR:Ljava/lang/String;

    .line 32
    const-string v0, ""

    sput-object v0, Lcom/market2345/lm/util/GlobalParams;->UNAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
