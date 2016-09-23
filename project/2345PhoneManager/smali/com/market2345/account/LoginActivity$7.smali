.class Lcom/market2345/account/LoginActivity$7;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Lcom/market2345/account/SignInController$SignInCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/LoginActivity;->signIn()V
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
    .line 222
    iput-object p1, p0, Lcom/market2345/account/LoginActivity$7;->this$0:Lcom/market2345/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(ZLjava/lang/String;Z)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "needCheckCode"    # Z

    .prologue
    .line 226
    iget-object v0, p0, Lcom/market2345/account/LoginActivity$7;->this$0:Lcom/market2345/account/LoginActivity;

    # invokes: Lcom/market2345/account/LoginActivity;->handlerCallBack(ZLjava/lang/String;Z)V
    invoke-static {v0, p1, p2, p3}, Lcom/market2345/account/LoginActivity;->access$000(Lcom/market2345/account/LoginActivity;ZLjava/lang/String;Z)V

    .line 227
    iget-object v0, p0, Lcom/market2345/account/LoginActivity$7;->this$0:Lcom/market2345/account/LoginActivity;

    invoke-virtual {v0}, Lcom/market2345/account/LoginActivity;->dismissProgressDialog()V

    .line 228
    if-eqz p1, :cond_0

    .line 229
    iget-object v0, p0, Lcom/market2345/account/LoginActivity$7;->this$0:Lcom/market2345/account/LoginActivity;

    # getter for: Lcom/market2345/account/LoginActivity;->signInController:Lcom/market2345/account/SignInController;
    invoke-static {v0}, Lcom/market2345/account/LoginActivity;->access$700(Lcom/market2345/account/LoginActivity;)Lcom/market2345/account/SignInController;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/account/LoginActivity$7;->this$0:Lcom/market2345/account/LoginActivity;

    invoke-virtual {v1}, Lcom/market2345/account/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/account/SignInController;->saveUserInfoToServer(Landroid/content/Context;)V

    .line 230
    :cond_0
    return-void
.end method
