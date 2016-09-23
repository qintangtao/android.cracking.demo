.class Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;
.super Ljava/lang/Object;
.source "DownloadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/download/DownloadInfo;

    .line 411
    .local v1, "info":Lcom/market2345/download/DownloadInfo;
    if-nez v1, :cond_0

    .line 445
    :goto_0
    return-void

    .line 415
    :cond_0
    new-instance v2, Landroid/app/Dialog;

    iget-object v3, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    iget-object v3, v3, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0c0012

    invoke-direct {v2, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 416
    .local v2, "myDialog":Landroid/app/Dialog;
    new-instance v0, Lcom/market2345/customview/DialogSimpleTitleMessageView;

    iget-object v3, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    iget-object v3, v3, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    invoke-virtual {v3}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;-><init>(Landroid/content/Context;)V

    .line 417
    .local v0, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v0, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 418
    const-string v3, "\u60a8\u786e\u5b9a\u8981\u5220\u9664\u8be5\u6761\u8bb0\u5f55?"

    invoke-virtual {v0, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setMessage(Ljava/lang/CharSequence;)V

    .line 419
    iget-object v3, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    iget-object v3, v3, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mCompletedDownloads:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/market2345/slidemenu/DownloadFragment;->access$000(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    iget-object v3, v3, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    # getter for: Lcom/market2345/slidemenu/DownloadFragment;->mInstalledDownloads:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/market2345/slidemenu/DownloadFragment;->access$600(Lcom/market2345/slidemenu/DownloadFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    :cond_1
    iget-object v3, v1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lcom/market2345/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 421
    const-string v3, "\u540c\u65f6\u5220\u9664\u672c\u5730\u6587\u4ef6"

    invoke-virtual {v0, v5, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->displayCheck(ZLjava/lang/String;)V

    .line 425
    :cond_2
    const-string v3, "\u786e\u5b9a"

    new-instance v4, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$1;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$1;-><init>(Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;Landroid/app/Dialog;Lcom/market2345/customview/DialogSimpleTitleMessageView;Lcom/market2345/download/DownloadInfo;)V

    invoke-virtual {v0, v3, v4}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 433
    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$2;

    invoke-direct {v4, p0, v2}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1$2;-><init>(Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$1;Landroid/app/Dialog;)V

    invoke-virtual {v0, v3, v4}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 440
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 441
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 442
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 443
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method
