.class public Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;
.super Ljava/lang/Object;
.source "SlidingActivityHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBroadcasting:Z

.field private mEnableSlide:Z

.field private mOnPostCreateCalled:Z

.field private mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

.field private mViewAbove:Landroid/view/View;

.field private mViewBehind:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mBroadcasting:Z

    .line 27
    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mOnPostCreateCalled:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mEnableSlide:Z

    .line 39
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;)Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    .locals 1
    .param p0, "x0"    # Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 133
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 136
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 139
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300b6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    .line 52
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 259
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->showContent()V

    .line 262
    const/4 v0, 0x1

    .line 264
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 63
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mViewBehind:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    if-nez v3, :cond_1

    .line 65
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Both setBehindContentView must be called in onCreate in addition to setContentView."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 68
    :cond_1
    iput-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mOnPostCreateCalled:Z

    .line 70
    iget-object v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    iget-boolean v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mEnableSlide:Z

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    :cond_2
    invoke-virtual {v3, v4, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->attachToActivity(Landroid/app/Activity;I)V

    .line 74
    if-eqz p1, :cond_3

    .line 76
    const-string v2, "SlidingActivityHelper.open"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 77
    .local v0, "open":Z
    const-string v2, "SlidingActivityHelper.secondary"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 84
    .local v1, "secondary":Z
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper$1;-><init>(Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;ZZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 105
    return-void

    .line 81
    .end local v0    # "open":Z
    .end local v1    # "secondary":Z
    :cond_3
    const/4 v0, 0x0

    .line 82
    .restart local v0    # "open":Z
    const/4 v1, 0x0

    .restart local v1    # "secondary":Z
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 153
    const-string v0, "SlidingActivityHelper.open"

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isMenuShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 154
    const-string v0, "SlidingActivityHelper.secondary"

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->isSecondaryMenuShowing()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    return-void
.end method

.method public registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mBroadcasting:Z

    if-nez v0, :cond_0

    .line 168
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mViewAbove:Landroid/view/View;

    .line 169
    :cond_0
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mViewBehind:Landroid/view/View;

    .line 202
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mViewBehind:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->setMenu(Landroid/view/View;)V

    .line 203
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mBroadcasting:Z

    .line 186
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 187
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 2
    .param p1, "slidingActionBarEnabled"    # Z

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mOnPostCreateCalled:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "enableSlidingActionBar must be called in onCreate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mEnableSlide:Z

    .line 120
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showContent()V

    .line 229
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showMenu()V

    .line 237
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->showSecondaryMenu()V

    .line 246
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->mSlidingMenu:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;->toggle()V

    .line 221
    return-void
.end method
