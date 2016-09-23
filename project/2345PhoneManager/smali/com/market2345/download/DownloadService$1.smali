.class Lcom/market2345/download/DownloadService$1;
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
    .line 94
    iput-object p1, p0, Lcom/market2345/download/DownloadService$1;->this$0:Lcom/market2345/download/DownloadService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/market2345/download/DownloadService$1;->this$0:Lcom/market2345/download/DownloadService;

    # getter for: Lcom/market2345/download/DownloadService;->mUpdateHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/download/DownloadService;->access$000(Lcom/market2345/download/DownloadService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v1, p0, Lcom/market2345/download/DownloadService$1;->this$0:Lcom/market2345/download/DownloadService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    # invokes: Lcom/market2345/download/DownloadService;->enqueueUpdate(Landroid/net/Uri;)V
    invoke-static {v1, v0}, Lcom/market2345/download/DownloadService;->access$100(Lcom/market2345/download/DownloadService;Landroid/net/Uri;)V

    .line 100
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
