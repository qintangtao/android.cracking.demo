.class public Lcom/market2345/slidemenu/ViewPagerFragment;
.super Lcom/market2345/ui/BaseFragment;
.source "ViewPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/ViewPagerFragment$LeftModleChange;
    }
.end annotation


# static fields
.field static final INTERNAL_VIEWPAGER_CONTAINER_ID:I = 0xff0003

.field static final ITERNAL_VIEWPAGER_ID:I = 0xff0004

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private final mHandler:Landroid/os/Handler;

.field private final mOnPagerChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private final mRequestFocus:Ljava/lang/Runnable;

.field mViewPager:Landroid/support/v4/view/ViewPager;

.field supportTag:Ljava/lang/String;

.field tabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/market2345/slidemenu/ViewPagerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/slidemenu/ViewPagerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mHandler:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/market2345/slidemenu/ViewPagerFragment$1;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/ViewPagerFragment$1;-><init>(Lcom/market2345/slidemenu/ViewPagerFragment;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mRequestFocus:Ljava/lang/Runnable;

    .line 60
    new-instance v0, Lcom/market2345/slidemenu/ViewPagerFragment$2;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/ViewPagerFragment$2;-><init>(Lcom/market2345/slidemenu/ViewPagerFragment;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mOnPagerChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 87
    return-void
.end method


# virtual methods
.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->supportTag:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->supportTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public getViewPagerAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method public leftChange(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ViewPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ViewPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/market2345/slidemenu/ViewPagerFragment$LeftModleChange;

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ViewPagerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/ViewPagerFragment$LeftModleChange;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/market2345/slidemenu/ViewPagerFragment$LeftModleChange;->change(Z)V

    .line 84
    :cond_0
    return-void

    .line 82
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    const v1, 0x7f0300d1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 93
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 94
    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iput-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->tabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    .line 95
    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->tabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v2, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mOnPagerChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 96
    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->tabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setShouldExpand(Z)V

    .line 97
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/market2345/slidemenu/ViewPagerFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 105
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onDestroyView()V

    .line 106
    return-void
.end method

.method protected onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 118
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 110
    return-void
.end method

.method protected onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 114
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 159
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onResume()V

    .line 160
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1
    .param p1, "l"    # I

    .prologue
    .line 148
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 151
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 133
    return-void
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->supportTag:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setViewPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 125
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 127
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->tabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 129
    :cond_0
    return-void
.end method

.method public showSelf()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method
