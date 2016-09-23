.class Lcom/market2345/download/DownloadInfo$1;
.super Ljava/lang/Object;
.source "DownloadInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/download/DownloadInfo;->notifyProgress(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadInfo;

.field final synthetic val$callback:Lcom/market2345/download/interfaces/IProgressCallback;

.field final synthetic val$finalDownloading:Z

.field final synthetic val$finalProgress:F

.field final synthetic val$finalSize:Ljava/lang/String;

.field final synthetic val$finalSpeedStatus:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadInfo;Ljava/lang/Object;Lcom/market2345/download/interfaces/IProgressCallback;Ljava/lang/String;FZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 408
    iput-object p1, p0, Lcom/market2345/download/DownloadInfo$1;->this$0:Lcom/market2345/download/DownloadInfo;

    iput-object p2, p0, Lcom/market2345/download/DownloadInfo$1;->val$url:Ljava/lang/Object;

    iput-object p3, p0, Lcom/market2345/download/DownloadInfo$1;->val$callback:Lcom/market2345/download/interfaces/IProgressCallback;

    iput-object p4, p0, Lcom/market2345/download/DownloadInfo$1;->val$finalSpeedStatus:Ljava/lang/String;

    iput p5, p0, Lcom/market2345/download/DownloadInfo$1;->val$finalProgress:F

    iput-boolean p6, p0, Lcom/market2345/download/DownloadInfo$1;->val$finalDownloading:Z

    iput-object p7, p0, Lcom/market2345/download/DownloadInfo$1;->val$finalSize:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo$1;->val$url:Ljava/lang/Object;

    iget-object v1, p0, Lcom/market2345/download/DownloadInfo$1;->val$callback:Lcom/market2345/download/interfaces/IProgressCallback;

    const v2, 0x7f09000b

    invoke-interface {v1, v2}, Lcom/market2345/download/interfaces/IProgressCallback;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo$1;->val$callback:Lcom/market2345/download/interfaces/IProgressCallback;

    iget-object v1, p0, Lcom/market2345/download/DownloadInfo$1;->val$finalSpeedStatus:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/market2345/download/interfaces/IProgressCallback;->showSpeed(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo$1;->val$callback:Lcom/market2345/download/interfaces/IProgressCallback;

    iget v1, p0, Lcom/market2345/download/DownloadInfo$1;->val$finalProgress:F

    invoke-interface {v0, v1}, Lcom/market2345/download/interfaces/IProgressCallback;->showProgress(F)V

    .line 416
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo$1;->val$callback:Lcom/market2345/download/interfaces/IProgressCallback;

    iget-object v1, p0, Lcom/market2345/download/DownloadInfo$1;->this$0:Lcom/market2345/download/DownloadInfo;

    invoke-interface {v0, v1}, Lcom/market2345/download/interfaces/IProgressCallback;->showStatus(Lcom/market2345/download/DownloadInfo;)V

    .line 417
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo$1;->val$callback:Lcom/market2345/download/interfaces/IProgressCallback;

    iget-boolean v1, p0, Lcom/market2345/download/DownloadInfo$1;->val$finalDownloading:Z

    invoke-interface {v0, v1}, Lcom/market2345/download/interfaces/IProgressCallback;->setVisible(Z)V

    .line 418
    iget-object v0, p0, Lcom/market2345/download/DownloadInfo$1;->val$callback:Lcom/market2345/download/interfaces/IProgressCallback;

    iget-object v1, p0, Lcom/market2345/download/DownloadInfo$1;->val$finalSize:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/market2345/download/interfaces/IProgressCallback;->showCurrentSize(Ljava/lang/String;)V

    .line 420
    :cond_0
    return-void
.end method
