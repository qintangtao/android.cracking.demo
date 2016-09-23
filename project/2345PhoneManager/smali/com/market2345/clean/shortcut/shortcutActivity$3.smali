.class Lcom/market2345/clean/shortcut/shortcutActivity$3;
.super Ljava/util/TimerTask;
.source "shortcutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/clean/shortcut/shortcutActivity;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/clean/shortcut/shortcutActivity;


# direct methods
.method constructor <init>(Lcom/market2345/clean/shortcut/shortcutActivity;)V
    .locals 0

    .prologue
    .line 466
    iput-object p1, p0, Lcom/market2345/clean/shortcut/shortcutActivity$3;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity$3;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-boolean v0, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->isStop:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity$3;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-boolean v0, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->isPause:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity$3;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v0, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->hand:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/market2345/clean/shortcut/shortcutActivity$3;->this$0:Lcom/market2345/clean/shortcut/shortcutActivity;

    iget-object v0, v0, Lcom/market2345/clean/shortcut/shortcutActivity;->hand:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 476
    :cond_0
    return-void
.end method
