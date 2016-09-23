.class public Lcom/market2345/topic/model/TopicListData;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "TopicListData.java"


# instance fields
.field public bufferTopics:Lcom/market2345/topic/model/PageTopicList;

.field public pageTopicString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/market2345/httpnew/BaseResponseData;-><init>()V

    return-void
.end method


# virtual methods
.method public fill(Ljava/lang/String;)V
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 17
    .local v0, "gson":Lcom/google/gson/Gson;
    const-class v1, Lcom/market2345/topic/model/PageTopicList;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/topic/model/PageTopicList;

    iput-object v1, p0, Lcom/market2345/topic/model/TopicListData;->bufferTopics:Lcom/market2345/topic/model/PageTopicList;

    .line 18
    iput-object p1, p0, Lcom/market2345/topic/model/TopicListData;->pageTopicString:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public hasMore()Z
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/market2345/topic/model/TopicListData;->bufferTopics:Lcom/market2345/topic/model/PageTopicList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/topic/model/TopicListData;->bufferTopics:Lcom/market2345/topic/model/PageTopicList;

    iget-object v0, v0, Lcom/market2345/topic/model/PageTopicList;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v0, v0, Lcom/market2345/model/PageInfo;->page:I

    iget-object v1, p0, Lcom/market2345/topic/model/TopicListData;->bufferTopics:Lcom/market2345/topic/model/PageTopicList;

    iget-object v1, v1, Lcom/market2345/topic/model/PageTopicList;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v1, v1, Lcom/market2345/model/PageInfo;->pagecount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
