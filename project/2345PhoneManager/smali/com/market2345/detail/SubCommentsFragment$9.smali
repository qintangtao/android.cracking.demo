.class Lcom/market2345/detail/SubCommentsFragment$9;
.super Ljava/lang/Object;
.source "SubCommentsFragment.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/detail/SubCommentsFragment;->setHttpCallback(Lcom/market2345/httpnew/HttpTransactionBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/detail/SubCommentsFragment;


# direct methods
.method constructor <init>(Lcom/market2345/detail/SubCommentsFragment;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Lcom/market2345/detail/SubCommentsFragment$9;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 3
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 785
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$9;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-virtual {v1}, Lcom/market2345/detail/SubCommentsFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$9;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    const/4 v2, 0x0

    # setter for: Lcom/market2345/detail/SubCommentsFragment;->loading:Z
    invoke-static {v1, v2}, Lcom/market2345/detail/SubCommentsFragment;->access$1502(Lcom/market2345/detail/SubCommentsFragment;Z)Z

    .line 787
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v0

    .line 788
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 789
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$9;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    check-cast p2, Lcom/market2345/model/CommentListData;

    .end local p2    # "response":Lcom/market2345/httpnew/ResponseCluster;
    iput-object p2, v1, Lcom/market2345/detail/SubCommentsFragment;->mDatas:Lcom/market2345/model/CommentListData;

    .line 790
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$9;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment$9;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    iget-object v2, v2, Lcom/market2345/detail/SubCommentsFragment;->mDatas:Lcom/market2345/model/CommentListData;

    # invokes: Lcom/market2345/detail/SubCommentsFragment;->setCommentData(Lcom/market2345/model/CommentListData;)V
    invoke-static {v1, v2}, Lcom/market2345/detail/SubCommentsFragment;->access$1600(Lcom/market2345/detail/SubCommentsFragment;Lcom/market2345/model/CommentListData;)V

    .line 795
    .end local v0    # "success":Z
    :cond_0
    :goto_0
    return-void

    .line 792
    .restart local v0    # "success":Z
    .restart local p2    # "response":Lcom/market2345/httpnew/ResponseCluster;
    :cond_1
    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$9;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment$9;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    iget-object v2, v2, Lcom/market2345/detail/SubCommentsFragment;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v2}, Lcom/market2345/httpnew/HttpTransaction;->getCurrentPage()I

    move-result v2

    # invokes: Lcom/market2345/detail/SubCommentsFragment;->showError(I)V
    invoke-static {v1, v2}, Lcom/market2345/detail/SubCommentsFragment;->access$1700(Lcom/market2345/detail/SubCommentsFragment;I)V

    goto :goto_0
.end method
