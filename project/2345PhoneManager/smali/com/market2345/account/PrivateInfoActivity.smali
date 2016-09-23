.class public Lcom/market2345/account/PrivateInfoActivity;
.super Lcom/market2345/account/AccountBaseActivity;
.source "PrivateInfoActivity.java"


# instance fields
.field private changePasswordTextView:Landroid/widget/TextView;

.field private feedbackTextView:Landroid/widget/TextView;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private portraitImageView:Landroid/widget/ImageView;

.field private signOutButton:Landroid/widget/Button;

.field private userNameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/market2345/account/AccountBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/market2345/account/PrivateInfoActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/PrivateInfoActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->portraitImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initPrivateInfo()V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/market2345/account/model/Account;->isLocalExisted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->portraitImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/market2345/account/PrivateInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p0}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/market2345/account/PrivateInfoActivity$2;

    invoke-direct {v2, p0}, Lcom/market2345/account/PrivateInfoActivity$2;-><init>(Lcom/market2345/account/PrivateInfoActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 125
    iget-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->userNameTextView:Landroid/widget/TextView;

    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p0}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->userNameTextView:Landroid/widget/TextView;

    const v1, 0x7f0b0045

    invoke-virtual {p0, v1}, Lcom/market2345/account/PrivateInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->portraitImageView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/market2345/account/PrivateInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020259

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 7

    .prologue
    const v6, 0x7f0900df

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 43
    const v0, 0x7f0900da

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->userNameTextView:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0900de

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->changePasswordTextView:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0900e0

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->feedbackTextView:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0900e1

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->signOutButton:Landroid/widget/Button;

    .line 47
    const v0, 0x7f0900d8

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->portraitImageView:Landroid/widget/ImageView;

    .line 48
    new-instance v0, Lcom/market2345/account/PrivateInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/market2345/account/PrivateInfoActivity$1;-><init>(Lcom/market2345/account/PrivateInfoActivity;)V

    iput-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->mClickListener:Landroid/view/View$OnClickListener;

    .line 73
    iget-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->changePasswordTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/account/PrivateInfoActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->feedbackTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/market2345/account/PrivateInfoActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->signOutButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/market2345/account/PrivateInfoActivity;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const-string v0, "1"

    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/market2345/account/PrivateInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->changePasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-virtual {p0, v6}, Lcom/market2345/account/PrivateInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/PrivateInfoActivity;->changePasswordTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    invoke-virtual {p0, v6}, Lcom/market2345/account/PrivateInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/market2345/account/AccountBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateInfoActivity;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lcom/market2345/account/PrivateInfoActivity;->initView()V

    .line 39
    const-string v0, "\u4e2a\u4eba\u4fe1\u606f"

    invoke-virtual {p0, v0}, Lcom/market2345/account/PrivateInfoActivity;->setTitleText(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Lcom/market2345/account/AccountBaseActivity;->onResume()V

    .line 90
    invoke-direct {p0}, Lcom/market2345/account/PrivateInfoActivity;->initPrivateInfo()V

    .line 91
    return-void
.end method
