.class public Lcom/market2345/dumpclean/CleanSetSharedPreferences;
.super Ljava/lang/Object;
.source "CleanSetSharedPreferences.java"


# static fields
.field public static final ALERT_TIME:Ljava/lang/String; = "alert_time"

.field public static final APP_FIRST_START:Ljava/lang/String; = "app_first_start_date"

.field public static final CLEAN_ALERT_SET:Ljava/lang/String; = "clean_alert_set"

.field public static final CLEAN_DATABASE_UPDATE_SET:Ljava/lang/String; = "clean_database_update_set"

.field public static final CLEAN_DB_IS_ENCRYPT:Ljava/lang/String; = "clean_db_is_encrypt"

.field public static final CLEAN_DB_LAST_UPDATE_TIME:Ljava/lang/String; = "clean_db_last_update_time"

.field private static final CLEAN_DB_MD5:Ljava/lang/String; = "clean_db_md5"

.field public static final CLEAN_RESULT_CACHE:Ljava/lang/String; = "clean_result_cache"

.field public static final CLEAN_SETTING_PREFERENCE:Ljava/lang/String; = "clean_setting_preference"

.field public static final CLEAN_SIZE_LAST_TIME:Ljava/lang/String; = "clean_size_last_time"

.field public static final CLEAN_SIZE_SET:Ljava/lang/String; = "clean_size_set"

.field public static final CLEAN_SIZE_TODAY:Ljava/lang/String; = "clean_size_today"

.field public static final CLEAN_SIZE_TOTAL:Ljava/lang/String; = "clean_size_total"

.field public static final CLEAN_TIME_SET:Ljava/lang/String; = "clean_time_set"

.field public static final INTERCEPTION_CHANNEL:Ljava/lang/String; = "iterception_channel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCleanDbUpdatePeriodInDays(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 211
    if-eqz p0, :cond_0

    .line 212
    const-string v3, "clean_setting_preference"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "clean_db_last_update_time"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 214
    .local v0, "timesInMilliseconds":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/32 v4, 0x5265c00

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 216
    .end local v0    # "timesInMilliseconds":J
    :cond_0
    return v2
.end method

.method public static getAlertTime(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, 0x0

    .line 163
    if-eqz p0, :cond_0

    .line 164
    const-string v2, "clean_setting_preference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "alert_time"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 166
    :cond_0
    return-wide v0
.end method

.method public static getAppFirstStartDate(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v0, 0x0

    .line 225
    if-eqz p0, :cond_0

    .line 226
    const-string v2, "iterception_channel"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "app_first_start_date"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 229
    :cond_0
    return-wide v0
.end method

.method public static getCleanDbMd5(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 204
    if-eqz p0, :cond_0

    .line 205
    const-string v0, "clean_setting_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "clean_db_md5"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getLaseSet(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    .line 75
    if-eqz p0, :cond_0

    .line 76
    const-string v0, "clean_setting_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 79
    .end local p2    # "flag":I
    :cond_0
    return p2
.end method

.method public static getLaseSet(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 46
    if-eqz p0, :cond_0

    .line 47
    const-string v0, "clean_setting_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 50
    .end local p2    # "flag":Z
    :cond_0
    return p2
.end method

.method public static getLaseTimeSize(Landroid/content/Context;J)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # J

    .prologue
    .line 116
    if-eqz p0, :cond_0

    .line 117
    const-string v0, "clean_setting_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "clean_size_last_time"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 120
    .end local p1    # "flag":J
    :cond_0
    return-wide p1
.end method

.method public static getTodayCleanSize(Landroid/content/Context;J)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # J

    .prologue
    .line 136
    if-eqz p0, :cond_0

    .line 137
    const-string v0, "temp"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getTodayString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 140
    .end local p1    # "flag":J
    :cond_0
    return-wide p1
.end method

.method public static getTodayString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/dumpclean/DateUtils;->long2DateSimple(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "today":Ljava/lang/String;
    return-object v0
.end method

.method public static getTotalCleanSize(Landroid/content/Context;J)J
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # J

    .prologue
    .line 129
    if-eqz p0, :cond_0

    .line 130
    const-string v0, "clean_setting_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "clean_size_total"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 133
    .end local p1    # "flag":J
    :cond_0
    return-wide p1
.end method

.method public static isCleanDbIsEncrypt(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 176
    if-eqz p0, :cond_0

    .line 177
    const-string v1, "clean_setting_preference"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "clean_db_is_encrypt"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 180
    :cond_0
    return v0
.end method

.method public static setAlertTime(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # J

    .prologue
    .line 169
    if-eqz p0, :cond_0

    .line 170
    const-string v1, "clean_setting_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 171
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "alert_time"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 173
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setAppFirstStartDate(Landroid/content/Context;J)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # J

    .prologue
    .line 238
    if-eqz p0, :cond_0

    .line 239
    const-string v0, "iterception_channel"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "app_first_start_date"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 242
    :cond_0
    return-void
.end method

.method public static setCleanDbIsEncrypt(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "val"    # Z

    .prologue
    .line 183
    if-eqz p0, :cond_0

    .line 184
    const-string v1, "clean_setting_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 186
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "clean_db_is_encrypt"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 188
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setCleanDbLastUpdateTime(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    if-eqz p0, :cond_0

    .line 191
    const-string v1, "clean_setting_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 193
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "clean_db_last_update_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 195
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setCleanDbMd5(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "md5"    # Ljava/lang/String;

    .prologue
    .line 197
    if-eqz p0, :cond_0

    .line 198
    const-string v1, "clean_setting_preference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 200
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "clean_db_md5"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 202
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setCleanLastTimeSize(Landroid/content/Context;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # J

    .prologue
    .line 100
    if-eqz p0, :cond_0

    .line 101
    const-string v3, "clean_setting_preference"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 103
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "clean_size_last_time"

    invoke-interface {v3, v4, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    const-string v3, "clean_size_total"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 105
    .local v0, "history":J
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "clean_size_total"

    add-long v6, v0, p1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    invoke-static {p0, p1, p2}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->setTodayCleanSize(Landroid/content/Context;J)V

    .line 108
    .end local v0    # "history":J
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setLastSet(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 89
    if-eqz p0, :cond_0

    .line 90
    const-string v0, "clean_setting_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 93
    :cond_0
    return-void
.end method

.method public static setLastSet(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 60
    if-eqz p0, :cond_0

    .line 61
    const-string v0, "clean_setting_preference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 65
    :cond_0
    return-void
.end method

.method public static setTodayCleanSize(Landroid/content/Context;J)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "flag"    # J

    .prologue
    const-wide/16 v6, 0x0

    .line 143
    if-eqz p0, :cond_1

    .line 144
    const-string v3, "temp"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 145
    .local v2, "sp":Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getTodayString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 146
    .local v0, "l":J
    cmp-long v3, v0, v6

    if-nez v3, :cond_0

    .line 147
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 149
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-static {}, Lcom/market2345/dumpclean/CleanSetSharedPreferences;->getTodayString()Ljava/lang/String;

    move-result-object v4

    add-long v6, v0, p1

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    .end local v0    # "l":J
    .end local v2    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    return-void
.end method
