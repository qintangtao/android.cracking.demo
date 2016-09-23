.class Lcom/market2345/account/PhoneSmsController$1;
.super Ljava/lang/Object;
.source "PhoneSmsController.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/PhoneSmsController;->callSendSms(Ljava/lang/String;Landroid/content/Context;Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/PhoneSmsController;

.field final synthetic val$callBack:Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;


# direct methods
.method constructor <init>(Lcom/market2345/account/PhoneSmsController;Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/market2345/account/PhoneSmsController$1;->this$0:Lcom/market2345/account/PhoneSmsController;

    iput-object p2, p0, Lcom/market2345/account/PhoneSmsController$1;->val$callBack:Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 5
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 29
    const/4 v2, 0x0

    .line 30
    .local v2, "smsSuccess":Z
    const-string v0, "\u7f51\u7edc\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5"

    .line 31
    .local v0, "msg":Ljava/lang/String;
    invoke-static {p1}, Lcom/market2345/util/HttpRequestHandler;->isSuccessResponseCode(I)Z

    move-result v3

    .line 32
    .local v3, "success":Z
    if-eqz v3, :cond_1

    move-object v1, p2

    .line 33
    check-cast v1, Lcom/market2345/account/model/SmsCallResult;

    .line 34
    .local v1, "result":Lcom/market2345/account/model/SmsCallResult;
    if-eqz v1, :cond_0

    iget v4, v1, Lcom/market2345/account/model/SmsCallResult;->code:I

    if-nez v4, :cond_0

    .line 35
    const/4 v2, 0x1

    .line 37
    :cond_0
    iget-object v0, v1, Lcom/market2345/account/model/SmsCallResult;->msg:Ljava/lang/String;

    .line 40
    .end local v1    # "result":Lcom/market2345/account/model/SmsCallResult;
    :cond_1
    iget-object v4, p0, Lcom/market2345/account/PhoneSmsController$1;->val$callBack:Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;

    if-eqz v4, :cond_2

    .line 41
    iget-object v4, p0, Lcom/market2345/account/PhoneSmsController$1;->val$callBack:Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;

    invoke-interface {v4, v2, v0}, Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;->callBack(ZLjava/lang/String;)V

    .line 46
    :cond_2
    return-void
.end method
