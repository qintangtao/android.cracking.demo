.class public Lcom/market2345/messages/data/RecipientIdCache;
.super Ljava/lang/Object;
.source "RecipientIdCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/data/RecipientIdCache$Entry;
    }
.end annotation


# static fields
.field private static final LOCAL_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "Mms/cache"

.field private static sAllCanonical:Landroid/net/Uri;

.field private static sInstance:Lcom/market2345/messages/data/RecipientIdCache;

.field private static sSingleCanonicalAddressUri:Landroid/net/Uri;


# instance fields
.field private final mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/RecipientIdCache;->sAllCanonical:Landroid/net/Uri;

    .line 23
    const-string v0, "content://mms-sms/canonical-address"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/RecipientIdCache;->sSingleCanonicalAddressUri:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/RecipientIdCache;->mCache:Ljava/util/Map;

    .line 54
    iput-object p1, p0, Lcom/market2345/messages/data/RecipientIdCache;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method public static dump()V
    .locals 6

    .prologue
    .line 131
    sget-object v3, Lcom/market2345/messages/data/RecipientIdCache;->sInstance:Lcom/market2345/messages/data/RecipientIdCache;

    monitor-enter v3

    .line 132
    :try_start_0
    const-string v2, "Mms/cache"

    const-string v4, "*** Recipient ID cache dump ***"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object v2, Lcom/market2345/messages/data/RecipientIdCache;->sInstance:Lcom/market2345/messages/data/RecipientIdCache;

    iget-object v2, v2, Lcom/market2345/messages/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 134
    .local v1, "id":Ljava/lang/Long;
    const-string v4, "Mms/cache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v2, Lcom/market2345/messages/data/RecipientIdCache;->sInstance:Lcom/market2345/messages/data/RecipientIdCache;

    iget-object v2, v2, Lcom/market2345/messages/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v1    # "id":Ljava/lang/Long;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    return-void
.end method

.method public static fill()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 58
    const-string v0, "Messages:threadcache"

    invoke-static {v0, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const-string v0, "[RecipientIdCache] fill: begin"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    :cond_0
    sget-object v0, Lcom/market2345/messages/data/RecipientIdCache;->sInstance:Lcom/market2345/messages/data/RecipientIdCache;

    iget-object v7, v0, Lcom/market2345/messages/data/RecipientIdCache;->mContext:Landroid/content/Context;

    .line 65
    .local v7, "context":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/messages/data/RecipientIdCache;->sAllCanonical:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 66
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 67
    const-string v0, "Mms/cache"

    const-string v1, "null Cursor in fill()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    :try_start_0
    sget-object v1, Lcom/market2345/messages/data/RecipientIdCache;->sInstance:Lcom/market2345/messages/data/RecipientIdCache;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 75
    :try_start_1
    sget-object v0, Lcom/market2345/messages/data/RecipientIdCache;->sInstance:Lcom/market2345/messages/data/RecipientIdCache;

    iget-object v0, v0, Lcom/market2345/messages/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 76
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 79
    .local v8, "id":J
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 80
    .local v10, "number":Ljava/lang/String;
    sget-object v0, Lcom/market2345/messages/data/RecipientIdCache;->sInstance:Lcom/market2345/messages/data/RecipientIdCache;

    iget-object v0, v0, Lcom/market2345/messages/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 82
    .end local v8    # "id":J
    .end local v10    # "number":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    :catchall_1
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 82
    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 87
    const-string v0, "Messages:threadcache"

    invoke-static {v0, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const-string v0, "[RecipientIdCache] fill: finished"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lcom/market2345/messages/data/RecipientIdCache;->dump()V

    goto :goto_0
.end method

.method public static getAddresses(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "spaceSepIds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/market2345/messages/data/RecipientIdCache$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    sget-object v11, Lcom/market2345/messages/data/RecipientIdCache;->sInstance:Lcom/market2345/messages/data/RecipientIdCache;

    monitor-enter v11

    .line 95
    :try_start_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v9, "numbers":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/RecipientIdCache$Entry;>;"
    const-string v10, " "

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "ids":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v3, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .local v3, "id":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    .line 107
    .local v6, "longId":J
    :try_start_2
    sget-object v10, Lcom/market2345/messages/data/RecipientIdCache;->sInstance:Lcom/market2345/messages/data/RecipientIdCache;

    iget-object v10, v10, Lcom/market2345/messages/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 109
    .local v8, "number":Ljava/lang/String;
    if-nez v8, :cond_1

    .line 110
    const-string v10, "Mms/cache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RecipientId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " not in cache!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v10, "Messages:threadcache"

    const/4 v12, 0x2

    invoke-static {v10, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 112
    invoke-static {}, Lcom/market2345/messages/data/RecipientIdCache;->dump()V

    .line 115
    :cond_0
    invoke-static {}, Lcom/market2345/messages/data/RecipientIdCache;->fill()V

    .line 116
    sget-object v10, Lcom/market2345/messages/data/RecipientIdCache;->sInstance:Lcom/market2345/messages/data/RecipientIdCache;

    iget-object v10, v10, Lcom/market2345/messages/data/RecipientIdCache;->mCache:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "number":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 119
    .restart local v8    # "number":Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 120
    const-string v10, "Mms/cache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "RecipientId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " has empty number!"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v6    # "longId":J
    .end local v8    # "number":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 104
    .local v1, "ex":Ljava/lang/NumberFormatException;
    goto :goto_1

    .line 122
    .end local v1    # "ex":Ljava/lang/NumberFormatException;
    .restart local v6    # "longId":J
    .restart local v8    # "number":Ljava/lang/String;
    :cond_2
    new-instance v10, Lcom/market2345/messages/data/RecipientIdCache$Entry;

    invoke-direct {v10, v6, v7, v8}, Lcom/market2345/messages/data/RecipientIdCache$Entry;-><init>(JLjava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 126
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "ids":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "longId":J
    .end local v8    # "number":Ljava/lang/String;
    .end local v9    # "numbers":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/RecipientIdCache$Entry;>;"
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10

    .line 125
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "ids":[Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v9    # "numbers":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/messages/data/RecipientIdCache$Entry;>;"
    :cond_3
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v9
.end method

.method static getInstance()Lcom/market2345/messages/data/RecipientIdCache;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/market2345/messages/data/RecipientIdCache;->sInstance:Lcom/market2345/messages/data/RecipientIdCache;

    return-object v0
.end method

.method static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    new-instance v0, Lcom/market2345/messages/data/RecipientIdCache;

    invoke-direct {v0, p0}, Lcom/market2345/messages/data/RecipientIdCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/market2345/messages/data/RecipientIdCache;->sInstance:Lcom/market2345/messages/data/RecipientIdCache;

    .line 45
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/market2345/messages/data/RecipientIdCache$1;

    invoke-direct {v1}, Lcom/market2345/messages/data/RecipientIdCache$1;-><init>()V

    const-string v2, "RecipientIdCache.init"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method
