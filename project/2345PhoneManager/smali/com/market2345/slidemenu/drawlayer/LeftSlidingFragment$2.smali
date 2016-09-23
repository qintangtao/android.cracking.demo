.class Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;
.super Landroid/os/Handler;
.source "LeftSlidingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 117
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 121
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, "bd":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    const-string v2, "process_count"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->processCount:I
    invoke-static {v1, v2}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$102(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;I)I

    .line 123
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    const-string v2, "process_size"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->processSize:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$202(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v3, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # getter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->processCount:I
    invoke-static {v3}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$100(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getPowerSaving(I)I

    move-result v2

    # setter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->saveTime:I
    invoke-static {v1, v2}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$302(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;I)I

    .line 126
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    # getter for: Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->taskInfor:Lcom/market2345/clean/shortcut/TaskInfoProvider;
    invoke-static {v2}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->access$400(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)Lcom/market2345/clean/shortcut/TaskInfoProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->getUsedPercent()I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    iput v2, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->endLevel:I

    .line 127
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v1, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->endLevel:I

    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v2, v2, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startLevel:I

    if-lt v1, v2, :cond_0

    .line 128
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget-object v2, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    iget v2, v2, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->startLevel:I

    add-int/lit16 v2, v2, -0xc8

    iput v2, v1, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->endLevel:I

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$2;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-virtual {v1}, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->start()V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
