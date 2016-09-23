.class Lcom/market2345/account/SignInController$3;
.super Ljava/lang/Object;
.source "SignInController.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/SignInController;->checkHasCheckCode(Landroid/content/Context;Lcom/market2345/account/SignInController$HasCheckCodeCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/SignInController;

.field final synthetic val$callBack:Lcom/market2345/account/SignInController$HasCheckCodeCallBack;


# direct methods
.method constructor <init>(Lcom/market2345/account/SignInController;Lcom/market2345/account/SignInController$HasCheckCodeCallBack;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/market2345/account/SignInController$3;->this$0:Lcom/market2345/account/SignInController;

    iput-object p2, p0, Lcom/market2345/account/SignInController$3;->val$callBack:Lcom/market2345/account/SignInController$HasCheckCodeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 5
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    const/4 v2, 0x1

    .line 113
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v1

    .line 114
    .local v1, "success":Z
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/market2345/account/SignInController$3;->val$callBack:Lcom/market2345/account/SignInController$HasCheckCodeCallBack;

    if-eqz v3, :cond_0

    move-object v0, p2

    .line 115
    check-cast v0, Lcom/market2345/account/model/HasCheckCodeCallResult;

    .line 116
    .local v0, "result":Lcom/market2345/account/model/HasCheckCodeCallResult;
    iget-object v3, p0, Lcom/market2345/account/SignInController$3;->val$callBack:Lcom/market2345/account/SignInController$HasCheckCodeCallBack;

    iget v4, v0, Lcom/market2345/account/model/HasCheckCodeCallResult;->code:I

    if-ne v4, v2, :cond_1

    :goto_0
    iget-object v4, v0, Lcom/market2345/account/model/HasCheckCodeCallResult;->msg:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Lcom/market2345/account/SignInController$HasCheckCodeCallBack;->callBack(ZLjava/lang/String;)V

    .line 118
    .end local v0    # "result":Lcom/market2345/account/model/HasCheckCodeCallResult;
    :cond_0
    return-void

    .line 116
    .restart local v0    # "result":Lcom/market2345/account/model/HasCheckCodeCallResult;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
