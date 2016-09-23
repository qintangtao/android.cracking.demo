.class public Lcom/statistic2345/log/Statistics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/statistic2345/log/Statistics$a;
    }
.end annotation


# static fields
.field private static a:Z = false

.field private static b:Z = false

.field private static c:Z = false

.field private static d:Ljava/lang/String; = null

.field private static e:I = 0x0

.field private static f:I = 0x0

.field private static g:Z = false

.field private static h:Lcom/statistic2345/log/Statistics$a; = null

.field public static final tag:Ljava/lang/String; = "TJStatistics"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 28
    sput-boolean v1, Lcom/statistic2345/log/Statistics;->a:Z

    .line 29
    sput-boolean v0, Lcom/statistic2345/log/Statistics;->b:Z

    .line 30
    sput-boolean v0, Lcom/statistic2345/log/Statistics;->c:Z

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/statistic2345/log/Statistics;->d:Ljava/lang/String;

    .line 42
    const/16 v0, 0xa

    sput v0, Lcom/statistic2345/log/Statistics;->e:I

    .line 47
    const/16 v0, 0x1e

    sput v0, Lcom/statistic2345/log/Statistics;->f:I

    .line 49
    sput-boolean v1, Lcom/statistic2345/log/Statistics;->g:Z

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitStatistic()V
    .locals 0

    .prologue
    .line 257
    invoke-static {}, Lcom/statistic2345/log/a;->a()V

    .line 259
    return-void
.end method

