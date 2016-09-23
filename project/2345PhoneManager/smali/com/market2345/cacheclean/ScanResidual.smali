.class public Lcom/market2345/cacheclean/ScanResidual;
.super Lcom/market2345/datacenter/MarketObservable;
.source "ScanResidual.java"


# static fields
.field public static DEFAULT_CACHE_SIZE:Ljava/lang/String;

.field public static defaultSize:J

.field private static mInstance:Lcom/market2345/cacheclean/ScanResidual;


# instance fields
.field private bitmapNum:I

.field private bitmapSize:J

.field private cacheEnd:Z

.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private endtime:J

.field private folderFullPath:Ljava/lang/String;

.field private isRun:Z

.field private mCacheDir:Ljava/lang/String;

.field private packmanager:Landroid/content/pm/PackageManager;

.field private ramCacheNum:I

.field private ramCacheSize:J

.field private ramCleanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/AppRamCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private residualEnd:Z

.field private sdCleanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/AppSDCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field private starttime:J

.field private totalNum:I

.field private totalSize:J

.field private unloadNum:I

.field private unloadSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 70
    const-string v0, "default_size"

    sput-object v0, Lcom/market2345/cacheclean/ScanResidual;->DEFAULT_CACHE_SIZE:Ljava/lang/String;

    .line 72
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/market2345/cacheclean/ScanResidual;->defaultSize:J

    return-void
.end method

.method public constructor <init>(II)V
    .locals 4
    .param p1, "bitmapNum"    # I
    .param p2, "unloadNum"    # I

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/market2345/datacenter/MarketObservable;-><init>()V

    .line 40
    iput v1, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapNum:I

    .line 42
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapSize:J

    .line 45
    iput v1, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadNum:I

    .line 47
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadSize:J

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->sdCleanList:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCleanList:Ljava/util/ArrayList;

    .line 54
    iput v1, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheNum:I

    .line 56
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheSize:J

    .line 59
    iput v1, p0, Lcom/market2345/cacheclean/ScanResidual;->totalNum:I

    .line 61
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResidual;->totalSize:J

    .line 65
    const-string v0, "/DCIM/.thumbnails"

    iput-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->mCacheDir:Ljava/lang/String;

    .line 74
    iput-boolean v1, p0, Lcom/market2345/cacheclean/ScanResidual;->cacheEnd:Z

    .line 76
    iput-boolean v1, p0, Lcom/market2345/cacheclean/ScanResidual;->residualEnd:Z

    .line 78
    iput-boolean v1, p0, Lcom/market2345/cacheclean/ScanResidual;->isRun:Z

    .line 108
    iput p1, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapNum:I

    .line 109
    iput p2, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadNum:I

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Lcom/market2345/datacenter/MarketObservable;-><init>()V

    .line 40
    iput v2, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapNum:I

    .line 42
    iput-wide v4, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapSize:J

    .line 45
    iput v2, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadNum:I

    .line 47
    iput-wide v4, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadSize:J

    .line 49
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/market2345/cacheclean/ScanResidual;->sdCleanList:Ljava/util/ArrayList;

    .line 52
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCleanList:Ljava/util/ArrayList;

    .line 54
    iput v2, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheNum:I

    .line 56
    iput-wide v4, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheSize:J

    .line 59
    iput v2, p0, Lcom/market2345/cacheclean/ScanResidual;->totalNum:I

    .line 61
    iput-wide v4, p0, Lcom/market2345/cacheclean/ScanResidual;->totalSize:J

    .line 65
    const-string v1, "/DCIM/.thumbnails"

    iput-object v1, p0, Lcom/market2345/cacheclean/ScanResidual;->mCacheDir:Ljava/lang/String;

    .line 74
    iput-boolean v2, p0, Lcom/market2345/cacheclean/ScanResidual;->cacheEnd:Z

    .line 76
    iput-boolean v2, p0, Lcom/market2345/cacheclean/ScanResidual;->residualEnd:Z

    .line 78
    iput-boolean v2, p0, Lcom/market2345/cacheclean/ScanResidual;->isRun:Z

    .line 86
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanResidual;->context:Landroid/content/Context;

    .line 87
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, "sp":Landroid/content/SharedPreferences;
    sget-object v1, Lcom/market2345/cacheclean/ScanResidual;->DEFAULT_CACHE_SIZE:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/market2345/cacheclean/ScanResidual;->defaultSize:J

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/ScanResidual;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/market2345/cacheclean/ScanResidual;->isRun:Z

    return v0
