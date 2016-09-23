.class public Lcom/market2345/slidemenu/SoftFragment;
.super Lcom/market2345/slidemenu/ViewPagerFragment;
.source "SoftFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/SoftFragment$MyHandler;
    }
.end annotation


# static fields
.field private static titles:[Ljava/lang/String;


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/ui/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u7cbe\u9009"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5206\u7c7b"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6392\u884c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/slidemenu/SoftFragment;->titles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/market2345/slidemenu/ViewPagerFragment;-><init>()V

    .line 28
    new-instance v0, Lcom/market2345/slidemenu/SoftFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/SoftFragment$MyHandler;-><init>(Lcom/market2345/slidemenu/SoftFragment;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/SoftFragment;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method private StatisticEvents(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 84
    :pswitch_0
    invoke-virtual {p0}, Lcom/market2345/slidemenu/SoftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "SoftWare_Selected"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lcom/market2345/slidemenu/SoftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "SoftWare_Classify"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :pswitch_2
    invoke-virtual {p0}, Lcom/market2345/slidemenu/SoftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "SoftWare_Ranking"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/market2345/slidemenu/SoftFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/SoftFragment;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/market2345/slidemenu/SoftFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/slidemenu/SoftFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/SoftFragment;
    .param p1, "x1"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/SoftFragment;->StatisticEvents(I)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/market2345/slidemenu/ViewPagerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 52
    new-instance v2, Lcom/market2345/applist/SoftListFragment;

    invoke-direct {v2}, Lcom/market2345/applist/SoftListFragment;-><init>()V

    .line 53
    .local v2, "sFragment":Lcom/market2345/applist/SoftListFragment;
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/market2345/slidemenu/ClassifyFragmentChild;->newInstance(I)Lcom/market2345/slidemenu/ClassifyFragmentChild;

    move-result-object v1

    .line 54
    .local v1, "cFragment":Lcom/market2345/slidemenu/ClassifyFragmentChild;
    const-string v4, "soft"

    invoke-static {v4}, Lcom/market2345/slidemenu/RankFragment;->newRankInstance(Ljava/lang/String;)Lcom/market2345/slidemenu/RankFragment;

    move-result-object v3

    .line 55
    .local v3, "sRankFragment":Lcom/market2345/slidemenu/RankFragment;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/market2345/slidemenu/SoftFragment;->data:Ljava/util/ArrayList;

    .line 56
    iget-object v4, p0, Lcom/market2345/slidemenu/SoftFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v4, p0, Lcom/market2345/slidemenu/SoftFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v4, p0, Lcom/market2345/slidemenu/SoftFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v0, Lcom/market2345/slidemenu/LocalPagerAdapter;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/SoftFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    sget-object v5, Lcom/market2345/slidemenu/SoftFragment;->titles:[Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Lcom/market2345/slidemenu/LocalPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;)V

    .line 60
    .local v0, "adapter":Lcom/market2345/slidemenu/LocalPagerAdapter;
    iget-object v4, p0, Lcom/market2345/slidemenu/SoftFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/market2345/slidemenu/LocalPagerAdapter;->setDataSource(Ljava/util/ArrayList;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/market2345/slidemenu/SoftFragment;->setViewPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 62
    iget-object v4, p0, Lcom/market2345/slidemenu/SoftFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/market2345/slidemenu/SoftFragment;->setOffscreenPageLimit(I)V

    .line 63
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/market2345/slidemenu/SoftFragment;->onPageSelected(I)V

    .line 64
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 1
    .param p1, "hidden"    # Z

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/market2345/slidemenu/ViewPagerFragment;->onHiddenChanged(Z)V

    .line 76
    if-nez p1, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/market2345/slidemenu/SoftFragment;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/market2345/slidemenu/SoftFragment;->leftChange(I)V

    .line 79
    :cond_0
    return-void
.end method

.method protected onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/market2345/slidemenu/ViewPagerFragment;->onPageSelected(I)V

    .line 70
    iget-object v0, p0, Lcom/market2345/slidemenu/SoftFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 71
    return-void
.end method
