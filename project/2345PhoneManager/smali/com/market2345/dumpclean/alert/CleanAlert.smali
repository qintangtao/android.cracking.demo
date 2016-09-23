.class public Lcom/market2345/dumpclean/alert/CleanAlert;
.super Ljava/lang/Object;
.source "CleanAlert.java"


# static fields
.field private static alarm:Landroid/app/AlarmManager; = null

.field private static final fiveHour:J = 0x3a5d680L

.field private static final onedaytime:J = 0x5265c00L

.field private static final tag:Ljava/lang/String; = "CleanAlert"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getlong(I)J
    .locals 6
    .param p0, "day"    # I

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 78
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->add(II)V

    .line 79
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 80
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 81
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 82
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 83
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x3a5d680

    add-long/2addr v2, v4

    return-wide v2
.end method

.method public static initAlert(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x3

    const/4 v8, 0x0

    const/4 v10, 0x1

    .line 41
    const-string v7, "clean_alert_set"

    invoke-static {p0, v7, v10}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getLaseSet(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 42
    .local v0, "bAlertSet":Z
    if-nez v0, :cond_1

    .line 43
    sget-object v7, Lcom/market2345/dumpclean/alert/CleanAlert;->alarm:Landroid/app/AlarmManager;

    if-eqz v7, :cond_0

    .line 44
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcom/market2345/autocheck/AutoResidentService;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "action_scan_dump"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    invoke-static {p0, v8, v4, v8}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 47
    .local v5, "sender":Landroid/app/PendingIntent;
    sget-object v7, Lcom/market2345/dumpclean/alert/CleanAlert;->alarm:Landroid/app/AlarmManager;

    invoke-virtual {v7, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 69
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "sender":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v7, "clean_time_set"

    invoke-static {p0, v7, v10}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getLaseSet(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v6

    .line 51
    .local v6, "timeIndex":I
    if-le v6, v11, :cond_2

    const/4 v6, 0x1

    .line 52
    :cond_2
    invoke-static {p0}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getAlertTime(Landroid/content/Context;)J

    move-result-wide v2

    .line 53
    .local v2, "d":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v7, v2, v8

    if-gez v7, :cond_7

    .line 55
    const/4 v1, 0x1

    .line 56
    .local v1, "day":I
    if-nez v6, :cond_4

    const/4 v1, 0x1

    .line 60
    :cond_3
    :goto_1
    invoke-static {v1}, Lcom/market2345/dumpclean/alert/CleanAlert;->getlong(I)J

    move-result-wide v8

    invoke-static {p0, v8, v9}, Lcom/market2345/dumpclean/alert/CleanAlert;->setAlert(Landroid/content/Context;J)V

    goto :goto_0

    .line 57
    :cond_4
    if-ne v6, v10, :cond_5

    const/4 v1, 0x3

    goto :goto_1

    .line 58
    :cond_5
    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    const/4 v1, 0x7

    goto :goto_1

    .line 59
    :cond_6
    if-ne v6, v11, :cond_3

    const/16 v1, 0xf

    goto :goto_1

    .line 63
    .end local v1    # "day":I
    :cond_7
    invoke-static {p0, v2, v3}, Lcom/market2345/dumpclean/alert/CleanAlert;->setAlert(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static notify(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v0

    .line 25
    .local v0, "manager":Lcom/market2345/notificationmanage/NotificationManager2345;
    invoke-virtual {v0, p1}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyClean2345(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static setAlert(Landroid/content/Context;J)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "triggerAtMillis"    # J

    .prologue
    const/4 v3, 0x0

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/market2345/autocheck/AutoResidentService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "action_scan_dump"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 33
    .local v1, "sender":Landroid/app/PendingIntent;
    sget-object v2, Lcom/market2345/dumpclean/alert/CleanAlert;->alarm:Landroid/app/AlarmManager;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/market2345/dumpclean/alert/CleanAlert;->alarm:Landroid/app/AlarmManager;

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 34
    :cond_0
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    sput-object v2, Lcom/market2345/dumpclean/alert/CleanAlert;->alarm:Landroid/app/AlarmManager;

    .line 35
    sget-object v2, Lcom/market2345/dumpclean/alert/CleanAlert;->alarm:Landroid/app/AlarmManager;

    invoke-virtual {v2, v3, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 36
    invoke-static {p0, p1, p2}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setAlertTime(Landroid/content/Context;J)V

    .line 37
    return-void
.end method
