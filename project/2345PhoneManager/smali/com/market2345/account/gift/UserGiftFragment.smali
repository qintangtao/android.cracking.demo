.class public Lcom/market2345/account/gift/UserGiftFragment;
.super Lcom/market2345/account/gift/GiftListFragment;
.source "UserGiftFragment.java"


# instance fields
.field private mUnLoginView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/market2345/account/gift/GiftListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected canLoad()Z
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/market2345/account/gift/UserGiftFragment;->getGiftDelegate()Lcom/market2345/account/gift/GiftDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/account/gift/GiftDelegate;->isLogin()Z

    move-result v0

    return v0
.end method

.method protected getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "http://zhushou.2345.com/index.php?c=giftApi&d=myGiftList"

    return-object v0
.end method

.method protected loadData(Z)V
    .locals 2
    .param p1, "reload"    # Z

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/market2345/account/gift/GiftListFragment;->loadData(Z)V

    .line 37
    iget-object v0, p0, Lcom/market2345/account/gift/UserGiftFragment;->mUnLoginView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/market2345/account/gift/UserGiftFragment;->mUnLoginView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 40
    :cond_0
    return-void
.end method

.method protected setUpGiftStatus(Lcom/market2345/account/model/GameGift;Lcom/market2345/account/model/GiftCode;)V
    .locals 2
    .param p1, "gift"    # Lcom/market2345/account/model/GameGift;
    .param p2, "giftCode"    # Lcom/market2345/account/model/GiftCode;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/market2345/account/gift/UserGiftFragment;->getGiftListAdapter()Lcom/market2345/account/gift/GiftListAdapter;

    move-result-object v0

    .line 59
    .local v0, "adapter":Lcom/market2345/account/gift/GiftListAdapter;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 60
    iget v1, p2, Lcom/market2345/account/model/GiftCode;->code:I

    packed-switch v1, :pswitch_data_0

    .line 67
    :goto_0
    invoke-virtual {v0}, Lcom/market2345/account/gift/GiftListAdapter;->notifyDataSetChanged()V

    .line 69
    :cond_0
    return-void

    .line 62
    :pswitch_0
    const-string v1, "4"

    iput-object v1, p1, Lcom/market2345/account/model/GameGift;->btnStatus:Ljava/lang/String;

    .line 63
    iget-object v1, p2, Lcom/market2345/account/model/GiftCode;->gift:Ljava/lang/String;

    iput-object v1, p1, Lcom/market2345/account/model/GameGift;->userGiftCode:Ljava/lang/String;

    .line 64
    invoke-virtual {v0, p1}, Lcom/market2345/account/gift/GiftListAdapter;->addGiftList(Lcom/market2345/account/model/GameGift;)V

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected showEmpty()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/market2345/account/gift/UserGiftFragment;->mUnLoginView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/market2345/account/gift/UserGiftFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090293

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/account/gift/UserGiftFragment;->mUnLoginView:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/market2345/account/gift/UserGiftFragment;->mUnLoginView:Landroid/view/View;

    const v1, 0x7f090416

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/market2345/account/gift/UserGiftFragment$1;

    invoke-direct {v1, p0}, Lcom/market2345/account/gift/UserGiftFragment$1;-><init>(Lcom/market2345/account/gift/UserGiftFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/gift/UserGiftFragment;->mUnLoginView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    return-void
.end method
