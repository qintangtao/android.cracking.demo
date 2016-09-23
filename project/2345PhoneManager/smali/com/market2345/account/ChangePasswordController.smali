.class public Lcom/market2345/account/ChangePasswordController;
.super Ljava/lang/Object;
.source "ChangePasswordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public changePassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;)V
    .locals 4
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "changeResultCallBack"    # Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;

    .prologue
    .line 20
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3, p3}, Lcom/market2345/account/model/Account;->getUserInfo(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "passId":Ljava/lang/String;
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-direct {v0, p3}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 25
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v2, "http://zhushou.2345.com/index.php?c=memberApi&d=updatePassword"

    invoke-virtual {v0, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v2

    const-string v3, "passid"

    invoke-virtual {v2, v3, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v2

    const-string v3, "old"

    invoke-virtual {v2, v3, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v2

    const-string v3, "new"

    invoke-virtual {v2, v3, p2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v2

    const-class v3, Lcom/market2345/account/model/ChangePasswordCallResult;

    invoke-virtual {v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v2

    new-instance v3, Lcom/market2345/account/ChangePasswordController$1;

    invoke-direct {v3, p0, p4}, Lcom/market2345/account/ChangePasswordController$1;-><init>(Lcom/market2345/account/ChangePasswordController;Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;)V

    invoke-virtual {v2, v3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v2

    invoke-interface {v2}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 48
    return-void
.end method
