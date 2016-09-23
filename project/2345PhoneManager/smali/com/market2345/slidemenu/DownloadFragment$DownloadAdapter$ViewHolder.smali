.class Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DownloadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field downloaded_app_name:Landroid/widget/TextView;

.field downloaded_app_size:Landroid/widget/TextView;

.field iv_app_icon:Landroid/widget/ImageView;

.field ll_downloaded:Lcom/market2345/customview/download/DownloadedLayout;

.field ll_downloading:Lcom/market2345/customview/download/DownloadingLayout;

.field pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

.field final synthetic this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

.field tv_delete:Landroid/widget/ImageView;

.field tv_download:Lcom/market2345/customview/download/DownloadStatusView2;

.field tv_download_size:Lcom/market2345/customview/download/SizeView;

.field tv_rate:Lcom/market2345/customview/download/RateView;

.field tv_title:Landroid/widget/TextView;

.field tv_top_delete_all:Landroid/widget/TextView;

.field tv_top_title:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;)V
    .locals 0

    .prologue
    .line 603
    iput-object p1, p0, Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter$ViewHolder;->this$1:Lcom/market2345/slidemenu/DownloadFragment$DownloadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
