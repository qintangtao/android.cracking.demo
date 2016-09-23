.class public Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
.super Ljava/lang/Object;
.source "NotificationManager2345.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/notificationmanage/NotificationManager2345;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyNotification"
.end annotation


# instance fields
.field private bottomButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/notificationmanage/ClickButton;",
            ">;"
        }
    .end annotation
.end field

.field private buttons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/notificationmanage/ClickButton;",
            ">;"
        }
    .end annotation
.end field

.field private content:Ljava/lang/String;

.field private contentInfo:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private deleteIntent:Landroid/app/PendingIntent;

.field private isAutoCancel:Ljava/lang/Boolean;

.field private largeIcon:Landroid/graphics/Bitmap;

.field private notifiId:Ljava/lang/Integer;

.field private notificationFlag:Ljava/lang/Integer;

.field private romoteViews:Landroid/widget/RemoteViews;

.field private smallIcon:Ljava/lang/Integer;

.field private sound:Landroid/net/Uri;

.field private style:Landroid/support/v4/app/NotificationCompat$Style;

.field private ticker:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private touchIntent:Landroid/content/Intent;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 526
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->notifiId:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;Landroid/content/Context;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 489
    invoke-direct {p0, p1}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->changeToSystemNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private changeToSystemNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 687
    const/4 v4, 0x0

    .line 688
    .local v4, "notification":Landroid/app/Notification;
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 690
    .local v0, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->title:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 691
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->title:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 694
    :cond_0
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->content:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 695
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->content:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 697
    :cond_1
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->smallIcon:Ljava/lang/Integer;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 698
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->smallIcon:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 700
    :cond_2
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->ticker:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 701
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->ticker:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 703
    :cond_3
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->contentInfo:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 704
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->contentInfo:Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 706
    :cond_4
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isAutoCancel:Ljava/lang/Boolean;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 707
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isAutoCancel:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 709
    :cond_5
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->touchIntent:Landroid/content/Intent;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 711
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->touchIntent:Landroid/content/Intent;

    invoke-static {p1, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 714
    .local v6, "touchPendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 716
    .end local v6    # "touchPendingIntent":Landroid/app/PendingIntent;
    :cond_6
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 717
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 719
    :cond_7
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->sound:Landroid/net/Uri;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 720
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->sound:Landroid/net/Uri;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 722
    :cond_8
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->buttons:Ljava/util/ArrayList;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 723
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 724
    .local v5, "size":I
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->romoteViews:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_9

    .line 725
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_9

    .line 726
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->buttons:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/notificationmanage/ClickButton;

    .line 727
    .local v1, "button":Lcom/market2345/notificationmanage/ClickButton;
    iget-object v7, v1, Lcom/market2345/notificationmanage/ClickButton;->actionIntent:Landroid/content/Intent;

    invoke-static {p1, v9, v7, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 730
    .local v2, "buttonIntent":Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->romoteViews:Landroid/widget/RemoteViews;

    iget v8, v1, Lcom/market2345/notificationmanage/ClickButton;->viewId:I

    invoke-virtual {v7, v8, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 725
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 736
    .end local v1    # "button":Lcom/market2345/notificationmanage/ClickButton;
    .end local v2    # "buttonIntent":Landroid/app/PendingIntent;
    .end local v3    # "i":I
    .end local v5    # "size":I
    :cond_9
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->romoteViews:Landroid/widget/RemoteViews;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 737
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->romoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 740
    :cond_a
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 741
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 745
    :cond_b
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->style:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 746
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->style:Landroid/support/v4/app/NotificationCompat$Style;

    invoke-virtual {v0, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 749
    :cond_c
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 750
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->notificationFlag:Ljava/lang/Integer;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 751
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->notificationFlag:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v4, Landroid/app/Notification;->flags:I

    .line 754
    :cond_d
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xe

    if-ge v7, v8, :cond_e

    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->romoteViews:Landroid/widget/RemoteViews;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 755
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->romoteViews:Landroid/widget/RemoteViews;

    iput-object v7, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 758
    :cond_e
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x10

    if-lt v7, v8, :cond_f

    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->romoteViews:Landroid/widget/RemoteViews;

    invoke-direct {p0, v7}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isNotNull(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 759
    iget-object v7, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->romoteViews:Landroid/widget/RemoteViews;

    iput-object v7, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 763
    :cond_f
    return-object v4
.end method

.method private isNotNull(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 768
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeData(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 3
    .param p0, "notifyId"    # I
    .param p1, "notifyTitle"    # Ljava/lang/String;
    .param p2, "notifyContent"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 551
    new-instance v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    invoke-direct {v0}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;-><init>()V

    .line 552
    .local v0, "notification":Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->notifiId:Ljava/lang/Integer;

    .line 553
    iput-object p1, v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->title:Ljava/lang/String;

    .line 554
    iput-object p2, v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->content:Ljava/lang/String;

    .line 555
    const v1, 0x7f0202ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->smallIcon:Ljava/lang/Integer;

    .line 556
    iput-object p3, v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->context:Landroid/content/Context;

    .line 557
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020175

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->largeIcon:Landroid/graphics/Bitmap;

    .line 559
    return-object v0
.end method

.method public static makeData(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 1
    .param p0, "notifyId"    # I
    .param p1, "notifyTitle"    # Ljava/lang/String;
    .param p2, "notifyContent"    # Ljava/lang/String;
    .param p3, "smallIconId"    # Ljava/lang/Integer;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 539
    invoke-static {p0, p1, p2, p4}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->makeData(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    move-result-object v0

    return-object v0
.end method

.method public static makeDataWithoutLargeIcon(ILjava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 2
    .param p0, "notifyId"    # I
    .param p1, "notifyTitle"    # Ljava/lang/String;
    .param p2, "notifyContent"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 573
    new-instance v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;

    invoke-direct {v0}, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;-><init>()V

    .line 574
    .local v0, "notification":Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->notifiId:Ljava/lang/Integer;

    .line 575
    iput-object p1, v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->title:Ljava/lang/String;

    .line 576
    iput-object p2, v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->content:Ljava/lang/String;

    .line 577
    const v1, 0x7f0202ef

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->smallIcon:Ljava/lang/Integer;

    .line 578
    iput-object p3, v0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->context:Landroid/content/Context;

    .line 579
    return-object v0
.end method


# virtual methods
.method public setBottomButtons(Ljava/util/ArrayList;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/notificationmanage/ClickButton;",
            ">;)",
            "Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;"
        }
    .end annotation

    .prologue
    .line 618
    .local p1, "buttons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/notificationmanage/ClickButton;>;"
    iput-object p1, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->bottomButtons:Ljava/util/ArrayList;

    .line 619
    return-object p0
.end method

.method public setButtons(Ljava/util/ArrayList;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/market2345/notificationmanage/ClickButton;",
            ">;)",
            "Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;"
        }
    .end annotation

    .prologue
    .line 610
    .local p1, "buttons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/market2345/notificationmanage/ClickButton;>;"
    iput-object p1, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->buttons:Ljava/util/ArrayList;

    .line 611
    return-object p0
.end method

.method public setContentInfo(Ljava/lang/String;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 0
    .param p1, "contentInfo"    # Ljava/lang/String;

    .prologue
    .line 594
    iput-object p1, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->contentInfo:Ljava/lang/String;

    .line 595
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 0
    .param p1, "deleteIntelt"    # Landroid/app/PendingIntent;

    .prologue
    .line 668
    iput-object p1, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->deleteIntent:Landroid/app/PendingIntent;

    .line 669
    return-object p0
.end method

.method public setIsAutoCancel(Z)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 1
    .param p1, "autoCancel"    # Z

    .prologue
    .line 658
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->isAutoCancel:Ljava/lang/Boolean;

    .line 659
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 0
    .param p1, "largeIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 626
    iput-object p1, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->largeIcon:Landroid/graphics/Bitmap;

    .line 627
    return-object p0
.end method

.method public setNotificationFlag(I)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 650
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->notificationFlag:Ljava/lang/Integer;

    .line 651
    return-object p0
.end method

.method public setRemoteViews(Landroid/widget/RemoteViews;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 0
    .param p1, "views"    # Landroid/widget/RemoteViews;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->romoteViews:Landroid/widget/RemoteViews;

    .line 603
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 0
    .param p1, "sound"    # Landroid/net/Uri;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->sound:Landroid/net/Uri;

    .line 635
    return-object p0
.end method

.method public setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 0
    .param p1, "style"    # Landroid/support/v4/app/NotificationCompat$Style;

    .prologue
    .line 678
    iput-object p1, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->style:Landroid/support/v4/app/NotificationCompat$Style;

    .line 679
    return-object p0
.end method

.method public setTicker(Ljava/lang/String;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 0
    .param p1, "ticker"    # Ljava/lang/String;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->ticker:Ljava/lang/String;

    .line 587
    return-object p0
.end method

.method public setTouchIntent(Landroid/content/Intent;)Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 642
    iput-object p1, p0, Lcom/market2345/notificationmanage/NotificationManager2345$MyNotification;->touchIntent:Landroid/content/Intent;

    .line 643
    return-object p0
.end method
