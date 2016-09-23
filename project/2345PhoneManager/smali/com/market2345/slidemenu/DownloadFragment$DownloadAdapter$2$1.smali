.class Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$1;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;

.field final synthetic val$dialogSimpleTitleMessageView:Lcom/market2345/customview/DialogSimpleTitleMessageView;

.field final synthetic val$myDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;Landroid/app/Dialog;Lcom/market2345/customview/DialogSimpleTitleMessageView;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$1;->this$2:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;

    iput-object p2, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$1;->val$myDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$1;->val$dialogSimpleTitleMessageView:Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 461
    iget-object v6, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$1;->val$myDialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->cancel()V

    .line 463
    iget-object v6, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$1;->this$2:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;

    iget-object v6, v6, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    iget-object v6, v6, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # invokes: Lcom/market2345/slidemenu/DownloadFragment;->getCompletedCounts()I
    invoke-static {v6}, Lcom/market2345/slidemenu/DownloadFragment;->access$500(Lcom/market2345/slidemenu/DownloadFragment;)I

    move-result v0

    .line 464
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 465
    add-int/lit8 v0, v0, -0x1

    .line 468
    :cond_0
    new-array v4, v0, [J

    .line 470
    .local v4, "ids":[J
    const/4 v1, 0x0

    .line 471
    .local v1, "i":I
    iget-object v6, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$1;->this$2:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;

    iget-object v6, v6, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    iget-object v6, v6, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/market2345/slidemenu/DownloadFragment;->access$000(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/market2345/download/DownloadItem;

    .line 472
    .local v5, "info":Lcom/market2345/download/DownloadItem;
    instance-of v6, v5, Lcom/market2345/download/DownloadInfo;

    if-eqz v6, :cond_1

    .line 473
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    check-cast v5, Lcom/market2345/download/DownloadInfo;

    .end local v5    # "info":Lcom/market2345/download/DownloadItem;
    iget-wide v6, v5, Lcom/market2345/download/DownloadInfo;->mId:J

    aput-wide v6, v4, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 476
    :cond_2
    iget-object v6, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$1;->this$2:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;

    iget-object v6, v6, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    iget-object v6, v6, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mInstalledDownloads:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/market2345/slidemenu/DownloadFragment;->access$600(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/market2345/download/DownloadItem;

    .line 477
    .restart local v5    # "info":Lcom/market2345/download/DownloadItem;
    instance-of v6, v5, Lcom/market2345/download/DownloadInfo;

    if-eqz v6, :cond_3

    .line 478
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    check-cast v5, Lcom/market2345/download/DownloadInfo;

    .end local v5    # "info":Lcom/market2345/download/DownloadItem;
    iget-wide v6, v5, Lcom/market2345/download/DownloadInfo;->mId:J

    aput-wide v6, v4, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 481
    :cond_4
    iget-object v6, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$1;->this$2:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;

    iget-object v6, v6, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    iget-object v6, v6, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v6}, Lcom/market2345/slidemenu/DownloadFragment;->access$100(Lcom/market2345/slidemenu/DownloadFragment;)Lcom/market2345/download/DownloadManager;

    move-result-object v6

    iget-object v7, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$1;->val$dialogSimpleTitleMessageView:Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-virtual {v7}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->isChecked()Z

    move-result v7

    invoke-virtual {v6, v7, v4}, Lcom/market2345/download/DownloadManager;->deleteDownload(Z[J)V

    .line 483
    return-void
.end method
