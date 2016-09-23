.class Lcom/market2345/slidemenu/LocalPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "LocalPagerAdapter.java"


# instance fields
.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/ui/BaseFragment;",
            ">;"
        }
    .end annotation
.end field

.field private titles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "titles"    # [Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 19
    iput-object p2, p0, Lcom/market2345/slidemenu/LocalPagerAdapter;->titles:[Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/market2345/slidemenu/LocalPagerAdapter;->datas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/LocalPagerAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 34
    iget-object v0, p0, Lcom/market2345/slidemenu/LocalPagerAdapter;->datas:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/market2345/slidemenu/LocalPagerAdapter;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/ui/BaseFragment;

    goto :goto_0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/slidemenu/LocalPagerAdapter;->titles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setDataSource(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/ui/BaseFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/ui/BaseFragment;>;"
    iput-object p1, p0, Lcom/market2345/slidemenu/LocalPagerAdapter;->datas:Ljava/util/ArrayList;

    .line 44
    return-void
.end method
