.class interface abstract Lcom/market2345/util/PagedView$Page;
.super Ljava/lang/Object;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/util/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Page"
.end annotation


# virtual methods
.method public abstract getChildOnPageAt(I)Landroid/view/View;
.end method

.method public abstract getPageChildCount()I
.end method

.method public abstract indexOfChildOnPage(Landroid/view/View;)I
.end method

.method public abstract removeAllViewsOnPage()V
.end method

.method public abstract removeViewOnPageAt(I)V
.end method
