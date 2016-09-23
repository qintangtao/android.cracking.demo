.class public Lcom/market2345/autocheck/AutoResidentService;
.super Landroid/app/Service;
.source "AutoResidentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/autocheck/AutoResidentService$BatteryReceiver;,
        Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_SCAN_DUMP:Ljava/lang/String; = "action_scan_dump"

.field public static final ACTION_WAKE_USBHELPER:Ljava/lang/String; = "action.wake.usbhelper"

.field private static final CALLSTATISTICSKEY:Ljava/lang/String; = "lastcallstatisticstime"

.field private static final CALLUPDATEKEY:Ljava/lang/String; = "lastcallupdatetime"

.field private static final INTERVAL_STATUSTICS:J = 0x5265c00L

.field private static final INTERVAL_TASKWAITTIME:J = 0x36ee80L

.field private static final INTERVAL_UPDATE:J = 0xf731400L

.field public static final TAG:Ljava/lang/String; = "AutoResidentService"

.field public static level:Ljava/lang/Integer;


# instance fields
.field private autoReceiver:Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;

.field private br:Lcom/market2345/autocheck/AutoResidentService$BatteryReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mWifiThread:Ljava/lang/Thread;

.field private notifiManger:Lcom/market2345/notificationmanage/NotificationManager2345;

.field private wifi:Lcom/market2345/util/WifiBroadCastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 385
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/market2345/autocheck/AutoResidentService;->level:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    new-instance v0, Lcom/market2345/autocheck/AutoResidentService$BatteryReceiver;

    invoke-direct {v0, p0}, Lcom/market2345/autocheck/AutoResidentService$BatteryReceiver;-><init>(Lcom/market2345/autocheck/AutoResidentService;)V

    iput-object v0, p0, Lcom/market2345/autocheck/AutoResidentService;->br:Lcom/market2345/autocheck/AutoResidentService$BatteryReceiver;

    .line 387
    return-void
.end method

