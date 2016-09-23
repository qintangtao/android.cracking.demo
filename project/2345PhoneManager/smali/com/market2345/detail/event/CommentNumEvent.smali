.class public Lcom/market2345/detail/event/CommentNumEvent;
.super Ljava/lang/Object;
.source "CommentNumEvent.java"


# instance fields
.field private allNum:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "allNum"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/market2345/detail/event/CommentNumEvent;->allNum:I

    .line 10
    return-void
.end method


# virtual methods
.method public getAllNum()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/market2345/detail/event/CommentNumEvent;->allNum:I

    return v0
.end method

.method public setAllNum(I)V
    .locals 0
    .param p1, "allNum"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/market2345/detail/event/CommentNumEvent;->allNum:I

    .line 18
    return-void
.end method
