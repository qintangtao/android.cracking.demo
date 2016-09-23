.class Lcom/market2345/account/ChangePasswordActivity$5;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Lcom/market2345/account/ChangePasswordController$ChangePasswordResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/ChangePasswordActivity;->changePassword(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 118
    iput-object p1, p0, Lcom/market2345/account/ChangePasswordActivity$5;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(ZLjava/lang/String;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity$5;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    invoke-virtual {v0, p2}, Lcom/market2345/account/ChangePasswordActivity;->showToast(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity$5;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    invoke-virtual {v0}, Lcom/market2345/account/ChangePasswordActivity;->finish()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/ChangePasswordActivity$5;->this$0:Lcom/market2345/account/ChangePasswordActivity;

    invoke-virtual {v0, p2}, Lcom/market2345/account/ChangePasswordActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method
