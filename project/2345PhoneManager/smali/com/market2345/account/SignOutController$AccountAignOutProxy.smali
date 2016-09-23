.class Lcom/market2345/account/SignOutController$AccountAignOutProxy;
.super Lcom/market2345/account/model/Account;
.source "SignOutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/account/SignOutController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountAignOutProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/SignOutController;


# direct methods
.method constructor <init>(Lcom/market2345/account/SignOutController;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/market2345/account/SignOutController$AccountAignOutProxy;->this$0:Lcom/market2345/account/SignOutController;

    invoke-direct {p0}, Lcom/market2345/account/model/Account;-><init>()V

    return-void
.end method


# virtual methods
.method public signOutProxy(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/market2345/account/SignOutController$AccountAignOutProxy;->signOut(Landroid/content/Context;)V

    .line 23
    return-void
.end method
