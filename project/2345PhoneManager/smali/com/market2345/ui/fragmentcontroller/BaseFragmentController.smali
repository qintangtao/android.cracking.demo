.class public Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;
.super Ljava/lang/Object;
.source "BaseFragmentController.java"

# interfaces
.implements Lcom/market2345/ui/IBaseFragmentController;


# instance fields
.field private isCommited:Z

.field protected mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field protected transaction:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "manager"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->isCommited:Z

    .line 26
    iput-object p1, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 27
    return-void
.end method


# virtual methods
.method public addFragment(ILcom/market2345/ui/BaseFragment;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "fragment"    # Lcom/market2345/ui/BaseFragment;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p2}, Lcom/market2345/ui/BaseFragment;->getSupportTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 73
    return-void
.end method

.method public beginNewTransaction()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->transaction:Landroid/support/v4/app/FragmentTransaction;

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->commitToggle(Z)V

    .line 121
    return-void
.end method

.method public commit()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->commitToggle(Z)V

    .line 109
    return-void
.end method

.method public commitToggle(Z)V
    .locals 0
    .param p1, "committed"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->isCommited:Z

    .line 138
    return-void
.end method

.method public containsFragment(Lcom/market2345/ui/BaseFragment;)Z
    .locals 1
    .param p1, "fragment"    # Lcom/market2345/ui/BaseFragment;

    .prologue
    .line 44
    invoke-virtual {p1}, Lcom/market2345/ui/BaseFragment;->getSupportTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->containsFragment(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public containsFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findFragmentById(I)Lcom/market2345/ui/BaseFragment;
    .locals 1
    .param p1, "viewId"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/market2345/ui/BaseFragment;

    return-object v0
.end method

.method public findFragmentByTag(Ljava/lang/String;)Lcom/market2345/ui/BaseFragment;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/market2345/ui/BaseFragment;

    return-object v0
.end method

.method public hideFragment(Lcom/market2345/ui/BaseFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/market2345/ui/BaseFragment;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 94
    return-void
.end method

.method public isCommited()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->isCommited:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll()V
    .locals 3

    .prologue
    .line 33
    iget-object v2, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 34
    .local v1, "localTransaction":Landroid/support/v4/app/FragmentTransaction;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 38
    return-void
.end method

.method public removeFragment(Lcom/market2345/ui/BaseFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/market2345/ui/BaseFragment;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 101
    return-void
.end method

.method public replaceFragment(ILcom/market2345/ui/BaseFragment;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "fragment"    # Lcom/market2345/ui/BaseFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p2}, Lcom/market2345/ui/BaseFragment;->getSupportTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 80
    return-void
.end method

.method public showFragment(Lcom/market2345/ui/BaseFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/market2345/ui/BaseFragment;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 87
    return-void
.end method
