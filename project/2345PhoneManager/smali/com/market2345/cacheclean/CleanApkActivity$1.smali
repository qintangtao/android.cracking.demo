.class Lcom/market2345/cacheclean/CleanApkActivity$1;
.super Landroid/os/Handler;
.source "CleanApkActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/cacheclean/CleanApkActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/CleanApkActivity;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/CleanApkActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/market2345/cacheclean/CleanApkActivity$1;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity$1;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanApkActivity;->updateAppList()V

    .line 75
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity$1;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanApkActivity;->access$000(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 76
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity$1;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanApkActivity;->access$000(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity$1;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanApkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity$1;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    invoke-virtual {v0}, Lcom/market2345/cacheclean/CleanApkActivity;->updateAppList()V

    .line 81
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity$1;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanApkActivity;->access$000(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 82
    iget-object v0, p0, Lcom/market2345/cacheclean/CleanApkActivity$1;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    # getter for: Lcom/market2345/cacheclean/CleanApkActivity;->clearBt:Landroid/widget/Button;
    invoke-static {v0}, Lcom/market2345/cacheclean/CleanApkActivity;->access$000(Lcom/market2345/cacheclean/CleanApkActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/cacheclean/CleanApkActivity$1;->this$0:Lcom/market2345/cacheclean/CleanApkActivity;

    invoke-virtual {v1}, Lcom/market2345/cacheclean/CleanApkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
