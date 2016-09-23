.class public Lcom/market2345/account/ResetPwdActivity;
.super Lcom/market2345/home/BaseFragmentActivity;
.source "ResetPwdActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/market2345/home/BaseFragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/market2345/home/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/market2345/account/ResetPwdActivity;->setContentView(I)V

    .line 15
    return-void
.end method
