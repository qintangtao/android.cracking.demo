.class Lcom/market2345/clearStrategy/ClearManager$1;
.super Ljava/lang/Object;
.source "ClearManager.java"

# interfaces
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/clearStrategy/ClearManager;->updateDbFile(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/clearStrategy/ClearManager;


# direct methods
.method constructor <init>(Lcom/market2345/clearStrategy/ClearManager;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/market2345/clearStrategy/ClearManager$1;->this$0:Lcom/market2345/clearStrategy/ClearManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;I)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 163
    const-string v0, "ClearManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDbFile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 164
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 145
    move-object v3, p2

    check-cast v3, Lcom/market2345/clearStrategy/ClearDataResp;

    iget-object v1, v3, Lcom/market2345/clearStrategy/ClearDataResp;->list:Lcom/market2345/clearStrategy/ClearDataResp$Data;

    .line 146
    .local v1, "downloadInfo":Lcom/market2345/clearStrategy/ClearDataResp$Data;
    if-eqz p2, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/market2345/clearStrategy/ClearDataResp$Data;->flag:Z

    if-eqz v3, :cond_0

    .line 147
    iget-object v2, v1, Lcom/market2345/clearStrategy/ClearDataResp$Data;->downloadUrl:Ljava/lang/String;

    .line 148
    .local v2, "downloadUrl":Ljava/lang/String;
    new-instance v0, Lcom/market2345/clearStrategy/ClearDbDownloader;

    # getter for: Lcom/market2345/clearStrategy/ClearManager;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->access$000()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/market2345/clearStrategy/ClearDbDownloader;-><init>(Landroid/content/Context;)V

    .line 149
    .local v0, "clearDbDownloader":Lcom/market2345/clearStrategy/ClearDbDownloader;
    iget-object v3, p0, Lcom/market2345/clearStrategy/ClearManager$1;->this$0:Lcom/market2345/clearStrategy/ClearManager;

    invoke-virtual {v0, v3}, Lcom/market2345/clearStrategy/ClearDbDownloader;->setClearDbDownloadListener(Lcom/market2345/clearStrategy/ClearDbDownloader$ClearDbDownloadListener;)V

    .line 150
    # invokes: Lcom/market2345/clearStrategy/ClearManager;->isDbFileExist()Z
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->access$100()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    # invokes: Lcom/market2345/clearStrategy/ClearManager;->backupOldDb()Z
    invoke-static {}, Lcom/market2345/clearStrategy/ClearManager;->access$200()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iget-object v3, p0, Lcom/market2345/clearStrategy/ClearManager$1;->this$0:Lcom/market2345/clearStrategy/ClearManager;

    # invokes: Lcom/market2345/clearStrategy/ClearManager;->doDownload(Lcom/market2345/clearStrategy/ClearDataResp$Data;Ljava/lang/String;Lcom/market2345/clearStrategy/ClearDbDownloader;)V
    invoke-static {v3, v1, v2, v0}, Lcom/market2345/clearStrategy/ClearManager;->access$300(Lcom/market2345/clearStrategy/ClearManager;Lcom/market2345/clearStrategy/ClearDataResp$Data;Ljava/lang/String;Lcom/market2345/clearStrategy/ClearDbDownloader;)V

    .line 159
    .end local v0    # "clearDbDownloader":Lcom/market2345/clearStrategy/ClearDbDownloader;
    .end local v2    # "downloadUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 156
    .restart local v0    # "clearDbDownloader":Lcom/market2345/clearStrategy/ClearDbDownloader;
    .restart local v2    # "downloadUrl":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/market2345/clearStrategy/ClearManager$1;->this$0:Lcom/market2345/clearStrategy/ClearManager;

    # invokes: Lcom/market2345/clearStrategy/ClearManager;->doDownload(Lcom/market2345/clearStrategy/ClearDataResp$Data;Ljava/lang/String;Lcom/market2345/clearStrategy/ClearDbDownloader;)V
    invoke-static {v3, v1, v2, v0}, Lcom/market2345/clearStrategy/ClearManager;->access$300(Lcom/market2345/clearStrategy/ClearManager;Lcom/market2345/clearStrategy/ClearDataResp$Data;Ljava/lang/String;Lcom/market2345/clearStrategy/ClearDbDownloader;)V

    goto :goto_0
.end method
