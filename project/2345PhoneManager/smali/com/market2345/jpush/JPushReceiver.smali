.class public Lcom/market2345/jpush/JPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "JPushReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "JPushReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private loadImage(Landroid/content/Context;Lcom/market2345/jpush/PushInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/market2345/jpush/PushInfo;

    .prologue
    .line 82
    iget v0, p2, Lcom/market2345/jpush/PushInfo;->styleId:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 84
    iget-object v0, p2, Lcom/market2345/jpush/PushInfo;->urlIcon:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/market2345/jpush/JPushReceiver;->loadImage(Landroid/content/Context;Ljava/lang/String;Lcom/market2345/jpush/PushInfo;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget v0, p2, Lcom/market2345/jpush/PushInfo;->styleId:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 87
    iget-object v0, p2, Lcom/market2345/jpush/PushInfo;->urlBanner:Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2}, Lcom/market2345/jpush/JPushReceiver;->loadImage(Landroid/content/Context;Ljava/lang/String;Lcom/market2345/jpush/PushInfo;)V

    goto :goto_0
.end method

.method private loadImage(Landroid/content/Context;Ljava/lang/String;Lcom/market2345/jpush/PushInfo;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "picUrl"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/market2345/jpush/PushInfo;

    .prologue
    .line 98
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/market2345/jpush/JPushReceiver$1;

    invoke-direct {v1, p0, p3, p1}, Lcom/market2345/jpush/JPushReceiver$1;-><init>(Lcom/market2345/jpush/JPushReceiver;Lcom/market2345/jpush/PushInfo;Landroid/content/Context;)V

    invoke-virtual {v0, p2, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 132
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v8, 0x400

    const/16 v7, 0x200

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 27
    .local v1, "bundle":Landroid/os/Bundle;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "strAction":Ljava/lang/String;
    sget-object v5, Lcn/jpush/android/api/JPushInterface;->ACTION_REGISTRATION_ID:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 31
    :cond_1
    sget-object v5, Lcn/jpush/android/api/JPushInterface;->ACTION_MESSAGE_RECEIVED:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 33
    sget-object v5, Lcn/jpush/android/api/JPushInterface;->EXTRA_EXTRA:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "strJson":Ljava/lang/String;
    invoke-static {v4}, Lcom/market2345/jpush/PushContants;->parsePushInfo(Ljava/lang/String;)Lcom/market2345/jpush/PushInfo;

    move-result-object v2

    .line 36
    .local v2, "info":Lcom/market2345/jpush/PushInfo;
    if-eqz v2, :cond_0

    .line 41
    iget v5, v2, Lcom/market2345/jpush/PushInfo;->actionId:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 44
    :try_start_0
    iget-object v5, v2, Lcom/market2345/jpush/PushInfo;->packageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 45
    invoke-static {p1}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v5

    iget-object v6, v2, Lcom/market2345/jpush/PushInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    .local v0, "app":Lcom/market2345/model/InstalledApp;
    if-nez v0, :cond_0

    .line 53
    .end local v0    # "app":Lcom/market2345/model/InstalledApp;
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/market2345/jpush/JPushReceiver;->loadImage(Landroid/content/Context;Lcom/market2345/jpush/PushInfo;)V

    goto :goto_0

    .line 54
    :cond_3
    iget v5, v2, Lcom/market2345/jpush/PushInfo;->actionId:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 56
    invoke-static {p1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 57
    invoke-static {p1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 59
    invoke-direct {p0, p1, v2}, Lcom/market2345/jpush/JPushReceiver;->loadImage(Landroid/content/Context;Lcom/market2345/jpush/PushInfo;)V

    goto :goto_0

    .line 60
    :cond_4
    iget v5, v2, Lcom/market2345/jpush/PushInfo;->actionId:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 62
    invoke-static {p1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 63
    invoke-static {p1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 65
    invoke-direct {p0, p1, v2}, Lcom/market2345/jpush/JPushReceiver;->loadImage(Landroid/content/Context;Lcom/market2345/jpush/PushInfo;)V

    goto :goto_0

    .line 67
    .end local v2    # "info":Lcom/market2345/jpush/PushInfo;
    .end local v4    # "strJson":Ljava/lang/String;
    :cond_5
    sget-object v5, Lcn/jpush/android/api/JPushInterface;->ACTION_NOTIFICATION_RECEIVED:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 69
    sget-object v5, Lcn/jpush/android/api/JPushInterface;->ACTION_NOTIFICATION_OPENED:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 50
    .restart local v2    # "info":Lcom/market2345/jpush/PushInfo;
    .restart local v4    # "strJson":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method
