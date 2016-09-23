.class public Lcom/market2345/account/AccountBaseActivityForPrivateCenter;
.super Lcom/market2345/home/BaseFragmentActivity;
.source "AccountBaseActivityForPrivateCenter.java"


# instance fields
.field protected mProgressDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/market2345/home/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected dismissProgressDialog()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 40
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 72
    invoke-super {p0}, Lcom/market2345/home/BaseFragmentActivity;->finish()V

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->mProgressDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 58
    :cond_0
    invoke-super {p0}, Lcom/market2345/home/BaseFragmentActivity;->onDestroy()V

    .line 59
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 77
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 79
    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->onPause(Landroid/content/Context;)V

    .line 80
    invoke-super {p0}, Lcom/market2345/home/BaseFragmentActivity;->onPause()V

    .line 81
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 64
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 66
    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->onResume(Landroid/content/Context;)V

    .line 67
    invoke-super {p0}, Lcom/market2345/home/BaseFragmentActivity;->onResume()V

    .line 68
    return-void
.end method

.method protected setTitleText(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 43
    const v1, 0x7f09009f

    invoke-virtual {p0, v1}, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 44
    .local v0, "textView":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    return-void
.end method

.method protected showProgressDialog()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->mProgressDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f0c0012

    invoke-direct {v0, p0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->mProgressDialog:Landroid/app/Dialog;

    .line 29
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->mProgressDialog:Landroid/app/Dialog;

    const v1, 0x7f030039

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 30
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->mProgressDialog:Landroid/app/Dialog;

    const v1, 0x7f090194

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "\u8fde\u63a5\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->mProgressDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->mProgressDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 35
    :cond_1
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 24
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 86
    :try_start_0
    invoke-super {p0, p1}, Lcom/market2345/home/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public titleBack(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/market2345/account/AccountBaseActivityForPrivateCenter;->finish()V

    .line 51
    return-void
.end method
