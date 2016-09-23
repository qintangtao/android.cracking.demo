.class public Lcom/market2345/notificationmanage/NotificationHandleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationHandleReceiver.java"


# static fields
.field public static final ACTION_CLEAN_2345:Ljava/lang/String; = "action.2345.clean.fromnotifition"

.field public static final ACTION_INSTALL_2345_DIALOG:Ljava/lang/String; = "action.2345.install2345.dialog.fromnotification"

.field public static final ACTION_INSTALL_2345_NOW:Ljava/lang/String; = "action.2345.install2345.now.fromnotification"

.field public static final ACTION_JPUSH_CANCELED:Ljava/lang/String; = "action.2345.jpush.canceled.fromnotification"

.field public static final ACTION_JPUSH_TEMPLATE_BANNER:Ljava/lang/String; = "action.2345.jpush.template.banner.fromnotifition"

.field public static final ACTION_JPUSH_TEMPLATE_TITLE:Ljava/lang/String; = "action.2345.jpush.template.title.fromnotifition"

.field public static final ACTION_STARTMARKET:Ljava/lang/String; = "action.2345.startmarket.fromnotification"

.field public static final ACTION_UPDATEANAPP:Ljava/lang/String; = "action.2345.updateanapp.fromnotification"

.field public static final ACTION_UPDATEAPPS:Ljava/lang/String; = "action.2345.updateapps.fromnotification"

.field public static final ACTION_UPDATEAPPSALL:Ljava/lang/String; = "action.2345.updateallapps.fromnotification"

.field public static final ACTION_UPDATESELF:Ljava/lang/String; = "action.2345.updateself.fromnotification"

.field public static final ACTION_UPDATE_2345_DIALOG:Ljava/lang/String; = "action.2345.update2345.dialog.fromnotification"

