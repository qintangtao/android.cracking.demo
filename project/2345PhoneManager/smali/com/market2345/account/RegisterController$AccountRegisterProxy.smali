.class Lcom/market2345/account/RegisterController$AccountRegisterProxy;
.super Lcom/market2345/account/model/Account;
.source "RegisterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/account/RegisterController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccountRegisterProxy"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/RegisterController;


# direct methods
.method constructor <init>(Lcom/market2345/account/RegisterController;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/market2345/account/RegisterController$AccountRegisterProxy;->this$0:Lcom/market2345/account/RegisterController;

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
    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lcom/market2345/account/RegisterController$AccountRegisterProxy;->setUserInfo(ILjava/lang/String;Landroid/content/Context;)V

    .line 76
    return-void
.end method
