.class Lcom/market2345/account/RegisterActivity$7;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/market2345/account/RegisterController$RegisterCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/RegisterActivity;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/market2345/account/RegisterActivity;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/market2345/account/RegisterActivity$7;->this$0:Lcom/market2345/account/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ZLjava/lang/String;)V
    .locals 2
    .param p1, "success"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$7;->this$0:Lcom/market2345/account/RegisterActivity;

    invoke-virtual {v1, p2}, Lcom/market2345/account/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 207
    if-nez p1, :cond_0

    .line 217
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v0, Lcom/market2345/account/model/event/RegisterResultEvent;

    invoke-direct {v0}, Lcom/market2345/account/model/event/RegisterResultEvent;-><init>()V

    .line 211
    .local v0, "event":Lcom/market2345/account/model/event/RegisterResultEvent;
    iput-boolean p1, v0, Lcom/market2345/account/model/event/RegisterResultEvent;->success:Z

    .line 212
    iput-object p2, v0, Lcom/market2345/account/model/event/RegisterResultEvent;->msg:Ljava/lang/String;

    .line 213
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$7;->this$0:Lcom/market2345/account/RegisterActivity;

    invoke-virtual {v1}, Lcom/market2345/account/RegisterActivity;->finish()V

    goto :goto_0
.end method
