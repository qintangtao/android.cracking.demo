.class public Lcom/market2345/home/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 46
    const v0, 0x7f040016

    const v1, 0x7f040018

    invoke-virtual {p0, v0, v1}, Lcom/market2345/home/BaseActivity;->overridePendingTransition(II)V

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 31
    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->onPause(Landroid/content/Context;)V

    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 33
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 22
    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 23
    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->onResume(Landroid/content/Context;)V

    .line 24
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 25
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 38
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v0

    goto :goto_0
.end method
