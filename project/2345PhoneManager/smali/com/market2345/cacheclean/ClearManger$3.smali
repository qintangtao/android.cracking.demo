.class Lcom/market2345/cacheclean/ClearManger$3;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ClearManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/ClearManger;->getDefaultCache(Landroid/content/pm/PackageManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/ClearManger;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/ClearManger;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/market2345/cacheclean/ClearManger$3;->this$0:Lcom/market2345/cacheclean/ClearManger;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 6
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 200
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 201
    .local v0, "cachSize":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-nez v4, :cond_0

    .line 203
    sget-wide v0, Lcom/market2345/cacheclean/ClearManger;->defaultSize:J

    .line 205
    :cond_0
    iget-object v4, p0, Lcom/market2345/cacheclean/ClearManger$3;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->context:Landroid/content/Context;
    invoke-static {v4}, Lcom/market2345/cacheclean/ClearManger;->access$300(Lcom/market2345/cacheclean/ClearManger;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 206
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 207
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v4, Lcom/market2345/cacheclean/ScanResidual;->DEFAULT_CACHE_SIZE:Ljava/lang/String;

    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 208
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 209
    iget-object v4, p0, Lcom/market2345/cacheclean/ClearManger$3;->this$0:Lcom/market2345/cacheclean/ClearManger;

    # getter for: Lcom/market2345/cacheclean/ClearManger;->mScan:Lcom/market2345/cacheclean/ScanResidual;
    invoke-static {v4}, Lcom/market2345/cacheclean/ClearManger;->access$200(Lcom/market2345/cacheclean/ClearManger;)Lcom/market2345/cacheclean/ScanResidual;

    move-result-object v4

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/market2345/cacheclean/ScanResidual;->setNotify(I)V

    .line 210
    return-void
.end method
