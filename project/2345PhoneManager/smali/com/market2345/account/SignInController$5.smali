.class Lcom/market2345/account/SignInController$5;
.super Ljava/lang/Object;
.source "SignInController.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/SignInController;->signInAuto(Landroid/content/Context;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/SignInController;

.field final synthetic val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;


# direct methods
.method constructor <init>(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$SignInCallBack;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/market2345/account/SignInController$5;->this$0:Lcom/market2345/account/SignInController;

    iput-object p2, p0, Lcom/market2345/account/SignInController$5;->val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 7
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 203
    const/4 v3, 0x0

    .line 204
    .local v3, "signInSuccess":Z
    const/4 v1, 0x0

    .line 205
    .local v1, "needCheckCode":Z
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 206
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v4

    .line 207
    .local v4, "success":Z
    if-eqz v4, :cond_2

    move-object v2, p2

    .line 208
    check-cast v2, Lcom/market2345/account/model/LoginCallResult;

    .line 209
    .local v2, "result":Lcom/market2345/account/model/LoginCallResult;
    if-eqz v2, :cond_1

    .line 210
    invoke-virtual {v2}, Lcom/market2345/account/model/LoginCallResult;->isSignSuccess()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    const/4 v3, 0x1

    .line 213
    :cond_0
    invoke-virtual {v2}, Lcom/market2345/account/model/LoginCallResult;->isNeedCheckCode()Z

    move-result v1

    .line 215
    :cond_1
    iget-object v0, v2, Lcom/market2345/account/model/LoginCallResult;->msg:Ljava/lang/String;

    .line 217
    .end local v2    # "result":Lcom/market2345/account/model/LoginCallResult;
    :cond_2
    iget-object v5, p0, Lcom/market2345/account/SignInController$5;->val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

    if-eqz v5, :cond_3

    .line 218
    iget-object v5, p0, Lcom/market2345/account/SignInController$5;->this$0:Lcom/market2345/account/SignInController;

    iget-object v6, p0, Lcom/market2345/account/SignInController$5;->val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

    # invokes: Lcom/market2345/account/SignInController;->signInCallBack(Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;ZZ)V
    invoke-static {v5, v6, v0, v3, v1}, Lcom/market2345/account/SignInController;->access$400(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;ZZ)V

    .line 219
    :cond_3
    return-void
.end method