.field public static final ACTION_UPDATE_2345_DOWNLOAD:Ljava/lang/String; = "action.2345.update2345.download.fromnotification"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private collapseStatusBar(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    const-string v5, "statusbar"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 129
    .local v3, "sbservice":Ljava/lang/Object;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 132
    .local v1, "currentApiVersion":I
    :try_start_0
    const-string v5, "android.app.StatusBarManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 134
    .local v4, "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 135
    .local v0, "collapse":Ljava/lang/reflect/Method;
    const/16 v5, 0x10

    if-gt v1, v5, :cond_0

    .line 136
    const-string v5, "collapse"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 142
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 143
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v0    # "collapse":Ljava/lang/reflect/Method;
    .end local v4    # "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    return-void

    .line 139
    .restart local v0    # "collapse":Ljava/lang/reflect/Method;
    .restart local v4    # "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-string v5, "collapsePanels"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 144
    .end local v0    # "collapse":Ljava/lang/reflect/Method;
    .end local v4    # "statusbarManager":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 145
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v9, 0xb

    const/4 v8, 0x0

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "action":Ljava/lang/String;
    const-string v6, "topicId"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 57
    .local v5, "topicId":I
    const-string v6, "action.2345.startmarket.fromnotification"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 59
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-static {p1, v6}, Lcom/market2345/home/HomeUtils;->startHomeClearTop(Landroid/content/Context;Landroid/content/Intent;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v6, "action.2345.updateapps.fromnotification"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "notification"

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/market2345/home/HomeUtils;->startHomeClearTop(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 64
    :cond_2
    const-string v6, "action.2345.updateallapps.fromnotification"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 65
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "notification"

    const/4 v8, 0x7

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/market2345/home/HomeUtils;->startHomeClearTop(Landroid/content/Context;Landroid/content/Intent;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/market2345/notificationmanage/NotificationHandleReceiver;->collapseStatusBar(Landroid/content/Context;)V

    .line 67
    invoke-static {p1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    goto :goto_0

    .line 69
    :cond_3
    const-string v6, "action.2345.update2345.dialog.fromnotification"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 70
    invoke-static {p1}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/market2345/update/UpdateUtils;->showUpdateDialog(Lcom/market2345/update/UpdateInfo;)V

    goto :goto_0

    .line 71
    :cond_4
    const-string v6, "action.2345.update2345.download.fromnotification"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 72
    invoke-static {p1}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/market2345/update/UpdateUtils;->downloadNow(Lcom/market2345/update/UpdateInfo;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/market2345/notificationmanage/NotificationHandleReceiver;->collapseStatusBar(Landroid/content/Context;)V

    .line 74
    invoke-static {p1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    goto :goto_0

    .line 76
    :cond_5
    const-string v6, "action.2345.install2345.dialog.fromnotification"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 77
    invoke-static {p1}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/market2345/update/UpdateUtils;->showInstallDialog(Lcom/market2345/update/UpdateInfo;)V

    goto :goto_0

    .line 78
    :cond_6
    const-string v6, "action.2345.install2345.now.fromnotification"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 79
    invoke-static {p1}, Lcom/market2345/update/UpdateUtils;->get(Landroid/content/Context;)Lcom/market2345/update/UpdateUtils;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/market2345/update/UpdateUtils;->install(Lcom/market2345/update/UpdateInfo;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/market2345/notificationmanage/NotificationHandleReceiver;->collapseStatusBar(Landroid/content/Context;)V

    .line 81
    invoke-static {p1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    goto/16 :goto_0

    .line 83
    :cond_7
    const-string v6, "action.2345.clean.fromnotifition"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 84
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 85
    .local v4, "it":Landroid/content/Intent;
    const-string v6, "notification"

    const/16 v7, 0xa

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    invoke-static {p1, v4}, Lcom/market2345/home/HomeUtils;->startHomeClearTop(Landroid/content/Context;Landroid/content/Intent;)V

    .line 87
    invoke-direct {p0, p1}, Lcom/market2345/notificationmanage/NotificationHandleReceiver;->collapseStatusBar(Landroid/content/Context;)V

    .line 88
    invoke-static {p1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v6

    const/16 v7, 0x100

    invoke-virtual {v6, v7}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    goto/16 :goto_0

    .line 89
    .end local v4    # "it":Landroid/content/Intent;
    :cond_8
    const-string v6, "action.2345.jpush.template.title.fromnotifition"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 90
    invoke-static {p1}, Lcom/market2345/jpush/PushContants;->getPushInfo(Landroid/content/Context;)Lcom/market2345/jpush/PushInfo;

    move-result-object v3

    .line 91
    .local v3, "info":Lcom/market2345/jpush/PushInfo;
    if-eqz v3, :cond_9

    .line 92
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v2, "i":Landroid/content/Intent;
    const-string v6, "notification"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 94
    invoke-static {p1, v2}, Lcom/market2345/home/HomeUtils;->startHomeClearTop(Landroid/content/Context;Landroid/content/Intent;)V

    .line 97
    .end local v2    # "i":Landroid/content/Intent;
    :cond_9
    invoke-direct {p0, p1}, Lcom/market2345/notificationmanage/NotificationHandleReceiver;->collapseStatusBar(Landroid/content/Context;)V

    .line 98
    invoke-static {p1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v6

    const/16 v7, 0x200

    invoke-virtual {v6, v7}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 99
    iget v6, v3, Lcom/market2345/jpush/PushInfo;->topicId:I

    if-lez v6, :cond_0

    .line 100
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Push_Activity_Click_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/market2345/jpush/PushInfo;->topicId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    .end local v3    # "info":Lcom/market2345/jpush/PushInfo;
    :cond_a
    const-string v6, "action.2345.jpush.template.banner.fromnotifition"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 104
    invoke-static {p1}, Lcom/market2345/jpush/PushContants;->getPushInfo(Landroid/content/Context;)Lcom/market2345/jpush/PushInfo;

    move-result-object v3

    .line 105
    .restart local v3    # "info":Lcom/market2345/jpush/PushInfo;
    if-eqz v3, :cond_b

    .line 106
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 107
    .restart local v2    # "i":Landroid/content/Intent;
    const-string v6, "notification"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-static {p1, v2}, Lcom/market2345/home/HomeUtils;->startHomeClearTop(Landroid/content/Context;Landroid/content/Intent;)V

    .line 111
    .end local v2    # "i":Landroid/content/Intent;
    :cond_b
    invoke-direct {p0, p1}, Lcom/market2345/notificationmanage/NotificationHandleReceiver;->collapseStatusBar(Landroid/content/Context;)V

    .line 112
    invoke-static {p1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 113
    iget v6, v3, Lcom/market2345/jpush/PushInfo;->topicId:I

    if-lez v6, :cond_0

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Push_Activity_Click_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Lcom/market2345/jpush/PushInfo;->topicId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 116
    .end local v3    # "info":Lcom/market2345/jpush/PushInfo;
    :cond_c
    const-string v6, "action.2345.jpush.canceled.fromnotification"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 117
    const-string v1, "Push_Activity_Delete"

    .line 118
    .local v1, "event":Ljava/lang/String;
    if-lez v5, :cond_d

    .line 119
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    :cond_d
    invoke-static {p1, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
