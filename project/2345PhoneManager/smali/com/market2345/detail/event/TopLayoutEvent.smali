.class public Lcom/market2345/detail/event/TopLayoutEvent;
.super Ljava/lang/Object;
.source "TopLayoutEvent.java"


# instance fields
.field private dy:F

.field private topHeight:I


# direct methods
.method public constructor <init>(FI)V
    .locals 0
    .param p1, "dy"    # F
    .param p2, "topHeight"    # I

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/market2345/detail/event/TopLayoutEvent;->dy:F

    .line 11
    iput p2, p0, Lcom/market2345/detail/event/TopLayoutEvent;->topHeight:I

    .line 12
    return-void
.end method


# virtual methods
.method public getDy()F
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/market2345/detail/event/TopLayoutEvent;->dy:F

    return v0
.end method

.method public getTopHeight()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/market2345/detail/event/TopLayoutEvent;->topHeight:I

    return v0
.end method

.method public setDy(F)V
    .locals 0
    .param p1, "dy"    # F

    .prologue
    .line 23
    iput p1, p0, Lcom/market2345/detail/event/TopLayoutEvent;->dy:F

    .line 24
    return-void
.end method

.method public setTopHeight(I)V
    .locals 0
    .param p1, "topHeight"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/market2345/detail/event/TopLayoutEvent;->topHeight:I

    .line 28
    return-void
.end method
