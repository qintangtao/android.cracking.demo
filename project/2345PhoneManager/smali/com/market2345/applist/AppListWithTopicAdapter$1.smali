.class Lcom/market2345/applist/AppListWithTopicAdapter$1;
.super Ljava/lang/Object;
.source "AppListWithTopicAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/applist/AppListWithTopicAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/AppListWithTopicAdapter;

.field final synthetic val$position:I

.field final synthetic val$topic:Lcom/market2345/model/TopicItem;


# direct methods
.method constructor <init>(Lcom/market2345/applist/AppListWithTopicAdapter;ILcom/market2345/model/TopicItem;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/market2345/applist/AppListWithTopicAdapter$1;->this$0:Lcom/market2345/applist/AppListWithTopicAdapter;

    iput p2, p0, Lcom/market2345/applist/AppListWithTopicAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/market2345/applist/AppListWithTopicAdapter$1;->val$topic:Lcom/market2345/model/TopicItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 144
    iget v1, p0, Lcom/market2345/applist/AppListWithTopicAdapter$1;->val$position:I

    add-int/lit8 v0, v1, 0x1

    .line 145
    .local v0, "clickPostion":I
    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 146
    const-string v1, "type_recommend"

    iget-object v2, p0, Lcom/market2345/applist/AppListWithTopicAdapter$1;->this$0:Lcom/market2345/applist/AppListWithTopicAdapter;

    # getter for: Lcom/market2345/applist/AppListWithTopicAdapter;->mTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/applist/AppListWithTopicAdapter;->access$000(Lcom/market2345/applist/AppListWithTopicAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/market2345/applist/AppListWithTopicAdapter$1;->this$0:Lcom/market2345/applist/AppListWithTopicAdapter;

    # getter for: Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/market2345/applist/AppListWithTopicAdapter;->access$100(Lcom/market2345/applist/AppListWithTopicAdapter;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location_Main_Click_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/market2345/applist/AppListWithTopicAdapter$1;->val$topic:Lcom/market2345/model/TopicItem;

    iget-object v2, p0, Lcom/market2345/applist/AppListWithTopicAdapter$1;->this$0:Lcom/market2345/applist/AppListWithTopicAdapter;

    # getter for: Lcom/market2345/applist/AppListWithTopicAdapter;->mTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/applist/AppListWithTopicAdapter;->access$000(Lcom/market2345/applist/AppListWithTopicAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/market2345/topic/TopicUtils;->startTopic(Lcom/market2345/model/TopicItem;Ljava/lang/String;)V

    .line 156
    return-void

    .line 149
    :cond_1
    const-string v1, "type_soft"

    iget-object v2, p0, Lcom/market2345/applist/AppListWithTopicAdapter$1;->this$0:Lcom/market2345/applist/AppListWithTopicAdapter;

    # getter for: Lcom/market2345/applist/AppListWithTopicAdapter;->mTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/applist/AppListWithTopicAdapter;->access$000(Lcom/market2345/applist/AppListWithTopicAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/market2345/applist/AppListWithTopicAdapter$1;->this$0:Lcom/market2345/applist/AppListWithTopicAdapter;

    # getter for: Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/market2345/applist/AppListWithTopicAdapter;->access$100(Lcom/market2345/applist/AppListWithTopicAdapter;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location_Soft_Click_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_2
    const-string v1, "type_game"

    iget-object v2, p0, Lcom/market2345/applist/AppListWithTopicAdapter$1;->this$0:Lcom/market2345/applist/AppListWithTopicAdapter;

    # getter for: Lcom/market2345/applist/AppListWithTopicAdapter;->mTag:Ljava/lang/String;
    invoke-static {v2}, Lcom/market2345/applist/AppListWithTopicAdapter;->access$000(Lcom/market2345/applist/AppListWithTopicAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/market2345/applist/AppListWithTopicAdapter$1;->this$0:Lcom/market2345/applist/AppListWithTopicAdapter;

    # getter for: Lcom/market2345/applist/AppListWithTopicAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/market2345/applist/AppListWithTopicAdapter;->access$100(Lcom/market2345/applist/AppListWithTopicAdapter;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Location_Game_Click_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
