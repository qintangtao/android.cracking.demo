.class public Lcom/market2345/applist/AppListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/applist/AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field public iv_app_icon:Landroid/widget/ImageView;

.field public iv_recommend_icon:Landroid/widget/ImageView;

.field public ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

.field public packageName:Ljava/lang/String;

.field public pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

.field public position:I

.field public rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

.field public tv_app_ranking:Landroid/widget/TextView;

.field public tv_download:Lcom/market2345/customview/download/DownloadStatusView;

.field public tv_download_count:Landroid/widget/TextView;

.field public tv_download_size:Lcom/market2345/customview/download/SizeView;

.field public tv_gift_label:Landroid/widget/TextView;

.field public tv_introduce:Lcom/market2345/customview/download/IntroduceView;

.field public tv_label:Landroid/widget/TextView;

.field public tv_rate:Lcom/market2345/customview/download/RateView;

.field public tv_signature:Landroid/widget/TextView;

.field public tv_size:Landroid/widget/TextView;

.field public tv_speed:Lcom/market2345/customview/download/SpeedView;

.field public tv_title:Landroid/widget/TextView;

.field public versioncode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
