.class Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;
.super Ljava/lang/Object;
.source "TopicExpandableGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/topic/TopicExpandableGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupViewHolder"
.end annotation


# instance fields
.field divider:Landroid/view/View;

.field headerDivider:Landroid/view/View;

.field ivImg:Lcom/market2345/customview/FillWidthImageView;

.field final synthetic this$0:Lcom/market2345/topic/TopicExpandableGridAdapter;

.field tvMsg:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/market2345/topic/TopicExpandableGridAdapter;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;->this$0:Lcom/market2345/topic/TopicExpandableGridAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/topic/TopicExpandableGridAdapter;Lcom/market2345/topic/TopicExpandableGridAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/topic/TopicExpandableGridAdapter;
    .param p2, "x1"    # Lcom/market2345/topic/TopicExpandableGridAdapter$1;

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/market2345/topic/TopicExpandableGridAdapter$GroupViewHolder;-><init>(Lcom/market2345/topic/TopicExpandableGridAdapter;)V

    return-void
.end method
