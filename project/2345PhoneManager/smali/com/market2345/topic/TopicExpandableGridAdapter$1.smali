.class Lcom/market2345/topic/TopicExpandableGridAdapter$1;
.super Ljava/lang/Object;
.source "TopicExpandableGridAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/topic/TopicExpandableGridAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/topic/TopicExpandableGridAdapter;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/market2345/topic/TopicExpandableGridAdapter;I)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/market2345/topic/TopicExpandableGridAdapter$1;->this$0:Lcom/market2345/topic/TopicExpandableGridAdapter;

    iput p2, p0, Lcom/market2345/topic/TopicExpandableGridAdapter$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    iget-object v1, p0, Lcom/market2345/topic/TopicExpandableGridAdapter$1;->this$0:Lcom/market2345/topic/TopicExpandableGridAdapter;

    # getter for: Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/market2345/topic/TopicExpandableGridAdapter;->access$200(Lcom/market2345/topic/TopicExpandableGridAdapter;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zhuanti_AppDetail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/topic/TopicExpandableGridAdapter$1;->this$0:Lcom/market2345/topic/TopicExpandableGridAdapter;

    # getter for: Lcom/market2345/topic/TopicExpandableGridAdapter;->mTopicId:I
    invoke-static {v3}, Lcom/market2345/topic/TopicExpandableGridAdapter;->access$300(Lcom/market2345/topic/TopicExpandableGridAdapter;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 262
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/market2345/topic/TopicExpandableGridAdapter$1;->this$0:Lcom/market2345/topic/TopicExpandableGridAdapter;

    # getter for: Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/market2345/topic/TopicExpandableGridAdapter;->access$200(Lcom/market2345/topic/TopicExpandableGridAdapter;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/market2345/detail/DetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "sid"

    iget v2, p0, Lcom/market2345/topic/TopicExpandableGridAdapter$1;->val$id:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    iget-object v1, p0, Lcom/market2345/topic/TopicExpandableGridAdapter$1;->this$0:Lcom/market2345/topic/TopicExpandableGridAdapter;

    # getter for: Lcom/market2345/topic/TopicExpandableGridAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/market2345/topic/TopicExpandableGridAdapter;->access$200(Lcom/market2345/topic/TopicExpandableGridAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 265
    return-void
.end method
