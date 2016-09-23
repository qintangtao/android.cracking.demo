.class public abstract Lcom/market2345/slidemenu/SlidingBaseFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "SlidingBaseFragment.java"


# instance fields
.field protected bar:Landroid/widget/ProgressBar;

.field protected foot:Landroid/view/View;

.field protected mLoadMore:Landroid/view/View;

.field protected mReachBottom:Landroid/view/View;

.field protected mRetry:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public changeVisiable(IIII)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "m"    # I
    .param p4, "n"    # I

    .prologue
    .line 42
    iget-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->bar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p1, v0}, Lcom/market2345/slidemenu/SlidingBaseFragment;->changeVisiable(ILandroid/view/View;)V

    .line 43
    iget-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->mRetry:Landroid/view/View;

    invoke-virtual {p0, p2, v0}, Lcom/market2345/slidemenu/SlidingBaseFragment;->changeVisiable(ILandroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->mLoadMore:Landroid/view/View;

    invoke-virtual {p0, p3, v0}, Lcom/market2345/slidemenu/SlidingBaseFragment;->changeVisiable(ILandroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->mReachBottom:Landroid/view/View;

    invoke-virtual {p0, p4, v0}, Lcom/market2345/slidemenu/SlidingBaseFragment;->changeVisiable(ILandroid/view/View;)V

    .line 46
    return-void
.end method

.method protected changeVisiable(ILandroid/view/View;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 50
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method createDefaultFooterView(Landroid/view/LayoutInflater;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 62
    const v0, 0x7f030092

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->foot:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->foot:Landroid/view/View;

    const v1, 0x7f09012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->bar:Landroid/widget/ProgressBar;

    .line 64
    iget-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->foot:Landroid/view/View;

    const v1, 0x7f0901f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->mRetry:Landroid/view/View;

    .line 65
    iget-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->foot:Landroid/view/View;

    const v1, 0x7f090303

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->mReachBottom:Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->foot:Landroid/view/View;

    const v1, 0x7f090304

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/SlidingBaseFragment;->mLoadMore:Landroid/view/View;

    .line 67
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/market2345/slidemenu/SlidingBaseFragment;->createDefaultFooterView(Landroid/view/LayoutInflater;)V

    .line 34
    invoke-super {p0, p1, p2, p3}, Lcom/market2345/ui/BaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
