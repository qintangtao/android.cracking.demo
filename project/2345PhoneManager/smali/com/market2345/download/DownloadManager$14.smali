.class Lcom/market2345/download/DownloadManager$14;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/download/DownloadManager;->showSizeLimitedTip(Landroid/app/Activity;[Lcom/market2345/model/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadManager;

.field final synthetic val$apps:[Lcom/market2345/model/App;

.field final synthetic val$myDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;[Lcom/market2345/model/App;)V
    .locals 0

    .prologue
    .line 1409
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$14;->this$0:Lcom/market2345/download/DownloadManager;

    iput-object p2, p0, Lcom/market2345/download/DownloadManager$14;->val$myDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/market2345/download/DownloadManager$14;->val$apps:[Lcom/market2345/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/market2345/download/DownloadManager$14;->val$myDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1413
    iget-object v0, p0, Lcom/market2345/download/DownloadManager$14;->this$0:Lcom/market2345/download/DownloadManager;

    iget-object v1, p0, Lcom/market2345/download/DownloadManager$14;->val$apps:[Lcom/market2345/model/App;

    invoke-virtual {v0, v1}, Lcom/market2345/download/DownloadManager;->startOrResumeDownload([Lcom/market2345/model/App;)V

    .line 1414
    return-void
.end method
