.class Lcom/market2345/slidemenu/ManagementFragment2$7$1;
.super Ljava/lang/Object;
.source "ManagementFragment2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ManagementFragment2$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ManagementFragment2$7;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 497
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v1, v1, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->wv:Lcom/market2345/customview/download/CleanAccelerationBallView;
    invoke-static {v1}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1900(Lcom/market2345/slidemenu/ManagementFragment2;)Lcom/market2345/customview/download/CleanAccelerationBallView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/customview/download/CleanAccelerationBallView;->getProgress()I

    move-result v0

    .line 498
    .local v0, "progress":I
    if-gtz v0, :cond_0

    .line 499
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v1, v1, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # setter for: Lcom/market2345/slidemenu/ManagementFragment2;->changeFlag:Z
    invoke-static {v1, v3}, Lcom/market2345/slidemenu/ManagementFragment2;->access$2002(Lcom/market2345/slidemenu/ManagementFragment2;Z)Z

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v1, v1, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->changeFlag:Z
    invoke-static {v1}, Lcom/market2345/slidemenu/ManagementFragment2;->access$2000(Lcom/market2345/slidemenu/ManagementFragment2;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v1, v1, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v2, v2, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->localScale:F
    invoke-static {v2}, Lcom/market2345/slidemenu/ManagementFragment2;->access$400(Lcom/market2345/slidemenu/ManagementFragment2;)F

    move-result v2

    # invokes: Lcom/market2345/slidemenu/ManagementFragment2;->setProgress(IF)V
    invoke-static {v1, v0, v2}, Lcom/market2345/slidemenu/ManagementFragment2;->access$200(Lcom/market2345/slidemenu/ManagementFragment2;IF)V

    .line 516
    :goto_0
    return-void

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget v1, v1, Lcom/market2345/slidemenu/ManagementFragment2$7;->val$end:I

    if-lt v0, v1, :cond_2

    .line 505
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v1, v1, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget v2, v2, Lcom/market2345/slidemenu/ManagementFragment2$7;->val$end:I

    # setter for: Lcom/market2345/slidemenu/ManagementFragment2;->currentRamUsage:I
    invoke-static {v1, v2}, Lcom/market2345/slidemenu/ManagementFragment2;->access$102(Lcom/market2345/slidemenu/ManagementFragment2;I)I

    .line 506
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v1, v1, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v2, v2, Lcom/market2345/slidemenu/ManagementFragment2$7;->val$processSize:Ljava/lang/String;

    # invokes: Lcom/market2345/slidemenu/ManagementFragment2;->setRamPromptText(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/market2345/slidemenu/ManagementFragment2;->access$2100(Lcom/market2345/slidemenu/ManagementFragment2;Ljava/lang/String;)V

    .line 509
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v1, v1, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->wv:Lcom/market2345/customview/download/CleanAccelerationBallView;
    invoke-static {v1}, Lcom/market2345/slidemenu/ManagementFragment2;->access$1900(Lcom/market2345/slidemenu/ManagementFragment2;)Lcom/market2345/customview/download/CleanAccelerationBallView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/market2345/customview/download/CleanAccelerationBallView;->setIsAnimation(Z)V

    .line 510
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v1, v1, Lcom/market2345/slidemenu/ManagementFragment2$7;->val$timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 511
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v1, v1, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    const/4 v2, 0x1

    # setter for: Lcom/market2345/slidemenu/ManagementFragment2;->isFinish:Z
    invoke-static {v1, v2}, Lcom/market2345/slidemenu/ManagementFragment2;->access$2202(Lcom/market2345/slidemenu/ManagementFragment2;Z)Z

    goto :goto_0

    .line 513
    :cond_2
    iget-object v1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v1, v1, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/market2345/slidemenu/ManagementFragment2$7$1;->this$1:Lcom/market2345/slidemenu/ManagementFragment2$7;

    iget-object v2, v2, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->localScale:F
    invoke-static {v2}, Lcom/market2345/slidemenu/ManagementFragment2;->access$400(Lcom/market2345/slidemenu/ManagementFragment2;)F

    move-result v2

    # invokes: Lcom/market2345/slidemenu/ManagementFragment2;->setProgress(IF)V
    invoke-static {v1, v0, v2}, Lcom/market2345/slidemenu/ManagementFragment2;->access$200(Lcom/market2345/slidemenu/ManagementFragment2;IF)V

    goto :goto_0
.end method
