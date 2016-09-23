.class Lcom/market2345/account/PrivateCenterActivity$1;
.super Ljava/lang/Object;
.source "PrivateCenterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/PrivateCenterActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/PrivateCenterActivity;


# direct methods
.method constructor <init>(Lcom/market2345/account/PrivateCenterActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/market2345/account/PrivateCenterActivity$1;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 62
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 88
    :goto_0
    :pswitch_0
    return-void

    .line 64
    :pswitch_1
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/account/PrivateCenterActivity$1;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    invoke-virtual {v3, v4}, Lcom/market2345/account/model/Account;->isLocalExisted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/account/PrivateCenterActivity$1;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    const-class v4, Lcom/market2345/account/LoginActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/market2345/account/PrivateCenterActivity$1;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    invoke-virtual {v3, v1}, Lcom/market2345/account/PrivateCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 69
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/account/PrivateCenterActivity$1;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    const-class v4, Lcom/market2345/account/PrivateInfoActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/market2345/account/PrivateCenterActivity$1;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    invoke-virtual {v3, v1}, Lcom/market2345/account/PrivateCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 74
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/account/PrivateCenterActivity$1;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    const-class v4, Lcom/market2345/account/gift/GameGiftActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/market2345/account/PrivateCenterActivity$1;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    invoke-virtual {v3, v1}, Lcom/market2345/account/PrivateCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 78
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_3
    invoke-static {}, Lcom/market2345/account/model/Account;->getExistedInstance()Lcom/market2345/account/model/Account;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/account/PrivateCenterActivity$1;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    invoke-virtual {v4}, Lcom/market2345/account/PrivateCenterActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/market2345/account/model/Account;->isLocalExisted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/market2345/account/PrivateCenterActivity$1;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    const-string v4, "\u8bf7\u5148\u767b\u5f55"

    invoke-virtual {v3, v4}, Lcom/market2345/account/PrivateCenterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    :cond_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/account/PrivateCenterActivity$1;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    const-class v4, Lcom/market2345/account/gift/GameGiftActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    .local v2, "intent11":Landroid/content/Intent;
    const-string v3, "key.title"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 83
    iget-object v3, p0, Lcom/market2345/account/PrivateCenterActivity$1;->this$0:Lcom/market2345/account/PrivateCenterActivity;

    invoke-virtual {v3, v2}, Lcom/market2345/account/PrivateCenterActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x7f0900d9
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
