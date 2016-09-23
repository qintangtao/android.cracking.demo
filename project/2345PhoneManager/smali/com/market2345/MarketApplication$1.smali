.class Lcom/market2345/MarketApplication$1;
.super Ljava/lang/Thread;
.source "MarketApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/MarketApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/MarketApplication;


# direct methods
.method constructor <init>(Lcom/market2345/MarketApplication;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 153
    iget-object v4, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    invoke-static {v4}, Lcom/market2345/common/util/Utils;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/market2345/MarketApplication;->channel:Ljava/lang/String;

    .line 154
    iget-object v4, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    # invokes: Lcom/market2345/MarketApplication;->initImageLoader()V
    invoke-static {v4}, Lcom/market2345/MarketApplication;->access$000(Lcom/market2345/MarketApplication;)V

    .line 156
    iget-object v4, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    iget-object v5, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    invoke-static {v5}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    # setter for: Lcom/market2345/MarketApplication;->mSession:Lcom/market2345/datacenter/DataCenterObserver;
    invoke-static {v4, v5}, Lcom/market2345/MarketApplication;->access$102(Lcom/market2345/MarketApplication;Lcom/market2345/datacenter/DataCenterObserver;)Lcom/market2345/datacenter/DataCenterObserver;

    .line 157
    iget-object v4, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    # getter for: Lcom/market2345/MarketApplication;->mSession:Lcom/market2345/datacenter/DataCenterObserver;
    invoke-static {v4}, Lcom/market2345/MarketApplication;->access$100(Lcom/market2345/MarketApplication;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    .line 158
    iget-object v4, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    iget-object v5, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    invoke-static {v5}, Lcom/market2345/download/DownloadManager;->getInstance(Landroid/content/Context;)Lcom/market2345/download/DownloadManager;

    move-result-object v5

    # setter for: Lcom/market2345/MarketApplication;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v4, v5}, Lcom/market2345/MarketApplication;->access$202(Lcom/market2345/MarketApplication;Lcom/market2345/download/DownloadManager;)Lcom/market2345/download/DownloadManager;

    .line 160
    iget-object v4, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    # invokes: Lcom/market2345/MarketApplication;->holdService()V
    invoke-static {v4}, Lcom/market2345/MarketApplication;->access$300(Lcom/market2345/MarketApplication;)V

    .line 162
    iget-object v4, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    invoke-static {v4, v6}, Lcom/market2345/update/UpdateUtils;->setUpdateStatus(Landroid/content/Context;I)V

    .line 163
    iget-object v4, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    const-string v5, ".lminstalllist"

    invoke-virtual {v4, v5, v6}, Lcom/market2345/MarketApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "statistics_release_key"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 164
    iget-object v4, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    const-string v5, ".lminstalllist"

    invoke-virtual {v4, v5, v6}, Lcom/market2345/MarketApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "statistics_release_key"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    const-string v5, "2345\u624b\u673a\u52a9\u624b"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 170
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 173
    :cond_1
    new-instance v1, Ljava/io/File;

    sget-object v4, Lcom/market2345/Constants;->ImageCacheDir:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, "dir1":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 180
    :cond_2
    const-wide/16 v4, 0xbb8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    iget-object v4, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    # getter for: Lcom/market2345/MarketApplication;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v4}, Lcom/market2345/MarketApplication;->access$200(Lcom/market2345/MarketApplication;)Lcom/market2345/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/download/DownloadManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 187
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v7, v4, :cond_3

    .line 188
    iget-object v4, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    # getter for: Lcom/market2345/MarketApplication;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v4}, Lcom/market2345/MarketApplication;->access$200(Lcom/market2345/MarketApplication;)Lcom/market2345/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/download/DownloadManager;->resumeAllDownloads()V

    .line 189
    iget-object v4, p0, Lcom/market2345/MarketApplication$1;->this$0:Lcom/market2345/MarketApplication;

    # getter for: Lcom/market2345/MarketApplication;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v4}, Lcom/market2345/MarketApplication;->access$200(Lcom/market2345/MarketApplication;)Lcom/market2345/download/DownloadManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/download/DownloadManager;->freeUpdateIfReady()V

    .line 193
    :cond_3
    return-void

    .line 181
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v2

    .line 182
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