.end method

.method static synthetic access$002(Lcom/market2345/cacheclean/ScanResidual;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ScanResidual;->isRun:Z

    return p1
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/ScanResidual;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->packmanager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/market2345/cacheclean/ScanResidual;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ScanResidual;->residualEnd:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/market2345/cacheclean/ScanResidual;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/market2345/cacheclean/ScanResidual;->endtime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/market2345/cacheclean/ScanResidual;J)J
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/market2345/cacheclean/ScanResidual;->endtime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/market2345/cacheclean/ScanResidual;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/market2345/cacheclean/ScanResidual;->starttime:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/market2345/cacheclean/ScanResidual;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ScanResidual;->setChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/market2345/cacheclean/ScanResidual;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/market2345/cacheclean/ScanResidual;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCleanList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1608(Lcom/market2345/cacheclean/ScanResidual;)I
    .locals 2
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget v0, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheNum:I

    return v0
.end method

.method static synthetic access$1700(Lcom/market2345/cacheclean/ScanResidual;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheSize:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/market2345/cacheclean/ScanResidual;J)J
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheSize:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/market2345/cacheclean/ScanResidual;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ScanResidual;->setChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/market2345/cacheclean/ScanResidual;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->folderFullPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/market2345/cacheclean/ScanResidual;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanResidual;->folderFullPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/market2345/cacheclean/ScanResidual;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->mCacheDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/market2345/cacheclean/ScanResidual;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ScanResidual;->setChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/market2345/cacheclean/ScanResidual;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$600(Lcom/market2345/cacheclean/ScanResidual;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->sdCleanList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$708(Lcom/market2345/cacheclean/ScanResidual;)I
    .locals 2
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget v0, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadNum:I

    return v0
.end method

.method static synthetic access$800(Lcom/market2345/cacheclean/ScanResidual;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadSize:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/market2345/cacheclean/ScanResidual;J)J
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadSize:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/market2345/cacheclean/ScanResidual;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanResidual;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ScanResidual;->setChanged()V

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/market2345/cacheclean/ScanResidual;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-object v0, Lcom/market2345/cacheclean/ScanResidual;->mInstance:Lcom/market2345/cacheclean/ScanResidual;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/market2345/cacheclean/ScanResidual;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/ScanResidual;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/market2345/cacheclean/ScanResidual;->mInstance:Lcom/market2345/cacheclean/ScanResidual;

    .line 97
    :cond_0
    sget-object v0, Lcom/market2345/cacheclean/ScanResidual;->mInstance:Lcom/market2345/cacheclean/ScanResidual;

    return-object v0
.end method

.method private getAPPCache(Ljava/lang/String;)V
    .locals 10
    .param p1, "packname"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-object v6, p0, Lcom/market2345/cacheclean/ScanResidual;->packmanager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    .line 275
    .local v4, "m":[Ljava/lang/reflect/Method;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/reflect/Method;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 277
    .local v5, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "getPackageSizeInfo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 281
    :try_start_0
    iget-object v6, p0, Lcom/market2345/cacheclean/ScanResidual;->packmanager:Landroid/content/pm/PackageManager;

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/market2345/cacheclean/ScanResidual$2;

    invoke-direct {v9, p0, p1}, Lcom/market2345/cacheclean/ScanResidual$2;-><init>(Lcom/market2345/cacheclean/ScanResidual;Ljava/lang/String;)V

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_1
    return-void

    .line 326
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 275
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lcom/market2345/cacheclean/ScanResidual;->isRun:Z

    .line 118
    iput v1, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapNum:I

    .line 119
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapSize:J

    .line 120
    iput v1, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadNum:I

    .line 121
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadSize:J

    .line 122
    iput v1, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheNum:I

    .line 123
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheSize:J

    .line 124
    iput v1, p0, Lcom/market2345/cacheclean/ScanResidual;->totalNum:I

    .line 125
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResidual;->totalSize:J

    .line 126
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResidual;->starttime:J

    .line 127
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResidual;->endtime:J

    .line 128
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->sdCleanList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->sdCleanList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    iput-object v4, p0, Lcom/market2345/cacheclean/ScanResidual;->sdCleanList:Ljava/util/ArrayList;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCleanList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCleanList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 136
    iput-object v4, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCleanList:Ljava/util/ArrayList;

    .line 138
    :cond_1
    sput-object v4, Lcom/market2345/cacheclean/ScanResidual;->mInstance:Lcom/market2345/cacheclean/ScanResidual;

    .line 139
    iput-boolean v1, p0, Lcom/market2345/cacheclean/ScanResidual;->cacheEnd:Z

    .line 140
    iput-boolean v1, p0, Lcom/market2345/cacheclean/ScanResidual;->residualEnd:Z

    .line 142
    return-void
.end method

.method public getBitmapCache(Ljava/lang/String;)Lcom/market2345/cacheclean/BitmapCacheInfo;
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 361
    const/4 v0, 0x0

    .line 362
    .local v0, "bitInf":Lcom/market2345/cacheclean/BitmapCacheInfo;
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 365
    iget-boolean v6, p0, Lcom/market2345/cacheclean/ScanResidual;->isRun:Z

    if-nez v6, :cond_0

    move-object v1, v0

    .line 392
    .end local v0    # "bitInf":Lcom/market2345/cacheclean/BitmapCacheInfo;
    .local v1, "bitInf":Lcom/market2345/cacheclean/BitmapCacheInfo;
    :goto_0
    return-object v1

    .line 367
    .end local v1    # "bitInf":Lcom/market2345/cacheclean/BitmapCacheInfo;
    .restart local v0    # "bitInf":Lcom/market2345/cacheclean/BitmapCacheInfo;
    :cond_0
    const-wide/16 v4, 0x0

    .line 368
    .local v4, "fileSizes":J
    const/4 v3, 0x0

    .line 369
    .local v3, "filenum":I
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 371
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 373
    invoke-virtual {p0, v2}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapTotalSize(Ljava/io/File;)J

    move-result-wide v4

    .line 382
    :cond_1
    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    iget v6, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapNum:I

    if-lez v6, :cond_2

    .line 384
    iput-wide v4, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapSize:J

    .line 385
    new-instance v0, Lcom/market2345/cacheclean/BitmapCacheInfo;

    .end local v0    # "bitInf":Lcom/market2345/cacheclean/BitmapCacheInfo;
    invoke-direct {v0}, Lcom/market2345/cacheclean/BitmapCacheInfo;-><init>()V

    .line 386
    .restart local v0    # "bitInf":Lcom/market2345/cacheclean/BitmapCacheInfo;
    invoke-virtual {v0, v4, v5}, Lcom/market2345/cacheclean/BitmapCacheInfo;->setBitmapSize(J)V

    .line 387
    iget v6, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapNum:I

    invoke-virtual {v0, v6}, Lcom/market2345/cacheclean/BitmapCacheInfo;->setBitmapNum(I)V

    .end local v3    # "filenum":I
    .end local v4    # "fileSizes":J
    :cond_2
    move-object v1, v0

    .line 392
    .end local v0    # "bitInf":Lcom/market2345/cacheclean/BitmapCacheInfo;
    .restart local v1    # "bitInf":Lcom/market2345/cacheclean/BitmapCacheInfo;
    goto :goto_0

    .line 378
    .end local v1    # "bitInf":Lcom/market2345/cacheclean/BitmapCacheInfo;
    .restart local v0    # "bitInf":Lcom/market2345/cacheclean/BitmapCacheInfo;
    .restart local v3    # "filenum":I
    .restart local v4    # "fileSizes":J
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 380
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    goto :goto_1
.end method

.method public getBitmapNum()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapNum:I

    return v0
.end method

.method public getBitmapSize()J
    .locals 2

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapSize:J

    return-wide v0
.end method

.method public getBitmapTotalSize(Ljava/io/File;)J
    .locals 6
    .param p1, "fileDir"    # Ljava/io/File;

    .prologue
    .line 397
    const-wide/16 v2, 0x0

    .line 398
    .local v2, "totalSize":J
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 400
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 401
    .local v1, "fileList":[Ljava/io/File;
    const/4 v0, 0x0

    .local v0, "fileIndex":I
    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 403
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    aget-object v4, v1, v0

    invoke-virtual {p0, v4}, Lcom/market2345/cacheclean/ScanResidual;->getBitmapTotalSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 401
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 409
    :cond_0
    aget-object v4, v1, v0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 415
    iget v4, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapNum:I

    goto :goto_1

    .line 419
    .end local v0    # "fileIndex":I
    .end local v1    # "fileList":[Ljava/io/File;
    :cond_1
    return-wide v2
.end method

.method public getRamCacheNum()I
    .locals 1

    .prologue
    .line 470
    iget v0, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheNum:I

    return v0
.end method

.method public getRamCacheSize()J
    .locals 2

    .prologue
    .line 480
    iget-wide v0, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheSize:J

    return-wide v0
.end method

.method public getRamCleanList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/AppRamCacheInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 454
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCleanList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSdCleanList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/AppSDCacheInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 444
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->sdCleanList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTotalNum()I
    .locals 2

    .prologue
    .line 510
    iget v0, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapNum:I

    iget v1, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/market2345/cacheclean/ScanResidual;->totalNum:I

    return v0
.end method

.method public getTotalSize()J
    .locals 4

    .prologue
    .line 520
    iget-wide v0, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadSize:J

    iget-wide v2, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapSize:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getUnloadNum()I
    .locals 1

    .prologue
    .line 490
    iget v0, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadNum:I

    return v0
.end method

.method public getUnloadSize()J
    .locals 2

    .prologue
    .line 500
    iget-wide v0, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadSize:J

    return-wide v0
.end method

.method public isCacheEnd()Z
    .locals 1

    .prologue
    .line 530
    iget-boolean v0, p0, Lcom/market2345/cacheclean/ScanResidual;->cacheEnd:Z

    return v0
.end method

.method public isResidualEnd()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/market2345/cacheclean/ScanResidual;->residualEnd:Z

    return v0
.end method

.method public isRun()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/market2345/cacheclean/ScanResidual;->isRun:Z

    return v0
.end method

.method public moblieAPP(Ljava/util/List;Ljava/lang/String;)Z
    .locals 4
    .param p2, "apkname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 339
    .local p1, "packinfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 341
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 342
    .local v2, "packname":Ljava/lang/String;
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    const/4 v3, 0x1

    .line 347
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "packname":Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public sacnAPPCache(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 254
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget-boolean v4, p0, Lcom/market2345/cacheclean/ScanResidual;->isRun:Z

    if-nez v4, :cond_0

    .line 270
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    return-void

    .line 256
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 257
    .local v3, "packname":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/market2345/cacheclean/ScanResidual;->getAPPCache(Ljava/lang/String;)V

    goto :goto_0

    .line 261
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "packname":Ljava/lang/String;
    :cond_1
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :goto_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/market2345/cacheclean/ScanResidual;->cacheEnd:Z

    .line 268
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ScanResidual;->setChanged()V

    .line 269
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/market2345/cacheclean/ScanResidual;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_1

    .line 263
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method public setBitmapNum(I)V
    .locals 0
    .param p1, "bitmapNum"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapNum:I

    .line 430
    return-void
.end method

.method public setBitmapSize(J)V
    .locals 1
    .param p1, "bitmapSize"    # J

    .prologue
    .line 439
    iput-wide p1, p0, Lcom/market2345/cacheclean/ScanResidual;->bitmapSize:J

    .line 440
    return-void
.end method

.method public setCacheEnd(Z)V
    .locals 0
    .param p1, "end"    # Z

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ScanResidual;->cacheEnd:Z

    .line 536
    return-void
.end method

.method public setNotify(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 464
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ScanResidual;->setChanged()V

    .line 465
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/cacheclean/ScanResidual;->notifyObservers(Ljava/lang/Object;)V

    .line 466
    return-void
.end method

.method public setRamCacheNum(I)V
    .locals 0
    .param p1, "ramCacheNum"    # I

    .prologue
    .line 475
    iput p1, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheNum:I

    .line 476
    return-void
.end method

.method public setRamCacheSize(J)V
    .locals 1
    .param p1, "ramCacheSize"    # J

    .prologue
    .line 485
    iput-wide p1, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCacheSize:J

    .line 486
    return-void
.end method

.method public setRamCleanList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/AppRamCacheInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "ramCleanList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/cacheclean/AppRamCacheInfo;>;"
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanResidual;->ramCleanList:Ljava/util/ArrayList;

    .line 460
    return-void
.end method

.method public setResidualEnd(Z)V
    .locals 0
    .param p1, "residualEnd"    # Z

    .prologue
    .line 545
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ScanResidual;->residualEnd:Z

    .line 546
    return-void
.end method

.method public setRun(Z)V
    .locals 0
    .param p1, "isRun"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/market2345/cacheclean/ScanResidual;->isRun:Z

    .line 556
    return-void
.end method

.method public setSQLiteDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanResidual;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 103
    return-void
.end method

.method public setSdCleanList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/AppSDCacheInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 449
    .local p1, "sdCleanList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/cacheclean/AppSDCacheInfo;>;"
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanResidual;->sdCleanList:Ljava/util/ArrayList;

    .line 450
    return-void
.end method

.method public setTotalNum(I)V
    .locals 0
    .param p1, "totalNum"    # I

    .prologue
    .line 515
    iput p1, p0, Lcom/market2345/cacheclean/ScanResidual;->totalNum:I

    .line 516
    return-void
.end method

.method public setTotalSize(J)V
    .locals 1
    .param p1, "totalSize"    # J

    .prologue
    .line 525
    iput-wide p1, p0, Lcom/market2345/cacheclean/ScanResidual;->totalSize:J

    .line 526
    return-void
.end method

.method public setUnloadNum(I)V
    .locals 0
    .param p1, "unloadNum"    # I

    .prologue
    .line 495
    iput p1, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadNum:I

    .line 496
    return-void
.end method

.method public setUnloadSize(J)V
    .locals 1
    .param p1, "unloadSize"    # J

    .prologue
    .line 505
    iput-wide p1, p0, Lcom/market2345/cacheclean/ScanResidual;->unloadSize:J

    .line 506
    return-void
.end method

.method public startScan()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/ScanResidual;->packmanager:Landroid/content/pm/PackageManager;

    .line 147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/cacheclean/ScanResidual;->starttime:J

    .line 149
    new-instance v0, Lcom/market2345/cacheclean/ScanResidual$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/ScanResidual$1;-><init>(Lcom/market2345/cacheclean/ScanResidual;)V

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanResidual$1;->start()V

    .line 248
    return-void
.end method
