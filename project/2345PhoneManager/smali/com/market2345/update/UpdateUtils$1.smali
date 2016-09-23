.class Lcom/market2345/update/UpdateUtils$1;
.super Lcom/lidroid/xutils/http/callback/RequestCallBack;
.source "UpdateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/update/UpdateUtils;->download(Lcom/market2345/update/UpdateInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lidroid/xutils/http/callback/RequestCallBack",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/update/UpdateUtils;

.field final synthetic val$info:Lcom/market2345/update/UpdateInfo;

.field final synthetic val$showDownLoadProgress:Z


# direct methods
.method constructor <init>(Lcom/market2345/update/UpdateUtils;ZLcom/market2345/update/UpdateInfo;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/market2345/update/UpdateUtils$1;->this$0:Lcom/market2345/update/UpdateUtils;

    iput-boolean p2, p0, Lcom/market2345/update/UpdateUtils$1;->val$showDownLoadProgress:Z

    iput-object p3, p0, Lcom/market2345/update/UpdateUtils$1;->val$info:Lcom/market2345/update/UpdateInfo;

    invoke-direct {p0}, Lcom/lidroid/xutils/http/callback/RequestCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/lidroid/xutils/exception/HttpException;Ljava/lang/String;)V
    .locals 3
    .param p1, "arg0"    # Lcom/lidroid/xutils/exception/HttpException;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 391
    iget-object v1, p0, Lcom/market2345/update/UpdateUtils$1;->this$0:Lcom/market2345/update/UpdateUtils;

    # getter for: Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/market2345/update/UpdateUtils;->access$100(Lcom/market2345/update/UpdateUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/market2345/update/UpdateUtils;->setUpdateStatus(Landroid/content/Context;I)V

    .line 392
    iget-object v1, p0, Lcom/market2345/update/UpdateUtils$1;->this$0:Lcom/market2345/update/UpdateUtils;

    # setter for: Lcom/market2345/update/UpdateUtils;->isDownloading:Z
    invoke-static {v1, v2}, Lcom/market2345/update/UpdateUtils;->access$002(Lcom/market2345/update/UpdateUtils;Z)Z

    .line 395
    iget-boolean v1, p0, Lcom/market2345/update/UpdateUtils$1;->val$showDownLoadProgress:Z

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/market2345/update/UpdateUtils$1;->this$0:Lcom/market2345/update/UpdateUtils;

    # getter for: Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/market2345/update/UpdateUtils;->access$100(Lcom/market2345/update/UpdateUtils;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 399
    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/market2345/update/UpdateUtils;->UPDATE_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/market2345/update/UpdateUtils$1;->val$info:Lcom/market2345/update/UpdateInfo;

    iget-object v2, v2, Lcom/market2345/update/UpdateInfo;->filename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/common/util/Utils;->getLocalFileMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/update/UpdateUtils$1;->val$info:Lcom/market2345/update/UpdateInfo;

    iget-object v2, v2, Lcom/market2345/update/UpdateInfo;->md5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 402
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 405
    :cond_1
    return-void
.end method

.method public onLoading(JJZ)V
    .locals 7
    .param p1, "total"    # J
    .param p3, "current"    # J
    .param p5, "isUploading"    # Z

    .prologue
    .line 381
    if-nez p5, :cond_0

    .line 382
    long-to-double v2, p3

    long-to-double v4, p1

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 383
    .local v0, "percent":I
    iget-boolean v1, p0, Lcom/market2345/update/UpdateUtils$1;->val$showDownLoadProgress:Z

    if-eqz v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/market2345/update/UpdateUtils$1;->this$0:Lcom/market2345/update/UpdateUtils;

    invoke-virtual {v1, v0}, Lcom/market2345/update/UpdateUtils;->updateNotification(I)V

    .line 387
    .end local v0    # "percent":I
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils$1;->this$0:Lcom/market2345/update/UpdateUtils;

    const/4 v1, 0x1

    # setter for: Lcom/market2345/update/UpdateUtils;->isDownloading:Z
    invoke-static {v0, v1}, Lcom/market2345/update/UpdateUtils;->access$002(Lcom/market2345/update/UpdateUtils;Z)Z

    .line 374
    iget-boolean v0, p0, Lcom/market2345/update/UpdateUtils$1;->val$showDownLoadProgress:Z

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils$1;->this$0:Lcom/market2345/update/UpdateUtils;

    invoke-virtual {v0}, Lcom/market2345/update/UpdateUtils;->notifiDownloading2345()V

    .line 377
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/lidroid/xutils/http/ResponseInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/http/ResponseInfo",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 409
    .local p1, "responseInfo":Lcom/lidroid/xutils/http/ResponseInfo;, "Lcom/lidroid/xutils/http/ResponseInfo<Ljava/io/File;>;"
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils$1;->this$0:Lcom/market2345/update/UpdateUtils;

    const/4 v1, 0x0

    # setter for: Lcom/market2345/update/UpdateUtils;->isDownloading:Z
    invoke-static {v0, v1}, Lcom/market2345/update/UpdateUtils;->access$002(Lcom/market2345/update/UpdateUtils;Z)Z

    .line 411
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils$1;->this$0:Lcom/market2345/update/UpdateUtils;

    iget-object v1, p0, Lcom/market2345/update/UpdateUtils$1;->val$info:Lcom/market2345/update/UpdateInfo;

    # invokes: Lcom/market2345/update/UpdateUtils;->downloadFinished(Lcom/market2345/update/UpdateInfo;)V
    invoke-static {v0, v1}, Lcom/market2345/update/UpdateUtils;->access$200(Lcom/market2345/update/UpdateUtils;Lcom/market2345/update/UpdateInfo;)V

    .line 412
    iget-boolean v0, p0, Lcom/market2345/update/UpdateUtils$1;->val$showDownLoadProgress:Z

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/market2345/update/UpdateUtils$1;->this$0:Lcom/market2345/update/UpdateUtils;

    # getter for: Lcom/market2345/update/UpdateUtils;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/market2345/update/UpdateUtils;->access$100(Lcom/market2345/update/UpdateUtils;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyInstall2345()V

    .line 415
    :cond_0
    return-void
.end method
