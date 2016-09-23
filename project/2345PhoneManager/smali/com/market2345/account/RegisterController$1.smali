.class Lcom/market2345/account/RegisterController$1;
.super Ljava/lang/Object;
.source "RegisterController.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/RegisterController;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/market2345/account/RegisterController$RegisterCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/RegisterController;

.field final synthetic val$callBack:Lcom/market2345/account/RegisterController$RegisterCallBack;


# direct methods
.method constructor <init>(Lcom/market2345/account/RegisterController;Lcom/market2345/account/RegisterController$RegisterCallBack;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/market2345/account/RegisterController$1;->this$0:Lcom/market2345/account/RegisterController;

    iput-object p2, p0, Lcom/market2345/account/RegisterController$1;->val$callBack:Lcom/market2345/account/RegisterController$RegisterCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 6
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 35
    const/4 v1, 0x0

    .line 36
    .local v1, "registerSuccess":Z
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 37
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v3

    .line 38
    .local v3, "success":Z
    if-eqz v3, :cond_1

    move-object v2, p2

    .line 39
    check-cast v2, Lcom/market2345/account/model/RegisterCallResult;

    .line 40
    .local v2, "result":Lcom/market2345/account/model/RegisterCallResult;
    if-eqz v2, :cond_0

    iget v4, v2, Lcom/market2345/account/model/RegisterCallResult;->code:I

    if-nez v4, :cond_0

    .line 41
    const/4 v1, 0x1

    .line 42
    iget-object v4, p0, Lcom/market2345/account/RegisterController$1;->this$0:Lcom/market2345/account/RegisterController;

    iget-object v5, p0, Lcom/market2345/account/RegisterController$1;->this$0:Lcom/market2345/account/RegisterController;

    # getter for: Lcom/market2345/account/RegisterController;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/market2345/account/RegisterController;->access$000(Lcom/market2345/account/RegisterController;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/market2345/account/RegisterController;->saveSuccessResuet(Lcom/market2345/account/model/RegisterCallResult;Landroid/content/Context;)V

    .line 44
    :cond_0
    iget-object v0, v2, Lcom/market2345/account/model/RegisterCallResult;->msg:Ljava/lang/String;

    .line 46
    .end local v2    # "result":Lcom/market2345/account/model/RegisterCallResult;
    :cond_1
    iget-object v4, p0, Lcom/market2345/account/RegisterController$1;->val$callBack:Lcom/market2345/account/RegisterController$RegisterCallBack;

    if-eqz v4, :cond_2

    .line 47
    iget-object v4, p0, Lcom/market2345/account/RegisterController$1;->this$0:Lcom/market2345/account/RegisterController;

    iget-object v5, p0, Lcom/market2345/account/RegisterController$1;->val$callBack:Lcom/market2345/account/RegisterController$RegisterCallBack;

    # invokes: Lcom/market2345/account/RegisterController;->registerCallBack(Lcom/market2345/account/RegisterController$RegisterCallBack;Ljava/lang/String;Z)V
    invoke-static {v4, v5, v0, v1}, Lcom/market2345/account/RegisterController;->access$100(Lcom/market2345/account/RegisterController;Lcom/market2345/account/RegisterController$RegisterCallBack;Ljava/lang/String;Z)V

    .line 48
    :cond_2
    return-void
.end method
