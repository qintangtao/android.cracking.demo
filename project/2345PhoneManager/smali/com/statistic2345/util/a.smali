.class public final Lcom/statistic2345/util/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/statistic2345/util/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/statistic2345/service/ICrashHandler;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static declared-synchronized a()Lcom/statistic2345/util/a;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/statistic2345/util/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/statistic2345/util/a;->a:Lcom/statistic2345/util/a;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/statistic2345/util/a;

    invoke-direct {v0}, Lcom/statistic2345/util/a;-><init>()V

    sput-object v0, Lcom/statistic2345/util/a;->a:Lcom/statistic2345/util/a;

    .line 32
    :cond_0
    sget-object v0, Lcom/statistic2345/util/a;->a:Lcom/statistic2345/util/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/statistic2345/util/a;->b:Landroid/content/Context;

    .line 46
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 47
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/statistic2345/service/ICrashHandler;)V
    .locals 0

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/statistic2345/util/a;->a(Landroid/content/Context;)V

    .line 51
    iput-object p2, p0, Lcom/statistic2345/util/a;->c:Lcom/statistic2345/service/ICrashHandler;

    .line 52
    return-void
.end method

.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const-wide/16 v6, 0x0

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 57
    iget-object v2, p0, Lcom/statistic2345/util/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 58
    const-string v3, "preErrorStamp"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 59
    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    sub-long v4, v0, v4

    const-wide/32 v6, 0xea60

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 60
    const-string v0, "TJStatistics"

    const-string v1, "< 60s"

    invoke-static {v0, v1}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "preErrorStamp"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    if-nez p2, :cond_3

    const-string v0, ""

    .line 66
    :goto_1
    iget-object v1, p0, Lcom/statistic2345/util/a;->c:Lcom/statistic2345/service/ICrashHandler;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/statistic2345/util/a;->c:Lcom/statistic2345/service/ICrashHandler;

    invoke-interface {v1, v0}, Lcom/statistic2345/service/ICrashHandler;->uncaughtException(Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/statistic2345/log/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/statistic2345/util/a;->b:Landroid/content/Context;

    const-string v3, "tj2345_error"

    invoke-static {v2, v3}, Lcom/statistic2345/util/c;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    const-wide/16 v0, 0x12c

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 65
    :cond_3
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    const-string v1, "TJStatistics"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/statistic2345/log/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method
