.class public Lcom/market2345/util/RingSetUtil;
.super Ljava/lang/Object;
.source "RingSetUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAlarmAudio(Landroid/content/Context;Landroid/net/Uri;IZ)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # I
    .param p3, "show"    # Z

    .prologue
    const/4 v9, 0x4

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 20
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 21
    .local v3, "values":Landroid/content/ContentValues;
    const-string v5, "is_alarm"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 23
    .local v0, "count":I
    int-to-long v6, p2

    invoke-static {p1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 24
    .local v1, "newUri":Landroid/net/Uri;
    invoke-static {p0, v9, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 25
    invoke-static {p0, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 26
    .local v2, "u":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 28
    if-eqz p3, :cond_0

    .line 30
    const-string v5, "\u8bbe\u7f6e\u95f9\u949f\u94c3\u58f0\u6210\u529f"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 40
    :cond_0
    :goto_0
    return v4

    .line 36
    :cond_1
    if-eqz p3, :cond_2

    .line 38
    const-string v4, "\u8bbe\u7f6e\u95f9\u949f\u94c3\u58f0\u5931\u8d25"

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 40
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setAlarmAudio(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "show"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x0

    .line 46
    invoke-static {p0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 47
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 48
    .local v0, "u":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    if-eqz p2, :cond_0

    .line 52
    const-string v1, "\u8bbe\u7f6e\u95f9\u949f\u94c3\u58f0\u6210\u529f"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 54
    :cond_0
    const/4 v1, 0x1

    .line 62
    :goto_0
    return v1

    .line 58
    :cond_1
    if-eqz p2, :cond_2

    .line 60
    const-string v1, "\u8bbe\u7f6e\u95f9\u949f\u94c3\u58f0\u5931\u8d25"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 62
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static setRing(Landroid/content/Context;Landroid/net/Uri;IZ)I
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # I
    .param p3, "show"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 116
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v3, "values":Landroid/content/ContentValues;
    const-string v5, "is_ringtone"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 119
    .local v0, "count":I
    int-to-long v6, p2

    invoke-static {p1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 120
    .local v1, "newUri":Landroid/net/Uri;
    invoke-static {p0, v4, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 121
    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 122
    .local v2, "u":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 124
    if-eqz p3, :cond_0

    .line 126
    const-string v5, "\u8bbe\u7f6e\u6765\u7535\u94c3\u58f0\u6210\u529f"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 136
    :cond_0
    :goto_0
    return v4

    .line 132
    :cond_1
    if-eqz p3, :cond_2

    .line 134
    const-string v4, "\u8bbe\u7f6e\u6765\u7535\u94c3\u58f0\u5931\u8d25"

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 136
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setRing(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newUri"    # Landroid/net/Uri;
    .param p2, "show"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 142
    invoke-static {p0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 143
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 144
    .local v0, "u":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    if-eqz p2, :cond_0

    .line 148
    const-string v2, "\u8bbe\u7f6e\u6765\u7535\u94c3\u58f0\u6210\u529f"

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 158
    :cond_0
    :goto_0
    return v1

    .line 154
    :cond_1
    if-eqz p2, :cond_2

    .line 156
    const-string v1, "\u8bbe\u7f6e\u6765\u7535\u94c3\u58f0\u5931\u8d25"

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 158
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static setSMSAudio(Landroid/content/Context;Landroid/net/Uri;IZ)I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "id"    # I
    .param p3, "show"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 68
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v3, "values":Landroid/content/ContentValues;
    const-string v5, "is_notification"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, p1, v3, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "count":I
    int-to-long v6, p2

    invoke-static {p1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 72
    .local v1, "newUri":Landroid/net/Uri;
    invoke-static {p0, v9, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 73
    invoke-static {p0, v9}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 74
    .local v2, "u":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 76
    if-eqz p3, :cond_0

    .line 78
    const-string v5, "\u8bbe\u7f6e\u901a\u77e5\u94c3\u58f0\u6210\u529f"

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 88
    :cond_0
    :goto_0
    return v4

    .line 84
    :cond_1
    if-eqz p3, :cond_2

    .line 86
    const-string v4, "\u8bbe\u7f6e\u901a\u77e5\u94c3\u58f0\u5931\u8d25"

    invoke-static {p0, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 88
    :cond_2
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public static setSMSAudio(Landroid/content/Context;Landroid/net/Uri;Z)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "newUri"    # Landroid/net/Uri;
    .param p2, "show"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 94
    invoke-static {p0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 95
    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 96
    .local v0, "u":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    if-eqz p2, :cond_0

    .line 100
    const-string v1, "\u8bbe\u7f6e\u901a\u77e5\u94c3\u58f0\u6210\u529f"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 102
    :cond_0
    const/4 v1, 0x1

    .line 110
    :goto_0
    return v1

    .line 106
    :cond_1
    if-eqz p2, :cond_2

    .line 108
    const-string v1, "\u8bbe\u7f6e\u901a\u77e5\u94c3\u58f0\u5931\u8d25"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 110
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method
