.class public Lcom/market2345/applist/activity/MoreRankListActivity;
.super Lcom/market2345/home/BaseFragmentActivity;
.source "MoreRankListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SORT:Ljava/lang/String; = "sort"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private fragmentController:Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;

.field private mBack:Landroid/widget/ImageButton;

.field private sort:I

.field private title:Ljava/lang/String;

.field private titleText:Landroid/widget/TextView;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/market2345/home/BaseFragmentActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->title:Ljava/lang/String;

    return-void
.end method

.method private addFragment()V
    .locals 3

    .prologue
    .line 67
    iget-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;

    if-nez v1, :cond_0

    .line 68
    new-instance v1, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;

    invoke-virtual {p0}, Lcom/market2345/applist/activity/MoreRankListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->type:Ljava/lang/String;

    iget v2, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->sort:I

    invoke-static {v1, v2}, Lcom/market2345/applist/RankListFragment;->newInstance(Ljava/lang/String;I)Lcom/market2345/applist/RankListFragment;

    move-result-object v0

    .line 71
    .local v0, "fragment":Lcom/market2345/applist/RankListFragment;
    invoke-virtual {v0}, Lcom/market2345/applist/RankListFragment;->showSelf()V

    .line 72
    iget-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;

    invoke-virtual {v1}, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->beginNewTransaction()V

    .line 73
    iget-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;

    const v2, 0x7f09031f

    invoke-virtual {v1, v2, v0}, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->replaceFragment(ILcom/market2345/ui/BaseFragment;)V

    .line 74
    iget-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;

    invoke-virtual {v1}, Lcom/market2345/ui/fragmentcontroller/BaseFragmentController;->commit()V

    .line 75
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 83
    :pswitch_0
    invoke-virtual {p0}, Lcom/market2345/applist/activity/MoreRankListActivity;->finish()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x7f090051
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/market2345/home/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/market2345/applist/activity/MoreRankListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 50
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->type:Ljava/lang/String;

    .line 51
    const-string v1, "sort"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->sort:I

    .line 52
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->title:Ljava/lang/String;

    .line 54
    :cond_0
    const v1, 0x7f030095

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/MoreRankListActivity;->setContentView(I)V

    .line 55
    const v1, 0x7f090051

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/MoreRankListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->mBack:Landroid/widget/ImageButton;

    .line 56
    iget-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->mBack:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f090052

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/MoreRankListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->titleText:Landroid/widget/TextView;

    .line 58
    iget-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->title:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->titleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/applist/activity/MoreRankListActivity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :cond_1
    invoke-direct {p0}, Lcom/market2345/applist/activity/MoreRankListActivity;->addFragment()V

    .line 63
    return-void
.end method
