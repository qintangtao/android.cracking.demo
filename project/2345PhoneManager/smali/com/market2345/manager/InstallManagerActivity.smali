.class public Lcom/market2345/manager/InstallManagerActivity;
.super Lcom/market2345/home/BaseFragmentActivity;
.source "InstallManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/manager/InstallManagerActivity$InstalledAppAdapter;,
        Lcom/market2345/manager/InstallManagerActivity$InstalledPagerAdapter;
    }
.end annotation


# instance fields
.field private mBack:Landroid/widget/ImageButton;

.field private mSession:Lcom/market2345/datacenter/DataCenterObserver;

.field private mSysInstalled:Landroid/widget/RadioButton;

.field private mUserInstalled:Landroid/widget/RadioButton;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/market2345/home/BaseFragmentActivity;-><init>()V

    .line 172
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/manager/InstallManagerActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/manager/InstallManagerActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity;->mUserInstalled:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/manager/InstallManagerActivity;)Landroid/widget/RadioButton;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/manager/InstallManagerActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity;->mSysInstalled:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/manager/InstallManagerActivity;)Lcom/market2345/datacenter/DataCenterObserver;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/manager/InstallManagerActivity;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 403
    :goto_0
    return-void

    .line 391
    :sswitch_0
    invoke-virtual {p0}, Lcom/market2345/manager/InstallManagerActivity;->finish()V

    goto :goto_0

    .line 394
    :sswitch_1
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 398
    :sswitch_2
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 383
    :sswitch_data_0
    .sparse-switch
        0x7f090051 -> :sswitch_0
        0x7f0902ab -> :sswitch_1
        0x7f0902ac -> :sswitch_2
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/market2345/home/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v1, 0x7f03007d

    invoke-virtual {p0, v1}, Lcom/market2345/manager/InstallManagerActivity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Lcom/market2345/manager/InstallManagerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/manager/InstallManagerActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    .line 68
    const v1, 0x7f090051

    invoke-virtual {p0, v1}, Lcom/market2345/manager/InstallManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/market2345/manager/InstallManagerActivity;->mBack:Landroid/widget/ImageButton;

    .line 69
    iget-object v1, p0, Lcom/market2345/manager/InstallManagerActivity;->mBack:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v1, 0x7f0902ab

    invoke-virtual {p0, v1}, Lcom/market2345/manager/InstallManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/market2345/manager/InstallManagerActivity;->mUserInstalled:Landroid/widget/RadioButton;

    .line 74
    const v1, 0x7f0902ac

    invoke-virtual {p0, v1}, Lcom/market2345/manager/InstallManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/market2345/manager/InstallManagerActivity;->mSysInstalled:Landroid/widget/RadioButton;

    .line 75
    iget-object v1, p0, Lcom/market2345/manager/InstallManagerActivity;->mUserInstalled:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v1, p0, Lcom/market2345/manager/InstallManagerActivity;->mSysInstalled:Landroid/widget/RadioButton;

    invoke-virtual {v1, p0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {p0}, Lcom/market2345/manager/InstallManagerActivity;->setInstalledCount()V

    .line 79
    const v1, 0x7f0901fd

    invoke-virtual {p0, v1}, Lcom/market2345/manager/InstallManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/market2345/manager/InstallManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 80
    new-instance v0, Lcom/market2345/manager/InstallManagerActivity$InstalledPagerAdapter;

    invoke-direct {v0, p0}, Lcom/market2345/manager/InstallManagerActivity$InstalledPagerAdapter;-><init>(Lcom/market2345/manager/InstallManagerActivity;)V

    .line 81
    .local v0, "pagerAdapter":Landroid/support/v4/view/PagerAdapter;
    iget-object v1, p0, Lcom/market2345/manager/InstallManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 82
    iget-object v1, p0, Lcom/market2345/manager/InstallManagerActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/market2345/manager/InstallManagerActivity$1;

    invoke-direct {v2, p0}, Lcom/market2345/manager/InstallManagerActivity$1;-><init>(Lcom/market2345/manager/InstallManagerActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 104
    return-void
.end method

.method public setInstalledCount()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 111
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity;->mSysInstalled:Landroid/widget/RadioButton;

    const v1, 0x7f0b0152

    invoke-virtual {p0, v1}, Lcom/market2345/manager/InstallManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/market2345/manager/InstallManagerActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v3}, Lcom/market2345/datacenter/DataCenterObserver;->getSysInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v0, p0, Lcom/market2345/manager/InstallManagerActivity;->mUserInstalled:Landroid/widget/RadioButton;

    const v1, 0x7f0b016a

    invoke-virtual {p0, v1}, Lcom/market2345/manager/InstallManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/market2345/manager/InstallManagerActivity;->mSession:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-virtual {v3}, Lcom/market2345/datacenter/DataCenterObserver;->getUserInstalledApps()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 114
    return-void
.end method
