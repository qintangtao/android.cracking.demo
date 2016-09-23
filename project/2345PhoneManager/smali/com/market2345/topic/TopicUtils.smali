.class public Lcom/market2345/topic/TopicUtils;
.super Ljava/lang/Object;
.source "TopicUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/market2345/topic/TopicUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/topic/TopicUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static startDetailTopicActivity(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "softId"    # I

    .prologue
    .line 38
    sget-object v1, Lcom/market2345/topic/TopicUtils;->TAG:Ljava/lang/String;

    const-string v2, "startDetailTopicActivity"

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/detail/DetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "sid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 41
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 42
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 43
    return-void
.end method

.method public static startTopic(Lcom/market2345/model/TopicItem;Ljava/lang/String;)V
    .locals 4
    .param p0, "topicItem"    # Lcom/market2345/model/TopicItem;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 46
    if-eqz p0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/market2345/model/TopicItem;->type:Ljava/lang/String;

    .line 48
    .local v0, "type":Ljava/lang/String;
    const-string v1, "web"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 49
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/market2345/model/TopicItem;->topicId:I

    invoke-static {v1, v2}, Lcom/market2345/topic/TopicUtils;->startWebViewTopicActivity(Landroid/content/Context;I)V

    .line 56
    :cond_0
    :goto_0
    const-string v1, "type_recommend"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 57
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Banner_Main_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/market2345/model/TopicItem;->topicId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    :cond_1
    :goto_1
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zhuanti_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/market2345/model/TopicItem;->topicId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    .end local v0    # "type":Ljava/lang/String;
    :cond_2
    return-void

    .line 50
    .restart local v0    # "type":Ljava/lang/String;
    :cond_3
    const-string v1, "tpl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 51
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/market2345/model/TopicItem;->topicId:I

    iget v3, p0, Lcom/market2345/model/TopicItem;->template:I

    invoke-static {v1, v2, v3}, Lcom/market2345/topic/TopicUtils;->startTopicActivity(Landroid/content/Context;II)V

    goto :goto_0

    .line 52
    :cond_4
    const-string v1, "detail"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/market2345/model/TopicItem;->softId:I

    invoke-static {v1, v2}, Lcom/market2345/topic/TopicUtils;->startDetailTopicActivity(Landroid/content/Context;I)V

    goto :goto_0

    .line 58
    :cond_5
    const-string v1, "type_soft"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 59
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Banner_Soft_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/market2345/model/TopicItem;->topicId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :cond_6
    const-string v1, "type_game"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Banner_Game_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/market2345/model/TopicItem;->topicId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static startTopicActivity(Landroid/content/Context;II)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "topicId"    # I
    .param p2, "templateId"    # I

    .prologue
    .line 18
    sget-object v1, Lcom/market2345/topic/TopicUtils;->TAG:Ljava/lang/String;

    const-string v2, "startTopicActivity"

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/topic/TopicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "topicId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21
    const-string v1, "topicTemplate"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 22
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    return-void
.end method

.method public static startWebViewTopicActivity(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "topicId"    # I

    .prologue
    .line 27
    sget-object v1, Lcom/market2345/topic/TopicUtils;->TAG:Ljava/lang/String;

    const-string v2, "startWebViewTopicActivity"

    invoke-static {v1, v2}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/topic/WebViewTopicActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "topicId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 31
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method
