.class Lcom/market2345/account/ChangePasswordActivity$3;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 76
    iput-object p1, p0, Lcom/market2345/account/ChangePasswordActivity$3;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/market2345/account/ChangePasswordActivity$3;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/market2345/account/ChangePasswordActivity;->isNewPasswordAgainNull:Z
    invoke-static {v1, v0}, Lcom/market2345/account/ChangePasswordActivity;->access$302(Lcom/market2345/account/ChangePasswordActivity;Z)Z

    .line 90
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity$3;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    # invokes: Lcom/market2345/account/ChangePasswordActivity;->changeButtonStatus()V
    invoke-static {v0}, Lcom/market2345/account/ChangePasswordActivity;->access$100(Lcom/market2345/account/ChangePasswordActivity;)V

    .line 91
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 80
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 85
    return-void
.end method
