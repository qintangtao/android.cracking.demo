.class public Lcom/market2345/home/controller/PopupWindowController;
.super Ljava/lang/Object;
.source "PopupWindowController.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPage:Lcom/market2345/guide/GuidePage;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/market2345/home/controller/PopupWindowController;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private isWindowNotNull()Z
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public buildWindow(Ljava/lang/String;)Z
    .locals 1
    .param p1, "windowKey"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/market2345/guide/GuideFactory;->getGuidePage(Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/guide/GuidePage;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPage:Lcom/market2345/guide/GuidePage;

    .line 58
    iget-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPage:Lcom/market2345/guide/GuidePage;

    invoke-interface {v0}, Lcom/market2345/guide/GuidePage;->isDisplayed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPage:Lcom/market2345/guide/GuidePage;

    invoke-interface {v0}, Lcom/market2345/guide/GuidePage;->buildPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 66
    :goto_0
    invoke-direct {p0}, Lcom/market2345/home/controller/PopupWindowController;->isWindowNotNull()Z

    move-result v0

    return v0

    .line 64
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method public dismissWindow()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/market2345/home/controller/PopupWindowController;->isWindowNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 50
    :cond_0
    return-void
.end method

.method public isWidnowShowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "windowKey"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/market2345/guide/GuideFactory;->getGuidePage(Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/guide/GuidePage;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPage:Lcom/market2345/guide/GuidePage;

    .line 99
    iget-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPage:Lcom/market2345/guide/GuidePage;

    invoke-interface {v0}, Lcom/market2345/guide/GuidePage;->isDisplayed()Z

    move-result v0

    return v0
.end method

.method public isWindowShowing()Z
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/market2345/home/controller/PopupWindowController;->isWindowNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWindowHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/market2345/home/controller/PopupWindowController;->isWindowNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPage:Lcom/market2345/guide/GuidePage;

    invoke-interface {v0, p1}, Lcom/market2345/guide/GuidePage;->setHandler(Landroid/os/Handler;)V

    .line 78
    :cond_0
    return-void
.end method

.method public showWindowAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/market2345/home/controller/PopupWindowController;->isWindowNotNull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 39
    iget-object v0, p0, Lcom/market2345/home/controller/PopupWindowController;->mPage:Lcom/market2345/guide/GuidePage;

    invoke-interface {v0}, Lcom/market2345/guide/GuidePage;->saveDisplayed()V

    .line 41
    :cond_0
    return-void
.end method
