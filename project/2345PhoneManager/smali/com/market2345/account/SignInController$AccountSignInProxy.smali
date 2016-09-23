.class Lcom/market2345/account/SignInController$AccountSignInProxy;
.super Lcom/market2345/account/model/Account;
.source "SignInController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/account/SignInController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountSignInProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/SignInController;


# direct methods
.method constructor <init>(Lcom/market2345/account/SignInController;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/market2345/account/SignInController$AccountSignInProxy;->this$0:Lcom/market2345/account/SignInController;

    invoke-direct {p0}, Lcom/market2345/account/model/Account;-><init>()V

    return-void
.end method


# virtual methods
.method public setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "infoKey"    # I
    .param p2, "infoValue"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2, p3}, Lcom/market2345/account/SignInController$AccountSignInProxy;->setUserInfo(ILjava/lang/String;Landroid/content/Context;)V

    .line 333
    return-void
.end method
