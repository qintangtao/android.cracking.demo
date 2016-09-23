.class public Lcom/market2345/account/AccountBaseActivity;
.super Lcom/market2345/home/BaseFragmentActivity;
.source "AccountBaseActivity.java"


# instance fields
.field protected mProgressDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/market2345/home/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected dismissProgressDialog()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 37
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivity;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 55
    :cond_0
    invoke-super {p0}, Lcom/market2345/home/BaseFragmentActivity;->onDestroy()V

    .line 56
    return-void
.end method

.method protected setTitleText(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 40
    const v1, 0x7f09009f

    invoke-virtual {p0, v1}, Lcom/market2345/account/AccountBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    :cond_0
    return-void
.end method

.method protected showProgressDialog()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivity;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0c0012

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/market2345/account/AccountBaseActivity;->mProgressDialog:Landroid/app/Dialog;

    .line 26
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivity;->mProgressDialog:Landroid/app/Dialog;

    const v1, 0x7f030039

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 27
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivity;->mProgressDialog:Landroid/app/Dialog;

    const v1, 0x7f090194

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u8fde\u63a5\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivity;->mProgressDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivity;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 32
    :cond_1
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lcom/market2345/account/AccountBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 21
    :cond_0
    return-void
.end method

.method public titleBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/market2345/account/AccountBaseActivity;->finish()V

    .line 48
    return-void
.end method
