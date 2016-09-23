.class public Lcom/market2345/detail/model/CommentListDataNew;
.super Ljava/lang/Object;
.source "CommentListDataNew.java"


# instance fields
.field public all:I

.field public currentPage:I

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/model/CommentDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field public pageCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v1, p0, Lcom/market2345/detail/model/CommentListDataNew;->all:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    .line 19
    iput v1, p0, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    .line 20
    return-void
.end method


# virtual methods
.method public currentSize()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getAll()I
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 31
    iget v0, p0, Lcom/market2345/detail/model/CommentListDataNew;->all:I

    .line 35
    :goto_0
    return v0

    .line 32
    :cond_0
    iget v0, p0, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    iget v1, p0, Lcom/market2345/detail/model/CommentListDataNew;->pageCount:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    if-nez v0, :cond_2

    .line 33
    :cond_1
    iget v0, p0, Lcom/market2345/detail/model/CommentListDataNew;->all:I

    iget-object v1, p0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    mul-int/lit8 v1, v1, 0xa

    sub-int/2addr v0, v1

    goto :goto_0

    .line 35
    :cond_2
    iget v0, p0, Lcom/market2345/detail/model/CommentListDataNew;->all:I

    iget-object v1, p0, Lcom/market2345/detail/model/CommentListDataNew;->data:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public totalSize()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/market2345/detail/model/CommentListDataNew;->all:I

    return v0
.end method
