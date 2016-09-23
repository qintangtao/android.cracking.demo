.class Lcom/market2345/download/DownloadManager$6;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/download/DownloadManager;->checkSingleSignatures(Landroid/app/Activity;Lcom/market2345/model/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$app:Lcom/market2345/model/App;

.field final synthetic val$myDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;Landroid/app/Activity;Lcom/market2345/model/App;)V
    .locals 0

    .prologue
    .line 1186
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$6;->this$0:Lcom/market2345/download/DownloadManager;

    iput-object p2, p0, Lcom/market2345/download/DownloadManager$6;->val$myDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/market2345/download/DownloadManager$6;->val$activity:Landroid/app/Activity;

    iput-object p4, p0, Lcom/market2345/download/DownloadManager$6;->val$app:Lcom/market2345/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/market2345/download/DownloadManager$6;->val$myDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1190
    iget-object v0, p0, Lcom/market2345/download/DownloadManager$6;->this$0:Lcom/market2345/download/DownloadManager;

    iget-object v1, p0, Lcom/market2345/download/DownloadManager$6;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$6;->val$app:Lcom/market2345/model/App;

    # invokes: Lcom/market2345/download/DownloadManager;->checkSingleVersion(Landroid/app/Activity;Lcom/market2345/model/App;)V
    invoke-static {v0, v1, v2}, Lcom/market2345/download/DownloadManager;->access$900(Lcom/market2345/download/DownloadManager;Landroid/app/Activity;Lcom/market2345/model/App;)V

    .line 1191
    return-void
.end method
