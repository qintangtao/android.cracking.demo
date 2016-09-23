.class Lcom/market2345/datacenter/DataCenterObserver$1;
.super Landroid/os/Handler;
.source "DataCenterObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/datacenter/DataCenterObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/datacenter/DataCenterObserver;


# direct methods
.method constructor <init>(Lcom/market2345/datacenter/DataCenterObserver;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 139
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 220
    :goto_0
    :pswitch_0
    return-void

    .line 142
    :pswitch_1
    iget-object v2, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    new-instance v3, Landroid/util/Pair;

    const-string v4, "pref.app.install"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :pswitch_2
    iget-object v2, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    new-instance v3, Landroid/util/Pair;

    const-string v4, "pref.app.remove"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 159
    :pswitch_3
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "pref.downloading.list"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 163
    :pswitch_4
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "pref.upgrade.num"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 169
    :pswitch_5
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "pref.ignore.num"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 173
    :pswitch_6
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    # getter for: Lcom/market2345/datacenter/DataCenterObserver;->wifiStatus:Lcom/market2345/datacenter/WifiConnectionStatus;
    invoke-static {v1}, Lcom/market2345/datacenter/DataCenterObserver;->access$000(Lcom/market2345/datacenter/DataCenterObserver;)Lcom/market2345/datacenter/WifiConnectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/datacenter/WifiConnectionStatus;->getConnStatus()I

    move-result v0

    .line 174
    .local v0, "status":I
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "pref.wifi.pc.link.status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_0

    .line 178
    .end local v0    # "status":I
    :pswitch_7
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "pref.pc.transfer.file"

    iget-object v4, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    # getter for: Lcom/market2345/datacenter/DataCenterObserver;->pcFromFile:Lcom/market2345/datacenter/FileRecieverFromPC;
    invoke-static {v4}, Lcom/market2345/datacenter/DataCenterObserver;->access$100(Lcom/market2345/datacenter/DataCenterObserver;)Lcom/market2345/datacenter/FileRecieverFromPC;

    move-result-object v4

    invoke-virtual {v4}, Lcom/market2345/datacenter/FileRecieverFromPC;->getFileCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 181
    :pswitch_8
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "pref.downloading.count"

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 191
    :pswitch_9
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    # getter for: Lcom/market2345/datacenter/DataCenterObserver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/market2345/datacenter/DataCenterObserver;->access$200(Lcom/market2345/datacenter/DataCenterObserver;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u5b89\u88c5\u5305\u4e0b\u8f7d\u5730\u5740\u6709\u8bef\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 195
    :pswitch_a
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    const-string v2, "pref.add.new.download"

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 199
    :pswitch_b
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "pref.download.status.change"

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 203
    :pswitch_c
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    const-string v2, "pref.download.load.completed"

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 206
    :pswitch_d
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    const-string v2, "pref.installed.remove.file"

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 209
    :pswitch_e
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "pref.download.notify.uri"

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 212
    :pswitch_f
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "pref.show.del.dialog"

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 215
    :pswitch_10
    iget-object v1, p0, Lcom/market2345/datacenter/DataCenterObserver$1;->this$0:Lcom/market2345/datacenter/DataCenterObserver;

    const-string v2, "pref.varify.md5.end"

    invoke-virtual {v1, v2}, Lcom/market2345/datacenter/DataCenterObserver;->notifyObservers(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
