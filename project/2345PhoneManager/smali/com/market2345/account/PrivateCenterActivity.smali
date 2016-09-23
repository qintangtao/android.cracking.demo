.class public Lcom/market2345/account/PrivateCenterActivity;
.super Lcom/market2345/account/AccountBaseActivityForPrivateCenter;
.source "PrivateCenterActivity.java"


# instance fields
.field private fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

.field private gitfCenterLinearLayout:Landroid/widget/LinearLayout;

.field private mGiftTextView:Landroid/widget/TextView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mUserNameTextView:Landroid/widget/TextView;

.field private privatePortraitCoverImageView:Landroid/widget/ImageView;

.field private privatePortraitImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/account/PrivateCenterActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/PrivateCenterActivity;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->privatePortraitImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initFragment()V
    .locals 4

    .prologue
    .line 97
    new-instance v1, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {p0}, Lcom/market2345/account/PrivateCenterActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f0900dd

    invoke-direct {v1, v2, v3}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;-><init>(Landroid/support/v4/app/FragmentManager;I)V

    iput-object v1, p0, Lcom/market2345/account/PrivateCenterActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    .line 98
    new-instance v0, Lcom/market2345/account/gift/PrivateCenterThreeGiftFragment;

    invoke-direct {v0}, Lcom/market2345/account/gift/PrivateCenterThreeGiftFragment;-><init>()V

    .line 99
    .local v0, "fragment":Lcom/market2345/account/gift/PrivateCenterThreeGiftFragment;
    iget-object v1, p0, Lcom/market2345/account/PrivateCenterActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v1}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->beginNewTransaction()V

    .line 100
    iget-object v1, p0, Lcom/market2345/account/PrivateCenterActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v1, v0}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->changeDisplayFragment(Lcom/market2345/ui/BaseFragment;)V

    .line 101
    iget-object v1, p0, Lcom/market2345/account/PrivateCenterActivity;->fragmentController:Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;

    invoke-virtual {v1}, Lcom/market2345/ui/fragmentcontroller/SingleDisplayFragmentController;->commit()V

    .line 102
    return-void
.end method

.method private initPrivateInfo()V
    .locals 3

    .prologue
    .line 106
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/account/model/Account;->isLocalExisted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->privatePortraitImageView:Landroid/widget/ImageView;

    const v1, 0x7f0201f9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p0}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/market2345/account/PrivateCenterActivity$2;

    invoke-direct {v2, p0}, Lcom/market2345/account/PrivateCenterActivity$2;-><init>(Lcom/market2345/account/PrivateCenterActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 135
    iget-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->mUserNameTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->mUserNameTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0045

    invoke-virtual {p0, v1}, Lcom/market2345/account/PrivateCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->privatePortraitImageView:Landroid/widget/ImageView;

    const v1, 0x7f02025a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 53
    const v0, 0x7f0900d8

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->privatePortraitImageView:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0900d9

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->privatePortraitCoverImageView:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->mUserNameTextView:Landroid/widget/TextView;

    .line 56
    const v0, 0x7f0900db

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->mGiftTextView:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0900dc

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->gitfCenterLinearLayout:Landroid/widget/LinearLayout;

    .line 58
    new-instance v0, Lcom/market2345/account/PrivateCenterActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/account/PrivateCenterActivity$1;-><init>(Lcom/market2345/account/PrivateCenterActivity;)V

    iput-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 90
    iget-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->privatePortraitCoverImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/market2345/account/PrivateCenterActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    iget-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->mGiftTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/account/PrivateCenterActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/market2345/account/PrivateCenterActivity;->gitfCenterLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/market2345/account/PrivateCenterActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateCenterActivity;->setContentView(I)V

    .line 42
    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateCenterActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateCenterActivity;->setTitleText(Ljava/lang/String;)V

    .line 43
    invoke-direct {p0}, Lcom/market2345/account/PrivateCenterActivity;->initView()V

    .line 44
    invoke-direct {p0}, Lcom/market2345/account/PrivateCenterActivity;->initPrivateInfo()V

    .line 46
    if-nez p1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/market2345/account/PrivateCenterActivity;->initFragment()V

    .line 50
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->onDestroy()V

    .line 145
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 146
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 151
    invoke-super {p0}, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->onResume()V

    .line 152
    invoke-direct {p0}, Lcom/market2345/account/PrivateCenterActivity;->initPrivateInfo()V

    .line 153
    return-void
.end method
