.class Lcom/market2345/wificonn/WifiConnDialogActivity$ConnHandler;
.super Landroid/os/Handler;
.source "WifiConnDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/wificonn/WifiConnDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnHandler"
.end annotation


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/market2345/wificonn/WifiConnDialogActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/market2345/wificonn/WifiConnDialogActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/market2345/wificonn/WifiConnDialogActivity;

    .prologue
    .line 280
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 281
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity$ConnHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 282
    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 285
    iget-object v1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity$ConnHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/wificonn/WifiConnDialogActivity;

    .line 286
    .local v0, "activity":Lcom/market2345/wificonn/WifiConnDialogActivity;
    if-eqz v0, :cond_0

    .line 287
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 289
    :pswitch_0
    invoke-virtual {v0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getConnStatus()I

    move-result v1

    if-lez v1, :cond_1

    .line 290
    invoke-virtual {v0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getConnStatus()I

    move-result v1

    # invokes: Lcom/market2345/wificonn/WifiConnDialogActivity;->successOnConn(I)V
    invoke-static {v0, v1}, Lcom/market2345/wificonn/WifiConnDialogActivity;->access$000(Lcom/market2345/wificonn/WifiConnDialogActivity;I)V

    goto :goto_0

    .line 292
    :cond_1
    # invokes: Lcom/market2345/wificonn/WifiConnDialogActivity;->errorOnConn()V
    invoke-static {v0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->access$100(Lcom/market2345/wificonn/WifiConnDialogActivity;)V

    goto :goto_0

    .line 296
    :pswitch_1
    invoke-virtual {v0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->finish()V

    goto :goto_0

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
