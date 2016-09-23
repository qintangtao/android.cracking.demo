.class public Lcom/market2345/home/BaseFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "BaseFragmentActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 29
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 31
    const v0, 0x7f040016

    const v1, 0x7f040018

    invoke-virtual {p0, v0, v1}, Lcom/market2345/home/BaseFragmentActivity;->overridePendingTransition(II)V

    .line 32
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 38
    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->onPause(Landroid/content/Context;)V

    .line 39
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 40
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 21
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 23
    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->onResume(Landroid/content/Context;)V

    .line 24
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 25
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    goto :goto_0
.end method
