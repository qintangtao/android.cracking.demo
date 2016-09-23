.class public Lcom/phonemanager2345/zhushou/ConnectionService$AppReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phonemanager2345/zhushou/ConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/phonemanager2345/zhushou/ConnectionService;


# direct methods
.method public constructor <init>(Lcom/phonemanager2345/zhushou/ConnectionService;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/phonemanager2345/zhushou/ConnectionService$AppReceiver;->this$0:Lcom/phonemanager2345/zhushou/ConnectionService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 234
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 240
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    .line 243
    .local v3, "session":Lcom/market2345/datacenter/DataCenterObserver;
    const-string v4, "com.service.usbhelper"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 244
    invoke-virtual {v3, v1}, Lcom/market2345/datacenter/DataCenterObserver;->addInstalledApp(Ljava/lang/String;)V

    .line 246
    :cond_2
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 247
    .local v2, "replacing":Z
    if-eqz v2, :cond_3

    .line 248
    invoke-virtual {v3, v1}, Lcom/market2345/datacenter/DataCenterObserver;->removeUpdatedApp(Ljava/lang/String;)V

    .line 251
    :cond_3
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->setInstallOpration(Ljava/lang/String;I)V

    goto :goto_0

    .line 252
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "replacing":Z
    .end local v3    # "session":Lcom/market2345/datacenter/DataCenterObserver;
    :cond_4
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 253
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 255
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    .line 256
    .restart local v3    # "session":Lcom/market2345/datacenter/DataCenterObserver;
    const-string v4, "com.service.usbhelper"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 257
    invoke-virtual {v3, v1}, Lcom/market2345/datacenter/DataCenterObserver;->removeInstalledApp(Ljava/lang/String;)V

    .line 259
    :cond_5
    invoke-virtual {v3, v1}, Lcom/market2345/datacenter/DataCenterObserver;->removeUpdatedApp(Ljava/lang/String;)V

    .line 261
    const/4 v4, 0x2

    invoke-static {v1, v4}, Lcom/phonemanager2345/zhushou/CommandHander;->setunInstallOpration(Ljava/lang/String;I)V

    goto :goto_0
.end method
