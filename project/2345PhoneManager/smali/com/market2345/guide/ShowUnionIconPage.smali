.class Lcom/market2345/guide/ShowUnionIconPage;
.super Ljava/lang/Object;
.source "ShowUnionIconPage.java"

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
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setHandler()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/market2345/guide/ShowUnionIconPage;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/guide/ShowUnionIconPage;->popupWindowView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/market2345/guide/ShowUnionIconPage;->popupWindowView:Landroid/view/View;

    check-cast v0, Lcom/market2345/guide/customview/CustomShowUnionIconView;

    iget-object v1, p0, Lcom/market2345/guide/ShowUnionIconPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/market2345/guide/customview/CustomShowUnionIconView;->setmHandler(Landroid/os/Handler;)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public buildDisplayView()Landroid/view/View;
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/market2345/guide/ShowUnionIconPage;->popupWindowView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/market2345/guide/ShowUnionIconPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030078

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/guide/ShowUnionIconPage;->popupWindowView:Landroid/view/View;

    .line 86
    invoke-direct {p0}, Lcom/market2345/guide/ShowUnionIconPage;->setHandler()V

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/market2345/guide/ShowUnionIconPage;->popupWindowView:Landroid/view/View;

    return-object v0
.end method

.method public buildPopupWindow()Landroid/widget/PopupWindow;
    .locals 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/market2345/guide/ShowUnionIconPage;->mWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/market2345/guide/model/UnionIconInfo;->getStaticInstance()Lcom/market2345/guide/model/UnionIconInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/market2345/guide/ShowUnionIconPage;->buildDisplayView()Landroid/view/View;

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

    iput-object v1, p0, Lcom/market2345/guide/ShowUnionIconPage;->mWindow:Landroid/widget/PopupWindow;

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/market2345/guide/ShowUnionIconPage;->setHandler()V

    .line 52
    iget-object v0, p0, Lcom/market2345/guide/ShowUnionIconPage;->mWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public getPageTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "showunionicon"

    return-object v0
.end method

.method public isDisplayed()Z
    .locals 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/market2345/guide/ShowUnionIconPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showunionicon"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveDisplayed()V
    .locals 4

    .prologue
    .line 66
    iget-object v2, p0, Lcom/market2345/guide/ShowUnionIconPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 68
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "showunionicon"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/market2345/guide/ShowUnionIconPage;->mContext:Landroid/content/Context;

    .line 60
    return-void
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/market2345/guide/ShowUnionIconPage;->mHandler:Landroid/os/Handler;

    .line 39
    invoke-direct {p0}, Lcom/market2345/guide/ShowUnionIconPage;->setHandler()V

    .line 40
    return-void
.end method
