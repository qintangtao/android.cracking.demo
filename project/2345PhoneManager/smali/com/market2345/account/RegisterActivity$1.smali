.class Lcom/market2345/account/RegisterActivity$1;
.super Landroid/os/Handler;
.source "RegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/account/RegisterActivity;
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
    .line 47
    iput-object p1, p0, Lcom/market2345/account/RegisterActivity$1;->this$0:Lcom/market2345/account/RegisterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    .line 50
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 51
    iget v0, p1, Landroid/os/Message;->what:I

    .line 52
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 54
    :pswitch_0
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$1;->this$0:Lcom/market2345/account/RegisterActivity;

    # getter for: Lcom/market2345/account/RegisterActivity;->timePicker:I
    invoke-static {v1}, Lcom/market2345/account/RegisterActivity;->access$000(Lcom/market2345/account/RegisterActivity;)I

    move-result v1

    if-lez v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$1;->this$0:Lcom/market2345/account/RegisterActivity;

    # getter for: Lcom/market2345/account/RegisterActivity;->getCodeButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/market2345/account/RegisterActivity;->access$100(Lcom/market2345/account/RegisterActivity;)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/market2345/account/RegisterActivity$1;->this$0:Lcom/market2345/account/RegisterActivity;

    # getter for: Lcom/market2345/account/RegisterActivity;->timePicker:I
    invoke-static {v3}, Lcom/market2345/account/RegisterActivity;->access$000(Lcom/market2345/account/RegisterActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u79d2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$1;->this$0:Lcom/market2345/account/RegisterActivity;

    # getter for: Lcom/market2345/account/RegisterActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/market2345/account/RegisterActivity;->access$200(Lcom/market2345/account/RegisterActivity;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 57
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$1;->this$0:Lcom/market2345/account/RegisterActivity;

    # operator-- for: Lcom/market2345/account/RegisterActivity;->timePicker:I
    invoke-static {v1}, Lcom/market2345/account/RegisterActivity;->access$010(Lcom/market2345/account/RegisterActivity;)I

    goto :goto_0

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$1;->this$0:Lcom/market2345/account/RegisterActivity;

    # getter for: Lcom/market2345/account/RegisterActivity;->getCodeButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/market2345/account/RegisterActivity;->access$100(Lcom/market2345/account/RegisterActivity;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$1;->this$0:Lcom/market2345/account/RegisterActivity;

    # getter for: Lcom/market2345/account/RegisterActivity;->getCodeButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/market2345/account/RegisterActivity;->access$100(Lcom/market2345/account/RegisterActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f0b0083

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 61
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$1;->this$0:Lcom/market2345/account/RegisterActivity;

    # getter for: Lcom/market2345/account/RegisterActivity;->getCodeButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/market2345/account/RegisterActivity;->access$100(Lcom/market2345/account/RegisterActivity;)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f02000c

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 62
    iget-object v1, p0, Lcom/market2345/account/RegisterActivity$1;->this$0:Lcom/market2345/account/RegisterActivity;

    const/16 v2, 0x3c

    # setter for: Lcom/market2345/account/RegisterActivity;->timePicker:I
    invoke-static {v1, v2}, Lcom/market2345/account/RegisterActivity;->access$002(Lcom/market2345/account/RegisterActivity;I)I

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
