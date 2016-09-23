.class Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;
.super Ljava/lang/Object;
.source "TopicExpandableGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/topic/TopicExpandableGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChildViewHolder"
.end annotation


# instance fields
.field iv_app_icon:Landroid/widget/ImageView;

.field iv_app_icon2:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/market2345/topic/TopicExpandableGridAdapter;

.field tv_download:Lcom/market2345/customview/TopicDownloadProgressView;

.field tv_download2:Lcom/market2345/customview/TopicDownloadProgressView;

.field tv_introduce:Lcom/market2345/customview/TopicIntroduceView;

.field tv_introduce2:Lcom/market2345/customview/TopicIntroduceView;

.field tv_rate:Lcom/market2345/customview/download/RateView;

.field tv_rate2:Lcom/market2345/customview/download/RateView;

.field tv_title:Landroid/widget/TextView;

.field tv_title2:Landroid/widget/TextView;

.field v_item_divider:Landroid/view/View;

.field v_layout1:Landroid/view/View;

.field v_layout2:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/market2345/topic/TopicExpandableGridAdapter;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;->this$0:Lcom/market2345/topic/TopicExpandableGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/topic/TopicExpandableGridAdapter;Lcom/market2345/topic/TopicExpandableGridAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/topic/TopicExpandableGridAdapter;
    .param p2, "x1"    # Lcom/market2345/topic/TopicExpandableGridAdapter$1;

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/market2345/topic/TopicExpandableGridAdapter$ChildViewHolder;-><init>(Lcom/market2345/topic/TopicExpandableGridAdapter;)V

    return-void
.end method
