.class public Lcom/market2345/cacheclean/ScanResultInfo;
.super Ljava/lang/Object;
.source "ScanResultInfo.java"


# static fields
.field public static DEFAULT_CACHE_SIZE:Ljava/lang/String;

.field public static defaultSize:J


# instance fields
.field public bitmapNum:I

.field public bitmapSize:J

.field folderFullPath:Ljava/lang/String;

.field mCacheDir:Ljava/lang/String;

.field packmanager:Landroid/content/pm/PackageManager;

.field public ramCacheNum:I

.field public ramCacheSize:J

.field ramCleanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/AppRamCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field sdCleanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/cacheclean/AppSDCacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field totalNum:I

.field totalSize:J

.field public unloadNum:I

.field public unloadSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "default_size"

    sput-object v0, Lcom/market2345/cacheclean/ScanResultInfo;->DEFAULT_CACHE_SIZE:Ljava/lang/String;

    .line 41
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/market2345/cacheclean/ScanResultInfo;->defaultSize:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput v1, p0, Lcom/market2345/cacheclean/ScanResultInfo;->bitmapNum:I

    .line 14
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResultInfo;->bitmapSize:J

    .line 17
    iput v1, p0, Lcom/market2345/cacheclean/ScanResultInfo;->unloadNum:I

    .line 19
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResultInfo;->unloadSize:J

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/ScanResultInfo;->sdCleanList:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/cacheclean/ScanResultInfo;->ramCleanList:Ljava/util/ArrayList;

    .line 26
    iput v1, p0, Lcom/market2345/cacheclean/ScanResultInfo;->ramCacheNum:I

    .line 28
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResultInfo;->ramCacheSize:J

    .line 31
    iput v1, p0, Lcom/market2345/cacheclean/ScanResultInfo;->totalNum:I

    .line 33
    iput-wide v2, p0, Lcom/market2345/cacheclean/ScanResultInfo;->totalSize:J

    .line 37
    const-string v0, "/DCIM/.thumbnails"

    iput-object v0, p0, Lcom/market2345/cacheclean/ScanResultInfo;->mCacheDir:Ljava/lang/String;

    return-void
.end method
