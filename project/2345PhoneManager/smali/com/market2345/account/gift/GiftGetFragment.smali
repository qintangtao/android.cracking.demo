.class public abstract Lcom/market2345/account/gift/GiftGetFragment;
.super Lcom/market2345/account/gift/LoadFragment;
.source "GiftGetFragment.java"


# instance fields
.field private mDialog:Lcom/market2345/common/dialog/LoadingDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/market2345/account/gift/LoadFragment;-><init>()V

    return-void
.end method

.method private reload()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->canLoad()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->showLoadView()V

    .line 201
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->showProgress()V

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/GiftGetFragment;->loadData(Z)V

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->showEmpty()V

    goto :goto_0
.end method

.method private showGetResult(Lcom/market2345/account/gift/event/HttpSuccessEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/market2345/account/gift/event/HttpSuccessEvent;

    .prologue
    .line 84
    iget-object v0, p1, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mData:Ljava/lang/Object;

    check-cast v0, Lcom/market2345/account/model/GiftCode;

    .line 85
    .local v0, "giftCode":Lcom/market2345/account/model/GiftCode;
    iget-object v1, p1, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mGameGift:Lcom/market2345/account/model/GameGift;

    invoke-virtual {p0, v1, v0}, Lcom/market2345/account/gift/GiftGetFragment;->setUpGiftStatus(Lcom/market2345/account/model/GameGift;Lcom/market2345/account/model/GiftCode;)V

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p1, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mFrom:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->hideProgressDialog()V

    .line 88
    iget v1, v0, Lcom/market2345/account/model/GiftCode;->code:I

    packed-switch v1, :pswitch_data_0

    .line 99
    :pswitch_0
    const v1, 0x7f0b005d

    invoke-virtual {p0, v1}, Lcom/market2345/account/gift/GiftGetFragment;->createFailureDialog(I)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 90
    :pswitch_1
    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/GiftGetFragment;->createSuccessDialog(Lcom/market2345/account/model/GiftCode;)V

    goto :goto_0

    .line 93
    :pswitch_2
    const v1, 0x7f0b005c

    invoke-virtual {p0, v1}, Lcom/market2345/account/gift/GiftGetFragment;->createFailureDialog(I)V

    goto :goto_0

    .line 96
    :pswitch_3
    const v1, 0x7f0b005e

    invoke-virtual {p0, v1}, Lcom/market2345/account/gift/GiftGetFragment;->createFailureDialog(I)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected canLoad()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method

.method protected createFailureDialog(I)V
    .locals 5
    .param p1, "resId"    # I

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0c0012

    invoke-direct {v0, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 268
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030046

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 269
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f090194

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    const v2, 0x7f090216

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/market2345/account/gift/GiftGetFragment$5;

    invoke-direct {v3, p0, v0}, Lcom/market2345/account/gift/GiftGetFragment$5;-><init>(Lcom/market2345/account/gift/GiftGetFragment;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 277
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 279
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected createSuccessDialog(Lcom/market2345/account/model/GiftCode;)V
    .locals 6
    .param p1, "giftCode"    # Lcom/market2345/account/model/GiftCode;

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 238
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0c0012

    invoke-direct {v0, v3, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 239
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030047

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 240
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f090218

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 241
    .local v1, "giftCodeView":Landroid/widget/TextView;
    iget-object v3, p1, Lcom/market2345/account/model/GiftCode;->gift:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    const v3, 0x7f090216

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/market2345/account/gift/GiftGetFragment$3;

    invoke-direct {v4, p0, v0}, Lcom/market2345/account/gift/GiftGetFragment$3;-><init>(Lcom/market2345/account/gift/GiftGetFragment;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v3, 0x7f090219

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/market2345/account/gift/GiftGetFragment$4;

    invoke-direct {v4, p0, v1}, Lcom/market2345/account/gift/GiftGetFragment$4;-><init>(Lcom/market2345/account/gift/GiftGetFragment;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 256
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 258
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "giftCodeView":Landroid/widget/TextView;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected hideProgressDialog()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/market2345/account/gift/GiftGetFragment;->mDialog:Lcom/market2345/common/dialog/LoadingDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/market2345/account/gift/GiftGetFragment;->mDialog:Lcom/market2345/common/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/market2345/common/dialog/LoadingDialog;->dismiss()V

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/market2345/account/gift/GiftGetFragment;->mDialog:Lcom/market2345/common/dialog/LoadingDialog;

    .line 228
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/market2345/account/gift/event/DialogProgressEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/market2345/account/gift/event/DialogProgressEvent;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/market2345/account/gift/event/DialogProgressEvent;->mFrom:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget v0, p1, Lcom/market2345/account/gift/event/DialogProgressEvent;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 169
    :pswitch_0
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->showProgressDialog()V

    goto :goto_0

    .line 172
    :pswitch_1
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->hideProgressDialog()V

    goto :goto_0

    .line 167
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/market2345/account/gift/event/HttpFailureEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/market2345/account/gift/event/HttpFailureEvent;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v1, p1, Lcom/market2345/account/gift/event/HttpFailureEvent;->mUrl:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 117
    invoke-virtual {p0, p1}, Lcom/market2345/account/gift/GiftGetFragment;->onLegacyEvent(Lcom/market2345/account/gift/event/HttpFailureEvent;)V

    .line 121
    :cond_1
    :goto_1
    return-void

    .line 109
    :pswitch_0
    const-string v2, "http://zhushou.2345.com/index.php?c=giftApi&d=getGiftCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p1, Lcom/market2345/account/gift/event/HttpFailureEvent;->mFrom:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->hideProgressDialog()V

    .line 113
    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/market2345/account/gift/GiftGetFragment;->createFailureDialog(I)V

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch -0x2886881b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/market2345/account/gift/event/HttpSuccessEvent;)V
    .locals 3
    .param p1, "event"    # Lcom/market2345/account/gift/event/HttpSuccessEvent;

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    iget-object v1, p1, Lcom/market2345/account/gift/event/HttpSuccessEvent;->mUrl:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 71
    invoke-virtual {p0, p1}, Lcom/market2345/account/gift/GiftGetFragment;->onLegacyEvent(Lcom/market2345/account/gift/event/HttpSuccessEvent;)V

    .line 75
    :cond_1
    :goto_1
    return-void

    .line 66
    :pswitch_0
    const-string v2, "http://zhushou.2345.com/index.php?c=giftApi&d=getGiftCode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/market2345/account/gift/GiftGetFragment;->showGetResult(Lcom/market2345/account/gift/event/HttpSuccessEvent;)V

    goto :goto_1

    .line 66
    nop

    :pswitch_data_0
    .packed-switch -0x2886881b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onEventMainThread(Lcom/market2345/account/gift/event/UnLoginEvent;)V
    .locals 8
    .param p1, "event"    # Lcom/market2345/account/gift/event/UnLoginEvent;

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->isAdded()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p1, Lcom/market2345/account/gift/event/UnLoginEvent;->mFrom:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 131
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0c0012

    invoke-direct {v0, v5, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 132
    .local v0, "dialog":Landroid/app/Dialog;
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03004c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 133
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f090107

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 134
    .local v3, "title":Landroid/widget/TextView;
    const v5, 0x7f090205

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 135
    .local v2, "positive":Landroid/widget/Button;
    const v5, 0x7f090204

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 136
    .local v1, "negative":Landroid/widget/Button;
    const-string v5, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    const-string v5, "\u53bb\u767b\u5f55"

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 138
    const-string v5, "\u518d\u770b\u770b"

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 139
    new-instance v5, Lcom/market2345/account/gift/GiftGetFragment$1;

    invoke-direct {v5, p0, v0}, Lcom/market2345/account/gift/GiftGetFragment$1;-><init>(Lcom/market2345/account/gift/GiftGetFragment;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v5, Lcom/market2345/account/gift/GiftGetFragment$2;

    invoke-direct {v5, p0, v0}, Lcom/market2345/account/gift/GiftGetFragment$2;-><init>(Lcom/market2345/account/gift/GiftGetFragment;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 156
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 158
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "negative":Landroid/widget/Button;
    .end local v2    # "positive":Landroid/widget/Button;
    .end local v3    # "title":Landroid/widget/TextView;
    .end local v4    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onEventMainThread(Lcom/market2345/account/model/event/SignInResultEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/market2345/account/model/event/SignInResultEvent;

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/market2345/account/gift/GiftGetFragment;->reload()V

    .line 185
    return-void
.end method

.method public onEventMainThread(Lcom/market2345/account/model/event/SignOutResultEvent;)V
    .locals 0
    .param p1, "event"    # Lcom/market2345/account/model/event/SignOutResultEvent;

    .prologue
    .line 194
    invoke-direct {p0}, Lcom/market2345/account/gift/GiftGetFragment;->reload()V

    .line 195
    return-void
.end method

.method protected abstract onLegacyEvent(Lcom/market2345/account/gift/event/HttpFailureEvent;)V
.end method

.method protected abstract onLegacyEvent(Lcom/market2345/account/gift/event/HttpSuccessEvent;)V
.end method

.method protected abstract setUpGiftStatus(Lcom/market2345/account/model/GameGift;Lcom/market2345/account/model/GiftCode;)V
.end method

.method protected showProgressDialog()V
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/market2345/account/gift/GiftGetFragment;->mDialog:Lcom/market2345/common/dialog/LoadingDialog;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Lcom/market2345/common/dialog/LoadingDialog;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/common/dialog/LoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/market2345/account/gift/GiftGetFragment;->mDialog:Lcom/market2345/common/dialog/LoadingDialog;

    .line 215
    iget-object v0, p0, Lcom/market2345/account/gift/GiftGetFragment;->mDialog:Lcom/market2345/common/dialog/LoadingDialog;

    invoke-virtual {p0}, Lcom/market2345/account/gift/GiftGetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/common/dialog/LoadingDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/market2345/account/gift/GiftGetFragment;->mDialog:Lcom/market2345/common/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/market2345/common/dialog/LoadingDialog;->show()V

    .line 218
    :cond_0
    return-void
.end method
