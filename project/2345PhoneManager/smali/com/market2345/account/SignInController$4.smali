.class Lcom/market2345/account/SignInController$4;
.super Ljava/lang/Object;
.source "SignInController.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/SignInController;->signInWithQQ(Landroid/app/Activity;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/SignInController;

.field final synthetic val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$tencent:Lcom/tencent/tauth/Tencent;


# direct methods
.method constructor <init>(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$SignInCallBack;Lcom/tencent/tauth/Tencent;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/market2345/account/SignInController$4;->this$0:Lcom/market2345/account/SignInController;

    iput-object p2, p0, Lcom/market2345/account/SignInController$4;->val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

    iput-object p3, p0, Lcom/market2345/account/SignInController$4;->val$tencent:Lcom/tencent/tauth/Tencent;

    iput-object p4, p0, Lcom/market2345/account/SignInController$4;->val$context:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/market2345/account/SignInController$4;->this$0:Lcom/market2345/account/SignInController;

    iget-object v1, p0, Lcom/market2345/account/SignInController$4;->val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

    const/4 v2, 0x0

    const/4 v3, 0x0

    # invokes: Lcom/market2345/account/SignInController;->signInCallBack(Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/market2345/account/SignInController;->access$300(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Z)V

    .line 140
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 8
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    .line 145
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "arg0":Ljava/lang/Object;
    const-string v4, "access_token"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "token_parse":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    iget-object v4, p0, Lcom/market2345/account/SignInController$4;->val$tencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v4}, Lcom/tencent/tauth/Tencent;->getQQToken()Lcom/tencent/connect/auth/QQToken;

    move-result-object v1

    .line 148
    .local v1, "qqToken":Lcom/tencent/connect/auth/QQToken;
    invoke-virtual {v1}, Lcom/tencent/connect/auth/QQToken;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 150
    .end local v1    # "qqToken":Lcom/tencent/connect/auth/QQToken;
    :cond_0
    move-object v2, v3

    .line 151
    .local v2, "token":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 152
    iget-object v4, p0, Lcom/market2345/account/SignInController$4;->this$0:Lcom/market2345/account/SignInController;

    iget-object v5, p0, Lcom/market2345/account/SignInController$4;->val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

    const-string v6, "\u9a8c\u8bc1\u5931\u8d25"

    const/4 v7, 0x0

    # invokes: Lcom/market2345/account/SignInController;->signInCallBack(Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6, v7}, Lcom/market2345/account/SignInController;->access$300(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Z)V

    .line 178
    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    iget-object v4, p0, Lcom/market2345/account/SignInController$4;->val$context:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v4, "http://zhushou.2345.com/index.php?c=member&d=qqLogin"

    invoke-virtual {v0, v4}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v4

    const-string v5, "token"

    invoke-virtual {v4, v5, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v4

    const-class v5, Lcom/market2345/account/model/LoginCallResult;

    invoke-virtual {v4, v5}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v4

    new-instance v5, Lcom/market2345/account/SignInController$4$1;

    invoke-direct {v5, p0}, Lcom/market2345/account/SignInController$4$1;-><init>(Lcom/market2345/account/SignInController$4;)V

    invoke-virtual {v4, v5}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v4

    invoke-interface {v4}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    goto :goto_0
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 4
    .param p1, "uiError"    # Lcom/tencent/tauth/UiError;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/market2345/account/SignInController$4;->this$0:Lcom/market2345/account/SignInController;

    iget-object v1, p0, Lcom/market2345/account/SignInController$4;->val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

    const-string v2, "\u9a8c\u8bc1\u51fa\u9519"

    const/4 v3, 0x0

    # invokes: Lcom/market2345/account/SignInController;->signInCallBack(Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Z)V
    invoke-static {v0, v1, v2, v3}, Lcom/market2345/account/SignInController;->access$300(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Z)V

    .line 183
    return-void
.end method
