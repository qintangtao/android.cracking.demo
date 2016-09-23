.class Lcom/market2345/account/RegisterActivity$3;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/RegisterActivity;->initView()V
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
    .line 94
    iput-object p1, p0, Lcom/market2345/account/RegisterActivity$3;->this$0:Lcom/market2345/account/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$3;->this$0:Lcom/market2345/account/RegisterActivity;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lcom/market2345/account/RegisterActivity;->isUsernameNotNUll:Z
    invoke-static {v1, v0}, Lcom/market2345/account/RegisterActivity;->access$502(Lcom/market2345/account/RegisterActivity;Z)Z

    .line 108
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity$3;->this$0:Lcom/market2345/account/RegisterActivity;

    # invokes: Lcom/market2345/account/RegisterActivity;->changeButtonStatus()V
    invoke-static {v0}, Lcom/market2345/account/RegisterActivity;->access$600(Lcom/market2345/account/RegisterActivity;)V

    .line 109
    return-void

    .line 107
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
    .line 98
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 103
    return-void
.end method
