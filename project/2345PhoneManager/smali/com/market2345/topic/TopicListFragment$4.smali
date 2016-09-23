.class Lcom/market2345/topic/TopicListFragment$4;
.super Ljava/lang/Object;
.source "TopicListFragment.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/topic/TopicListFragment;->setHttpCallback(Lcom/market2345/httpnew/HttpTransactionBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/topic/TopicListFragment;


# direct methods
.method constructor <init>(Lcom/market2345/topic/TopicListFragment;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 6
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 227
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    # setter for: Lcom/market2345/topic/TopicListFragment;->loading:Z
    invoke-static {v2, v4}, Lcom/market2345/topic/TopicListFragment;->access$102(Lcom/market2345/topic/TopicListFragment;Z)Z

    .line 228
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v0

    .line 229
    .local v0, "success":Z
    if-eqz v0, :cond_4

    .line 230
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    check-cast p2, Lcom/market2345/topic/model/TopicListData;

    .end local p2    # "response":Lcom/market2345/httpnew/ResponseCluster;
    iput-object p2, v2, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    .line 231
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    iget-object v2, v2, Lcom/market2345/topic/model/TopicListData;->bufferTopics:Lcom/market2345/topic/model/PageTopicList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    iget-object v2, v2, Lcom/market2345/topic/model/TopicListData;->bufferTopics:Lcom/market2345/topic/model/PageTopicList;

    iget-object v2, v2, Lcom/market2345/topic/model/PageTopicList;->list:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 232
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    iget-object v2, v2, Lcom/market2345/topic/model/TopicListData;->bufferTopics:Lcom/market2345/topic/model/PageTopicList;

    iget-object v1, v2, Lcom/market2345/topic/model/PageTopicList;->list:Ljava/util/ArrayList;

    .line 233
    .local v1, "topicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/topic/model/TopicInfo;>;"
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mTopicList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 234
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    iget-object v2, v2, Lcom/market2345/topic/model/TopicListData;->bufferTopics:Lcom/market2345/topic/model/PageTopicList;

    iget-object v2, v2, Lcom/market2345/topic/model/PageTopicList;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v2, v2, Lcom/market2345/model/PageInfo;->page:I

    if-ne v2, v5, :cond_0

    .line 235
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v3, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v3, v3, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    iget-object v3, v3, Lcom/market2345/topic/model/TopicListData;->pageTopicString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/market2345/topic/TopicListFragment;->saveCacheData(Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 239
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mLoading:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    iget-object v2, v2, Lcom/market2345/topic/model/TopicListData;->bufferTopics:Lcom/market2345/topic/model/PageTopicList;

    iget-object v2, v2, Lcom/market2345/topic/model/PageTopicList;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v2, v2, Lcom/market2345/model/PageInfo;->page:I

    iget-object v3, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v3, v3, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    iget-object v3, v3, Lcom/market2345/topic/model/TopicListData;->bufferTopics:Lcom/market2345/topic/model/PageTopicList;

    iget-object v3, v3, Lcom/market2345/topic/model/PageTopicList;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v3, v3, Lcom/market2345/model/PageInfo;->pagecount:I

    if-ne v2, v3, :cond_1

    .line 242
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    invoke-virtual {v2, v4, v4, v4, v5}, Lcom/market2345/topic/TopicListFragment;->changeVisiable(IIII)V

    .line 248
    :goto_0
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mAdapter:Lcom/market2345/topic/TopicListAdapter;

    invoke-virtual {v2}, Lcom/market2345/topic/TopicListAdapter;->notifyDataSetChanged()V

    .line 249
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v2}, Lcom/market2345/httpnew/HttpTransaction;->moveToNextPage()V

    .line 260
    .end local v1    # "topicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/topic/model/TopicInfo;>;"
    :goto_1
    return-void

    .line 243
    .restart local v1    # "topicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/topic/model/TopicInfo;>;"
    :cond_1
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mDatas:Lcom/market2345/topic/model/TopicListData;

    iget-object v2, v2, Lcom/market2345/topic/model/TopicListData;->bufferTopics:Lcom/market2345/topic/model/PageTopicList;

    iget-object v2, v2, Lcom/market2345/topic/model/PageTopicList;->pageinfo:Lcom/market2345/model/PageInfo;

    iget v2, v2, Lcom/market2345/model/PageInfo;->page:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    .line 244
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    invoke-virtual {v2, v4, v4, v5, v4}, Lcom/market2345/topic/TopicListFragment;->changeVisiable(IIII)V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    invoke-virtual {v2, v5, v4, v4, v4}, Lcom/market2345/topic/TopicListFragment;->changeVisiable(IIII)V

    goto :goto_0

    .line 252
    .end local v1    # "topicList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/topic/model/TopicInfo;>;"
    :cond_3
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v3, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v3, v3, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v3}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v3

    # invokes: Lcom/market2345/topic/TopicListFragment;->showError(I)V
    invoke-static {v2, v3}, Lcom/market2345/topic/TopicListFragment;->access$200(Lcom/market2345/topic/TopicListFragment;I)V

    .line 253
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v2, v2, Lcom/market2345/topic/TopicListFragment;->mAdapter:Lcom/market2345/topic/TopicListAdapter;

    invoke-virtual {v2}, Lcom/market2345/topic/TopicListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 257
    .restart local p2    # "response":Lcom/market2345/httpnew/ResponseCluster;
    :cond_4
    iget-object v2, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v3, p0, Lcom/market2345/topic/TopicListFragment$4;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v3, v3, Lcom/market2345/topic/TopicListFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v3}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v3

    # invokes: Lcom/market2345/topic/TopicListFragment;->showError(I)V
    invoke-static {v2, v3}, Lcom/market2345/topic/TopicListFragment;->access$200(Lcom/market2345/topic/TopicListFragment;I)V

    goto :goto_1
.end method
