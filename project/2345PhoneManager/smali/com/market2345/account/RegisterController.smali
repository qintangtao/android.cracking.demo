.class Lcom/market2345/account/RegisterController;
.super Ljava/lang/Object;
.source "RegisterController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/account/RegisterController$AccountRegisterProxy;,
        Lcom/market2345/account/RegisterController$RegisterCallBack;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/market2345/account/RegisterController;->mContext:Landroid/content/Context;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/account/RegisterController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/account/RegisterController;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/market2345/account/RegisterController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/account/RegisterController;Lcom/market2345/account/RegisterController$RegisterCallBack;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/account/RegisterController;
    .param p1, "x1"    # Lcom/market2345/account/RegisterController$RegisterCallBack;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/market2345/account/RegisterController;->registerCallBack(Lcom/market2345/account/RegisterController$RegisterCallBack;Ljava/lang/String;Z)V

    return-void
.end method

.method private registerCallBack(Lcom/market2345/account/RegisterController$RegisterCallBack;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "callBack"    # Lcom/market2345/account/RegisterController$RegisterCallBack;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "success"    # Z

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-interface {p1, p3, p2}, Lcom/market2345/account/RegisterController$RegisterCallBack;->callback(ZLjava/lang/String;)V

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/market2345/account/RegisterController$RegisterCallBack;)V
    .locals 3
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "SMSCode"    # Ljava/lang/String;
    .param p4, "callBack"    # Lcom/market2345/account/RegisterController$RegisterCallBack;

    .prologue
    .line 26
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    iget-object v1, p0, Lcom/market2345/account/RegisterController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=memberApi&d=reg"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "sms_code"

    invoke-virtual {v1, v2, p3}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-class v2, Lcom/market2345/account/model/RegisterCallResult;

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    new-instance v2, Lcom/market2345/account/RegisterController$1;

    invoke-direct {v2, p0, p4}, Lcom/market2345/account/RegisterController$1;-><init>(Lcom/market2345/account/RegisterController;Lcom/market2345/account/RegisterController$RegisterCallBack;)V

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    invoke-interface {v1}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 51
    return-void
.end method

.method saveSuccessResuet(Lcom/market2345/account/model/RegisterCallResult;Landroid/content/Context;)V
    .locals 3
    .param p1, "result"    # Lcom/market2345/account/model/RegisterCallResult;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    new-instance v0, Lcom/market2345/account/RegisterController$AccountRegisterProxy;

    invoke-direct {v0, p0}, Lcom/market2345/account/RegisterController$AccountRegisterProxy;-><init>(Lcom/market2345/account/RegisterController;)V

    .line 60
    .local v0, "proxy":Lcom/market2345/account/RegisterController$AccountRegisterProxy;
    const/4 v1, 0x1

    iget-object v2, p1, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v2, v2, Lcom/market2345/account/model/UserInfo;->uName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/market2345/account/RegisterController$AccountRegisterProxy;->setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V

    .line 61
    const/4 v1, 0x2

    iget-object v2, p1, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v2, v2, Lcom/market2345/account/model/UserInfo;->uId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/market2345/account/RegisterController$AccountRegisterProxy;->setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V

    .line 62
    const/4 v1, 0x5

    iget-object v2, p1, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v2, v2, Lcom/market2345/account/model/UserInfo;->passId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/market2345/account/RegisterController$AccountRegisterProxy;->setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V

    .line 63
    const/4 v1, 0x3

    iget-object v2, p1, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v2, v2, Lcom/market2345/account/model/UserInfo;->lastToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/market2345/account/RegisterController$AccountRegisterProxy;->setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V

    .line 64
    const/4 v1, 0x6

    iget-object v2, p1, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v2, v2, Lcom/market2345/account/model/UserInfo;->avatarURL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/market2345/account/RegisterController$AccountRegisterProxy;->setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V

    .line 65
    const/4 v1, 0x7

    iget-object v2, p1, Lcom/market2345/account/model/RegisterCallResult;->userInfo:Lcom/market2345/account/model/UserInfo;

    iget-object v2, v2, Lcom/market2345/account/model/UserInfo;->regType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p2}, Lcom/market2345/account/RegisterController$AccountRegisterProxy;->setUserInfoProxy(ILjava/lang/String;Landroid/content/Context;)V

    .line 66
    return-void
.end method
