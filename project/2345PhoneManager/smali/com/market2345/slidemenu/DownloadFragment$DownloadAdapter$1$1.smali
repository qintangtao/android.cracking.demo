.class Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$1;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;

.field final synthetic val$dialogSimpleTitleMessageView:Lcom/market2345/customview/DialogSimpleTitleMessageView;

.field final synthetic val$info:Lcom/market2345/download/DownloadInfo;

.field final synthetic val$myDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;Landroid/app/Dialog;Lcom/market2345/customview/DialogSimpleTitleMessageView;Lcom/market2345/download/DownloadInfo;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$1;->this$2:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;

    iput-object p2, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$1;->val$myDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$1;->val$dialogSimpleTitleMessageView:Lcom/market2345/customview/DialogSimpleTitleMessageView;

    iput-object p4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$1;->val$info:Lcom/market2345/download/DownloadInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 428
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$1;->val$myDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 429
    iget-object v0, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$1;->this$2:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;

    iget-object v0, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    iget-object v0, v0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mDownloadManager:Lcom/market2345/download/DownloadManager;
    invoke-static {v0}, Lcom/market2345/slidemenu/DownloadFragment;->access$100(Lcom/market2345/slidemenu/DownloadFragment;)Lcom/market2345/download/DownloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$1;->val$dialogSimpleTitleMessageView:Lcom/market2345/customview/DialogSimpleTitleMessageView;

    invoke-virtual {v1}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$1;->val$info:Lcom/market2345/download/DownloadInfo;

    iget-wide v4, v4, Lcom/market2345/download/DownloadInfo;->mId:J

    aput-wide v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/market2345/download/DownloadManager;->deleteDownload(Z[J)V

    .line 430
    return-void
.end method
