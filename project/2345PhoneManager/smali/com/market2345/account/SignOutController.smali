.class public Lcom/market2345/account/SignOutController;
.super Ljava/lang/Object;
.source "SignOutController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/account/SignOutController$AccountAignOutProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public signOut(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    new-instance v0, Lcom/market2345/account/SignOutController$AccountAignOutProxy;

    invoke-direct {v0, p0}, Lcom/market2345/account/SignOutController$AccountAignOutProxy;-><init>(Lcom/market2345/account/SignOutController;)V

    .line 17
    .local v0, "proxy":Lcom/market2345/account/SignOutController$AccountAignOutProxy;
    invoke-virtual {v0, p1}, Lcom/market2345/account/SignOutController$AccountAignOutProxy;->signOutProxy(Landroid/content/Context;)V

    .line 18
    return-void
.end method
