.class Lcom/market2345/account/LoginActivity$4;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 126
    iput-object p1, p0, Lcom/market2345/account/LoginActivity$4;->this$0:Lcom/market2345/account/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 139
    iget-object v1, p0, Lcom/market2345/account/LoginActivity$4;->this$0:Lcom/market2345/account/LoginActivity;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/market2345/account/LoginActivity;->isPasswordNotNull:Z
    invoke-static {v1, v0}, Lcom/market2345/account/LoginActivity;->access$602(Lcom/market2345/account/LoginActivity;Z)Z

    .line 140
    iget-object v0, p0, Lcom/market2345/account/LoginActivity$4;->this$0:Lcom/market2345/account/LoginActivity;

    # invokes: Lcom/market2345/account/LoginActivity;->changeButtonStatus()V
    invoke-static {v0}, Lcom/market2345/account/LoginActivity;->access$500(Lcom/market2345/account/LoginActivity;)V

    .line 141
    return-void

    .line 139
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
    .line 130
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 135
    return-void
.end method