.method public static getAppActivateInterval(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 232
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 233
    const-string v1, "appActivateInterval"

    sget v2, Lcom/statistic2345/log/Statistics;->f:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAppArriveInterval(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 201
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    const-string v1, "app_arrive_interval"

    const/4 v2, 0x6

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAppStartInterval(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 206
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    const-string v1, "appStartInterval"

    sget v2, Lcom/statistic2345/log/Statistics;->e:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getAppTJParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 339
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 340
    :cond_0
    const/4 v0, 0x0

    .line 347
    :cond_1
    :goto_0
    return-object v0

    .line 342
    :cond_2
    const-string v0, "tj2345_common"

    invoke-static {p0, v0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    invoke-static {p0, p1}, Lcom/statistic2345/util/e;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-boolean v0, Lcom/statistic2345/log/Statistics;->a:Z

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Lcom/statistic2345/util/a;->a()Lcom/statistic2345/util/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/statistic2345/util/a;->a(Landroid/content/Context;)V

    .line 60
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/statistic2345/service/ICrashHandler;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "crashHandler"    # Lcom/statistic2345/service/ICrashHandler;

    .prologue
    .line 69
    invoke-static {}, Lcom/statistic2345/util/a;->a()Lcom/statistic2345/util/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/statistic2345/util/a;->a(Landroid/content/Context;Lcom/statistic2345/service/ICrashHandler;)V

    .line 70
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    .prologue
    .line 266
    sget-boolean v0, Lcom/statistic2345/log/Statistics;->a:Z

    return v0
.end method

.method public static isSendMd5Data()Z
    .locals 1

    .prologue
    .line 285
    sget-boolean v0, Lcom/statistic2345/log/Statistics;->c:Z

    return v0
.end method

.method public static isStatistics()Z
    .locals 1

    .prologue
    .line 293
    sget-boolean v0, Lcom/statistic2345/log/Statistics;->b:Z

    return v0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 142
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-static {p0, p1}, Lcom/statistic2345/log/b;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onEvent(Landroid/content/Context;Ljava/util/Map;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    :try_start_0
    invoke-static {p0, p1}, Lcom/statistic2345/log/b;->a(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 112
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/statistic2345/log/Statistics;->b:Z

    if-nez v0, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget-object v0, Lcom/statistic2345/log/Statistics;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    invoke-static {p0}, Lcom/statistic2345/log/b;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/statistic2345/log/Statistics;->d:Ljava/lang/String;

    .line 119
    :cond_2
    sget-object v0, Lcom/statistic2345/log/Statistics;->d:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/statistic2345/log/b;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 122
    sget-boolean v0, Lcom/statistic2345/log/Statistics;->g:Z

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    sget-object v0, Lcom/statistic2345/log/Statistics;->h:Lcom/statistic2345/log/Statistics$a;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    const/4 v0, 0x0

    sput-boolean v0, Lcom/statistic2345/log/Statistics;->g:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 76
    if-eqz p0, :cond_0

    sget-boolean v1, Lcom/statistic2345/log/Statistics;->b:Z

    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    const/4 v1, 0x0

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 83
    invoke-static {p0}, Lcom/statistic2345/log/b;->h(Landroid/content/Context;)J

    move-result-wide v4

    .line 84
    const-string v6, "TJStatistics"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cur:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\t last+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 88
    invoke-static {}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getSessionId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/statistic2345/log/Statistics;->d:Ljava/lang/String;

    .line 89
    const-string v1, "TJStatistics"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u65b0\u7684SessionId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/statistic2345/log/Statistics;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "TJStatistics"

    const-string v4, "\u8981\u53d1\u9001\u8001\u7684\u6570\u636e+\u672c\u6b21\u542f\u52a8\u6570\u636e\u7ed9\u670d\u52a1\u5668"

    invoke-static {v1, v4}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    sput-boolean v0, Lcom/statistic2345/log/Statistics;->g:Z

    .line 94
    new-instance v1, Lcom/statistic2345/log/Statistics$a;

    invoke-direct {v1}, Lcom/statistic2345/log/Statistics$a;-><init>()V

    sput-object v1, Lcom/statistic2345/log/Statistics;->h:Lcom/statistic2345/log/Statistics$a;

    .line 95
    sget-object v1, Lcom/statistic2345/log/Statistics;->h:Lcom/statistic2345/log/Statistics$a;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 97
    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/statistic2345/util/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 102
    :cond_2
    :goto_1
    sget-object v1, Lcom/statistic2345/log/Statistics;->d:Ljava/lang/String;

    invoke-static {p0, v1, v0}, Lcom/statistic2345/log/b;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 97
    :cond_3
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v4, "is_first_start"

    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lcom/statistic2345/log/Statistics;->isSendMd5Data()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    new-instance v1, Lcom/statistic2345/log/c;

    invoke-direct {v1, p0, v2, v3}, Lcom/statistic2345/log/c;-><init>(Landroid/content/Context;J)V

    invoke-virtual {v1}, Lcom/statistic2345/log/c;->start()V

    goto :goto_1

    .line 99
    :cond_4
    const-string v0, "TJStatistics"

    const-string v2, "sessionid != null &&  \u95f4\u9694<1 mint"

    invoke-static {v0, v2}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method public static setAPPArriveInterval(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "hours"    # I

    .prologue
    .line 187
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_arrive_interval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setAppActivateInterval(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appActivateInterval"    # I

    .prologue
    .line 243
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appActivateInterval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setAppStartInterval(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appStartInterval"    # I

    .prologue
    .line 217
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 221
    sput p1, Lcom/statistic2345/log/Statistics;->e:I

    .line 222
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "appStartInterval"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "isDebug"    # Z

    .prologue
    .line 262
    sput-boolean p0, Lcom/statistic2345/log/Statistics;->a:Z

    .line 263
    return-void
.end method

.method public static setProjectName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projectName"    # Ljava/lang/String;

    .prologue
    .line 313
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    const-string v0, "tj2345_common"

    invoke-static {p0, v0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "project_name"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setSendMd5Data(Z)V
    .locals 0
    .param p0, "status"    # Z

    .prologue
    .line 281
    sput-boolean p0, Lcom/statistic2345/log/Statistics;->c:Z

    .line 282
    return-void
.end method

.method public static setStatisticKey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "statisticKey"    # Ljava/lang/String;

    .prologue
    .line 301
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    const-string v0, "tj2345_common"

    invoke-static {p0, v0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 305
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_key"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setStatistics(Z)V
    .locals 0
    .param p0, "status"    # Z

    .prologue
    .line 289
    sput-boolean p0, Lcom/statistic2345/log/Statistics;->b:Z

    .line 290
    return-void
.end method

.method public static setUmengChannel(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "umengChannel"    # Ljava/lang/String;

    .prologue
    .line 325
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    const-string v0, "tj2345_common"

    invoke-static {p0, v0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "UMENG_CHANNEL"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static updateEndStamp(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    sget-object v0, Lcom/statistic2345/log/Statistics;->d:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/statistic2345/log/b;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 177
    return-void
.end method
