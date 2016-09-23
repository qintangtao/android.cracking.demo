.class public Lcom/market2345/slidemenu/RecommendFragment;
.super Lcom/market2345/slidemenu/ViewPagerFragment;
.source "RecommendFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/RecommendFragment$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

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
    .line 27
    const-class v0, Lcom/market2345/slidemenu/RecommendFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/slidemenu/RecommendFragment;->TAG:Ljava/lang/String;

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u7cbe\u9009"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u5206\u7c7b"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u4e13\u9898"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u6392\u884c"

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/slidemenu/RecommendFragment;->titles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/market2345/slidemenu/ViewPagerFragment;-><init>()V

    .line 32
    new-instance v0, Lcom/market2345/slidemenu/RecommendFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/RecommendFragment$MyHandler;-><init>(Lcom/market2345/slidemenu/RecommendFragment;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/RecommendFragment;->mHandler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/slidemenu/RecommendFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/RecommendFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/market2345/slidemenu/RecommendFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/slidemenu/RecommendFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/slidemenu/RecommendFragment;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/market2345/slidemenu/RecommendFragment;->statisticEvents(I)V

    return-void
.end method

.method private statisticEvents(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 89
    packed-switch p1, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 91
    :pswitch_0
    invoke-virtual {p0}, Lcom/market2345/slidemenu/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Recommend_Selected"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :pswitch_1
    invoke-virtual {p0}, Lcom/market2345/slidemenu/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Recommend_Classify"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :pswitch_2
    invoke-virtual {p0}, Lcom/market2345/slidemenu/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Main_Zhuanti"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_3
    invoke-virtual {p0}, Lcom/market2345/slidemenu/RecommendFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Recommend_Ranking"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/market2345/slidemenu/ViewPagerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    new-instance v3, Lcom/market2345/applist/SpecialListFragment;

    invoke-direct {v3}, Lcom/market2345/applist/SpecialListFragment;-><init>()V

    .line 58
    .local v3, "sFragment":Lcom/market2345/applist/SpecialListFragment;
    new-instance v1, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;

    invoke-direct {v1}, Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;-><init>()V

    .line 59
    .local v1, "cFragment":Lcom/market2345/slidemenu/ClassifyFragmentChildRecommend;
    new-instance v4, Lcom/market2345/topic/TopicListFragment;

    invoke-direct {v4}, Lcom/market2345/topic/TopicListFragment;-><init>()V

    .line 60
    .local v4, "topicListFragment":Lcom/market2345/topic/TopicListFragment;
    new-instance v2, Lcom/market2345/applist/HotRecommendListFragment;

    invoke-direct {v2}, Lcom/market2345/applist/HotRecommendListFragment;-><init>()V

    .line 61
    .local v2, "hFragment":Lcom/market2345/applist/HotRecommendListFragment;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/market2345/slidemenu/RecommendFragment;->data:Ljava/util/ArrayList;

    .line 62
    iget-object v5, p0, Lcom/market2345/slidemenu/RecommendFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v5, p0, Lcom/market2345/slidemenu/RecommendFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v5, p0, Lcom/market2345/slidemenu/RecommendFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v5, p0, Lcom/market2345/slidemenu/RecommendFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v0, Lcom/market2345/slidemenu/LocalPagerAdapter;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/RecommendFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    sget-object v6, Lcom/market2345/slidemenu/RecommendFragment;->titles:[Ljava/lang/String;

    invoke-direct {v0, v5, v6}, Lcom/market2345/slidemenu/LocalPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;)V

    .line 67
    .local v0, "adapter":Lcom/market2345/slidemenu/LocalPagerAdapter;
    iget-object v5, p0, Lcom/market2345/slidemenu/RecommendFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Lcom/market2345/slidemenu/LocalPagerAdapter;->setDataSource(Ljava/util/ArrayList;)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/market2345/slidemenu/RecommendFragment;->setViewPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 69
    iget-object v5, p0, Lcom/market2345/slidemenu/RecommendFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/market2345/slidemenu/RecommendFragment;->setOffscreenPageLimit(I)V

    .line 70
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/market2345/slidemenu/RecommendFragment;->onPageSelected(I)V

    .line 71
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3
    .param p1, "hidden"    # Z

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/market2345/slidemenu/ViewPagerFragment;->onHiddenChanged(Z)V

    .line 82
    sget-object v0, Lcom/market2345/slidemenu/RecommendFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHiddenChanged---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/market2345/base/log/L;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    if-nez p1, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/market2345/slidemenu/RecommendFragment;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/market2345/slidemenu/RecommendFragment;->leftChange(I)V

    .line 86
    :cond_0
    return-void
.end method

.method protected onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/market2345/slidemenu/ViewPagerFragment;->onPageSelected(I)V

    .line 76
    iget-object v0, p0, Lcom/market2345/slidemenu/RecommendFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 77
    return-void
.end method
