.class Lcom/market2345/download/DownloadManager$4;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/download/DownloadManager;->handleClick(Lcom/market2345/download/DownloadInfo;Landroid/app/Activity;Ljava/lang/String;Lcom/market2345/model/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$info:Lcom/market2345/download/DownloadInfo;

.field final synthetic val$myDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;Lcom/market2345/download/DownloadInfo;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$4;->this$0:Lcom/market2345/download/DownloadManager;

    iput-object p2, p0, Lcom/market2345/download/DownloadManager$4;->val$myDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/market2345/download/DownloadManager$4;->val$info:Lcom/market2345/download/DownloadInfo;

    iput-object p4, p0, Lcom/market2345/download/DownloadManager$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1069
    iget-object v0, p0, Lcom/market2345/download/DownloadManager$4;->val$myDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1070
    iget-object v0, p0, Lcom/market2345/download/DownloadManager$4;->this$0:Lcom/market2345/download/DownloadManager;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/market2345/download/DownloadInfo;

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$4;->val$info:Lcom/market2345/download/DownloadInfo;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/market2345/download/DownloadManager;->deleteDownload([Lcom/market2345/download/DownloadInfo;)V

    .line 1071
    iget-object v0, p0, Lcom/market2345/download/DownloadManager$4;->this$0:Lcom/market2345/download/DownloadManager;

    iget-object v1, p0, Lcom/market2345/download/DownloadManager$4;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$4;->this$0:Lcom/market2345/download/DownloadManager;

    iget-object v3, p0, Lcom/market2345/download/DownloadManager$4;->val$info:Lcom/market2345/download/DownloadInfo;

    # invokes: Lcom/market2345/download/DownloadManager;->convertApp(Lcom/market2345/download/DownloadInfo;)Lcom/market2345/model/App;
    invoke-static {v2, v3}, Lcom/market2345/download/DownloadManager;->access$800(Lcom/market2345/download/DownloadManager;Lcom/market2345/download/DownloadInfo;)Lcom/market2345/model/App;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/market2345/download/DownloadManager;->startSingleIfReady(Landroid/app/Activity;Lcom/market2345/model/App;Z)V

    .line 1072
    return-void
.end method
