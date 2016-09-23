.class public Lcom/market2345/customview/ScrollListenAbleScrollView;
.super Landroid/widget/ScrollView;
.source "ScrollListenAbleScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/customview/ScrollListenAbleScrollView$OnScrollViewListener;
    }
.end annotation


# instance fields
.field private mOnScrollViewListener:Lcom/market2345/customview/ScrollListenAbleScrollView$OnScrollViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 6
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/customview/ScrollListenAbleScrollView;->mOnScrollViewListener:Lcom/market2345/customview/ScrollListenAbleScrollView$OnScrollViewListener;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/market2345/customview/ScrollListenAbleScrollView;->mOnScrollViewListener:Lcom/market2345/customview/ScrollListenAbleScrollView$OnScrollViewListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/market2345/customview/ScrollListenAbleScrollView$OnScrollViewListener;->onScrollChanged(Lcom/market2345/customview/ScrollListenAbleScrollView;IIII)V

    .line 37
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 38
    return-void
.end method

.method public setOnScrollViewListener(Lcom/market2345/customview/ScrollListenAbleScrollView$OnScrollViewListener;)V
    .locals 0
    .param p1, "l"    # Lcom/market2345/customview/ScrollListenAbleScrollView$OnScrollViewListener;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/market2345/customview/ScrollListenAbleScrollView;->mOnScrollViewListener:Lcom/market2345/customview/ScrollListenAbleScrollView$OnScrollViewListener;

    .line 18
    return-void
.end method
