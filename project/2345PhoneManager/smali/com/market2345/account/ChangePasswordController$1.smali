.class Lcom/market2345/account/ChangePasswordController$1;
.super Ljava/lang/Object;
.source "ChangePasswordController.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/ChangePasswordController;->changePassword(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/ChangePasswordController;

.field final synthetic val$changeResultCallBack:Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;


# direct methods
.method constructor <init>(Lcom/market2345/account/ChangePasswordController;Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/market2345/account/ChangePasswordController$1;->this$0:Lcom/market2345/account/ChangePasswordController;

    iput-object p2, p0, Lcom/market2345/account/ChangePasswordController$1;->val$changeResultCallBack:Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 5
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "changeSuccess":Z
    const-string v1, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 35
    .local v1, "msg":Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v3

    .line 36
    .local v3, "success":Z
    if-eqz v3, :cond_1

    move-object v2, p2

    .line 37
    check-cast v2, Lcom/market2345/account/model/ChangePasswordCallResult;

    .line 38
    .local v2, "result":Lcom/market2345/account/model/ChangePasswordCallResult;
    if-eqz v2, :cond_0

    iget v4, v2, Lcom/market2345/account/model/ChangePasswordCallResult;->code:I

    if-nez v4, :cond_0

    .line 39
    const/4 v0, 0x1

    .line 41
    :cond_0
    iget-object v1, v2, Lcom/market2345/account/model/ChangePasswordCallResult;->msg:Ljava/lang/String;

    .line 43
    .end local v2    # "result":Lcom/market2345/account/model/ChangePasswordCallResult;
    :cond_1
    iget-object v4, p0, Lcom/market2345/account/ChangePasswordController$1;->val$changeResultCallBack:Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;

    if-eqz v4, :cond_2

    .line 44
    iget-object v4, p0, Lcom/market2345/account/ChangePasswordController$1;->val$changeResultCallBack:Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;

    invoke-interface {v4, v0, v1}, Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;->callBack(ZLjava/lang/String;)V

    .line 45
    :cond_2
    return-void
.end method
