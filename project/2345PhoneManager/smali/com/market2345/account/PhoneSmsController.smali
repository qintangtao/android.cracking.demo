.class public Lcom/market2345/account/PhoneSmsController;
.super Ljava/lang/Object;
.source "PhoneSmsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public callSendSms(Ljava/lang/String;Landroid/content/Context;Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;)V
    .locals 3
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "callBack"    # Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;

    .prologue
    .line 22
    new-instance v0, Lcom/market2345/httpnew/HttpTransactionBuilder;

    invoke-direct {v0, p2}, Lcom/market2345/httpnew/HttpTransactionBuilder;-><init>(Landroid/content/Context;)V

    .line 23
    .local v0, "builder":Lcom/market2345/httpnew/HttpTransactionBuilder;
    const-string v1, "http://zhushou.2345.com/index.php?c=memberApi&d=sendSmsCode"

    invoke-virtual {v0, v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setURL(Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-class v2, Lcom/market2345/account/model/SmsCallResult;

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setParseTo(Ljava/lang/Class;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2, p1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->putParam(Ljava/lang/String;Ljava/lang/String;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    new-instance v2, Lcom/market2345/account/PhoneSmsController$1;

    invoke-direct {v2, p0, p3}, Lcom/market2345/account/PhoneSmsController$1;-><init>(Lcom/market2345/account/PhoneSmsController;Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;)V

    invoke-virtual {v1, v2}, Lcom/market2345/httpnew/HttpTransactionBuilder;->setCallback(Lcom/market2345/httpnew/HttpCallback;)Lcom/market2345/httpnew/HttpTransactionBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/httpnew/HttpTransactionBuilder;->build()Lcom/market2345/httpnew/HttpTransaction;

    move-result-object v1

    invoke-interface {v1}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 49
    return-void
.end method
