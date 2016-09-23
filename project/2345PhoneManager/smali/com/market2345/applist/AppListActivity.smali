.class public Lcom/market2345/applist/AppListActivity;
.super Lcom/market2345/applist/activity/TitleBarActivity;
.source "AppListActivity.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private clickListener:Landroid/view/View$OnClickListener;

.field private fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/market2345/applist/activity/TitleBarActivity;-><init>()V

    .line 67
    new-instance v0, Lcom/market2345/applist/AppListActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/applist/AppListActivity$1;-><init>(Lcom/market2345/applist/AppListActivity;)V

    iput-object v0, p0, Lcom/market2345/applist/AppListActivity;->clickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f09005e

    .line 39
    invoke-super {p0, p1}, Lcom/market2345/applist/activity/TitleBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/market2345/applist/AppListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 41
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 43
    const-string v5, "name"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/market2345/applist/AppListActivity;->name:Ljava/lang/String;

    .line 44
    iget-object v5, p0, Lcom/market2345/applist/AppListActivity;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 45
    const v5, 0x7f030001

    invoke-virtual {p0, v5}, Lcom/market2345/applist/AppListActivity;->setContentView(I)V

    .line 46
    const v5, 0x7f090052

    invoke-virtual {p0, v5}, Lcom/market2345/applist/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 47
    .local v4, "page_title":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/market2345/applist/AppListActivity;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    const v5, 0x7f090051

    invoke-virtual {p0, v5}, Lcom/market2345/applist/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 49
    .local v2, "left_btn":Landroid/view/View;
    iget-object v5, p0, Lcom/market2345/applist/AppListActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v5, 0x7f090130

    invoke-virtual {p0, v5}, Lcom/market2345/applist/AppListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 51
    .local v3, "mDownLoad":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lcom/market2345/applist/AppListActivity;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v5, p0, Lcom/market2345/applist/AppListActivity;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/market2345/applist/TagAppListFragment;->newInstance(Ljava/lang/String;)Lcom/market2345/applist/TagAppListFragment;

    move-result-object v0

    .line 53
    .local v0, "frag":Lcom/market2345/applist/TagAppListFragment;
    new-instance v5, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {p0}, Lcom/market2345/applist/AppListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    invoke-direct {v5, v6, v7}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    iput-object v5, p0, Lcom/market2345/applist/AppListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    .line 54
    iget-object v5, p0, Lcom/market2345/applist/AppListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v5}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->beginNewTransaction()V

    .line 55
    iget-object v5, p0, Lcom/market2345/applist/AppListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v5, v7, v0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->replaceFragment(ILcom/market2345/ui/BaseFragment;)V

    .line 56
    iget-object v5, p0, Lcom/market2345/applist/AppListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v5}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->commit()V

    .line 57
    invoke-virtual {v0}, Lcom/market2345/applist/TagAppListFragment;->showSelf()V

    .line 60
    .end local v0    # "frag":Lcom/market2345/applist/TagAppListFragment;
    .end local v2    # "left_btn":Landroid/view/View;
    .end local v3    # "mDownLoad":Landroid/widget/FrameLayout;
    .end local v4    # "page_title":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/market2345/download/event/DownStartEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/market2345/download/event/DownStartEvent;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/market2345/applist/activity/TitleBarActivity;->onEventMainThread(Lcom/market2345/download/event/DownStartEvent;)V

    .line 65
    return-void
.end method
