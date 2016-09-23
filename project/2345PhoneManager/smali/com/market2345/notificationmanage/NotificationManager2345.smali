.class public Lcom/market2345/notificationmanage/NotificationManager2345;
.super Ljava/lang/Object;
.source "NotificationManager2345.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    }
.end annotation


# static fields
.field public static final APPS_UPDATED:I = 0x8

.field public static final NOTIFI_CLAEAN_2345:I = 0x100

.field public static final NOTIFI_DOWNLOADING_2345:I = 0x80

.field public static final NOTIFI_INSTALL_2345:I = 0x40

.field public static final NOTIFI_JPUSH_TEMPLATE_BANNER:I = 0x400

.field public static final NOTIFI_JPUSH_TEMPLATE_TITLE:I = 0x200

.field public static final NOTIFI_UPDATE_2345:I = 0x20

.field public static final PHONEMAKET_UPDATED:I = 0x10

.field public static final USB_CONNETION:I = 0x4

.field private static managerInstance:Lcom/market2345/notificationmanage/NotificationManager2345;


# instance fields
.field private aLiveNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private sysNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->aLiveNotificationList:Ljava/util/ArrayList;

    .line 106
    iput-object p1, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    .line 107
    invoke-direct {p0}, Lcom/market2345/notificationmanage/NotificationManager2345;->checkSystemNotificationManager()V

    .line 108
    return-void
.end method

.method private cancelNotification(ILjava/lang/String;)V
    .locals 1
    .param p1, "notificationId"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->sysNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 477
    return-void
.end method

.method private checkSystemNotificationManager()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->sysNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->sysNotificationManager:Landroid/app/NotificationManager;

    .line 484
    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    sget-object v0, Lcom/market2345/notificationmanage/NotificationManager2345;->managerInstance:Lcom/market2345/notificationmanage/NotificationManager2345;

    if-nez v0, :cond_0

    .line 114
    new-instance v0, Lcom/market2345/notificationmanage/NotificationManager2345;

    invoke-direct {v0, p0}, Lcom/market2345/notificationmanage/NotificationManager2345;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/market2345/notificationmanage/NotificationManager2345;->managerInstance:Lcom/market2345/notificationmanage/NotificationManager2345;

    .line 116
    :cond_0
    sget-object v0, Lcom/market2345/notificationmanage/NotificationManager2345;->managerInstance:Lcom/market2345/notificationmanage/NotificationManager2345;

    return-object v0
.end method

