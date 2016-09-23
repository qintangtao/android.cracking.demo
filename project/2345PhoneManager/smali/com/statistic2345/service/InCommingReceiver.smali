.class public Lcom/statistic2345/service/InCommingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static HOUR_LATER:I = 0x0

.field public static final IS_SYS_DATA_SENDED_STRING:Ljava/lang/String; = "sys_data_issended"

.field public static final ONE_HOUR_LATER:I = 0x36ee80

.field public static final ONE_MINUT:I = 0x7530

.field public static final SEND_DATA_TIME:I = 0x7530

.field public static final TAG:Ljava/lang/String; = "InCommingReceiver"

.field public static final second_120:I = 0x1d4c0

.field public static final second_180:I = 0x2bf20

.field public static final second_30:I = 0x7530


# instance fields
.field private a:Landroid/content/Intent;

.field private b:Landroid/app/AlarmManager;

.field private c:Landroid/app/PendingIntent;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const v0, 0x36ee80

    sput v0, Lcom/statistic2345/service/InCommingReceiver;->HOUR_LATER:I

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/statistic2345/service/InCommingReceiver;->d:Z

    .line 39
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 8

    .prologue
    const v0, 0x36ee80

    .line 126
    const-string v1, "InCommingReceiver"

    const-string v2, "sendArriveData"

    invoke-static {v1, v2}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-static {p1}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "send_time_sum"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 129
    invoke-static {p1}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v6, "open_network_time"

    invoke-interface {v1, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 130
    sub-long/2addr v4, v6

    .line 131
    add-long/2addr v2, v4

    .line 132
    invoke-static {p1}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "send_time_sum"

    invoke-interface {v1, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 133
    invoke-static {p1}, Lcom/statistic2345/util/e;->d(Landroid/content/Context;)Z

    move-result v1

    .line 134
    sget v4, Lcom/statistic2345/service/InCommingReceiver;->HOUR_LATER:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/statistic2345/util/e;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-direct {p0, p1}, Lcom/statistic2345/service/InCommingReceiver;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-direct {p0, p1, v0}, Lcom/statistic2345/service/InCommingReceiver;->a(Landroid/content/Context;I)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    sget v1, Lcom/statistic2345/service/InCommingReceiver;->HOUR_LATER:I

    int-to-long v4, v1

    sub-long v2, v4, v2

    long-to-int v1, v2

    .line 141
    if-gtz v1, :cond_2

    .line 145
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/statistic2345/service/InCommingReceiver;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(Landroid/content/Context;I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    int-to-long v2, p2

    add-long/2addr v2, v0

    .line 94
    const-string v4, "InCommingReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u8bbe\u7f6e\u95f9\u949f\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "yyyy-MM-dd HH:mm"

    invoke-static {v0, v1, v6}, Lcom/statistic2345/log/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5ef6\u540e\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "com.statistic2345."

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/statistic2345/service/InCommingReceiver;->a:Landroid/content/Intent;

    .line 96
    iget-object v0, p0, Lcom/statistic2345/service/InCommingReceiver;->a:Landroid/content/Intent;

    invoke-static {p1, v7, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/statistic2345/service/InCommingReceiver;->c:Landroid/app/PendingIntent;

    .line 97
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/statistic2345/service/InCommingReceiver;->b:Landroid/app/AlarmManager;

    .line 98
    iget-object v0, p0, Lcom/statistic2345/service/InCommingReceiver;->b:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/statistic2345/service/InCommingReceiver;->c:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/statistic2345/service/InCommingReceiver;Z)V
    .locals 0

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/statistic2345/service/InCommingReceiver;->d:Z

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .locals 8

    .prologue
    .line 151
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u53d1\u9001\u5230\u8fbe\u6570\u636e"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    invoke-static {p1}, Lcom/statistic2345/log/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "send_time_sum"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 155
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 156
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 159
    :try_start_0
    const-string v5, "sys_arrive"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v1, v5}, Lcom/statistic2345/log/b;->a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    const-string v5, "date"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 163
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 164
    const-string v2, "sys_arrive"

    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v1, "header"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v0, "other"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    :try_start_1
    const-string v0, "app_key"

    invoke-static {p1, v0}, Lcom/statistic2345/log/Statistics;->getAppTJParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "project_name"

    invoke-static {p1, v1}, Lcom/statistic2345/log/Statistics;->getAppTJParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_0

    .line 178
    const-string v3, "InCommingReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u53d1\u9001\u5230\u8fbe\u7edf\u8ba1\u6570\u636e\u5185\u5bb9\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 180
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "project"

    invoke-direct {v4, v5, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {v0, v2}, Lcom/statistic2345/log/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "data"

    invoke-direct {v1, v4, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/statistic2345/service/InCommingReceiver$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/statistic2345/service/InCommingReceiver$1;-><init>(Lcom/statistic2345/service/InCommingReceiver;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 201
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 206
    :cond_0
    :goto_1
    iget-boolean v0, p0, Lcom/statistic2345/service/InCommingReceiver;->d:Z

    return v0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 203
    :catch_1
    move-exception v0

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const v1, 0x36ee80

    invoke-static {p1}, Lcom/statistic2345/log/Statistics;->getAppArriveInterval(Landroid/content/Context;)I

    move-result v2

    mul-int/2addr v1, v2

    sput v1, Lcom/statistic2345/service/InCommingReceiver;->HOUR_LATER:I

    .line 63
    invoke-static {p1}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 65
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    const-string v0, "sys_data_issended"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    if-nez v0, :cond_0

    .line 68
    sget v0, Lcom/statistic2345/service/InCommingReceiver;->HOUR_LATER:I

    invoke-direct {p0, p1, v0}, Lcom/statistic2345/service/InCommingReceiver;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 71
    const-string v0, "sys_data_issended"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 72
    if-nez v0, :cond_0

    .line 73
    invoke-static {p1}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "send_time_sum"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v6, "open_network_time"

    invoke-interface {v0, v6, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {p1}, Lcom/statistic2345/util/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/statistic2345/util/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "open_network_time"

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v8, "\u66f4\u65b0\u7d2f\u8ba1\u8054\u7f51\u65f6\u95f4"

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long/2addr v2, v6

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;)V

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    invoke-direct {p0, p1}, Lcom/statistic2345/service/InCommingReceiver;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 73
    :cond_4
    invoke-static {p1}, Lcom/statistic2345/util/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "send_time_sum"

    sub-long v8, v2, v6

    add-long/2addr v8, v4

    invoke-interface {v1, v0, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 76
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.statistic2345."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "sys_data_issended"

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 78
    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0, p1}, Lcom/statistic2345/service/InCommingReceiver;->a(Landroid/content/Context;)V

    goto/16 :goto_0
.end method
