.class Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;
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
    .line 448
    iput-object p1, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 452
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    iget-object v2, v2, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    invoke-virtual {v2}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 453
    .local v1, "myDialog":Landroid/app/Dialog;
    new-instance v0, Lcom/market2345/customview/DialogSimpleTitleMessageView;

    iget-object v2, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    iget-object v2, v2, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;->this$0:Lcom/market2345/slidemenu/DownloadFragment;

    invoke-virtual {v2}, Lcom/market2345/slidemenu/DownloadFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;-><init>(Landroid/content/Context;)V

    .line 454
    .local v0, "dialogSimpleTitleMessageView":Lcom/market2345/customview/DialogSimpleTitleMessageView;
    const-string v2, "\u63d0\u793a"

    invoke-virtual {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setTitle(Ljava/lang/CharSequence;)V

    .line 455
    const-string v2, "\u60a8\u786e\u5b9a\u8981\u6e05\u9664\u5168\u90e8\u5386\u53f2\u8bb0\u5f55\u5417?"

    invoke-virtual {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setMessage(Ljava/lang/CharSequence;)V

    .line 456
    const-string v2, "\u540c\u65f6\u5220\u9664\u672c\u5730\u6587\u4ef6"

    invoke-virtual {v0, v4, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->displayCheck(ZLjava/lang/String;)V

    .line 457
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setChecked(Z)V

    .line 458
    const-string v2, "\u786e\u5b9a"

    new-instance v3, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$1;-><init>(Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;Landroid/app/Dialog;Lcom/market2345/customview/DialogSimpleTitleMessageView;)V

    invoke-virtual {v0, v2, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 486
    const-string v2, "\u53d6\u6d88"

    new-instance v3, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$2;

    invoke-direct {v3, p0, v1}, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2$2;-><init>(Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$2;Landroid/app/Dialog;)V

    invoke-virtual {v0, v2, v3}, Lcom/market2345/customview/DialogSimpleTitleMessageView;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 493
    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 494
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 495
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 496
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 497
    return-void
.end method
