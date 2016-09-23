.class public Lcom/market2345/autocheck/CheckResidentServiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CheckResidentServiceReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    const/4 v1, 0x0

    .line 26
    .local v1, "isDo":Z
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    const/4 v1, 0x1

    .line 52
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    invoke-static {p1}, Lcom/market2345/autocheck/ServiceHolder;->getHolderInstance(Landroid/content/Context;)Lcom/market2345/autocheck/ServiceHolder;

    move-result-object v0

    .line 58
    .local v0, "holder":Lcom/market2345/autocheck/ServiceHolder;
    const-class v2, Lcom/market2345/autocheck/AutoResidentService;

    invoke-virtual {v0, v2}, Lcom/market2345/autocheck/ServiceHolder;->setAndStartService(Ljava/lang/Class;)V

    .line 63
    .end local v0    # "holder":Lcom/market2345/autocheck/ServiceHolder;
    :cond_1
    return-void

    .line 31
    :cond_2
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 34
    const/4 v1, 0x1

    goto :goto_0

    .line 36
    :cond_3
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 39
    const/4 v1, 0x1

    goto :goto_0

    .line 41
    :cond_4
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 44
    const/4 v1, 0x1

    goto :goto_0

    .line 46
    :cond_5
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    const/4 v1, 0x1

    goto :goto_0
.end method
