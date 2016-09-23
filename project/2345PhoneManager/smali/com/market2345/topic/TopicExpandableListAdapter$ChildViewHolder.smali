.class Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;
.super Ljava/lang/Object;
.source "TopicExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/topic/TopicExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildViewHolder"
.end annotation


# instance fields
.field iv_app_icon:Landroid/widget/ImageView;

.field ll_download_size_speed:Lcom/market2345/customview/download/DownloadSpeedLayout;

.field pb_progress:Lcom/market2345/customview/download/MyProgressImageView;

.field rl_size_download_count:Lcom/market2345/customview/download/DownloadCountLayout;

.field final synthetic this$0:Lcom/market2345/topic/TopicExpandableListAdapter;

.field tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

.field tv_download_count:Landroid/widget/TextView;

.field tv_download_size:Lcom/market2345/customview/download/SizeView;

.field tv_introduce:Lcom/market2345/customview/download/IntroduceView;

.field tv_rate:Lcom/market2345/customview/download/RateView;

.field tv_size:Landroid/widget/TextView;

.field tv_speed:Lcom/market2345/customview/download/SpeedView;

.field tv_title:Landroid/widget/TextView;

.field v_item_divider:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/market2345/topic/TopicExpandableListAdapter;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;->this$0:Lcom/market2345/topic/TopicExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/topic/TopicExpandableListAdapter;Lcom/market2345/topic/TopicExpandableListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/topic/TopicExpandableListAdapter;
    .param p2, "x1"    # Lcom/market2345/topic/TopicExpandableListAdapter$1;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcom/market2345/topic/TopicExpandableListAdapter$ChildViewHolder;-><init>(Lcom/market2345/topic/TopicExpandableListAdapter;)V

    return-void
.end method
