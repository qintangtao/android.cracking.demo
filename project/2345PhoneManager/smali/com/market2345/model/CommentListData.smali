.class public Lcom/market2345/model/CommentListData;
.super Lcom/market2345/httpnew/BaseResponseData;
.source "CommentListData.java"


# instance fields
.field public CommentInfoString:Ljava/lang/String;

.field public bufferComments:Lcom/market2345/model/CommentInfo;


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
    const-class v1, Lcom/market2345/model/CommentInfo;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/model/CommentInfo;

    iput-object v1, p0, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    .line 18
    iput-object p1, p0, Lcom/market2345/model/CommentListData;->CommentInfoString:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/market2345/model/CommentListData;->keyWord:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/model/CommentListData;->keyWord:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public hasMore()Z
    .locals 2

    .prologue
    .line 11
    iget-object v0, p0, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v0, v0, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v0, v0, Lcom/market2345/model/CommentsPageInfo;->page:I

    iget-object v1, p0, Lcom/market2345/model/CommentListData;->bufferComments:Lcom/market2345/model/CommentInfo;

    iget-object v1, v1, Lcom/market2345/model/CommentInfo;->pageinfo:Lcom/market2345/model/CommentsPageInfo;

    iget v1, v1, Lcom/market2345/model/CommentsPageInfo;->pagecount:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
