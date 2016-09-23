.class public Lcom/market2345/home/controller/SlidingMenuController;
.super Ljava/lang/Object;
.source "SlidingMenuController.java"


# instance fields
.field private mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;


# direct methods
.method public constructor <init>(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;)V
    .locals 0
    .param p1, "slidingMenu"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .line 24
    return-void
.end method

.method private isMenuNotNull()Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public closeMenu()V
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle()V

    .line 43
    :cond_0
    return-void
.end method

.method public getMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method public initForHome()V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowWidthRes(I)V

    .line 122
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f0202d8

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setShadowDrawable(I)V

    .line 123
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x7f080036

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setBehindOffsetRes(I)V

    .line 124
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const v1, 0x3eb33333    # 0.35f

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setFadeDegree(F)V

    .line 125
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public isMenuClosed()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-direct {p0}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuNotNull()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 150
    :cond_0
    return v0
.end method

.method public isMenuOpen()Z
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openMenu()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle()V

    .line 54
    :cond_0
    return-void
.end method

.method public setMenuCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnCloseListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnCloseListener;)V

    .line 94
    :cond_0
    return-void
.end method

.method public setMenuClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnClosedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnClosedListener;)V

    .line 83
    :cond_0
    return-void
.end method

.method public setMenuOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setOnOpenedListener(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$OnOpenedListener;)V

    .line 74
    :cond_0
    return-void
.end method

.method public setMenuTouchModeAbove(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public setMenuTouchModeBehind(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setTouchModeBehind(I)V

    .line 117
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/market2345/home/controller/SlidingMenuController;->isMenuNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/market2345/home/controller/SlidingMenuController;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle()V

    .line 65
    :cond_0
    return-void
.end method
