.class Lcom/market2345/account/LoginActivity$2;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/LoginActivity;->initView()V
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
    .line 84
    iput-object p1, p0, Lcom/market2345/account/LoginActivity$2;->this$0:Lcom/market2345/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 88
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 90
    :pswitch_0
    iget-object v3, p0, Lcom/market2345/account/LoginActivity$2;->this$0:Lcom/market2345/account/LoginActivity;

    # invokes: Lcom/market2345/account/LoginActivity;->signInWithQQ()V
    invoke-static {v3}, Lcom/market2345/account/LoginActivity;->access$100(Lcom/market2345/account/LoginActivity;)V

    goto :goto_0

    .line 93
    :pswitch_1
    iget-object v3, p0, Lcom/market2345/account/LoginActivity$2;->this$0:Lcom/market2345/account/LoginActivity;

    # invokes: Lcom/market2345/account/LoginActivity;->signIn()V
    invoke-static {v3}, Lcom/market2345/account/LoginActivity;->access$200(Lcom/market2345/account/LoginActivity;)V

    goto :goto_0

    .line 96
    :pswitch_2
    iget-object v3, p0, Lcom/market2345/account/LoginActivity$2;->this$0:Lcom/market2345/account/LoginActivity;

    # invokes: Lcom/market2345/account/LoginActivity;->getCheckCode()V
    invoke-static {v3}, Lcom/market2345/account/LoginActivity;->access$300(Lcom/market2345/account/LoginActivity;)V

    goto :goto_0

    .line 99
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/account/LoginActivity$2;->this$0:Lcom/market2345/account/LoginActivity;

    const-class v4, Lcom/market2345/account/ForgetPasswordActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 100
    .local v2, "intent1":Landroid/content/Intent;
    iget-object v3, p0, Lcom/market2345/account/LoginActivity$2;->this$0:Lcom/market2345/account/LoginActivity;

    invoke-virtual {v3, v2}, Lcom/market2345/account/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 103
    .end local v2    # "intent1":Landroid/content/Intent;
    :pswitch_4
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/account/LoginActivity$2;->this$0:Lcom/market2345/account/LoginActivity;

    const-class v4, Lcom/market2345/account/RegisterActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/market2345/account/LoginActivity$2;->this$0:Lcom/market2345/account/LoginActivity;

    invoke-virtual {v3, v1}, Lcom/market2345/account/LoginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x7f0900b4
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
