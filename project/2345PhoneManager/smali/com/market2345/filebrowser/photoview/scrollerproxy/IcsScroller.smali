.class public Lcom/market2345/filebrowser/photoview/scrollerproxy/IcsScroller;
.super Lcom/market2345/filebrowser/photoview/scrollerproxy/GingerScroller;
.source "IcsScroller.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/photoview/scrollerproxy/GingerScroller;-><init>(Landroid/content/Context;)V

    .line 28
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/market2345/filebrowser/photoview/scrollerproxy/IcsScroller;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    return v0
.end method
