.class Lcom/market2345/account/SignInController$6;
.super Ljava/lang/Object;
.source "SignInController.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/SignInController;->signIn(Ljava/lang/String;Ljava/lang/String;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;Lorg/apache/http/cookie/Cookie;Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/SignInController;

.field final synthetic val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/account/SignInController;Ljava/lang/String;Landroid/content/Context;Lcom/market2345/account/SignInController$SignInCallBack;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/market2345/account/SignInController$6;->this$0:Lcom/market2345/account/SignInController;

    iput-object p2, p0, Lcom/market2345/account/SignInController$6;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/market2345/account/SignInController$6;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/market2345/account/SignInController$6;->val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 7
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 266
    const/4 v3, 0x0

    .line 267
    .local v3, "signInSuccess":Z
    const/4 v1, 0x0

    .line 268
    .local v1, "needCheckCode":Z
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 269
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v4

    .line 270
    .local v4, "success":Z
    if-eqz v4, :cond_2

    move-object v2, p2

    .line 271
    check-cast v2, Lcom/market2345/account/model/LoginCallResultForUserCenter;

    .line 272
    .local v2, "result":Lcom/market2345/account/model/LoginCallResultForUserCenter;
    if-eqz v2, :cond_1

    .line 273
    invoke-virtual {v2}, Lcom/market2345/account/model/LoginCallResultForUserCenter;->isSignSuccess()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 274
    const/4 v3, 0x1

    .line 275
    iget-object v5, v2, Lcom/market2345/account/model/LoginCallResultForUserCenter;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v6, p0, Lcom/market2345/account/SignInController$6;->val$username:Ljava/lang/String;

    iput-object v6, v5, Lcom/market2345/account/model/UserInfo;->uName:Ljava/lang/String;

    .line 277
    iget-object v5, p0, Lcom/market2345/account/SignInController$6;->this$0:Lcom/market2345/account/SignInController;

    iget-object v6, p0, Lcom/market2345/account/SignInController$6;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v2, v6}, Lcom/market2345/account/SignInController;->saveSuccessResuet(Lcom/market2345/account/model/RegisterCallResult;Landroid/content/Context;)V

    .line 279
    :cond_0
    invoke-virtual {v2}, Lcom/market2345/account/model/LoginCallResultForUserCenter;->isNeedCheckCode()Z

    move-result v1

    .line 281
    :cond_1
    iget-object v0, v2, Lcom/market2345/account/model/LoginCallResultForUserCenter;->msg:Ljava/lang/String;

    .line 283
    .end local v2    # "result":Lcom/market2345/account/model/LoginCallResultForUserCenter;
    :cond_2
    iget-object v5, p0, Lcom/market2345/account/SignInController$6;->val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

    if-eqz v5, :cond_3

    .line 284
    iget-object v5, p0, Lcom/market2345/account/SignInController$6;->this$0:Lcom/market2345/account/SignInController;

    iget-object v6, p0, Lcom/market2345/account/SignInController$6;->val$callBack:Lcom/market2345/account/SignInController$SignInCallBack;

    # invokes: Lcom/market2345/account/SignInController;->signInCallBack(Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;ZZ)V
    invoke-static {v5, v6, v0, v3, v1}, Lcom/market2345/account/SignInController;->access$400(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$SignInCallBack;Ljava/lang/String;ZZ)V

    .line 285
    :cond_3
    return-void
.end method
