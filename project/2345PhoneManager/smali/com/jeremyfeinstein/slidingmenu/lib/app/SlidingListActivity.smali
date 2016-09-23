.class public Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;
.super Landroid/app/ListActivity;
.source "SlidingListActivity.java"

# interfaces
.implements Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityBase;


# instance fields
.field private mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 50
    .end local v0    # "v":Landroid/view/View;
    :goto_0
    return-object v0

    .restart local v0    # "v":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->getSlidingMenu()Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    new-instance v1, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-direct {v1, p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    .line 25
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, "listView":Landroid/widget/ListView;
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setId(I)V

    .line 28
    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->setContentView(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 170
    iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v1, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 171
    .local v0, "b":Z
    if-eqz v0, :cond_0

    .line 173
    .end local v0    # "b":Z
    :goto_0
    return v0

    .restart local v0    # "b":Z
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 38
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->onPostCreate(Landroid/os/Bundle;)V

    .line 39
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 60
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method public setBehindContentView(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->setBehindContentView(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 104
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method public setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->setBehindContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    return-void
.end method

.method public setContentView(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->setContentView(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    .line 78
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/app/ListActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->registerAboveContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void
.end method

.method public setSlidingActionBarEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->setSlidingActionBarEnabled(Z)V

    .line 162
    return-void
.end method

.method public showContent()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->showContent()V

    .line 137
    return-void
.end method

.method public showMenu()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->showMenu()V

    .line 145
    return-void
.end method

.method public showSecondaryMenu()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->showSecondaryMenu()V

    .line 154
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingListActivity;->mHelper:Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;

    invoke-virtual {v0}, Lcom/jeremyfeinstein/slidingmenu/lib/app/SlidingActivityHelper;->toggle()V

    .line 129
    return-void
.end method
