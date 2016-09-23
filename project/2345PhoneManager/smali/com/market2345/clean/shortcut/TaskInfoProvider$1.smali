.class Lcom/market2345/clean/shortcut/TaskInfoProvider$1;
.super Ljava/lang/Thread;
.source "TaskInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/clean/shortcut/TaskInfoProvider;->killProcess(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/clean/shortcut/TaskInfoProvider;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/market2345/clean/shortcut/TaskInfoProvider;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider$1;->this$0:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    iput-object p2, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 137
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 139
    .local v4, "start":J
    iget-object v3, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider$1;->this$0:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    invoke-virtual {v3}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->killBackgroundProcess()V

    .line 140
    const-string v3, "wdh"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "killbackground time :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 142
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "process_count"

    iget-object v6, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider$1;->this$0:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    # getter for: Lcom/market2345/clean/shortcut/TaskInfoProvider;->processCount:I
    invoke-static {v6}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->access$000(Lcom/market2345/clean/shortcut/TaskInfoProvider;)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    iget-object v3, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider$1;->this$0:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    iget-object v6, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider$1;->this$0:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    # getter for: Lcom/market2345/clean/shortcut/TaskInfoProvider;->processSize:J
    invoke-static {v6}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->access$100(Lcom/market2345/clean/shortcut/TaskInfoProvider;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->formatFileSizeToString(J)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "size":Ljava/lang/String;
    const-string v3, "process_size"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v3, "process_sizeLong"

    iget-object v6, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider$1;->this$0:Lcom/market2345/clean/shortcut/TaskInfoProvider;

    # getter for: Lcom/market2345/clean/shortcut/TaskInfoProvider;->processSize:J
    invoke-static {v6}, Lcom/market2345/clean/shortcut/TaskInfoProvider;->access$100(Lcom/market2345/clean/shortcut/TaskInfoProvider;)J

    move-result-wide v6

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 147
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 148
    const/4 v3, 0x3

    iput v3, v1, Landroid/os/Message;->what:I

    .line 149
    iget-object v3, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider$1;->val$handler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/market2345/clean/shortcut/TaskInfoProvider$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    :cond_0
    return-void
.end method
