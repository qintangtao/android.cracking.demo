.class public Lcom/market2345/manager/IgnoredAppsActivity;
.super Lcom/market2345/home/BaseFragmentActivity;
.source "IgnoredAppsActivity.java"

# interfaces
.implements Lcom/market2345/datacenter/MarketObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/manager/IgnoredAppsActivity$MyHandler;
    }
.end annotation


# instance fields
.field private currentIgnore:I

.field private lastIgnore:I

.field private mAdapter:Lcom/market2345/manager/IgnoreAdapter;

.field private mBack:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private title:Landroid/widget/TextView;

.field private titleBarListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/market2345/home/BaseFragmentActivity;-><init>()V

    .line 36
    iput v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->lastIgnore:I

    .line 38
    iput v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->currentIgnore:I

    .line 40
    new-instance v0, Lcom/market2345/manager/IgnoredAppsActivity$MyHandler;

    invoke-direct {v0, p0}, Lcom/market2345/manager/IgnoredAppsActivity$MyHandler;-><init>(Lcom/market2345/manager/IgnoredAppsActivity;)V

    iput-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->mHandler:Landroid/os/Handler;

    .line 73
    new-instance v0, Lcom/market2345/manager/IgnoredAppsActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/manager/IgnoredAppsActivity$1;-><init>(Lcom/market2345/manager/IgnoredAppsActivity;)V

    iput-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->titleBarListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/manager/IgnoredAppsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/manager/IgnoredAppsActivity;

    .prologue
    .line 26
    iget v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->currentIgnore:I

    return v0
.end method

.method static synthetic access$002(Lcom/market2345/manager/IgnoredAppsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/manager/IgnoredAppsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/market2345/manager/IgnoredAppsActivity;->currentIgnore:I

    return p1
.end method

.method static synthetic access$100(Lcom/market2345/manager/IgnoredAppsActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/market2345/manager/IgnoredAppsActivity;

    .prologue
    .line 26
    iget v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->lastIgnore:I

    return v0
.end method

.method static synthetic access$102(Lcom/market2345/manager/IgnoredAppsActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/market2345/manager/IgnoredAppsActivity;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/market2345/manager/IgnoredAppsActivity;->lastIgnore:I

    return p1
.end method

.method static synthetic access$200(Lcom/market2345/manager/IgnoredAppsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/manager/IgnoredAppsActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/market2345/manager/IgnoredAppsActivity;->changeTitle()V

    return-void
.end method

.method static synthetic access$300(Lcom/market2345/manager/IgnoredAppsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/manager/IgnoredAppsActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/market2345/manager/IgnoredAppsActivity;->notifyAdapter()V

    return-void
.end method

.method private changeTitle()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->title:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u5ffd\u7565("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/market2345/manager/IgnoredAppsActivity;->currentIgnore:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    :cond_0
    return-void
.end method

.method private initSelf()V
    .locals 2

    .prologue
    .line 117
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/market2345/manager/IgnoredAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->title:Landroid/widget/TextView;

    .line 118
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/market2345/manager/IgnoredAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->mBack:Landroid/widget/ImageButton;

    .line 119
    iget-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->mBack:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/market2345/manager/IgnoredAppsActivity;->titleBarListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f09015a

    invoke-virtual {p0, v0}, Lcom/market2345/manager/IgnoredAppsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->mListView:Landroid/widget/ListView;

    .line 125
    invoke-virtual {p0}, Lcom/market2345/manager/IgnoredAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/datacenter/DataCenterObserver;->getIgnoreNumber()I

    move-result v0

    iput v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->currentIgnore:I

    .line 126
    invoke-direct {p0}, Lcom/market2345/manager/IgnoredAppsActivity;->changeTitle()V

    .line 127
    new-instance v0, Lcom/market2345/manager/IgnoreAdapter;

    invoke-direct {v0, p0}, Lcom/market2345/manager/IgnoreAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->mAdapter:Lcom/market2345/manager/IgnoreAdapter;

    .line 128
    iget-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/market2345/manager/IgnoredAppsActivity;->mAdapter:Lcom/market2345/manager/IgnoreAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 130
    return-void
.end method

.method private notifyAdapter()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->mAdapter:Lcom/market2345/manager/IgnoreAdapter;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->mAdapter:Lcom/market2345/manager/IgnoreAdapter;

    invoke-virtual {v0}, Lcom/market2345/manager/IgnoreAdapter;->notifyDataSetChanged()V

    .line 114
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/market2345/home/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f03007c

    invoke-virtual {p0, v0}, Lcom/market2345/manager/IgnoredAppsActivity;->setContentView(I)V

    .line 99
    invoke-direct {p0}, Lcom/market2345/manager/IgnoredAppsActivity;->initSelf()V

    .line 100
    invoke-virtual {p0}, Lcom/market2345/manager/IgnoredAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->addObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/market2345/home/BaseFragmentActivity;->onDestroy()V

    .line 140
    invoke-virtual {p0}, Lcom/market2345/manager/IgnoredAppsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/datacenter/DataCenterObserver;->deleteObserver(Lcom/market2345/datacenter/MarketObserver;)V

    .line 141
    return-void
.end method

.method public update(Lcom/market2345/datacenter/MarketObservable;Ljava/lang/Object;)V
    .locals 3
    .param p1, "observable"    # Lcom/market2345/datacenter/MarketObservable;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/market2345/manager/IgnoredAppsActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/market2345/manager/IgnoredAppsActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    return-void
.end method
