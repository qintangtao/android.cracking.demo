.class public final Lcom/statistic2345/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/content/SharedPreferences;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 24
    const-class v1, Lcom/statistic2345/util/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/statistic2345/util/c;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 25
    const-string v0, "tongji2345"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/statistic2345/util/c;->a:Landroid/content/SharedPreferences;

    .line 27
    :cond_0
    sget-object v0, Lcom/statistic2345/util/c;->a:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/statistic2345/util/c;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 32
    monitor-exit v0

    return-object v1

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
