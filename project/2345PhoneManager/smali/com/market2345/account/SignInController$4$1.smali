.class Lcom/market2345/account/SignInController$4$1;
.super Ljava/lang/Object;
.source "SignInController.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/SignInController$4;->onComplete(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/account/SignInController$4;


# direct methods
.method constructor <init>(Lcom/market2345/account/SignInController$4;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/market2345/account/SignInController$4$1;->this$1:Lcom/market2345/account/SignInController$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 6
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, "registerSuccess":Z
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 163
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v3

    .line 164
    .local v3, "success":Z
    if-eqz v3, :cond_1

    move-object v2, p2

    .line 165
    check-cast v2, Lcom/market2345/account/model/LoginCallResult;

    .line 166
    .local v2, "result":Lcom/market2345/account/model/LoginCallResult;
    if-eqz v2, :cond_0

    iget v4, v2, Lcom/market2345/account/model/LoginCallResult;->code:I

    if-nez v4, :cond_0

    .line 167
    const/4 v1, 0x1

    .line 168
    iget-object v4, p0, Lcom/market2345/account/SignInController$4$1;->this$1:Lcom/market2345/account/SignInController$4;

    iget-object v4, v4, Lcom/market2345/account/SignInController$4;->this$0:Lcom/market2345/account/SignInController;

    iget-object v5, p0, Lcom/market2345/account/SignInController$4$1;->this$1:Lcom/market2345/account/SignInController$4;

    iget-object v5, v5, Lcom/market2345/account/SignInController$4;->val$context:Landroid/app/Activity;

    invoke-virtual {v4, v2, v5}, Lcom/market2345/account/SignInController;->saveSuccessResuet(Lcom/market2345/account/model/RegisterCallResult;Landroid/content/Context;)V

    .line 170
    :cond_0
    iget-object v0, v2, Lcom/market2345/account/model/LoginCallResult;->msg:Ljava/lang/String;

    .line 172
    .end local v2    # "result":Lcom/market2345/account/model/LoginCallResult;
    :cond_1
    iget-object v4, p0, Lcom/market2345/account/SignInController$4$1;->this$1:Lcom/market2345/account/SignInController$4;

    iget-object v4, v4, Lcom/market2345/account/SignInController$4;->val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

    if-eqz v4, :cond_2

    .line 173
    iget-object v4, p0, Lcom/market2345/account/SignInController$4$1;->this$1:Lcom/market2345/account/SignInController$4;

    iget-object v4, v4, Lcom/market2345/account/SignInController$4;->this$0:Lcom/market2345/account/SignInController;

    iget-object v5, p0, Lcom/market2345/account/SignInController$4$1;->this$1:Lcom/market2345/account/SignInController$4;

    iget-object v5, v5, Lcom/market2345/account/SignInController$4;->val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

    # invokes: Lcom/market2345/account/SignInController;->signInCallBack(Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Z)V
    invoke-static {v4, v5, v0, v1}, Lcom/market2345/account/SignInController;->access$300(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Z)V

    .line 175
    :cond_2
    return-void
.end method
