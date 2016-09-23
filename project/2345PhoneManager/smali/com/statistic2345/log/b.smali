.class public Lcom/statistic2345/log/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lcom/statistic2345/log/a;

.field private static g:Landroid/content/SharedPreferences;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:J

.field public d:J

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Landroid/content/ContentValues;)J
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 45
    const-class v4, Lcom/statistic2345/log/b;

    monitor-enter v4

    .line 46
    :try_start_0
    invoke-static {p0}, Lcom/statistic2345/log/a/a;->a(Landroid/content/Context;)Lcom/statistic2345/log/a/a;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/statistic2345/log/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 50
    :try_start_1
    const-string v0, "TJLaunchInfoColumns"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "insertLaunchInfo\u65b0\u589e\u6570\u636eid\uff1a"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :cond_0
    :goto_0
    monitor-exit v4

    return-wide v0

    .line 52
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v3, v1

    .line 53
    :goto_1
    const-wide/16 v0, -0x1

    .line 54
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 56
    if-eqz v3, :cond_0

    .line 57
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 55
    :catchall_1
    move-exception v0

    move-object v2, v1

    .line 56
    :goto_2
    if-eqz v2, :cond_1

    .line 57
    :try_start_5
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 59
    :cond_1
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 55
    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v2, v3

    goto :goto_2

    .line 52
    :catch_1
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_1
.end method

