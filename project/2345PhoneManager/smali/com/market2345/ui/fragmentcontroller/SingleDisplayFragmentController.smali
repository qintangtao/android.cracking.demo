.class public Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;
.super Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;
.source "SingleDisplayFragmentController.java"


# instance fields
.field private currentFragment:Lcom/market2345/ui/BaseFragment;

.field private currentTag:Ljava/lang/String;

.field private currentTagBack:Ljava/lang/String;

.field private viewId:I


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;I)V
    .locals 0
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;
    .param p2, "viewId"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 25
    iput p2, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->viewId:I

    .line 26
    return-void
.end method

.method private cacheTag()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->currentTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->currentTagBack:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->commitToggle(Z)V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 102
    return-void
.end method

.method private resetTag()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->currentTagBack:Ljava/lang/String;

    iput-object v0, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->currentTag:Ljava/lang/String;

    .line 118
    return-void
.end method

.method private resetWithUnDo()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->reset()V

    .line 107
    invoke-direct {p0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->resetTag()V

    .line 108
    return-void
.end method


# virtual methods
.method public beginNewTransaction()V
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->isCommited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->resetWithUnDo()V

    .line 41
    :cond_0
    invoke-super {p0}, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->beginNewTransaction()V

    .line 42
    invoke-direct {p0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->cacheTag()V

    .line 43
    return-void
.end method

.method public changeDisplayFragment(Lcom/market2345/ui/BaseFragment;)V
    .locals 2
    .param p1, "fragment"    # Lcom/market2345/ui/BaseFragment;

    .prologue
    .line 75
    invoke-virtual {p0, p1}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->containsFragment(Lcom/market2345/ui/BaseFragment;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget v1, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->viewId:I

    invoke-virtual {p0, v1, p1}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->addFragment(ILcom/market2345/ui/BaseFragment;)V

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->getCurrentFragment()Lcom/market2345/ui/BaseFragment;

    move-result-object v0

    .line 78
    .local v0, "currentFrag":Lcom/market2345/ui/BaseFragment;
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {p0, v0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->hideFragment(Lcom/market2345/ui/BaseFragment;)V

    .line 80
    :cond_1
    invoke-virtual {p0, p1}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->showFragment(Lcom/market2345/ui/BaseFragment;)V

    .line 81
    invoke-virtual {p1}, Lcom/market2345/ui/BaseFragment;->getSupportTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->currentTag:Ljava/lang/String;

    .line 82
    iput-object p1, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->currentFragment:Lcom/market2345/ui/BaseFragment;

    .line 83
    return-void
.end method

.method public changeDisplayFragment(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->findFragmentByTag(Ljava/lang/String;)Lcom/market2345/ui/BaseFragment;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->changeDisplayFragment(Lcom/market2345/ui/BaseFragment;)V

    .line 96
    return-void
.end method

.method public commit()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->commit()V

    .line 32
    invoke-direct {p0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->reset()V

    .line 33
    return-void
.end method

.method public getCurrentFragment()Lcom/market2345/ui/BaseFragment;
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "frag":Lcom/market2345/ui/BaseFragment;
    invoke-virtual {p0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->isCommited()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v2, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->currentTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    check-cast v0, Lcom/market2345/ui/BaseFragment;

    .line 56
    .restart local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    :goto_0
    return-object v0

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v2, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->currentTagBack:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .end local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    check-cast v0, Lcom/market2345/ui/BaseFragment;

    .restart local v0    # "frag":Lcom/market2345/ui/BaseFragment;
    goto :goto_0
.end method

.method public getcurrentFragmentForWDH()Lcom/market2345/ui/BaseFragment;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->currentFragment:Lcom/market2345/ui/BaseFragment;

    return-object v0
.end method
