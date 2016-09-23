.class public Lcom/market2345/slidemenu/ClassifyViewPagerFragment;
.super Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;
.source "ClassifyViewPagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/slidemenu/ClassifyViewPagerFragment$MyHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private category:Ljava/lang/String;

.field private classtype:Ljava/lang/String;

.field private currentTag:Ljava/lang/String;

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

.field private tags:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;-><init>()V

    .line 27
    new-instance v0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment$MyHandler;-><init>(Lcom/market2345/slidemenu/ClassifyViewPagerFragment;)V

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/slidemenu/ClassifyViewPagerFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/slidemenu/ClassifyViewPagerFragment;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getTagIndex(Ljava/lang/String;)I
    .locals 3
    .param p1, "selectTag"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v1, 0x0

    .line 82
    .local v1, "index":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->tags:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->tags:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    add-int/lit8 v1, v0, 0x1

    .line 90
    .end local v0    # "i":I
    :cond_0
    return v1

    .line 83
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private initDatas()V
    .locals 8

    .prologue
    .line 58
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->tags:[Ljava/lang/String;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->tags:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->classtype:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->category:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 60
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->tags:[Ljava/lang/String;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 61
    .local v3, "realTags":[Ljava/lang/String;
    const/4 v4, 0x0

    const v5, 0x7f0b0029

    invoke-virtual {p0, v5}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 62
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->tags:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 63
    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->tags:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v3, v4

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Lcom/market2345/slidemenu/LocalPagerAdapter;

    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    invoke-direct {v0, v4, v3}, Lcom/market2345/slidemenu/LocalPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;)V

    .line 66
    .local v0, "adapter":Lcom/market2345/slidemenu/LocalPagerAdapter;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->data:Ljava/util/ArrayList;

    .line 67
    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 68
    iget-object v5, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->data:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->category:Ljava/lang/String;

    :goto_2
    iget-object v6, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->category:Ljava/lang/String;

    iget-object v7, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->classtype:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lcom/market2345/applist/ClassifyAppListFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/applist/ClassifyAppListFragment;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 68
    :cond_1
    aget-object v4, v3, v1

    goto :goto_2

    .line 70
    :cond_2
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/market2345/slidemenu/LocalPagerAdapter;->setDataSource(Ljava/util/ArrayList;)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->setViewPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 72
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->currentTag:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->getTagIndex(Ljava/lang/String;)I

    move-result v2

    .line 73
    .local v2, "index":I
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 74
    iget-object v4, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->setOffscreenPageLimit(I)V

    .line 75
    invoke-virtual {p0, v2}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->onPageSelected(I)V

    .line 77
    .end local v0    # "adapter":Lcom/market2345/slidemenu/LocalPagerAdapter;
    .end local v1    # "i":I
    .end local v2    # "index":I
    .end local v3    # "realTags":[Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/market2345/slidemenu/ViewPagerFragmentForClassify;->onActivityCreated(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "tags"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->tags:[Ljava/lang/String;

    .line 51
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "classtype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->classtype:Ljava/lang/String;

    .line 52
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "categoryid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->category:Ljava/lang/String;

    .line 53
    invoke-virtual {p0}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "categorytag"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->currentTag:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->initDatas()V

    .line 55
    return-void
.end method

.method protected onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/market2345/slidemenu/ClassifyViewPagerFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    return-void
.end method