.method public static a(JLjava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 42
    const-string v1, "GMT+8"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 43
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 60
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 62
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 64
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 65
    const/4 v0, 0x0

    :goto_0
    array-length v1, v2

    if-lt v0, v1, :cond_0

    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_1
    return-object v0

    .line 66
    :cond_0
    aget-byte v1, v2, v0

    .line 67
    if-gez v1, :cond_1

    .line 68
    add-int/lit16 v1, v1, 0x100

    .line 69
    :cond_1
    const/16 v4, 0x10

    if-ge v1, v4, :cond_2

    .line 70
    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 79
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-static {p0}, Lcom/statistic2345/log/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 25
    array-length v4, v2

    .line 26
    array-length v5, v2

    new-array v5, v5, [B

    .line 27
    :goto_0
    if-lt v0, v4, :cond_0

    .line 35
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v5, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_1
    return-object v0

    .line 28
    :cond_0
    rem-int v6, v0, v3

    .line 29
    aget-byte v7, v2, v0

    .line 30
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 31
    xor-int/2addr v6, v7

    int-to-byte v6, v6

    .line 32
    aput-byte v6, v5, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 42
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static a(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 49
    const-string v1, "GMT+8"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 50
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 12

    .prologue
    .line 62
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 63
    const-string v5, "Android"

    .line 64
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 65
    invoke-static {p0}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getDeviceResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 66
    invoke-static {p0}, Lcom/statistic2345/util/e;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    invoke-static {p0}, Lcom/statistic2345/util/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    const-string v2, "UMENG_CHANNEL"

    invoke-static {p0, v2}, Lcom/statistic2345/log/Statistics;->getAppTJParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    :cond_0
    const-string v3, "project_name"

    invoke-static {p0, v3}, Lcom/statistic2345/log/Statistics;->getAppTJParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 87
    :cond_1
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 89
    :try_start_1
    const-string v11, "device_model"

    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v4, "os"

    invoke-virtual {v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string v4, "os_version"

    invoke-virtual {v10, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v4, "resolution"

    invoke-virtual {v10, v4, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v4, "access"

    invoke-virtual {v10, v4, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v4, "package"

    invoke-virtual {v10, v4, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v4, "app_version"

    invoke-virtual {v10, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v1, "version_code"

    invoke-virtual {v10, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v0, "channel"

    invoke-virtual {v10, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v0, "sdk_version"

    const-string v1, "2.8.2"

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v0, "project_name"

    invoke-virtual {v10, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    invoke-static {p0}, Lcom/statistic2345/log/b;->b(Landroid/content/Context;)I

    move-result v0

    .line 104
    invoke-static {p0}, Lcom/statistic2345/log/b;->c(Landroid/content/Context;)I

    move-result v1

    .line 105
    const-string v2, "activate"

    invoke-virtual {v10, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 106
    const-string v0, "start"

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 107
    const-string v0, "sys_can_uninstall"

    invoke-static {p0}, Lcom/statistic2345/util/TJDeviceInfoUtil;->isSystemApp(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 109
    invoke-static {p0}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 110
    const-string v2, "imei"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    invoke-static {p0}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string v2, "wmac"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    invoke-static {p0}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getICCID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {p0}, Lcom/statistic2345/util/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 116
    const-string v3, "iccid"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v1, "imsi"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    const-string v1, "local_id"

    invoke-virtual {v10, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-static {p0}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v1, "uid"

    invoke-virtual {v10, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    const-string v0, "android_id"

    invoke-static {p0}, Lcom/statistic2345/util/TJDeviceInfoUtil;->getAndroidID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string v0, "brand"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    const-string v0, "build_date"

    sget-wide v2, Landroid/os/Build;->TIME:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v10, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 124
    const-string v0, "battery"

    sget v1, Lcom/statistic2345/log/Statistics$a;->a:I

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v0, "total_time"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v10, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 126
    const-string v0, "incremental"

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    const-string v0, "manufacturer"

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 129
    const-string v0, "serial"

    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :goto_1
    return-object v10

    .line 74
    :catch_0
    move-exception v0

    const-string v1, ""

    .line 75
    const-string v0, ""

    goto/16 :goto_0

    .line 131
    :cond_2
    :try_start_2
    const-string v0, "serial"

    const-string v1, "\u672a\u77e5"

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 134
    :catch_1
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 166
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PARAM_ACTIVATE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    return-void
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 193
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 194
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_new_add_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 164
    invoke-static {p0}, Lcom/statistic2345/log/b;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    const-string v1, "app_session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 166
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TJ_IS_START_SENDED"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    const-string v0, "TJStatistics"

    const-string v1, "\u542f\u52a8\u6570\u636e\u53d1\u9001\u6210\u529f\u540e,\u5c06TJ_IS_START_SENDED\u8bbe\u7f6e\u4e3a1"

    invoke-static {v0, v1}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/Map;)V
    .locals 6
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 219
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    const-string v0, "tj2345_other"

    invoke-static {p0, v0}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 223
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 224
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 225
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 226
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 229
    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 230
    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 232
    :cond_3
    const/4 v5, 0x0

    invoke-interface {v2, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 233
    add-int/2addr v0, v5

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 11

    .prologue
    .line 59
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/statistic2345/util/e;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 60
    :cond_0
    const/4 v0, 0x0

    .line 179
    :goto_0
    return v0

    .line 63
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/statistic2345/log/b;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 64
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 65
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 67
    invoke-static {p0}, Lcom/statistic2345/log/b;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_session_id"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "app_start_stamp"

    const-wide/16 v6, 0x0

    invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 68
    :goto_1
    invoke-static {p0}, Lcom/statistic2345/log/b;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "TJ_IS_START_SENDED"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 69
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    if-nez v5, :cond_2

    .line 70
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 71
    const-string v6, "session_id"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v6, "date"

    const-string v7, "yyyy-MM-dd"

    invoke-static {v0, v1, v7}, Lcom/statistic2345/log/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v6, "time"

    const-string v7, "HH:mm:ss"

    invoke-static {v0, v1, v7}, Lcom/statistic2345/log/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 75
    const-string v0, "TJStatistics"

    const-string v1, "\u5c06preference\u4e2d\u7684session\u6dfb\u52a0\u5230\u8981\u53d1\u9001\u7684\u6570\u636e\u4e2d"

    invoke-static {v0, v1}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 80
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_11

    .line 109
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 110
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 111
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 112
    const-string v2, "terminate"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    :cond_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 115
    const-string v2, "launch"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 118
    :cond_5
    invoke-static {p0}, Lcom/statistic2345/log/b;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    .line 119
    invoke-static {p0}, Lcom/statistic2345/log/b;->i(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    .line 120
    invoke-static {p0}, Lcom/statistic2345/log/b;->j(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v4

    .line 121
    invoke-static {p0}, Lcom/statistic2345/log/b;->k(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v5

    .line 122
    if-eqz v4, :cond_6

    .line 123
    const-string v6, "other"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_7

    .line 126
    const-string v4, "action"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 128
    :cond_7
    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_8

    .line 129
    const-string v3, "error"

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    :cond_8
    const-string v3, "header"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v2, "body"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v1, "app_key"

    invoke-static {p0, v1}, Lcom/statistic2345/log/Statistics;->getAppTJParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    const-string v2, "project_name"

    invoke-static {p0, v2}, Lcom/statistic2345/log/Statistics;->getAppTJParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    const-string v3, "TJStatistics"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u53d1\u9001\u542f\u52a8\u7684\u6570\u636e\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eqz v0, :cond_14

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 143
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "project"

    invoke-direct {v4, v5, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-static {v1, v0}, Lcom/statistic2345/log/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "data"

    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-static {}, Lcom/statistic2345/a/a;->a()Lcom/statistic2345/a/a;

    move-result-object v1

    const-string v2, "http://app.50bang.org/index.php?action=session"

    sget-object v3, Lcom/statistic2345/util/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/statistic2345/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v0, "TJLogDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "obj:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v0, "status"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 151
    invoke-static {p0}, Lcom/statistic2345/log/b;->b(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    .line 153
    const-string v0, "TJStatistics"

    const-string v2, "\u66f4\u65b0 \u6fc0\u6d3b\u65f6\u95f4\uff1a"

    invoke-static {v0, v2}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v0, "st"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {p0, v2, v3}, Lcom/statistic2345/log/b;->e(Landroid/content/Context;J)V

    .line 155
    const-string v0, "act"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/statistic2345/log/b;->c(Landroid/content/Context;I)V

    .line 157
    :cond_9
    invoke-static {p0}, Lcom/statistic2345/util/e;->j(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p0}, Lcom/statistic2345/util/e;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_a

    .line 158
    const-string v0, "st"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v2, v0

    invoke-static {p0, v2, v3}, Lcom/statistic2345/log/b;->e(Landroid/content/Context;J)V

    .line 159
    const-string v0, "act"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/statistic2345/log/b;->c(Landroid/content/Context;I)V

    .line 162
    :cond_a
    if-eqz p0, :cond_c

    if-eqz p2, :cond_c

    .line 163
    invoke-static {p0}, Lcom/statistic2345/log/b;->c(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/statistic2345/log/b;->b(Landroid/content/Context;)I

    move-result v1

    const-string v2, "TJStatistics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendActivateData app_start:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "activate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/statistic2345/util/e;->e(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    if-nez v0, :cond_15

    sget-object v0, Lcom/statistic2345/log/b;->f:Lcom/statistic2345/log/a;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/statistic2345/log/a;->a()V

    :cond_b
    new-instance v0, Lcom/statistic2345/log/a;

    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->getAppStartInterval(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/statistic2345/log/a;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/statistic2345/log/b;->f:Lcom/statistic2345/log/a;

    invoke-virtual {v0}, Lcom/statistic2345/log/a;->start()V

    .line 166
    :cond_c
    :goto_3
    invoke-static {p0}, Lcom/statistic2345/log/a/a;->a(Landroid/content/Context;)Lcom/statistic2345/log/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/statistic2345/log/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "TJLaunchInfoColumns"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "deleteAllData\u5220\u9664\u6240\u6709\u6570\u636e\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;)V

    .line 167
    if-eqz p0, :cond_d

    const-string v0, "tj2345_event"

    invoke-static {p0, v0}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    :cond_d
    if-eqz p0, :cond_e

    const-string v0, "tj2345_other"

    invoke-static {p0, v0}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    :cond_e
    if-eqz p0, :cond_f

    const-string v0, "tj2345_error"

    invoke-static {p0, v0}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    :cond_f
    const-string v0, "TJStatistics"

    const-string v1, "\u53d1\u9001\u6210\u529f"

    invoke-static {v0, v1}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 67
    :cond_10
    const-wide/16 v0, 0x0

    goto/16 :goto_1

    .line 81
    :cond_11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/statistic2345/log/b;

    .line 82
    if-eqz v0, :cond_12

    .line 83
    iget v5, v0, Lcom/statistic2345/log/b;->e:I

    if-nez v5, :cond_13

    .line 84
    const-string v5, "TJStatistics"

    const-string v6, "baseModel.start_sended == 0\u8981\u53d1\u9001\u8fd9\u6b21\u542f\u52a8"

    invoke-static {v5, v6}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 86
    const-string v6, "session_id"

    iget-object v7, v0, Lcom/statistic2345/log/b;->a:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v6, "date"

    iget-wide v8, v0, Lcom/statistic2345/log/b;->c:J

    const-string v7, "yyyy-MM-dd"

    invoke-static {v8, v9, v7}, Lcom/statistic2345/log/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v6, "time"

    iget-wide v8, v0, Lcom/statistic2345/log/b;->c:J

    const-string v7, "HH:mm:ss"

    invoke-static {v8, v9, v7}, Lcom/statistic2345/log/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 94
    :goto_4
    iget v5, v0, Lcom/statistic2345/log/b;->b:I

    div-int/lit16 v5, v5, 0x3e8

    .line 95
    if-lez v5, :cond_12

    .line 96
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 97
    const-string v7, "session_id"

    iget-object v8, v0, Lcom/statistic2345/log/b;->a:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v7, "date"

    iget-wide v8, v0, Lcom/statistic2345/log/b;->d:J

    const-string v10, "yyyy-MM-dd"

    invoke-static {v8, v9, v10}, Lcom/statistic2345/log/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v7, "time"

    iget-wide v8, v0, Lcom/statistic2345/log/b;->d:J

    const-string v0, "HH:mm:ss"

    invoke-static {v8, v9, v0}, Lcom/statistic2345/log/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v0, "duration"

    invoke-virtual {v6, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v0, "TJStatistics"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "duration="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 80
    :cond_12
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    .line 91
    :cond_13
    const-string v5, "TJStatistics"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "baseModel.start_sended == "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v0, Lcom/statistic2345/log/b;->e:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\u4e0d\u53d1\u9001\u8fd9\u6b21\u542f\u52a8"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v1, "TJStatistics"

    const-string v2, "\u53d1\u9001\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 163
    :cond_15
    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    :try_start_1
    const-string v0, "TJStatistics"

    const-string v2, "\u65b0\u589e\u5df2\u53d1\u9001"

    invoke-static {v0, v2}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TJStatistics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65f6\u95f4\u95f4\u9694\uff1acode = 1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {p0}, Lcom/statistic2345/log/b;->e(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {p0}, Lcom/statistic2345/log/b;->f(Landroid/content/Context;)I

    move-result v3

    invoke-static {v4, v5, v6, v7, v3}, Lcom/statistic2345/util/e;->a(JJI)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_16

    invoke-static {p0}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/statistic2345/log/b;->e(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/statistic2345/log/b;->f(Landroid/content/Context;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/statistic2345/util/e;->a(JJI)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Lcom/statistic2345/log/a;

    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->getAppActivateInterval(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/statistic2345/log/a;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/statistic2345/log/b;->f:Lcom/statistic2345/log/a;

    invoke-virtual {v0}, Lcom/statistic2345/log/a;->start()V

    goto/16 :goto_3

    :cond_16
    const-string v0, "TJLogDataService"

    const-string v1, "\u6fc0\u6d3b\u5df2\u53d1\u9001"

    invoke-static {v0, v1}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_17
    invoke-static {p0}, Lcom/statistic2345/util/e;->e(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    invoke-static {p0}, Lcom/statistic2345/util/e;->h(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_19

    sget-object v0, Lcom/statistic2345/log/b;->f:Lcom/statistic2345/log/a;

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/statistic2345/log/a;->a()V

    :cond_18
    new-instance v0, Lcom/statistic2345/log/a;

    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->getAppStartInterval(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/statistic2345/log/a;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/statistic2345/log/b;->f:Lcom/statistic2345/log/a;

    invoke-virtual {v0}, Lcom/statistic2345/log/a;->start()V

    goto/16 :goto_3

    :cond_19
    const/4 v0, 0x1

    invoke-static {p0}, Lcom/statistic2345/util/e;->h(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_c

    const-string v0, "TJStatistics"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u65f6\u95f4\u95f4\u9694 code = 3 \uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/statistic2345/log/b;->e(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {p0}, Lcom/statistic2345/log/b;->f(Landroid/content/Context;)I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/statistic2345/util/e;->a(JJI)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/statistic2345/util/e;->j(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/statistic2345/log/b;->e(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/statistic2345/log/b;->f(Landroid/content/Context;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/statistic2345/util/e;->a(JJI)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/statistic2345/log/b;->f:Lcom/statistic2345/log/a;

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/statistic2345/log/a;->a()V

    :cond_1a
    new-instance v0, Lcom/statistic2345/log/a;

    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->getAppActivateInterval(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x16

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/statistic2345/log/a;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/statistic2345/log/b;->f:Lcom/statistic2345/log/a;

    invoke-virtual {v0}, Lcom/statistic2345/log/a;->start()V

    goto/16 :goto_3

    :cond_1b
    invoke-static {p0}, Lcom/statistic2345/util/e;->e(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    if-nez v0, :cond_1d

    sget-object v0, Lcom/statistic2345/log/b;->f:Lcom/statistic2345/log/a;

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/statistic2345/log/a;->a()V

    :cond_1c
    const-string v0, "begin send app start , code == 2"

    invoke-static {v0}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/statistic2345/log/a;

    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->getAppStartInterval(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/statistic2345/log/a;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/statistic2345/log/b;->f:Lcom/statistic2345/log/a;

    invoke-virtual {v0}, Lcom/statistic2345/log/a;->start()V

    goto/16 :goto_3

    :cond_1d
    const/4 v2, 0x1

    if-ne v0, v2, :cond_c

    const-string v0, "TJStatistics"

    const-string v2, "\u65b0\u589e\u5df2\u53d1\u9001"

    invoke-static {v0, v2}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TJStatistics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u65f6\u95f4\u95f4\u9694 code = 2 \uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {p0}, Lcom/statistic2345/log/b;->e(Landroid/content/Context;)J

    move-result-wide v6

    invoke-static {p0}, Lcom/statistic2345/log/b;->f(Landroid/content/Context;)I

    move-result v3

    invoke-static {v4, v5, v6, v7, v3}, Lcom/statistic2345/util/e;->a(JJI)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1e

    invoke-static {p0}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;)J

    move-result-wide v0

    invoke-static {p0}, Lcom/statistic2345/log/b;->e(Landroid/content/Context;)J

    move-result-wide v2

    invoke-static {p0}, Lcom/statistic2345/log/b;->f(Landroid/content/Context;)I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/statistic2345/util/e;->a(JJI)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Lcom/statistic2345/log/a;

    invoke-static {p0}, Lcom/statistic2345/log/Statistics;->getAppActivateInterval(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0xb

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/statistic2345/log/a;-><init>(Landroid/content/Context;III)V

    sput-object v0, Lcom/statistic2345/log/b;->f:Lcom/statistic2345/log/a;

    invoke-virtual {v0}, Lcom/statistic2345/log/a;->start()V

    goto/16 :goto_3

    :cond_1e
    const-string v0, "TJLogDataService"

    const-string v1, "\u6fc0\u6d3b\u5df2\u53d1\u9001"

    invoke-static {v0, v1}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public static b(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 155
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    const-string v1, "PARAM_ACTIVATE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 188
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 189
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PARAM_RESPCODE"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 190
    return-void
.end method

.method public static b(Landroid/content/Context;J)V
    .locals 3

    .prologue
    .line 205
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_new_activate_timestamp"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 199
    const-string v0, "tj2345_event"

    invoke-static {p0, v0}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 201
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 203
    add-int/lit8 v0, v0, 0x1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 207
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 20

    .prologue
    .line 72
    if-eqz p0, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v2, 0x0

    .line 76
    invoke-static/range {p0 .. p0}, Lcom/statistic2345/log/b;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 77
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 78
    const-string v5, "app_session_id"

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    const-string v6, "TJStatistics"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "updateAppStamp:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    .line 81
    const/4 v12, 0x0

    .line 83
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 85
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    const/4 v2, 0x1

    .line 106
    :cond_2
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 107
    const-string v13, "app_session_id"

    move-object/from16 v0, p1

    invoke-interface {v4, v13, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 108
    const-string v13, "app_start_stamp"

    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-interface {v3, v13, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 109
    const-wide/16 v18, 0x0

    cmp-long v13, v16, v18

    if-nez v13, :cond_3

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_3

    .line 111
    const-string v13, "app_start_stamp"

    invoke-interface {v4, v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 113
    :cond_3
    const-string v13, "app_end_stamp"

    invoke-interface {v3, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 114
    cmp-long v13, v14, v16

    if-ltz v13, :cond_4

    .line 116
    sub-long v16, v14, v16

    const-string v13, "app_total_stamp"

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-interface {v3, v13, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    add-long v16, v16, v18

    .line 117
    const-string v3, "app_total_stamp"

    move-wide/from16 v0, v16

    invoke-interface {v4, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 119
    const-string v3, "app_end_stamp"

    invoke-interface {v4, v3, v14, v15}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 121
    :cond_4
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 123
    if-eqz v2, :cond_0

    .line 124
    new-instance v3, Lcom/statistic2345/log/b/a;

    move-object/from16 v4, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    invoke-direct/range {v3 .. v14}, Lcom/statistic2345/log/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;JJJILjava/lang/String;Z)V

    invoke-virtual {v3}, Lcom/statistic2345/log/b/a;->start()V

    goto/16 :goto_0

    .line 87
    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 88
    const-string v6, "TJStatistics"

    const-string v7, "!sessionId.equals(oldSession)"

    invoke-static {v6, v7}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v6, "app_start_stamp"

    const-wide/16 v8, 0x0

    invoke-interface {v3, v6, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 91
    const-string v8, "app_end_stamp"

    const-wide/16 v10, 0x0

    invoke-interface {v3, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 92
    const-string v10, "app_total_stamp"

    const-wide/16 v12, 0x0

    invoke-interface {v3, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 93
    const-string v12, "TJ_IS_START_SENDED"

    const/4 v13, 0x0

    invoke-interface {v3, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 94
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    const-string v13, "TJStatistics"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "oldstart:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\t oldend:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-wide/16 v14, 0x0

    cmp-long v13, v6, v14

    if-lez v13, :cond_2

    cmp-long v13, v8, v6

    if-ltz v13, :cond_2

    .line 98
    const/4 v2, 0x1

    goto/16 :goto_1
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/statistic2345/log/Statistics;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "TJStatistics"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/statistic2345/log/Statistics;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 177
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 178
    const-string v1, "PARAM_RESPCODE"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static c(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 218
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "act"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 220
    return-void
.end method

.method static synthetic c(Landroid/content/Context;J)V
    .locals 9

    .prologue
    .line 383
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v3, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v5, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-static {p0}, Lcom/statistic2345/util/b;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "UMENG_CHANNEL"

    invoke-static {p0, v2}, Lcom/statistic2345/log/Statistics;->getAppTJParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, ""

    move-object v4, v2

    :goto_1
    const/16 v2, 0x480

    :try_start_1
    invoke-virtual {v6, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2}, Lcom/statistic2345/util/e;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :try_start_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v2, ""
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v5, "start_stamp"

    const-wide/16 v6, 0x3e8

    div-long v6, p1, v6

    invoke-virtual {v3, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "channel"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "app_version"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version_code"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_md5"

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app_key"

    invoke-static {p0, v0}, Lcom/statistic2345/log/Statistics;->getAppTJParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TJStatistics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u7b2c\u4e00\u6b21\u542f\u52a8\u53d1\u9001md5\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "diff"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    invoke-static {v0, v1}, Lcom/statistic2345/log/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/statistic2345/a/a;->a()Lcom/statistic2345/a/a;

    move-result-object v1

    const-string v2, "http://app.50bang.org/apk_md5/?_c=log&action=session"

    sget-object v3, Lcom/statistic2345/util/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0, p0}, Lcom/statistic2345/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "TJLogDataService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "obj:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_first_start"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_3
    return-void

    :catch_0
    move-exception v0

    const-string v1, ""

    const-string v0, ""

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move-object v8, v2

    move-object v2, v3

    move-object v3, v8

    :goto_4
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v1, "TJStatistics"

    const-string v2, "\u53d1\u9001\u5931\u8d25"

    invoke-static {v1, v2}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_3
    move-exception v3

    goto :goto_4

    :cond_3
    move-object v4, v2

    goto/16 :goto_1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 402
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 405
    :cond_1
    invoke-static {p0}, Lcom/statistic2345/log/b;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 406
    const-string v1, "app_session_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 408
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    const-string v1, "app_start_stamp"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 412
    const-string v1, "app_end_stamp"

    invoke-interface {v0, v1, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 414
    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    cmp-long v1, v4, v2

    if-ltz v1, :cond_0

    .line 415
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 416
    const-string v4, "app_end_stamp"

    invoke-interface {v1, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 417
    sub-long v2, v6, v2

    const-string v4, "app_total_stamp"

    invoke-interface {v0, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 418
    const-string v0, "app_total_stamp"

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 419
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {}, Lcom/statistic2345/log/Statistics;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "TJStatistics"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/statistic2345/log/Statistics;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 200
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 201
    const-string v1, "app_new_add_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 48
    const-class v0, Lcom/statistic2345/log/b;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 50
    monitor-exit v0

    return-object v1

    .line 48
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d(Landroid/content/Context;J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x3e8

    .line 69
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v1, Ljava/util/Date;

    mul-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 73
    invoke-static {p0, v0, v1}, Lcom/statistic2345/log/b;->a(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 76
    invoke-static {p0, p1, p2}, Lcom/statistic2345/log/b;->a(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 211
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 212
    const-string v1, "app_new_activate_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static e(Landroid/content/Context;J)V
    .locals 5

    .prologue
    const-wide/16 v2, 0x3e8

    .line 91
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 92
    new-instance v1, Ljava/util/Date;

    mul-long/2addr v2, p1

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 94
    invoke-static {p0, v0, v1}, Lcom/statistic2345/log/b;->b(Landroid/content/Context;J)V

    .line 95
    const-string v2, "TJStatistics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "formatAppNewActivateTimeStamp=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    invoke-static {p0, p1, p2}, Lcom/statistic2345/log/b;->b(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 223
    invoke-static {p0}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 224
    const-string v1, "act"

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static declared-synchronized g(Landroid/content/Context;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/statistic2345/log/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const-class v12, Lcom/statistic2345/log/b;

    monitor-enter v12

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/statistic2345/log/a/a;->a(Landroid/content/Context;)Lcom/statistic2345/log/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/statistic2345/log/a/a;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 122
    const-string v5, "TJLaunchInfoColumns"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 124
    const/4 v5, 0x0

    .line 125
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 126
    const-string v5, "tj_session"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 127
    const-string v5, "tj_start"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 128
    const-string v5, "tj_end"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 129
    const-string v5, "tj_total_time"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 130
    const-string v5, "tj_start_sended"

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 132
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 133
    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 162
    :cond_1
    if-eqz v7, :cond_2

    .line 163
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit v12

    return-object v5

    .line 134
    :cond_3
    :try_start_1
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 135
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 136
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 137
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 139
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 141
    const-string v20, "gxz"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "session:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "--start:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "--end:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/statistic2345/log/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_0

    const-wide/16 v20, 0x0

    cmp-long v20, v16, v20

    if-lez v20, :cond_0

    const-wide/16 v20, 0x0

    cmp-long v20, v18, v20

    if-lez v20, :cond_0

    cmp-long v20, v18, v16

    if-lez v20, :cond_0

    if-lez v6, :cond_0

    .line 147
    sub-long v20, v18, v16

    int-to-long v0, v6

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    move-result-wide v20

    const-wide/32 v22, 0xa4cb80

    cmp-long v20, v20, v22

    if-gez v20, :cond_4

    .line 148
    sub-long v20, v18, v16

    move-wide/from16 v0, v20

    long-to-int v6, v0

    .line 152
    :goto_1
    new-instance v20, Lcom/statistic2345/log/b;

    invoke-direct/range {v20 .. v20}, Lcom/statistic2345/log/b;-><init>()V

    .line 153
    move-object/from16 v0, v20

    iput-object v14, v0, Lcom/statistic2345/log/b;->a:Ljava/lang/String;

    .line 154
    move-object/from16 v0, v20

    iput v6, v0, Lcom/statistic2345/log/b;->b:I

    .line 155
    move-wide/from16 v0, v16

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/statistic2345/log/b;->c:J

    .line 156
    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    iput-wide v0, v2, Lcom/statistic2345/log/b;->d:J

    .line 157
    move-object/from16 v0, v20

    iput v15, v0, Lcom/statistic2345/log/b;->e:I

    .line 158
    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 121
    :catchall_0
    move-exception v4

    monitor-exit v12

    throw v4

    .line 150
    :cond_4
    sub-long v20, v18, v16

    int-to-long v0, v6

    move-wide/from16 v22, v0

    :try_start_2
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->min(JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v6, v0

    goto :goto_1
.end method

.method public static h(Landroid/content/Context;)J
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 179
    invoke-static {p0}, Lcom/statistic2345/log/b;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 180
    const-string v0, "app_end_stamp"

    invoke-interface {v4, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const-string v0, "app_end_stamp"

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 182
    cmp-long v5, v0, v2

    if-nez v5, :cond_0

    .line 183
    const-string v0, "app_start_stamp"

    invoke-interface {v4, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 187
    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    move-wide v0, v2

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 249
    if-nez p0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-object v0

    .line 252
    :cond_1
    const-string v1, "tj2345_event"

    invoke-static {p0, v1}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 253
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 255
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 256
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 257
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 258
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 259
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 260
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 262
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v5, 0xf4240

    if-ge v1, v5, :cond_2

    .line 263
    const-string v1, "actionID"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v1, "count"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 268
    :catch_0
    move-exception v0

    .line 269
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static j(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 286
    if-nez p0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-object v0

    .line 289
    :cond_1
    const-string v1, "tj2345_other"

    invoke-static {p0, v1}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 290
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 292
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 293
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 294
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 298
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 299
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 300
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 301
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 303
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 305
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v1, :cond_3

    .line 306
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 307
    const-string v1, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "yyyy-MM-dd HH:mm"

    invoke-static {v6, v7, v8}, Lcom/statistic2345/log/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 308
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 310
    :cond_3
    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static k(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 320
    if-nez p0, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-object v0

    .line 323
    :cond_1
    const-string v1, "tj2345_error"

    invoke-static {p0, v1}, Lcom/statistic2345/log/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 324
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 327
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 330
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 331
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v2

    goto :goto_0

    .line 332
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 334
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 335
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 336
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 337
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 338
    const-string v5, "date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "yyyy-MM-dd"

    invoke-static {v6, v7, v8}, Lcom/statistic2345/log/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string v5, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "HH:mm:ss"

    invoke-static {v6, v7, v8}, Lcom/statistic2345/log/b;->a(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    const-string v5, "msg"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 341
    const-string v0, "msgMD5"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 430
    invoke-static {p0}, Lcom/statistic2345/log/b;->m(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "app_session_id"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized m(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 42
    const-class v1, Lcom/statistic2345/log/b;

    monitor-enter v1

    :try_start_0
    const-string v0, "tongji2345_app_use"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 43
    sput-object v0, Lcom/statistic2345/log/b;->g:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
