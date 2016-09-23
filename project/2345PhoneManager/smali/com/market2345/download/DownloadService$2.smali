.class Lcom/market2345/download/DownloadService$2;
.super Ljava/lang/Object;
.source "DownloadService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/download/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadService;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadService;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/market2345/download/DownloadService$2;->this$0:Lcom/market2345/download/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 207
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 209
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Uri;

    .line 211
    .local v1, "uri":Landroid/net/Uri;
    monitor-enter p0

    .line 212
    :try_start_0
    sget-object v2, Lcom/market2345/download/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v2, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 213
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 219
    iget-object v2, p0, Lcom/market2345/download/DownloadService$2;->this$0:Lcom/market2345/download/DownloadService;

    # invokes: Lcom/market2345/download/DownloadService;->updateLocked(Landroid/net/Uri;)V
    invoke-static {v2, v1}, Lcom/market2345/download/DownloadService;->access$300(Lcom/market2345/download/DownloadService;Landroid/net/Uri;)V

    .line 220
    iget-object v2, p0, Lcom/market2345/download/DownloadService$2;->this$0:Lcom/market2345/download/DownloadService;

    # getter for: Lcom/market2345/download/DownloadService;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v2}, Lcom/market2345/download/DownloadService;->access$400(Lcom/market2345/download/DownloadService;)Lcom/market2345/download/DownloadManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/download/DownloadManager;->getTasks()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/market2345/download/DownloadService$2;->this$0:Lcom/market2345/download/DownloadService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Lcom/market2345/download/DownloadService;->stopSelf(I)V

    .line 225
    :cond_0
    :goto_0
    monitor-exit p0

    .line 226
    const/4 v2, 0x1

    return v2

    .line 216
    :pswitch_0
    iget-object v2, p0, Lcom/market2345/download/DownloadService$2;->this$0:Lcom/market2345/download/DownloadService;

    # invokes: Lcom/market2345/download/DownloadService;->deleteLocked(Landroid/net/Uri;)V
    invoke-static {v2, v1}, Lcom/market2345/download/DownloadService;->access$200(Lcom/market2345/download/DownloadService;Landroid/net/Uri;)V

    goto :goto_0

    .line 225
    .end local v0    # "match":I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
