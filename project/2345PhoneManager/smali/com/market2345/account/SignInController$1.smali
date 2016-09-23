.class Lcom/market2345/account/SignInController$1;
.super Landroid/os/Handler;
.source "SignInController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/account/SignInController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/SignInController;


# direct methods
.method constructor <init>(Lcom/market2345/account/SignInController;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/market2345/account/SignInController$1;->this$0:Lcom/market2345/account/SignInController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/market2345/account/SignInController$CheckCodeCallBack;

    .line 50
    .local v0, "call":Lcom/market2345/account/SignInController$CheckCodeCallBack;
    if-eqz v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/market2345/account/SignInController$1;->this$0:Lcom/market2345/account/SignInController;

    # getter for: Lcom/market2345/account/SignInController;->bit:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/market2345/account/SignInController;->access$000(Lcom/market2345/account/SignInController;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/account/SignInController$1;->this$0:Lcom/market2345/account/SignInController;

    # getter for: Lcom/market2345/account/SignInController;->cookie:Lorg/apache/http/cookie/Cookie;
    invoke-static {v2}, Lcom/market2345/account/SignInController;->access$100(Lcom/market2345/account/SignInController;)Lorg/apache/http/cookie/Cookie;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/market2345/account/SignInController$CheckCodeCallBack;->callBack(Landroid/graphics/Bitmap;Lorg/apache/http/cookie/Cookie;)V

    .line 53
    :cond_0
    return-void
.end method
