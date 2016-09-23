.class public Lcom/market2345/cacheclean/ScanSD;
.super Lcom/market2345/datacenter/MarketObservable;
.source "ScanSD.java"


# static fields
.field public static final OK:I = -0x1


# instance fields
.field private context:Landroid/content/Context;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private packmanager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/market2345/datacenter/MarketObservable;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/market2345/cacheclean/ScanSD;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 36
    iput-object p2, p0, Lcom/market2345/cacheclean/ScanSD;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/cacheclean/ScanSD;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanSD;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanSD;->packmanager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/cacheclean/ScanSD;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanSD;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanSD;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/cacheclean/ScanSD;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanSD;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ScanSD;->setChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/market2345/cacheclean/ScanSD;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/cacheclean/ScanSD;

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/market2345/cacheclean/ScanSD;->setChanged()V

    return-void
.end method


# virtual methods
.method public startScan()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/market2345/cacheclean/ScanSD;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/cacheclean/ScanSD;->packmanager:Landroid/content/pm/PackageManager;

    .line 43
    new-instance v0, Lcom/market2345/cacheclean/ScanSD$1;

    invoke-direct {v0, p0}, Lcom/market2345/cacheclean/ScanSD$1;-><init>(Lcom/market2345/cacheclean/ScanSD;)V

    invoke-virtual {v0}, Lcom/market2345/cacheclean/ScanSD$1;->start()V

    .line 84
    return-void
.end method
