.class Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;
.super Ljava/lang/Object;
.source "TopicExpandableListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/topic/TopicExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupViewHolder"
.end annotation


# instance fields
.field divider:Landroid/view/View;

.field headerDivider:Landroid/view/View;

.field ivImg:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/market2345/topic/TopicExpandableListAdapter;

.field tvMsg:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/market2345/topic/TopicExpandableListAdapter;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;->this$0:Lcom/market2345/topic/TopicExpandableListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/topic/TopicExpandableListAdapter;Lcom/market2345/topic/TopicExpandableListAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/topic/TopicExpandableListAdapter;
    .param p2, "x1"    # Lcom/market2345/topic/TopicExpandableListAdapter$1;

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/market2345/topic/TopicExpandableListAdapter$GroupViewHolder;-><init>(Lcom/market2345/topic/TopicExpandableListAdapter;)V

    return-void
.end method
