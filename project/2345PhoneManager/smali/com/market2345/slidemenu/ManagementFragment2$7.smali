.class Lcom/market2345/slidemenu/ManagementFragment2$7;
.super Ljava/util/TimerTask;
.source "ManagementFragment2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ManagementFragment2;->startAnimation(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ManagementFragment2;

.field final synthetic val$end:I

.field final synthetic val$processSize:Ljava/lang/String;

.field final synthetic val$timer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ManagementFragment2;ILjava/lang/String;Ljava/util/Timer;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    iput p2, p0, Lcom/market2345/slidemenu/ManagementFragment2$7;->val$end:I

    iput-object p3, p0, Lcom/market2345/slidemenu/ManagementFragment2$7;->val$processSize:Ljava/lang/String;

    iput-object p4, p0, Lcom/market2345/slidemenu/ManagementFragment2$7;->val$timer:Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$7;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    # getter for: Lcom/market2345/slidemenu/ManagementFragment2;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment2;->access$2300(Lcom/market2345/slidemenu/ManagementFragment2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/market2345/slidemenu/ManagementFragment2$7$1;

    invoke-direct {v1, p0}, Lcom/market2345/slidemenu/ManagementFragment2$7$1;-><init>(Lcom/market2345/slidemenu/ManagementFragment2$7;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 518
    return-void
.end method
