.class Lcom/market2345/account/PrivateInfoActivity$1;
.super Ljava/lang/Object;
.source "PrivateInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/PrivateInfoActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/PrivateInfoActivity;


# direct methods
.method constructor <init>(Lcom/market2345/account/PrivateInfoActivity;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/market2345/account/PrivateInfoActivity$1;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 52
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    .line 71
    :goto_0
    :pswitch_0
    return-void

    .line 54
    :pswitch_1
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lcom/market2345/account/PrivateInfoActivity$1;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    const-class v6, Lcom/market2345/account/ChangePasswordActivity;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v4, "intent1":Landroid/content/Intent;
    iget-object v5, p0, Lcom/market2345/account/PrivateInfoActivity$1;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    invoke-virtual {v5, v4}, Lcom/market2345/account/PrivateInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    .end local v4    # "intent1":Landroid/content/Intent;
    :pswitch_2
    new-instance v3, Landroid/content/Intent;

    iget-object v5, p0, Lcom/market2345/account/PrivateInfoActivity$1;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    const-class v6, Lcom/market2345/feedback/FeedBackActivity;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/market2345/account/PrivateInfoActivity$1;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    invoke-virtual {v5, v3}, Lcom/market2345/account/PrivateInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    .end local v3    # "intent":Landroid/content/Intent;
    :pswitch_3
    new-instance v0, Lcom/market2345/account/SignOutController;

    invoke-direct {v0}, Lcom/market2345/account/SignOutController;-><init>()V

    .line 63
    .local v0, "controller":Lcom/market2345/account/SignOutController;
    iget-object v5, p0, Lcom/market2345/account/PrivateInfoActivity$1;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    invoke-virtual {v5}, Lcom/market2345/account/PrivateInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/market2345/account/SignOutController;->signOut(Landroid/content/Context;)V

    .line 64
    iget-object v5, p0, Lcom/market2345/account/PrivateInfoActivity$1;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    const-string v6, "\u9000\u51fa\u767b\u5f55"

    invoke-virtual {v5, v6}, Lcom/market2345/account/PrivateInfoActivity;->showToast(Ljava/lang/String;)V

    .line 65
    new-instance v1, Lcom/market2345/account/model/event/SignOutResultEvent;

    invoke-direct {v1}, Lcom/market2345/account/model/event/SignOutResultEvent;-><init>()V

    .line 66
    .local v1, "event":Lcom/market2345/account/model/event/SignOutResultEvent;
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/market2345/account/model/event/SignOutResultEvent;->success:Z

    .line 67
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v5

    invoke-virtual {v5, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 68
    iget-object v5, p0, Lcom/market2345/account/PrivateInfoActivity$1;->this$0:Lcom/market2345/account/PrivateInfoActivity;

    invoke-virtual {v5}, Lcom/market2345/account/PrivateInfoActivity;->finish()V

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x7f0900de
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