.method static synthetic access$000(Lcom/market2345/autocheck/AutoResidentService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/market2345/autocheck/AutoResidentService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/market2345/autocheck/AutoResidentService;->saveTimes(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/market2345/autocheck/AutoResidentService;)Lcom/market2345/notificationmanage/NotificationManager2345;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/autocheck/AutoResidentService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService;->notifiManger:Lcom/market2345/notificationmanage/NotificationManager2345;

    return-object v0
.end method

.method static synthetic access$200(Lcom/market2345/autocheck/AutoResidentService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/autocheck/AutoResidentService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/market2345/autocheck/AutoResidentService;->isCanUpdate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/market2345/autocheck/AutoResidentService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/market2345/autocheck/AutoResidentService;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/market2345/autocheck/AutoResidentService;->isCanCallStatistics()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/market2345/autocheck/AutoResidentService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/market2345/autocheck/AutoResidentService;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isCanCallStatistics()Z
    .locals 8

    .prologue
    .line 276
    iget-object v4, p0, Lcom/market2345/autocheck/AutoResidentService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v5, "lastcallstatisticstime"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 277
    .local v0, "lastReportTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 278
    .local v2, "now":J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    const-wide/32 v4, 0x5265c00

    sub-long v6, v2, v0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isCanUpdate()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/market2345/autocheck/AutoResidentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/market2345/settings/SettingUtils$SETTING;->UPDATE_APP:Lcom/market2345/settings/SettingUtils$SETTING;

    invoke-static {v6, v7, v5}, Lcom/market2345/settings/SettingUtils;->checkLastSetValue(Landroid/content/Context;Lcom/market2345/settings/SettingUtils$SETTING;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 267
    iget-object v6, p0, Lcom/market2345/autocheck/AutoResidentService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "lastcallupdatetime"

    const-wide/16 v8, -0x1

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 268
    .local v0, "lastUpdateTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 269
    .local v2, "now":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-ltz v6, :cond_0

    const-wide/32 v6, 0xf731400

    sub-long v8, v2, v0

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    :cond_0
    move v4, v5

    .line 271
    .end local v0    # "lastUpdateTime":J
    .end local v2    # "now":J
    :cond_1
    return v4
.end method

.method private registAlerm()V
    .locals 6

    .prologue
    .line 303
    new-instance v1, Lcom/market2345/autocheck/AutoResidentService$5;

    invoke-direct {v1, p0}, Lcom/market2345/autocheck/AutoResidentService$5;-><init>(Lcom/market2345/autocheck/AutoResidentService;)V

    .line 309
    .local v1, "task":Ljava/util/TimerTask;
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 310
    .local v0, "timer":Ljava/util/Timer;
    const-wide/16 v2, 0x1388

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 311
    return-void
.end method

.method private registReceiver()V
    .locals 4

    .prologue
    .line 288
    new-instance v3, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;

    invoke-direct {v3, p0}, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;-><init>(Lcom/market2345/autocheck/AutoResidentService;)V

    iput-object v3, p0, Lcom/market2345/autocheck/AutoResidentService;->autoReceiver:Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;

    .line 289
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 290
    .local v1, "filter":Landroid/content/IntentFilter;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/market2345/autocheck/AutoResidentService;->autoReceiver:Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;

    iget-object v3, v3, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->actions:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 291
    iget-object v3, p0, Lcom/market2345/autocheck/AutoResidentService;->autoReceiver:Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;

    iget-object v3, v3, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->actions:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    :cond_0
    iget-object v3, p0, Lcom/market2345/autocheck/AutoResidentService;->autoReceiver:Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/market2345/autocheck/AutoResidentService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "bFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/market2345/autocheck/AutoResidentService;->br:Lcom/market2345/autocheck/AutoResidentService$BatteryReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/market2345/autocheck/AutoResidentService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, Lcom/market2345/autocheck/AutoResidentService;->level:Ljava/lang/Integer;

    .line 298
    return-void
.end method

.method private saveTimes(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v1, p0, Lcom/market2345/autocheck/AutoResidentService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 283
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 284
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 285
    return-void
.end method


# virtual methods
.method public initNeed()V
    .locals 3

    .prologue
    .line 195
    iget-object v1, p0, Lcom/market2345/autocheck/AutoResidentService;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 196
    new-instance v0, Lcom/market2345/autocheck/AutoResidentService$3;

    invoke-direct {v0, p0}, Lcom/market2345/autocheck/AutoResidentService$3;-><init>(Lcom/market2345/autocheck/AutoResidentService;)V

    .line 214
    .local v0, "requestLis":Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
    new-instance v1, Lcom/market2345/autocheck/AutoResidentService$4;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/market2345/autocheck/AutoResidentService$4;-><init>(Lcom/market2345/autocheck/AutoResidentService;Landroid/os/Looper;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;)V

    iput-object v1, p0, Lcom/market2345/autocheck/AutoResidentService;->mHandler:Landroid/os/Handler;

    .line 255
    .end local v0    # "requestLis":Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;
    :cond_0
    iget-object v1, p0, Lcom/market2345/autocheck/AutoResidentService;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v1, :cond_1

    .line 256
    const-string v1, "AutoResidentService"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/market2345/autocheck/AutoResidentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/autocheck/AutoResidentService;->mPreferences:Landroid/content/SharedPreferences;

    .line 259
    :cond_1
    iget-object v1, p0, Lcom/market2345/autocheck/AutoResidentService;->notifiManger:Lcom/market2345/notificationmanage/NotificationManager2345;

    if-nez v1, :cond_2

    .line 260
    invoke-virtual {p0}, Lcom/market2345/autocheck/AutoResidentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/notificationmanage/NotificationManager2345;->getInstance(Landroid/content/Context;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v1

    iput-object v1, p0, Lcom/market2345/autocheck/AutoResidentService;->notifiManger:Lcom/market2345/notificationmanage/NotificationManager2345;

    .line 263
    :cond_2
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 95
    iget-object v2, p0, Lcom/market2345/autocheck/AutoResidentService;->mWifiThread:Ljava/lang/Thread;

    if-nez v2, :cond_4

    .line 96
    new-instance v2, Lcom/market2345/util/WifiBroadCastReceiver;

    invoke-direct {v2}, Lcom/market2345/util/WifiBroadCastReceiver;-><init>()V

    iput-object v2, p0, Lcom/market2345/autocheck/AutoResidentService;->wifi:Lcom/market2345/util/WifiBroadCastReceiver;

    .line 97
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/market2345/autocheck/AutoResidentService;->wifi:Lcom/market2345/util/WifiBroadCastReceiver;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/market2345/autocheck/AutoResidentService;->mWifiThread:Ljava/lang/Thread;

    .line 98
    iget-object v2, p0, Lcom/market2345/autocheck/AutoResidentService;->mWifiThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 103
    :cond_0
    :goto_0
    const-string v2, ".lminstalllist"

    invoke-virtual {p0, v2, v4}, Lcom/market2345/autocheck/AutoResidentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 105
    .local v11, "sp":Landroid/content/SharedPreferences;
    const-string v2, "jf1"

    sget-object v3, Lcom/market2345/MarketApplication;->channel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "statistics_release_key"

    invoke-interface {v11, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 106
    new-instance v2, Lcom/market2345/autocheck/AutoResidentService$1;

    invoke-direct {v2, p0}, Lcom/market2345/autocheck/AutoResidentService$1;-><init>(Lcom/market2345/autocheck/AutoResidentService;)V

    invoke-virtual {v2}, Lcom/market2345/autocheck/AutoResidentService$1;->start()V

    .line 118
    :cond_1
    sget-object v2, Lcom/market2345/MarketApplication;->channel:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 119
    sget-object v2, Lcom/market2345/MarketApplication;->channel:Ljava/lang/String;

    const-string v3, "jf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/market2345/autocheck/AutoResidentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 121
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v9, Landroid/content/Intent;

    const-class v2, Lcom/market2345/autocheck/AutoResidentService;

    invoke-direct {v9, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    .local v9, "intent":Landroid/content/Intent;
    const-string v2, "action.wake.usbhelper"

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const/high16 v2, 0x8000000

    invoke-static {p0, v4, v9, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 124
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 127
    invoke-static {p0}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v10

    .line 128
    .local v10, "session":Lcom/market2345/datacenter/DataCenterObserver;
    const-string v1, "com.market2345"

    invoke-virtual {v10, v1}, Lcom/market2345/datacenter/DataCenterObserver;->getInstalledApp(Ljava/lang/String;)Lcom/market2345/model/InstalledApp;

    move-result-object v7

    .line 131
    .local v7, "app":Lcom/market2345/model/InstalledApp;
    iget-wide v2, v7, Lcom/market2345/model/InstalledApp;->lastUpdateTime:J

    const-string v1, "channel_saved_time"

    const-wide/16 v4, 0x0

    invoke-interface {v11, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 132
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 133
    .local v8, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "channel_saved_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v8, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 134
    sget-object v1, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    invoke-static {p0}, Lcom/market2345/lm/util/ChannelUtil;->checkLM(Landroid/content/Context;)Z

    .line 137
    :cond_2
    const-string v1, "cid_key"

    sget-object v2, Lcom/market2345/lm/util/GlobalParams;->UID:Ljava/lang/String;

    invoke-interface {v8, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    .end local v0    # "alarmManager":Landroid/app/AlarmManager;
    .end local v6    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v7    # "app":Lcom/market2345/model/InstalledApp;
    .end local v8    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "session":Lcom/market2345/datacenter/DataCenterObserver;
    :cond_3
    invoke-virtual {p0}, Lcom/market2345/autocheck/AutoResidentService;->initNeed()V

    .line 144
    invoke-direct {p0}, Lcom/market2345/autocheck/AutoResidentService;->registReceiver()V

    .line 145
    invoke-direct {p0}, Lcom/market2345/autocheck/AutoResidentService;->registAlerm()V

    .line 146
    iput-object p0, p0, Lcom/market2345/autocheck/AutoResidentService;->mContext:Landroid/content/Context;

    .line 147
    return-void

    .line 99
    .end local v11    # "sp":Landroid/content/SharedPreferences;
    :cond_4
    iget-object v2, p0, Lcom/market2345/autocheck/AutoResidentService;->mWifiThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    iget-object v2, p0, Lcom/market2345/autocheck/AutoResidentService;->mWifiThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 180
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 182
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService;->autoReceiver:Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;

    invoke-virtual {p0, v0}, Lcom/market2345/autocheck/AutoResidentService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 183
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService;->br:Lcom/market2345/autocheck/AutoResidentService$BatteryReceiver;

    invoke-virtual {p0, v0}, Lcom/market2345/autocheck/AutoResidentService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/market2345/autocheck/AutoResidentService;->level:Ljava/lang/Integer;

    .line 186
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService;->mWifiThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService;->mWifiThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService;->wifi:Lcom/market2345/util/WifiBroadCastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/market2345/util/WifiBroadCastReceiver;->conti:Z

    .line 189
    iget-object v0, p0, Lcom/market2345/autocheck/AutoResidentService;->mWifiThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 191
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    const-string v0, "action_scan_dump"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Lcom/market2345/autocheck/AutoResidentService$2;

    invoke-direct {v0, p0}, Lcom/market2345/autocheck/AutoResidentService$2;-><init>(Lcom/market2345/autocheck/AutoResidentService;)V

    invoke-virtual {v0}, Lcom/market2345/autocheck/AutoResidentService$2;->start()V

    .line 161
    invoke-static {p0}, Lcom/market2345/dumpclean/alert/CleanAlert;->initAlert(Landroid/content/Context;)V

    .line 166
    :cond_0
    :goto_0
    const/4 v0, 0x2

    return v0

    .line 162
    :cond_1
    const-string v0, "action.wake.usbhelper"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcom/market2345/autocheck/AutoResidentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/startup/usbhelper/StartUpHelper;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public startScan()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 170
    new-instance v2, Lcom/market2345/clearStrategy/ClearManager;

    invoke-direct {v2, p0}, Lcom/market2345/clearStrategy/ClearManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/market2345/clearStrategy/ClearManager;->openClearDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 171
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p0}, Lcom/market2345/dumpclean/ScanHelp;->getInstance(Landroid/content/Context;)Lcom/market2345/dumpclean/ScanHelp;

    move-result-object v1

    .line 172
    .local v1, "mScan":Lcom/market2345/dumpclean/ScanHelp;
    invoke-virtual {v1, v0}, Lcom/market2345/dumpclean/ScanHelp;->setDb(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 173
    invoke-virtual {v1, v3}, Lcom/market2345/dumpclean/ScanHelp;->setRun(Z)V

    .line 174
    invoke-virtual {v1, v3}, Lcom/market2345/dumpclean/ScanHelp;->startScan(Z)V

    .line 176
    return-void
.end method
