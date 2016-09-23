.class public Lcom/market2345/applist/activity/WonderfulFoundActivity;
.super Lcom/market2345/applist/activity/TitleBarActivity;
.source "WonderfulFoundActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private mBack:Landroid/widget/ImageButton;

.field private mDownLoad:Landroid/widget/FrameLayout;

.field private mSearch:Landroid/widget/ImageButton;

.field private mhander:Landroid/os/Handler;

.field private title:Ljava/lang/String;

.field private titleText:Landroid/widget/TextView;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/market2345/applist/activity/TitleBarActivity;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->type:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->title:Ljava/lang/String;

    return-void
.end method

.method private addFrag()V
    .locals 3

    .prologue
    .line 86
    iget-object v2, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->type:Ljava/lang/String;

    invoke-static {v2}, Lcom/market2345/applist/WonderListFragment;->newInstance(Ljava/lang/String;)Lcom/market2345/applist/WonderListFragment;

    move-result-object v0

    .line 87
    .local v0, "frag":Lcom/market2345/applist/WonderListFragment;
    invoke-virtual {p0}, Lcom/market2345/applist/activity/WonderfulFoundActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 88
    .local v1, "tran":Landroid/support/v4/app/FragmentTransaction;
    const v2, 0x7f09005e

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 89
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 90
    invoke-virtual {v0}, Lcom/market2345/applist/WonderListFragment;->showSelf()V

    .line 91
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 118
    :goto_0
    :sswitch_0
    return-void

    .line 104
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/market2345/home/HomeTabActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 106
    const-string v1, "notification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v0}, Lcom/market2345/applist/activity/WonderfulFoundActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 113
    .end local v0    # "intent":Landroid/content/Intent;
    :sswitch_2
    invoke-virtual {p0}, Lcom/market2345/applist/activity/WonderfulFoundActivity;->finish()V

    goto :goto_0

    .line 96
    :sswitch_data_0
    .sparse-switch
        0x7f090051 -> :sswitch_2
        0x7f090130 -> :sswitch_1
        0x7f0903e6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/market2345/applist/activity/TitleBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    invoke-virtual {p0}, Lcom/market2345/applist/activity/WonderfulFoundActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 56
    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->type:Ljava/lang/String;

    .line 57
    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->title:Ljava/lang/String;

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->type:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 61
    const-string v1, "az_jcfx"

    iput-object v1, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->type:Ljava/lang/String;

    .line 63
    :cond_1
    const v1, 0x7f0300de

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/WonderfulFoundActivity;->setContentView(I)V

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->mhander:Landroid/os/Handler;

    .line 65
    const v1, 0x7f090051

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/WonderfulFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->mBack:Landroid/widget/ImageButton;

    .line 66
    iget-object v1, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->mBack:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f090130

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/WonderfulFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->mDownLoad:Landroid/widget/FrameLayout;

    .line 70
    iget-object v1, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->mDownLoad:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v1, 0x7f090052

    invoke-virtual {p0, v1}, Lcom/market2345/applist/activity/WonderfulFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->titleText:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->title:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 74
    iget-object v1, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->titleText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/market2345/applist/activity/WonderfulFoundActivity;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/market2345/applist/activity/WonderfulFoundActivity;->addFrag()V

    .line 77
    return-void
.end method

.method public onEventMainThread(Lcom/market2345/download/event/DownStartEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/market2345/download/event/DownStartEvent;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/market2345/applist/activity/TitleBarActivity;->onEventMainThread(Lcom/market2345/download/event/DownStartEvent;)V

    .line 82
    return-void
.end method
