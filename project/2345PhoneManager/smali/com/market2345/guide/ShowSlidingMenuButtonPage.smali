.class Lcom/market2345/guide/ShowSlidingMenuButtonPage;
.super Ljava/lang/Object;
.source "ShowSlidingMenuButtonPage.java"

# interfaces
.implements Lcom/market2345/guide/GuidePage;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mWindow:Landroid/widget/PopupWindow;

.field private popupWindowView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/guide/ShowSlidingMenuButtonPage;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/guide/ShowSlidingMenuButtonPage;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private setHandler()V
    .locals 3

    .prologue
    .line 105
    iget-object v1, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->popupWindowView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->popupWindowView:Landroid/view/View;

    const v2, 0x7f090216

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    .local v0, "kownButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 111
    new-instance v1, Lcom/market2345/guide/ShowSlidingMenuButtonPage$1;

    invoke-direct {v1, p0}, Lcom/market2345/guide/ShowSlidingMenuButtonPage$1;-><init>(Lcom/market2345/guide/ShowSlidingMenuButtonPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->popupWindowView:Landroid/view/View;

    const v2, 0x7f09029c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Lcom/market2345/guide/ShowSlidingMenuButtonPage$2;

    invoke-direct {v2, p0}, Lcom/market2345/guide/ShowSlidingMenuButtonPage$2;-><init>(Lcom/market2345/guide/ShowSlidingMenuButtonPage;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .end local v0    # "kownButton":Landroid/widget/Button;
    :cond_1
    return-void
.end method


# virtual methods
.method public buildDisplayView()Landroid/view/View;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->popupWindowView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030076

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->popupWindowView:Landroid/view/View;

    .line 97
    invoke-direct {p0}, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->setHandler()V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->popupWindowView:Landroid/view/View;

    return-object v0
.end method

.method public buildPopupWindow()Landroid/widget/PopupWindow;
    .locals 5

    .prologue
    .line 48
    iget-object v0, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->mWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 50
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->buildDisplayView()Landroid/view/View;

    move-result-object v2

    invoke-static {}, Lcom/market2345/slidemenu/DataCacheForViewPager;->getInstance()Lcom/market2345/slidemenu/DataCacheForViewPager;

    move-result-object v0

    const-string v3, "window_width"

    invoke-virtual {v0, v3}, Lcom/market2345/slidemenu/DataCacheForViewPager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Lcom/market2345/slidemenu/DataCacheForViewPager;->getInstance()Lcom/market2345/slidemenu/DataCacheForViewPager;

    move-result-object v0

    const-string v4, "window_height"

    invoke-virtual {v0, v4}, Lcom/market2345/slidemenu/DataCacheForViewPager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v1, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->mWindow:Landroid/widget/PopupWindow;

    .line 53
    :cond_0
    invoke-direct {p0}, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->setHandler()V

    .line 54
    iget-object v0, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->mWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getPageTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    const-string v0, "check_leftmenu"

    return-object v0
.end method

.method public isDisplayed()Z
    .locals 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "check_leftmenu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveDisplayed()V
    .locals 4

    .prologue
    .line 68
    iget-object v2, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 69
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "check_leftmenu"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 72
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->mHandler:Landroid/os/Handler;

    .line 41
    invoke-direct {p0}, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->setHandler()V

    .line 42
    return-void
.end method
