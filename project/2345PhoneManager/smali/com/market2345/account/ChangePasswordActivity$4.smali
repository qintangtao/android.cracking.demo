.class Lcom/market2345/account/ChangePasswordActivity$4;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/ChangePasswordActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/account/ChangePasswordActivity;


# direct methods
.method constructor <init>(Lcom/market2345/account/ChangePasswordActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/market2345/account/ChangePasswordActivity$4;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 96
    iget-object v3, p0, Lcom/market2345/account/ChangePasswordActivity$4;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    # getter for: Lcom/market2345/account/ChangePasswordActivity;->oldPasswordEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/market2345/account/ChangePasswordActivity;->access$400(Lcom/market2345/account/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "oldPassword":Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/account/ChangePasswordActivity$4;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    # getter for: Lcom/market2345/account/ChangePasswordActivity;->newPasswordEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/market2345/account/ChangePasswordActivity;->access$500(Lcom/market2345/account/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "newPassword":Ljava/lang/String;
    iget-object v3, p0, Lcom/market2345/account/ChangePasswordActivity$4;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    # getter for: Lcom/market2345/account/ChangePasswordActivity;->newPasswordAgainEditText:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/market2345/account/ChangePasswordActivity;->access$600(Lcom/market2345/account/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "newPasswordAgain":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/market2345/account/ChangePasswordActivity$4;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    const-string v4, "\u4e24\u6b21\u65b0\u5bc6\u7801\u4e0d\u4e00\u81f4"

    invoke-virtual {v3, v4}, Lcom/market2345/account/ChangePasswordActivity;->showToast(Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    .line 102
    iget-object v3, p0, Lcom/market2345/account/ChangePasswordActivity$4;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    const-string v4, "\u60a8\u8f93\u5165\u7684\u5bc6\u7801\u4f4d\u6570\u8fc7\u77ed"

    invoke-virtual {v3, v4}, Lcom/market2345/account/ChangePasswordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_2

    .line 104
    iget-object v3, p0, Lcom/market2345/account/ChangePasswordActivity$4;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    const-string v4, "\u60a8\u8f93\u5165\u7684\u5bc6\u7801\u4f4d\u6570\u8fc7\u957f"

    invoke-virtual {v3, v4}, Lcom/market2345/account/ChangePasswordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/market2345/account/ChangePasswordActivity$4;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    # invokes: Lcom/market2345/account/ChangePasswordActivity;->changePassword(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v2, v0}, Lcom/market2345/account/ChangePasswordActivity;->access$700(Lcom/market2345/account/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
