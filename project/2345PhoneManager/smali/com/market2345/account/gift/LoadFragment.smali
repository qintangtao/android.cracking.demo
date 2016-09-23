.class public abstract Lcom/market2345/account/gift/LoadFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "LoadFragment.java"


# instance fields
.field private mErrorView:Landroid/view/View;

.field private mGiftDelegate:Lcom/market2345/account/gift/GiftDelegate;

.field private mLoadView:Landroid/view/View;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract canLoad()Z
.end method

.method protected getGiftDelegate()Lcom/market2345/account/gift/GiftDelegate;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mGiftDelegate:Lcom/market2345/account/gift/GiftDelegate;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/market2345/account/gift/GiftDelegate;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/account/gift/GiftDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mGiftDelegate:Lcom/market2345/account/gift/GiftDelegate;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mGiftDelegate:Lcom/market2345/account/gift/GiftDelegate;

    return-object v0
.end method

.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hideLoadView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 67
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mLoadView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcom/market2345/account/gift/LoadFragment;->initLoadView()V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mLoadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 71
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mLoadView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_1
    return-void
.end method

.method protected hideProgress()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 118
    return-void
.end method

.method protected initLoadView()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mLoadView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/market2345/account/gift/LoadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mLoadView:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mLoadView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    invoke-virtual {p0}, Lcom/market2345/account/gift/LoadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 55
    invoke-virtual {p0}, Lcom/market2345/account/gift/LoadFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0901f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mErrorView:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mErrorView:Landroid/view/View;

    const v1, 0x7f0901f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/market2345/account/gift/LoadFragment$1;

    invoke-direct {v1, p0}, Lcom/market2345/account/gift/LoadFragment$1;-><init>(Lcom/market2345/account/gift/LoadFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected abstract loadData(Z)V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/market2345/account/gift/LoadFragment;->canLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/market2345/account/gift/LoadFragment;->initLoadView()V

    .line 36
    invoke-virtual {p0}, Lcom/market2345/account/gift/LoadFragment;->showProgress()V

    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/LoadFragment;->loadData(Z)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/account/gift/LoadFragment;->showEmpty()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/market2345/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 28
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onDetach()V

    .line 101
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 102
    return-void
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 139
    return-void
.end method

.method protected showEmpty()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method protected showLoadView()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mLoadView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/market2345/account/gift/LoadFragment;->initLoadView()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mLoadView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mLoadView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_1
    return-void
.end method

.method protected showProgress()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mErrorView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    return-void
.end method

.method protected showRetry()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mErrorView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/market2345/account/gift/LoadFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 126
    return-void
.end method

.method public showSelf()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method
