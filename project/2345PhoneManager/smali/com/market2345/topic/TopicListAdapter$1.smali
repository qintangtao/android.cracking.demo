.class Lcom/market2345/topic/TopicListAdapter$1;
.super Ljava/lang/Object;
.source "TopicListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/topic/TopicListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/topic/TopicListAdapter;

.field final synthetic val$topicInfo:Lcom/market2345/topic/model/TopicInfo;


# direct methods
.method constructor <init>(Lcom/market2345/topic/TopicListAdapter;Lcom/market2345/topic/model/TopicInfo;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/market2345/topic/TopicListAdapter$1;->this$0:Lcom/market2345/topic/TopicListAdapter;

    iput-object p2, p0, Lcom/market2345/topic/TopicListAdapter$1;->val$topicInfo:Lcom/market2345/topic/model/TopicInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 74
    iget-object v2, p0, Lcom/market2345/topic/TopicListAdapter$1;->val$topicInfo:Lcom/market2345/topic/model/TopicInfo;

    iget-object v2, v2, Lcom/market2345/topic/model/TopicInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 75
    .local v1, "topicId":I
    iget-object v2, p0, Lcom/market2345/topic/TopicListAdapter$1;->val$topicInfo:Lcom/market2345/topic/model/TopicInfo;

    iget-object v2, v2, Lcom/market2345/topic/model/TopicInfo;->template:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 76
    .local v0, "templateId":I
    if-lez v1, :cond_0

    if-lez v0, :cond_0

    .line 77
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/market2345/topic/TopicUtils;->startTopicActivity(Landroid/content/Context;II)V

    .line 78
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Main_Zhuanti_list_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method
