.class public Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;
.super Lcom/market2345/ui/BaseFragment;
.source "ViewPagerFragmentForClassify.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$LeftModleChange;
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
    .line 26
    const-class v0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/market2345/ui/BaseFragment;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$1;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$1;-><init>(Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mRequestFocus:Ljava/lang/Runnable;

    .line 47
    new-instance v0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$2;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$2;-><init>(Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mOnPagerChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 74
    return-void
.end method


# virtual methods
.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getSupportTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->supportTag:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->supportTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public getViewPager()Landroid/support/v4/view/ViewPager;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method public getViewPagerAdapter()Landroid/support/v4/view/PagerAdapter;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method public leftChange(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$LeftModleChange;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$LeftModleChange;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify$LeftModleChange;->change(Z)V

    .line 71
    :cond_0
    return-void

    .line 69
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    const v1, 0x7f0300d2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 82
    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iput-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->tabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    .line 83
    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->tabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v2, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mOnPagerChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 84
    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->tabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    const v2, 0x7f070017

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setIndicatorColorResource(I)V

    .line 85
    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->tabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Lcom/market2345/util/SPUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setIndicatorHeight(I)V

    .line 86
    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->tabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setShouldExpand(Z)V

    .line 87
    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->tabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/market2345/util/SPUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setTabPaddingLeftRight(I)V

    .line 89
    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 94
    sget-object v0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->TAG:Ljava/lang/String;

    const-string v1, "onDestroyView"

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mRequestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 97
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onDestroyView()V

    .line 98
    return-void
.end method

.method protected onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 110
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 102
    return-void
.end method

.method protected onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 106
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lcom/market2345/ui/BaseFragment;->onResume()V

    .line 152
    return-void
.end method

.method public setOffscreenPageLimit(I)V
    .locals 1
    .param p1, "l"    # I

    .prologue
    .line 140
    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 143
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 125
    return-void
.end method

.method public setSupportTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->supportTag:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setViewPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 117
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->tabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v1, p0, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 121
    :cond_0
    return-void
.end method

.method public showSelf()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method
