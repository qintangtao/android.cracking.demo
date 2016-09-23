.class Lcom/market2345/slidemenu/ManagementFragment$1;
.super Landroid/os/Handler;
.source "ManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/slidemenu/ManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ManagementFragment;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ManagementFragment;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment$1;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment$1;->this$0:Lcom/market2345/slidemenu/ManagementFragment;

    # invokes: Lcom/market2345/slidemenu/ManagementFragment;->updateShowCount()V
    invoke-static {v0}, Lcom/market2345/slidemenu/ManagementFragment;->access$100(Lcom/market2345/slidemenu/ManagementFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method
