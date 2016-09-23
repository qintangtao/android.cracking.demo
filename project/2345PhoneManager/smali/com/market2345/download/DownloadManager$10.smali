.class Lcom/market2345/download/DownloadManager$10;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/download/DownloadManager;->pollCheckSignatures(Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/model/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$allTasks:Lcom/market2345/download/util/ArrayDeque;

.field final synthetic val$app:Lcom/market2345/model/App;

.field final synthetic val$downTasks:Lcom/market2345/download/util/ArrayDeque;

.field final synthetic val$myDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/model/App;Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;)V
    .locals 0

    .prologue
    .line 1272
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$10;->this$0:Lcom/market2345/download/DownloadManager;

    iput-object p2, p0, Lcom/market2345/download/DownloadManager$10;->val$myDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/market2345/download/DownloadManager$10;->val$downTasks:Lcom/market2345/download/util/ArrayDeque;

    iput-object p4, p0, Lcom/market2345/download/DownloadManager$10;->val$app:Lcom/market2345/model/App;

    iput-object p5, p0, Lcom/market2345/download/DownloadManager$10;->val$activity:Landroid/app/Activity;

    iput-object p6, p0, Lcom/market2345/download/DownloadManager$10;->val$allTasks:Lcom/market2345/download/util/ArrayDeque;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/market2345/download/DownloadManager$10;->val$myDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 1276
    iget-object v0, p0, Lcom/market2345/download/DownloadManager$10;->val$downTasks:Lcom/market2345/download/util/ArrayDeque;

    iget-object v1, p0, Lcom/market2345/download/DownloadManager$10;->val$app:Lcom/market2345/model/App;

    invoke-virtual {v0, v1}, Lcom/market2345/download/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 1277
    iget-object v1, p0, Lcom/market2345/download/DownloadManager$10;->this$0:Lcom/market2345/download/DownloadManager;

    iget-object v2, p0, Lcom/market2345/download/DownloadManager$10;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/market2345/download/DownloadManager$10;->val$allTasks:Lcom/market2345/download/util/ArrayDeque;

    iget-object v4, p0, Lcom/market2345/download/DownloadManager$10;->val$downTasks:Lcom/market2345/download/util/ArrayDeque;

    iget-object v0, p0, Lcom/market2345/download/DownloadManager$10;->val$allTasks:Lcom/market2345/download/util/ArrayDeque;

    invoke-virtual {v0}, Lcom/market2345/download/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    # invokes: Lcom/market2345/download/DownloadManager;->pollCheckSignatures(Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/model/App;)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/market2345/download/DownloadManager;->access$1100(Lcom/market2345/download/DownloadManager;Landroid/app/Activity;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/download/util/ArrayDeque;Lcom/market2345/model/App;)V

    .line 1278
    return-void
.end method
