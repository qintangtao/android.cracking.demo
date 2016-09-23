.class public Lcom/market2345/guide/GuideFactory;
.super Ljava/lang/Object;
.source "GuideFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGuidePage(Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/guide/GuidePage;
    .locals 2
    .param p0, "pageKey"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "page":Lcom/market2345/guide/GuidePage;
    const-string v1, "showunionicon"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    new-instance v0, Lcom/market2345/guide/ShowUnionIconPage;

    .end local v0    # "page":Lcom/market2345/guide/GuidePage;
    invoke-direct {v0}, Lcom/market2345/guide/ShowUnionIconPage;-><init>()V

    .line 20
    .restart local v0    # "page":Lcom/market2345/guide/GuidePage;
    invoke-interface {v0, p1}, Lcom/market2345/guide/GuidePage;->setContext(Landroid/content/Context;)V

    .line 36
    :cond_0
    :goto_0
    return-object v0

    .line 22
    :cond_1
    const-string v1, "check_leftmenu"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 24
    new-instance v0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;

    .end local v0    # "page":Lcom/market2345/guide/GuidePage;
    invoke-direct {v0}, Lcom/market2345/guide/ShowSlidingMenuButtonPage;-><init>()V

    .line 25
    .restart local v0    # "page":Lcom/market2345/guide/GuidePage;
    invoke-interface {v0, p1}, Lcom/market2345/guide/GuidePage;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 27
    :cond_2
    const-string v1, "check_slide"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    new-instance v0, Lcom/market2345/guide/ShowViewPagerSlidingPage;

    .end local v0    # "page":Lcom/market2345/guide/GuidePage;
    invoke-direct {v0}, Lcom/market2345/guide/ShowViewPagerSlidingPage;-><init>()V

    .line 30
    .restart local v0    # "page":Lcom/market2345/guide/GuidePage;
    invoke-interface {v0, p1}, Lcom/market2345/guide/GuidePage;->setContext(Landroid/content/Context;)V

    goto :goto_0

    .line 32
    :cond_3
    const-string v1, "showhoticon"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    new-instance v0, Lcom/market2345/guide/ShowHotIconPage;

    .end local v0    # "page":Lcom/market2345/guide/GuidePage;
    invoke-direct {v0}, Lcom/market2345/guide/ShowHotIconPage;-><init>()V

    .line 34
    .restart local v0    # "page":Lcom/market2345/guide/GuidePage;
    invoke-interface {v0, p1}, Lcom/market2345/guide/GuidePage;->setContext(Landroid/content/Context;)V

    goto :goto_0
.end method