.method private initUpdateAppsNotificationRemoteViews(Landroid/widget/RemoteViews;I)V
    .locals 12
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "count"    # I

    .prologue
    .line 424
    iget-object v9, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v9

    invoke-virtual {v9}, Lcom/market2345/datacenter/DataCenterObserver;->getUpdateList()Ljava/util/HashMap;

    move-result-object v6

    .line 425
    .local v6, "mUpdateList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/market2345/model/App;>;"
    const/4 v4, 0x0

    .line 426
    .local v4, "index":I
    const/4 v9, 0x5

    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 427
    .local v3, "images":[I
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 428
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/market2345/model/App;>;"
    const/4 v8, 0x0

    .line 429
    .local v8, "pkg":Ljava/lang/String;
    const/4 v7, 0x0

    .line 430
    .local v7, "maxDownCount":I
    const/4 v1, 0x0

    .line 433
    .local v1, "curDownCount":I
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 434
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/model/App;

    .line 436
    .local v0, "app":Lcom/market2345/model/App;
    const/4 v1, 0x0

    .line 438
    :try_start_0
    iget-object v9, v0, Lcom/market2345/model/App;->totalDowns:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 443
    :goto_1
    if-le v1, v7, :cond_2

    .line 444
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    array-length v9, v3

    if-ge v4, v9, :cond_1

    .line 445
    aget v9, v3, v4

    iget-object v10, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-static {v10, v8}, Lcom/market2345/util/AppsUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 446
    add-int/lit8 v4, v4, 0x1

    .line 449
    :cond_1
    move v7, v1

    .line 450
    iget-object v8, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    goto :goto_0

    .line 439
    :catch_0
    move-exception v2

    .line 440
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 451
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_2
    array-length v9, v3

    if-ge v4, v9, :cond_0

    .line 452
    aget v9, v3, v4

    iget-object v10, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    iget-object v11, v0, Lcom/market2345/model/App;->packageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/market2345/util/AppsUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 453
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 458
    .end local v0    # "app":Lcom/market2345/model/App;
    :cond_3
    array-length v9, v3

    if-ge v4, v9, :cond_4

    .line 459
    const v9, 0x7f090064

    const/16 v10, 0x8

    invoke-virtual {p1, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 462
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 463
    const v9, 0x7f09032c

    iget-object v10, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-static {v10, v8}, Lcom/market2345/util/AppsUtils;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 466
    :cond_5
    const v9, 0x7f090230

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\u6b3e\u5e94\u7528\u53ef\u4ee5\u5347\u7ea7"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 468
    return-void

    .line 426
    :array_0
    .array-data 4
        0x7f090411
        0x7f090412
        0x7f090311
        0x7f090312
        0x7f090314
    .end array-data
.end method

.method private nofify(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;Ljava/lang/String;)V
    .locals 3
    .param p1, "mNotification"    # Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->sysNotificationManager:Landroid/app/NotificationManager;

    # getter for: Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->notifiId:Ljava/lang/Integer;
    invoke-static {p1}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->access$000(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    # invokes: Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->changeToSystemNotification(Landroid/content/Context;)Landroid/app/Notification;
    invoke-static {p1, v2}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->access$100(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 473
    return-void
.end method


# virtual methods
.method public cancelNotification(I)V
    .locals 1
    .param p1, "notificationId"    # I

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(ILjava/lang/String;)V

    .line 414
    return-void
.end method

.method public cancelUSBConnectionNotification()V
    .locals 1

    .prologue
    .line 409
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/market2345/notificationmanage/NotificationManager2345;->cancelNotification(I)V

    .line 410
    return-void
.end method

.method public notify(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;)V
    .locals 1
    .param p1, "mNotification"    # Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/market2345/notificationmanage/NotificationManager2345;->nofify(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method public notifyAppsUpdate(I)V
    .locals 10
    .param p1, "count"    # I

    .prologue
    .line 146
    new-instance v4, Landroid/content/Intent;

    const-string v6, "action.2345.updateapps.fromnotification"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v4, "touchIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v7, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 150
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0300ce

    invoke-direct {v3, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 152
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    invoke-direct {p0, v3, p1}, Lcom/market2345/notificationmanage/NotificationManager2345;->initUpdateAppsNotificationRemoteViews(Landroid/widget/RemoteViews;I)V

    .line 153
    new-instance v1, Landroid/content/Intent;

    const-string v6, "action.2345.updateallapps.fromnotification"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "buttonIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v7, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    new-instance v0, Lcom/market2345/notificationmanage/ClickButton;

    const v6, 0x7f090413

    invoke-direct {v0, v6, v1}, Lcom/market2345/notificationmanage/ClickButton;-><init>(ILandroid/content/Intent;)V

    .line 157
    .local v0, "button":Lcom/market2345/notificationmanage/ClickButton;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v2, "buttons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/notificationmanage/ClickButton;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    const/16 v6, 0x8

    const-string v7, "\u5e94\u7528\u6709\u66f4\u65b0"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u60a8\u6709"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u6b3e\u5e94\u7528\u53ef\u4ee5\u66f4\u65b0,\u8bf7\u70b9\u51fb\u66f4\u65b0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v8, v9}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->makeDataWithoutLargeIcon(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setNotificationFlag(I)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setIsAutoCancel(Z)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "2345\u63d0\u9192\u60a8\u6709"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\u6b3e\u5e94\u7528\u53ef\u4ee5\u66f4\u65b0"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTicker(Ljava/lang/String;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTouchIntent(Landroid/content/Intent;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setRemoteViews(Landroid/widget/RemoteViews;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setButtons(Ljava/util/ArrayList;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    .line 169
    .local v5, "updateNotification":Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/market2345/notificationmanage/NotificationManager2345;->nofify(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public notifyClean2345(Ljava/lang/String;)V
    .locals 13
    .param p1, "strSize"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 365
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v6, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f03009b

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 367
    .local v4, "remoteViews":Landroid/widget/RemoteViews;
    const v6, 0x7f090089

    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0033

    new-array v9, v11, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 369
    new-instance v5, Landroid/content/Intent;

    const-string v6, "action.2345.clean.fromnotifition"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 370
    .local v5, "touchIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v7, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 372
    new-instance v1, Landroid/content/Intent;

    const-string v6, "action.2345.clean.fromnotifition"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, "buttonIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v7, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 374
    new-instance v0, Lcom/market2345/notificationmanage/ClickButton;

    const v6, 0x7f09032d

    invoke-direct {v0, v6, v5}, Lcom/market2345/notificationmanage/ClickButton;-><init>(ILandroid/content/Intent;)V

    .line 375
    .local v0, "button":Lcom/market2345/notificationmanage/ClickButton;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    .local v2, "buttons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/notificationmanage/ClickButton;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    const/16 v6, 0x100

    const-string v7, "\u6e05\u7406\u53ef\u52a0\u901f\u8fd0\u884c"

    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-static {v6, v12, v7, v8}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->makeDataWithoutLargeIcon(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v6

    const/16 v7, 0x10

    invoke-virtual {v6, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setNotificationFlag(I)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setIsAutoCancel(Z)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTouchIntent(Landroid/content/Intent;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setRemoteViews(Landroid/widget/RemoteViews;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setButtons(Ljava/util/ArrayList;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v3

    .line 388
    .local v3, "notifition":Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    invoke-direct {p0, v3, v12}, Lcom/market2345/notificationmanage/NotificationManager2345;->nofify(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public notifyInstall2345()V
    .locals 12

    .prologue
    .line 305
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f030097

    invoke-direct {v4, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 307
    .local v4, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/market2345/util/SPUtil;->getLatestUpdateInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "str":Ljava/lang/String;
    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v5, v9}, Lcom/market2345/http/ApiResponseFactory;->parseUpdate(Landroid/content/Context;Ljava/lang/String;Z)Lcom/market2345/update/UpdateInfo;

    move-result-object v3

    .line 309
    .local v3, "info":Lcom/market2345/update/UpdateInfo;
    const v8, 0x7f090325

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u65b0\u7248\u672c\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/market2345/update/UpdateInfo;->user_version:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 310
    const v8, 0x7f090325

    const-string v9, "#3097fd"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 311
    iget-object v8, v3, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 312
    iget-object v8, v3, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_0

    .line 313
    const v8, 0x7f090326

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 314
    const v8, 0x7f090327

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 327
    :goto_0
    const v8, 0x7f0901f8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v9, "HH:mm"

    invoke-static {v10, v11, v9}, Lcom/market2345/common/util/DateFormatUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 331
    new-instance v6, Landroid/content/Intent;

    const-string v8, "action.2345.install2345.now.fromnotification"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 333
    .local v6, "touchIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v9, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 335
    new-instance v1, Landroid/content/Intent;

    const-string v8, "action.2345.install2345.now.fromnotification"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    .local v1, "buttonIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v9, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 338
    new-instance v0, Lcom/market2345/notificationmanage/ClickButton;

    const v8, 0x7f090328

    invoke-direct {v0, v8, v1}, Lcom/market2345/notificationmanage/ClickButton;-><init>(ILandroid/content/Intent;)V

    .line 340
    .local v0, "button":Lcom/market2345/notificationmanage/ClickButton;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v2, "buttons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/notificationmanage/ClickButton;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-static {v8, v9, v10, v11}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->makeDataWithoutLargeIcon(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setNotificationFlag(I)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setIsAutoCancel(Z)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v8

    const-string v9, "2345\u624b\u673a\u52a9\u624b\u65b0\u7248\u672c\u5df2\u4e0b\u8f7d"

    invoke-virtual {v8, v9}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTicker(Ljava/lang/String;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setRemoteViews(Landroid/widget/RemoteViews;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setButtons(Ljava/util/ArrayList;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v7

    .line 356
    .local v7, "updateNotification":Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    invoke-virtual {v7, v6}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTouchIntent(Landroid/content/Intent;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    .line 357
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/market2345/notificationmanage/NotificationManager2345;->nofify(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;Ljava/lang/String;)V

    .line 358
    return-void

    .line 317
    .end local v0    # "button":Lcom/market2345/notificationmanage/ClickButton;
    .end local v1    # "buttonIntent":Landroid/content/Intent;
    .end local v2    # "buttons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/notificationmanage/ClickButton;>;"
    .end local v6    # "touchIntent":Landroid/content/Intent;
    .end local v7    # "updateNotification":Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    :cond_0
    const v8, 0x7f090326

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 318
    const v8, 0x7f090327

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "2."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 322
    :cond_1
    const v8, 0x7f090326

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 323
    const v8, 0x7f090327

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public notifyJpushTemplateBanner(Landroid/graphics/Bitmap;Lcom/market2345/jpush/PushInfo;)V
    .locals 9
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "info"    # Lcom/market2345/jpush/PushInfo;

    .prologue
    const/4 v7, 0x0

    .line 220
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "action.2345.jpush.template.banner.fromnotifition"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v3, "touchIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v6, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 230
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030098

    invoke-direct {v2, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 231
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    const v5, 0x7f090329

    invoke-virtual {v2, v5, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v5, "action.2345.jpush.canceled.fromnotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, "del":Landroid/content/Intent;
    iget-object v5, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v6, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 236
    iget-object v5, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 239
    .local v1, "deleteIntelt":Landroid/app/PendingIntent;
    const/16 v5, 0x200

    const-string v6, ""

    const-string v7, ""

    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v7, v8}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->makeDataWithoutLargeIcon(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setNotificationFlag(I)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setIsAutoCancel(Z)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTicker(Ljava/lang/String;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setDeleteIntent(Landroid/app/PendingIntent;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTouchIntent(Landroid/content/Intent;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setRemoteViews(Landroid/widget/RemoteViews;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v4

    .line 247
    .local v4, "updateNotification":Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/market2345/notificationmanage/NotificationManager2345;->nofify(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public notifyJpushTemplateTitle(Landroid/graphics/Bitmap;Lcom/market2345/jpush/PushInfo;)V
    .locals 10
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .param p2, "info"    # Lcom/market2345/jpush/PushInfo;

    .prologue
    const/4 v9, 0x1

    .line 178
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v5, p2, Lcom/market2345/jpush/PushInfo;->title:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p2, Lcom/market2345/jpush/PushInfo;->content:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "action.2345.jpush.template.title.fromnotifition"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, "touchIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v6, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 186
    iget v5, p2, Lcom/market2345/jpush/PushInfo;->topicId:I

    if-lez v5, :cond_2

    .line 187
    const-string v5, "topicId"

    iget v6, p2, Lcom/market2345/jpush/PushInfo;->topicId:I

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    :cond_2
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030099

    invoke-direct {v2, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 192
    .local v2, "remoteViews":Landroid/widget/RemoteViews;
    const v5, 0x7f09032a

    invoke-virtual {v2, v5, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 193
    const v5, 0x7f09009f

    iget-object v6, p2, Lcom/market2345/jpush/PushInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 194
    const v5, 0x7f09032b

    iget-object v6, p2, Lcom/market2345/jpush/PushInfo;->content:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 195
    const v5, 0x7f0901f8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "HH:mm"

    invoke-static {v6, v7, v8}, Lcom/market2345/common/util/DateFormatUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v5, "action.2345.jpush.canceled.fromnotification"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "del":Landroid/content/Intent;
    iget-object v5, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v6, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 200
    iget-object v5, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v9, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 203
    .local v1, "deleteIntelt":Landroid/app/PendingIntent;
    const/16 v5, 0x200

    iget-object v6, p2, Lcom/market2345/jpush/PushInfo;->title:Ljava/lang/String;

    iget-object v7, p2, Lcom/market2345/jpush/PushInfo;->content:Ljava/lang/String;

    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v7, v8}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->makeDataWithoutLargeIcon(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setNotificationFlag(I)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setIsAutoCancel(Z)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    iget-object v6, p2, Lcom/market2345/jpush/PushInfo;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTicker(Ljava/lang/String;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setDeleteIntent(Landroid/app/PendingIntent;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTouchIntent(Landroid/content/Intent;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setRemoteViews(Landroid/widget/RemoteViews;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v4

    .line 211
    .local v4, "updateNotification":Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/market2345/notificationmanage/NotificationManager2345;->nofify(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifyMarketUpdate()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public notifyNewAppNeededUpdate(Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 403
    return-void
.end method

.method public notifyUSBConnection()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 123
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action.2345.startmarket.fromnotification"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v3, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    const/4 v2, 0x4

    const-string v3, "\u5df2\u901a\u8fc7USB\u8fde\u63a5\u7535\u8111"

    const-string v4, "\u70b9\u51fb\u542f\u52a82345\u624b\u673a\u52a9\u624b\uff0c\u514d\u8d39\u83b7\u53d6\u6d77\u91cf\u8d44\u6e90"

    const v5, 0x7f020175

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->makeData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v2

    const/16 v3, 0x22

    invoke-virtual {v2, v3}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setNotificationFlag(I)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setIsAutoCancel(Z)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v2

    const-string v3, "\u5df2\u901a\u8fc7USB\u8fde\u63a5\u7535\u8111"

    invoke-virtual {v2, v3}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTicker(Ljava/lang/String;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setLargeIcon(Landroid/graphics/Bitmap;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTouchIntent(Landroid/content/Intent;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v1

    .line 136
    .local v1, "usbNotification":Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    invoke-direct {p0, v1, v7}, Lcom/market2345/notificationmanage/NotificationManager2345;->nofify(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public notifyUpdate2345()V
    .locals 12

    .prologue
    .line 252
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f03009a

    invoke-direct {v4, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 254
    .local v4, "remoteViews":Landroid/widget/RemoteViews;
    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-string v9, ""

    invoke-static {v8, v9}, Lcom/market2345/util/SPUtil;->getLatestUpdateInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, "str":Ljava/lang/String;
    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-static {v8, v5, v9}, Lcom/market2345/http/ApiResponseFactory;->parseUpdate(Landroid/content/Context;Ljava/lang/String;Z)Lcom/market2345/update/UpdateInfo;

    move-result-object v3

    .line 256
    .local v3, "info":Lcom/market2345/update/UpdateInfo;
    const v8, 0x7f090325

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u65b0\u7248\u672c\uff1a"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/market2345/update/UpdateInfo;->user_version:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 257
    const v8, 0x7f090325

    const-string v9, "#3097fd"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 258
    iget-object v8, v3, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 259
    iget-object v8, v3, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    const/4 v9, 0x1

    if-gt v8, v9, :cond_0

    .line 260
    const v8, 0x7f090326

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 261
    const v8, 0x7f090327

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 273
    :goto_0
    const v8, 0x7f0901f8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-string v9, "HH:mm"

    invoke-static {v10, v11, v9}, Lcom/market2345/common/util/DateFormatUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 277
    new-instance v6, Landroid/content/Intent;

    const-string v8, "action.2345.update2345.download.fromnotification"

    invoke-direct {v6, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .local v6, "touchIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v9, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 280
    new-instance v1, Landroid/content/Intent;

    const-string v8, "action.2345.update2345.download.fromnotification"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v1, "buttonIntent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    const-class v9, Lcom/market2345/notificationmanage/NotificationHandleReceiver;

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 283
    new-instance v0, Lcom/market2345/notificationmanage/ClickButton;

    const v8, 0x7f090328

    invoke-direct {v0, v8, v1}, Lcom/market2345/notificationmanage/ClickButton;-><init>(ILandroid/content/Intent;)V

    .line 285
    .local v0, "button":Lcom/market2345/notificationmanage/ClickButton;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v2, "buttons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/notificationmanage/ClickButton;>;"
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    const/16 v8, 0x20

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/market2345/notificationmanage/NotificationManager2345;->mContext:Landroid/content/Context;

    invoke-static {v8, v9, v10, v11}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->makeDataWithoutLargeIcon(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v8

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setNotificationFlag(I)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setIsAutoCancel(Z)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v8

    const-string v9, "2345\u624b\u673a\u52a9\u624b\u6709\u65b0\u7248\u672c\u53ef\u4ee5\u5347\u7ea7"

    invoke-virtual {v8, v9}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTicker(Ljava/lang/String;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setRemoteViews(Landroid/widget/RemoteViews;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setButtons(Ljava/util/ArrayList;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v7

    .line 299
    .local v7, "updateNotification":Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    invoke-virtual {v7, v6}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->setTouchIntent(Landroid/content/Intent;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    .line 300
    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Lcom/market2345/notificationmanage/NotificationManager2345;->nofify(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;Ljava/lang/String;)V

    .line 301
    return-void

    .line 264
    .end local v0    # "button":Lcom/market2345/notificationmanage/ClickButton;
    .end local v1    # "buttonIntent":Landroid/content/Intent;
    .end local v2    # "buttons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/notificationmanage/ClickButton;>;"
    .end local v6    # "touchIntent":Landroid/content/Intent;
    .end local v7    # "updateNotification":Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    :cond_0
    const v8, 0x7f090326

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 265
    const v8, 0x7f090327

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "2."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/market2345/update/UpdateInfo;->updatelog:Ljava/lang/String;

    const-string v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 269
    :cond_1
    const v8, 0x7f090326

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 270
    const v8, 0x7f090327

    const-string v9, ""

    invoke-virtual {v4, v8, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
