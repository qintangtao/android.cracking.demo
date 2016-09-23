.class Lcom/market2345/account/LoginActivity$5;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/market2345/account/SignInController$SignInCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/LoginActivity;->onEventMainThread(Lcom/market2345/account/model/event/RegisterResultEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/LoginActivity;


# direct methods
.method constructor <init>(Lcom/market2345/account/LoginActivity;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/market2345/account/LoginActivity$5;->this$0:Lcom/market2345/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(ZLjava/lang/String;Z)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "needCheckCode"    # Z

    .prologue
    .line 176
    iget-object v0, p0, Lcom/market2345/account/LoginActivity$5;->this$0:Lcom/market2345/account/LoginActivity;

    invoke-virtual {v0}, Lcom/market2345/account/LoginActivity;->dismissProgressDialog()V

    .line 177
    iget-object v0, p0, Lcom/market2345/account/LoginActivity$5;->this$0:Lcom/market2345/account/LoginActivity;

    # invokes: Lcom/market2345/account/LoginActivity;->handlerCallBack(ZLjava/lang/String;Z)V
    invoke-static {v0, p1, p2, p3}, Lcom/market2345/account/LoginActivity;->access$000(Lcom/market2345/account/LoginActivity;ZLjava/lang/String;Z)V

    .line 178
    return-void
.end method
