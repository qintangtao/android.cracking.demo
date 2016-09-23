.class public Lcom/market2345/account/gift/GameGiftActivity;
.super Lcom/market2345/home/BaseTitleActivity;
.source "GameGiftActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/account/gift/GameGiftActivity$GiftPagerAdapter;
    }
.end annotation


# static fields
.field public static final GIFT_CENTER:I = 0x0

.field public static final KEY_TITLE:Ljava/lang/String; = "key.title"

.field public static final USER_GIFT:I = 0x1


# instance fields
.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mSlidingTabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/market2345/home/BaseTitleActivity;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 30
    invoke-super {p0, p1}, Lcom/market2345/home/BaseTitleActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/GameGiftActivity;->setContentView(I)V

    .line 32
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/GameGiftActivity;->setActivityTitle(I)V

    .line 33
    const v0, 0x7f0900ac

    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/GameGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iput-object v0, p0, Lcom/market2345/account/gift/GameGiftActivity;->mSlidingTabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    .line 34
    const v0, 0x7f0900ad

    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/GameGiftActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/market2345/account/gift/GameGiftActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 35
    new-instance v0, Lcom/market2345/account/gift/GameGiftActivity$GiftPagerAdapter;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GameGiftActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/market2345/account/gift/GameGiftActivity$GiftPagerAdapter;-><init>(Lcom/market2345/account/gift/GameGiftActivity;Landroid/support/v4/app/FragmentManager;)V

    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/GameGiftActivity;->setViewPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 36
    iget-object v0, p0, Lcom/market2345/account/gift/GameGiftActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GameGiftActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key.title"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 37
    return-void
.end method

.method public setViewPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/market2345/account/gift/GameGiftActivity;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 41
    iget-object v0, p0, Lcom/market2345/account/gift/GameGiftActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/market2345/account/gift/GameGiftActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 43
    iget-object v0, p0, Lcom/market2345/account/gift/GameGiftActivity;->mSlidingTabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/market2345/account/gift/GameGiftActivity;->mSlidingTabStrip:Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;

    iget-object v1, p0, Lcom/market2345/account/gift/GameGiftActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/market2345/slidemenu/drawlayer/PagerSlidingTabStripNative;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 47
    :cond_0
    return-void
.end method
