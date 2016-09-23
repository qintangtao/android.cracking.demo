.class Lcom/market2345/slidemenu/ManagementFragment2$4;
.super Landroid/os/Handler;
.source "ManagementFragment2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/ManagementFragment2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ManagementFragment2;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ManagementFragment2;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment2$4;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 335
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 336
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 337
    .local v0, "bd":Landroid/os/Bundle;
    const-string v4, "process_count"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 338
    .local v2, "processCount":I
    const-string v4, "process_size"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 340
    .local v3, "processSize":Ljava/lang/String;
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2$4;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;
    invoke-static {v4}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1400(Lcom/market2345/slidemenu/ManagementFragment2;)Lcom/market2345/clean/shortcut/TaskInfoProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getUsedPercent()I

    move-result v1

    .line 341
    .local v1, "endLevel":I
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2$4;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I
    invoke-static {v4}, Lcom/market2345/slidemenu/ManagementFragment2;->access$100(Lcom/market2345/slidemenu/ManagementFragment2;)I

    move-result v4

    if-le v1, v4, :cond_0

    .line 342
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2$4;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I
    invoke-static {v4}, Lcom/market2345/slidemenu/ManagementFragment2;->access$100(Lcom/market2345/slidemenu/ManagementFragment2;)I

    move-result v1

    .line 344
    :cond_0
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2$4;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    iget-object v5, p0, Lcom/market2345/slidemenu/ManagementFragment2$4;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I
    invoke-static {v5}, Lcom/market2345/slidemenu/ManagementFragment2;->access$100(Lcom/market2345/slidemenu/ManagementFragment2;)I

    move-result v5

    # invokes: Lcom/market2345/slidemenu/ManagementFragment2;->startAnimation(IILjava/lang/String;)V
    invoke-static {v4, v5, v1, v3}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1500(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/String;)V

    .line 357
    .end local v0    # "bd":Landroid/os/Bundle;
    .end local v1    # "endLevel":I
    .end local v2    # "processCount":I
    .end local v3    # "processSize":Ljava/lang/String;
    :goto_0
    return-void

    .line 345
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x11

    if-ne v4, v5, :cond_2

    .line 346
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2$4;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    iget-object v5, p0, Lcom/market2345/slidemenu/ManagementFragment2$4;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I
    invoke-static {v5}, Lcom/market2345/slidemenu/ManagementFragment2;->access$100(Lcom/market2345/slidemenu/ManagementFragment2;)I

    move-result v5

    iget-object v6, p0, Lcom/market2345/slidemenu/ManagementFragment2$4;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I
    invoke-static {v6}, Lcom/market2345/slidemenu/ManagementFragment2;->access$100(Lcom/market2345/slidemenu/ManagementFragment2;)I

    move-result v6

    iget-object v7, p0, Lcom/market2345/slidemenu/ManagementFragment2$4;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    const v8, 0x7f0b0059

    invoke-virtual {v7, v8}, Lcom/market2345/slidemenu/ManagementFragment2;->getString(I)Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/market2345/slidemenu/ManagementFragment2;->startAnimation(IILjava/lang/String;)V
    invoke-static {v4, v5, v6, v7}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1500(Lcom/market2345/slidemenu/ManagementFragment2;IILjava/lang/String;)V

    goto :goto_0

    .line 350
    :cond_2
    :try_start_0
    iget-object v4, p0, Lcom/market2345/slidemenu/ManagementFragment2$4;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # invokes: Lcom/market2345/slidemenu/ManagementFragment2;->updateShowCount()V
    invoke-static {v4}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1600(Lcom/market2345/slidemenu/ManagementFragment2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v4

    goto :goto_0
.end method
