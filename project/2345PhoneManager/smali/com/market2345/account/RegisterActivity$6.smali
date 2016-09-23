.class Lcom/market2345/account/RegisterActivity$6;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/market2345/account/PhoneSmsController$PhoneSmsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/account/RegisterActivity;->getCode()V
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
    .line 167
    iput-object p1, p0, Lcom/market2345/account/RegisterActivity$6;->this$0:Lcom/market2345/account/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(ZLjava/lang/String;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 170
    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity$6;->this$0:Lcom/market2345/account/RegisterActivity;

    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$6;->this$0:Lcom/market2345/account/RegisterActivity;

    const v2, 0x7f0b0028

    invoke-virtual {v1, v2}, Lcom/market2345/account/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/account/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity$6;->this$0:Lcom/market2345/account/RegisterActivity;

    # getter for: Lcom/market2345/account/RegisterActivity;->getCodeButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/account/RegisterActivity;->access$100(Lcom/market2345/account/RegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity$6;->this$0:Lcom/market2345/account/RegisterActivity;

    # getter for: Lcom/market2345/account/RegisterActivity;->getCodeButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/account/RegisterActivity;->access$100(Lcom/market2345/account/RegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 174
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity$6;->this$0:Lcom/market2345/account/RegisterActivity;

    # getter for: Lcom/market2345/account/RegisterActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/account/RegisterActivity;->access$200(Lcom/market2345/account/RegisterActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity$6;->this$0:Lcom/market2345/account/RegisterActivity;

    invoke-virtual {v0}, Lcom/market2345/account/RegisterActivity;->dismissProgressDialog()V

    .line 179
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/market2345/account/RegisterActivity$6;->this$0:Lcom/market2345/account/RegisterActivity;

    invoke-virtual {v0, p2}, Lcom/market2345/account/RegisterActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method
