.class public Lcom/market2345/detail/event/CommentEvent;
.super Ljava/lang/Object;
.source "CommentEvent.java"


# instance fields
.field private commentInfo:Lcom/market2345/model/CommentDetailInfo;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/market2345/model/CommentDetailInfo;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "commentDetailInfo"    # Lcom/market2345/model/CommentDetailInfo;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/market2345/detail/event/CommentEvent;->tag:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/market2345/detail/event/CommentEvent;->commentInfo:Lcom/market2345/model/CommentDetailInfo;

    .line 17
    return-void
.end method


# virtual methods
.method public getCommentInfo()Lcom/market2345/model/CommentDetailInfo;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/detail/event/CommentEvent;->commentInfo:Lcom/market2345/model/CommentDetailInfo;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/market2345/detail/event/CommentEvent;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public setCommentInfo(Lcom/market2345/model/CommentDetailInfo;)V
    .locals 0
    .param p1, "commentInfo"    # Lcom/market2345/model/CommentDetailInfo;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/market2345/detail/event/CommentEvent;->commentInfo:Lcom/market2345/model/CommentDetailInfo;

    .line 33
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/market2345/detail/event/CommentEvent;->tag:Ljava/lang/String;

    .line 29
    return-void
.end method
