.class public Lcom/market2345/messages/data/Conversation;
.super Ljava/lang/Object;
.source "Conversation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/market2345/messages/data/Conversation$Cache;,
        Lcom/market2345/messages/data/Conversation$ConversationQueryHandler;
    }
.end annotation


# static fields
.field public static final ALL_THREADS_PROJECTION:[Ljava/lang/String;

.field static final COLUMN_ID:I = 0x0

.field static final COLUMN_SMS_ADDRESS:I = 0x2

.field static final COLUMN_SMS_BODY:I = 0x3

.field static final COLUMN_SMS_DATE:I = 0x4

.field static final COLUMN_SMS_ERROR_CODE:I = 0x9

.field static final COLUMN_SMS_LOCKED:I = 0x8

.field static final COLUMN_SMS_READ:I = 0x5

.field static final COLUMN_SMS_STATUS:I = 0x7

.field static final COLUMN_SMS_TYPE:I = 0x6

.field static final COLUMN_THREAD_ID:I = 0x1

.field private static final DATE:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DELETEDEBUG:Z = false

.field private static final ERROR:I = 0x7

.field private static final HAS_ATTACHMENT:I = 0x8

.field private static final ID:I = 0x0

.field private static final MESSAGE_COUNT:I = 0x2

.field private static final READ:I = 0x6

.field private static final RECIPIENT_IDS:I = 0x3

.field private static final SEEN_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field private static final SNIPPET:I = 0x4

.field private static final SNIPPET_CS:I = 0x5

.field private static final TAG:Ljava/lang/String; = "messages/conv"

.field public static final UNREAD_PROJECTION:[Ljava/lang/String;

.field private static final UNREAD_SELECTION:Ljava/lang/String; = "(read=0 OR seen=0)"

.field public static final sAllThreadsUri:Landroid/net/Uri;

.field private static sDeletingThreads:Z

.field private static sDeletingThreadsLock:Ljava/lang/Object;

.field private static sLoadingThreads:Z

.field private static sReadContentValues:Landroid/content/ContentValues;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDate:J

.field private mHasAttachment:Z

.field private mHasError:Z

.field private mHasUnreadMessages:Z

.field private mIsChecked:Z

.field private mMarkAsReadBlocked:Z

.field private mMarkAsReadWaiting:Z

.field private mMessageCount:I

.field private mRecipients:Lcom/market2345/messages/data/ContactList;

.field private mSnippet:Ljava/lang/String;

.field private mThreadId:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 36
    sget-object v0, Lcom/market2345/messages/data/TelephonyInterface$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "message_count"

    aput-object v1, v0, v5

    const-string v1, "recipient_ids"

    aput-object v1, v0, v6

    const-string v1, "snippet"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "snippet_cs"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "has_attachment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/messages/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    .line 45
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "read"

    aput-object v1, v0, v4

    sput-object v0, Lcom/market2345/messages/data/Conversation;->UNREAD_PROJECTION:[Ljava/lang/String;

    .line 52
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "seen"

    aput-object v1, v0, v3

    sput-object v0, Lcom/market2345/messages/data/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/market2345/messages/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    .line 1320
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "thread_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const-string v1, "date"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "error_code"

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/messages/data/Conversation;->SMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/market2345/messages/data/Conversation;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Lcom/market2345/messages/data/ContactList;

    invoke-direct {v0}, Lcom/market2345/messages/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/Conversation;->mRecipients:Lcom/market2345/messages/data/ContactList;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    .line 95
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "allowQuery"    # Z

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/market2345/messages/data/Conversation;->mContext:Landroid/content/Context;

    .line 102
    invoke-direct {p0, p2, p3, p4}, Lcom/market2345/messages/data/Conversation;->loadFromThreadId(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/market2345/messages/data/ContactList;

    invoke-direct {v0}, Lcom/market2345/messages/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/market2345/messages/data/Conversation;->mRecipients:Lcom/market2345/messages/data/ContactList;

    .line 104
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    .line 106
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "allowQuery"    # Z

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/market2345/messages/data/Conversation;->mContext:Landroid/content/Context;

    .line 113
    invoke-static {p1, p0, p2, p3}, Lcom/market2345/messages/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/market2345/messages/data/Conversation;Landroid/database/Cursor;Z)V

    .line 114
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/market2345/messages/data/Conversation;->sDeletingThreadsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 31
    sput-boolean p0, Lcom/market2345/messages/data/Conversation;->sDeletingThreads:Z

    return p0
.end method

.method static synthetic access$200(Lcom/market2345/messages/data/Conversation;)J
    .locals 2
    .param p0, "x0"    # Lcom/market2345/messages/data/Conversation;

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/market2345/messages/data/Conversation;->cacheAllThreads(Landroid/content/Context;)V

    return-void
.end method

.method public static asyncDeleteObsoleteThreads(Landroid/content/AsyncQueryHandler;I)V
    .locals 6
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p1, "token"    # I

    .prologue
    const/4 v2, 0x0

    .line 696
    sget-object v3, Lcom/market2345/messages/data/TelephonyInterface$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 697
    return-void
.end method

.method private static blockingMarkAllMmsMessagesAsSeen(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1151
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/market2345/messages/data/TelephonyInterface$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/market2345/messages/data/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    const-string v3, "seen=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1157
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1159
    .local v6, "count":I
    if-eqz v7, :cond_0

    .line 1161
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1163
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1167
    :cond_0
    if-nez v6, :cond_1

    .line 1183
    :goto_0
    return-void

    .line 1163
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1171
    :cond_1
    const-string v1, "Messages:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1172
    const-string v1, "messages/conv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mark "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " MMS msgs as seen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1176
    .local v8, "values":Landroid/content/ContentValues;
    const-string v1, "seen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1178
    sget-object v1, Lcom/market2345/messages/data/TelephonyInterface$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "seen=0"

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static blockingMarkAllSmsMessagesAsSeen(Landroid/content/Context;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 1115
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1116
    .local v0, "resolver":Landroid/content/ContentResolver;
    sget-object v1, Lcom/market2345/messages/data/TelephonyInterface$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/market2345/messages/data/Conversation;->SEEN_PROJECTION:[Ljava/lang/String;

    const-string v3, "seen=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1122
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 1124
    .local v6, "count":I
    if-eqz v7, :cond_0

    .line 1126
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 1128
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1132
    :cond_0
    if-nez v6, :cond_1

    .line 1147
    :goto_0
    return-void

    .line 1128
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 1136
    :cond_1
    const-string v1, "Messages:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1137
    const-string v1, "messages/conv"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mark "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SMS msgs as seen"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    :cond_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 1141
    .local v8, "values":Landroid/content/ContentValues;
    const-string v1, "seen"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1143
    sget-object v1, Lcom/market2345/messages/data/TelephonyInterface$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "seen=0"

    invoke-virtual {v0, v1, v8, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildReadContentValues()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 284
    sget-object v0, Lcom/market2345/messages/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    sput-object v0, Lcom/market2345/messages/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    .line 286
    sget-object v0, Lcom/market2345/messages/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    const-string v1, "read"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 287
    sget-object v0, Lcom/market2345/messages/data/Conversation;->sReadContentValues:Landroid/content/ContentValues;

    const-string v1, "seen"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    :cond_0
    return-void
.end method

.method private static cacheAllThreads(Landroid/content/Context;)V
    .locals 14
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x0

    const/4 v12, 0x0

    .line 1195
    const-string v0, "Messages:threadcache"

    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1196
    const-string v0, "[Conversation] cacheAllThreads: begin"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1198
    :cond_0
    invoke-static {}, Lcom/market2345/messages/data/Conversation$Cache;->getInstance()Lcom/market2345/messages/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1199
    :try_start_0
    sget-boolean v0, Lcom/market2345/messages/data/Conversation;->sLoadingThreads:Z

    if-eqz v0, :cond_2

    .line 1200
    monitor-exit v1

    .line 1262
    :cond_1
    :goto_0
    return-void

    .line 1202
    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/market2345/messages/data/Conversation;->sLoadingThreads:Z

    .line 1203
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1207
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 1210
    .local v9, "threadsOnDisk":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/messages/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/market2345/messages/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1213
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_6

    .line 1214
    :cond_3
    :goto_1
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1215
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1216
    .local v10, "threadId":J
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1220
    invoke-static {}, Lcom/market2345/messages/data/Conversation$Cache;->getInstance()Lcom/market2345/messages/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1221
    :try_start_2
    invoke-static {v10, v11}, Lcom/market2345/messages/data/Conversation$Cache;->get(J)Lcom/market2345/messages/data/Conversation;

    move-result-object v7

    .line 1222
    .local v7, "conv":Lcom/market2345/messages/data/Conversation;
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1224
    if-nez v7, :cond_5

    .line 1227
    :try_start_3
    new-instance v7, Lcom/market2345/messages/data/Conversation;

    .end local v7    # "conv":Lcom/market2345/messages/data/Conversation;
    const/4 v0, 0x1

    invoke-direct {v7, p0, v6, v0}, Lcom/market2345/messages/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1229
    .restart local v7    # "conv":Lcom/market2345/messages/data/Conversation;
    :try_start_4
    invoke-static {}, Lcom/market2345/messages/data/Conversation$Cache;->getInstance()Lcom/market2345/messages/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1230
    :try_start_5
    invoke-static {v7}, Lcom/market2345/messages/data/Conversation$Cache;->put(Lcom/market2345/messages/data/Conversation;)V

    .line 1231
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1232
    :catch_0
    move-exception v8

    .line 1233
    .local v8, "e":Ljava/lang/IllegalStateException;
    :try_start_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tried to add duplicate Conversation to Cache for threadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new conv: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1235
    invoke-static {v7}, Lcom/market2345/messages/data/Conversation$Cache;->replace(Lcom/market2345/messages/data/Conversation;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheAllThreads cache.replace failed on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 1247
    .end local v7    # "conv":Lcom/market2345/messages/data/Conversation;
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    .end local v10    # "threadId":J
    :catchall_1
    move-exception v0

    if-eqz v6, :cond_4

    .line 1248
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1250
    :cond_4
    invoke-static {}, Lcom/market2345/messages/data/Conversation$Cache;->getInstance()Lcom/market2345/messages/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1251
    const/4 v2, 0x0

    :try_start_8
    sput-boolean v2, Lcom/market2345/messages/data/Conversation;->sLoadingThreads:Z

    .line 1252
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    .line 1203
    .end local v6    # "c":Landroid/database/Cursor;
    .end local v9    # "threadsOnDisk":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_2
    move-exception v0

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    .line 1222
    .restart local v6    # "c":Landroid/database/Cursor;
    .restart local v9    # "threadsOnDisk":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    .restart local v10    # "threadId":J
    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0

    .line 1242
    .restart local v7    # "conv":Lcom/market2345/messages/data/Conversation;
    :cond_5
    const/4 v0, 0x1

    invoke-static {p0, v7, v6, v0}, Lcom/market2345/messages/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/market2345/messages/data/Conversation;Landroid/database/Cursor;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 1247
    .end local v7    # "conv":Lcom/market2345/messages/data/Conversation;
    .end local v10    # "threadId":J
    :cond_6
    if-eqz v6, :cond_7

    .line 1248
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1250
    :cond_7
    invoke-static {}, Lcom/market2345/messages/data/Conversation$Cache;->getInstance()Lcom/market2345/messages/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1251
    const/4 v0, 0x0

    :try_start_c
    sput-boolean v0, Lcom/market2345/messages/data/Conversation;->sLoadingThreads:Z

    .line 1252
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 1256
    invoke-static {v9}, Lcom/market2345/messages/data/Conversation$Cache;->keepOnly(Ljava/util/Set;)V

    .line 1258
    const-string v0, "Messages:threadcache"

    invoke-static {v0, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1259
    const-string v0, "[Conversation] cacheAllThreads: finished"

    new-array v1, v12, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1260
    invoke-static {}, Lcom/market2345/messages/data/Conversation$Cache;->dumpCache()V

    goto/16 :goto_0

    .line 1252
    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0
.end method

.method public static createNew(Landroid/content/Context;)Lcom/market2345/messages/data/Conversation;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    new-instance v0, Lcom/market2345/messages/data/Conversation;

    invoke-direct {v0, p0}, Lcom/market2345/messages/data/Conversation;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static dump()V
    .locals 0

    .prologue
    .line 1292
    invoke-static {}, Lcom/market2345/messages/data/Conversation$Cache;->dumpCache()V

    .line 1293
    return-void
.end method

.method public static dumpSmsTable(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1348
    const-string v0, "**** Dump of sms table ****"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/messages/data/TelephonyInterface$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/market2345/messages/data/Conversation;->SMS_PROJECTION:[Ljava/lang/String;

    const-string v5, "_id DESC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1353
    .local v7, "c":Landroid/database/Cursor;
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1354
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 1355
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1356
    .local v6, "body":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpSmsTable _id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "thread_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1364
    .end local v6    # "body":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1366
    return-void
.end method

.method public static dumpThreadsTable(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1296
    const-string v0, "**** Dump of threads table ****"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1297
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/messages/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/market2345/messages/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v5, "date ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1300
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, -0x1

    :try_start_0
    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1301
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    const-string v8, ""

    .line 1303
    .local v8, "snippet":Ljava/lang/String;
    const-string v0, "messages/conv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpThreadsTable threadId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "message_count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "snippet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x6

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "has_attachment"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recipient_ids"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/market2345/messages/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/market2345/messages/data/ContactList;

    move-result-object v7

    .line 1313
    .local v7, "recipients":Lcom/market2345/messages/data/ContactList;
    const-string v0, "messages/conv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----recipients: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/market2345/messages/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1316
    .end local v7    # "recipients":Lcom/market2345/messages/data/ContactList;
    .end local v8    # "snippet":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1318
    return-void
.end method

.method private static fillFromCursor(Landroid/content/Context;Lcom/market2345/messages/data/Conversation;Landroid/database/Cursor;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "conv"    # Lcom/market2345/messages/data/Conversation;
    .param p2, "c"    # Landroid/database/Cursor;
    .param p3, "allowQuery"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 895
    monitor-enter p1

    .line 896
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    .line 897
    const/4 v4, 0x1

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/market2345/messages/data/Conversation;->mDate:J

    .line 898
    const/4 v4, 0x2

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p1, Lcom/market2345/messages/data/Conversation;->mMessageCount:I

    .line 901
    const/4 v4, 0x4

    const/4 v5, 0x5

    invoke-static {p2, v4, v5}, Lcom/market2345/messages/util/MessageUtils;->extractEncStrFromCursor(Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/market2345/messages/util/MessageUtils;->cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, "snippet":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 903
    const v4, 0x7f0b00f4

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 905
    :cond_0
    iput-object v1, p1, Lcom/market2345/messages/data/Conversation;->mSnippet:Ljava/lang/String;

    .line 907
    const/4 v4, 0x6

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    :goto_0
    invoke-direct {p1, v4}, Lcom/market2345/messages/data/Conversation;->setHasUnreadMessages(Z)V

    .line 908
    const/4 v4, 0x7

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    iput-boolean v4, p1, Lcom/market2345/messages/data/Conversation;->mHasError:Z

    .line 909
    const/16 v4, 0x8

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    :goto_2
    iput-boolean v2, p1, Lcom/market2345/messages/data/Conversation;->mHasAttachment:Z

    .line 910
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 913
    const/4 v2, 0x3

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "recipientIds":Ljava/lang/String;
    const-string v2, "Messages:threadcache"

    invoke-static {v2, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 920
    const-string v2, "messages/conv"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fillFromCursor: conv="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", recipientIds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    :cond_1
    return-void

    .end local v0    # "recipientIds":Ljava/lang/String;
    :cond_2
    move v4, v3

    .line 907
    goto :goto_0

    :cond_3
    move v4, v3

    .line 908
    goto :goto_1

    :cond_4
    move v2, v3

    .line 909
    goto :goto_2

    .line 910
    .end local v1    # "snippet":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/market2345/messages/data/Conversation;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v1, 0x0

    .line 262
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 270
    .local v2, "threadId":J
    new-instance v0, Lcom/market2345/messages/data/Conversation;

    invoke-direct {v0, p0, p1, v1}, Lcom/market2345/messages/data/Conversation;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 280
    .local v0, "conv":Lcom/market2345/messages/data/Conversation;
    return-object v0
.end method

.method public static get(Landroid/content/Context;JZ)Lcom/market2345/messages/data/Conversation;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .param p3, "allowQuery"    # Z

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-static {p1, p2}, Lcom/market2345/messages/data/Conversation$Cache;->get(J)Lcom/market2345/messages/data/Conversation;

    move-result-object v0

    .line 133
    .local v0, "conv":Lcom/market2345/messages/data/Conversation;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 145
    .end local v0    # "conv":Lcom/market2345/messages/data/Conversation;
    .local v1, "conv":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 136
    .end local v1    # "conv":Ljava/lang/Object;
    .restart local v0    # "conv":Lcom/market2345/messages/data/Conversation;
    :cond_0
    new-instance v0, Lcom/market2345/messages/data/Conversation;

    .end local v0    # "conv":Lcom/market2345/messages/data/Conversation;
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/market2345/messages/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 138
    .restart local v0    # "conv":Lcom/market2345/messages/data/Conversation;
    :try_start_0
    invoke-static {v0}, Lcom/market2345/messages/data/Conversation$Cache;->put(Lcom/market2345/messages/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 145
    .restart local v1    # "conv":Ljava/lang/Object;
    goto :goto_0

    .line 139
    .end local v1    # "conv":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 140
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to add duplicate Conversation to Cache (from threadId): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/market2345/messages/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-static {v0}, Lcom/market2345/messages/data/Conversation$Cache;->replace(Lcom/market2345/messages/data/Conversation;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get by threadId cache.replace failed on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/market2345/messages/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/market2345/messages/data/Conversation;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "allowQuery"    # Z

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    invoke-static {p0}, Lcom/market2345/messages/data/Conversation;->createNew(Landroid/content/Context;)Lcom/market2345/messages/data/Conversation;

    move-result-object v1

    .line 217
    :goto_0
    return-object v1

    .line 203
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x2

    if-lt v1, v4, :cond_1

    .line 205
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 209
    .local v2, "threadId":J
    invoke-static {p0, v2, v3, p2}, Lcom/market2345/messages/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/market2345/messages/data/Conversation;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 210
    .end local v2    # "threadId":J
    :catch_0
    move-exception v0

    .line 211
    .local v0, "exception":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/market2345/messages/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    .end local v0    # "exception":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;Lcom/market2345/messages/data/ContactList;Z)Lcom/market2345/messages/data/Conversation;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "recipients"    # Lcom/market2345/messages/data/ContactList;
    .param p2, "allowQuery"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 157
    invoke-virtual {p1}, Lcom/market2345/messages/data/ContactList;->size()I

    move-result v4

    if-ge v4, v6, :cond_1

    .line 158
    invoke-static {p0}, Lcom/market2345/messages/data/Conversation;->createNew(Landroid/content/Context;)Lcom/market2345/messages/data/Conversation;

    move-result-object v0

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 161
    :cond_1
    invoke-static {p1}, Lcom/market2345/messages/data/Conversation$Cache;->get(Lcom/market2345/messages/data/ContactList;)Lcom/market2345/messages/data/Conversation;

    move-result-object v0

    .line 162
    .local v0, "conv":Lcom/market2345/messages/data/Conversation;
    if-nez v0, :cond_0

    .line 165
    invoke-static {p0, p1}, Lcom/market2345/messages/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/market2345/messages/data/ContactList;)J

    move-result-wide v2

    .line 166
    .local v2, "threadId":J
    new-instance v0, Lcom/market2345/messages/data/Conversation;

    .end local v0    # "conv":Lcom/market2345/messages/data/Conversation;
    invoke-direct {v0, p0, v2, v3, p2}, Lcom/market2345/messages/data/Conversation;-><init>(Landroid/content/Context;JZ)V

    .line 167
    .restart local v0    # "conv":Lcom/market2345/messages/data/Conversation;
    const-string v4, "messages/conv"

    const-string v5, "Conversation.get: created new conversation xxxxxxx"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v0}, Lcom/market2345/messages/data/Conversation;->getRecipients()Lcom/market2345/messages/data/ContactList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/market2345/messages/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 170
    const-string v4, "messages/conv"

    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "Conversation.get: new conv\'s recipients don\'t match input recpients xxxxxxx"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Lcom/market2345/messages/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    :cond_2
    :try_start_0
    invoke-static {v0}, Lcom/market2345/messages/data/Conversation$Cache;->put(Lcom/market2345/messages/data/Conversation;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to add duplicate Conversation to Cache (from recipients): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/market2345/messages/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-static {v0}, Lcom/market2345/messages/data/Conversation$Cache;->replace(Lcom/market2345/messages/data/Conversation;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 179
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get by recipients cache.replace failed on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/market2345/messages/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getOrCreateThreadId(Landroid/content/Context;Lcom/market2345/messages/data/ContactList;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "list"    # Lcom/market2345/messages/data/ContactList;

    .prologue
    .line 632
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 663
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getRecipients(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1286
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 1287
    .local v0, "base":Ljava/lang/String;
    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1288
    .local v1, "pos":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .end local v0    # "base":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "base":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUri(J)Landroid/net/Uri;
    .locals 2
    .param p0, "threadId"    # J

    .prologue
    .line 435
    sget-object v0, Lcom/market2345/messages/data/TelephonyInterface$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1081
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/market2345/messages/data/Conversation$1;

    invoke-direct {v1, p0}, Lcom/market2345/messages/data/Conversation$1;-><init>(Landroid/content/Context;)V

    const-string v2, "Conversation.init"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 1087
    .local v0, "thread":Ljava/lang/Thread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 1088
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1089
    return-void
.end method

.method private loadFromThreadId(JZ)Z
    .locals 9
    .param p1, "threadId"    # J
    .param p3, "allowQuery"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 1265
    iget-object v0, p0, Lcom/market2345/messages/data/Conversation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/messages/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/market2345/messages/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1268
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1269
    iget-object v0, p0, Lcom/market2345/messages/data/Conversation;->mContext:Landroid/content/Context;

    invoke-static {v0, p0, v6, p3}, Lcom/market2345/messages/data/Conversation;->fillFromCursor(Landroid/content/Context;Lcom/market2345/messages/data/Conversation;Landroid/database/Cursor;Z)V

    .line 1271
    iget-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromThreadId: fillFromCursor returned differnt thread_id! threadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mThreadId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1282
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1276
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadFromThreadId: Can\'t find thread ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1280
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static loadingThreads()Z
    .locals 2

    .prologue
    .line 1189
    invoke-static {}, Lcom/market2345/messages/data/Conversation$Cache;->getInstance()Lcom/market2345/messages/data/Conversation$Cache;

    move-result-object v1

    monitor-enter v1

    .line 1190
    :try_start_0
    sget-boolean v0, Lcom/market2345/messages/data/Conversation;->sLoadingThreads:Z

    monitor-exit v1

    return v0

    .line 1191
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static markAllConversationsAsSeen(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1112
    return-void
.end method

.method private sendReadReport(Landroid/content/Context;JI)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "threadId"    # J
    .param p4, "status"    # I

    .prologue
    .line 324
    return-void
.end method

.method private setHasUnreadMessages(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 564
    monitor-enter p0

    .line 565
    :try_start_0
    iput-boolean p1, p0, Lcom/market2345/messages/data/Conversation;->mHasUnreadMessages:Z

    .line 566
    monitor-exit p0

    .line 567
    return-void

    .line 566
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startDelete(Lcom/market2345/messages/data/Conversation$ConversationQueryHandler;IZLjava/util/Collection;)V
    .locals 0
    .param p0, "handler"    # Lcom/market2345/messages/data/Conversation$ConversationQueryHandler;
    .param p1, "token"    # I
    .param p2, "deleteAll"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/market2345/messages/data/Conversation$ConversationQueryHandler;",
            "IZ",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 771
    .local p3, "threadIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    return-void
.end method

.method public static startDeleteAll(Lcom/market2345/messages/data/Conversation$ConversationQueryHandler;IZ)V
    .locals 0
    .param p0, "handler"    # Lcom/market2345/messages/data/Conversation$ConversationQueryHandler;
    .param p1, "token"    # I
    .param p2, "deleteAll"    # Z

    .prologue
    .line 800
    return-void
.end method

.method public static startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    .locals 8
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p1, "token"    # I
    .param p2, "selection"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 728
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 735
    sget-object v3, Lcom/market2345/messages/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v4, Lcom/market2345/messages/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v7, "date DESC"

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    return-void
.end method

.method public static startQueryForAll(Landroid/content/AsyncQueryHandler;I)V
    .locals 1
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p1, "token"    # I

    .prologue
    .line 708
    invoke-virtual {p0, p1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 715
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/market2345/messages/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 716
    return-void
.end method

.method public static startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V
    .locals 5
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p1, "threadId"    # J
    .param p3, "token"    # I

    .prologue
    .line 880
    const/4 v0, 0x0

    .line 881
    .local v0, "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .restart local v0    # "threadIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    :cond_0
    invoke-static {p0, v0, p3}, Lcom/market2345/messages/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V

    .line 886
    return-void
.end method

.method public static startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V
    .locals 0
    .param p0, "handler"    # Landroid/content/AsyncQueryHandler;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AsyncQueryHandler;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 868
    .local p1, "threadIds":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Long;>;"
    return-void
.end method

.method public static verifySingleRecipient(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "threadId"    # J
    .param p3, "recipientStr"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1382
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 1383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifySingleRecipient threadId is ZERO, recipient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1384
    invoke-static {p0}, Lcom/market2345/messages/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    .line 1448
    .end local p3    # "recipientStr":Ljava/lang/String;
    :goto_0
    return-object p3

    .line 1387
    .restart local p3    # "recipientStr":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/market2345/messages/data/Conversation;->sAllThreadsUri:Landroid/net/Uri;

    sget-object v2, Lcom/market2345/messages/data/Conversation;->ALL_THREADS_PROJECTION:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1389
    .local v7, "c":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 1390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifySingleRecipient threadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " resulted in NULL cursor , recipient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1392
    invoke-static {p0}, Lcom/market2345/messages/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    goto :goto_0

    .line 1395
    :cond_1
    move-object v6, p3

    .local v6, "address":Ljava/lang/String;
    move-object p3, v6

    .line 1448
    goto :goto_0
.end method


# virtual methods
.method public blockMarkAsRead(Z)V
    .locals 3
    .param p1, "block"    # Z

    .prologue
    const/4 v2, 0x0

    .line 402
    const-string v0, "Messages:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "blockMarkAsRead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    :cond_0
    iget-boolean v0, p0, Lcom/market2345/messages/data/Conversation;->mMarkAsReadBlocked:Z

    if-eq p1, v0, :cond_1

    .line 407
    iput-boolean p1, p0, Lcom/market2345/messages/data/Conversation;->mMarkAsReadBlocked:Z

    .line 408
    iget-boolean v0, p0, Lcom/market2345/messages/data/Conversation;->mMarkAsReadBlocked:Z

    if-nez v0, :cond_1

    .line 409
    iget-boolean v0, p0, Lcom/market2345/messages/data/Conversation;->mMarkAsReadWaiting:Z

    if-eqz v0, :cond_1

    .line 410
    iput-boolean v2, p0, Lcom/market2345/messages/data/Conversation;->mMarkAsReadWaiting:Z

    .line 411
    invoke-virtual {p0}, Lcom/market2345/messages/data/Conversation;->markAsRead()V

    .line 415
    :cond_1
    return-void
.end method

.method public declared-synchronized clearThreadId()V
    .locals 4

    .prologue
    .line 468
    monitor-enter p0

    :try_start_0
    const-string v0, "Messages:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearThreadId old threadId was: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " now zero"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/market2345/messages/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 471
    :cond_0
    iget-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    invoke-static {v0, v1}, Lcom/market2345/messages/data/Conversation$Cache;->remove(J)V

    .line 473
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    monitor-exit p0

    return-void

    .line 468
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureThreadId()J
    .locals 4

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/market2345/messages/data/Conversation;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/market2345/messages/data/Conversation;->mRecipients:Lcom/market2345/messages/data/ContactList;

    invoke-static {v0, v1}, Lcom/market2345/messages/data/Conversation;->getOrCreateThreadId(Landroid/content/Context;Lcom/market2345/messages/data/ContactList;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    .line 463
    :cond_0
    iget-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 674
    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/market2345/messages/data/Conversation;

    move-object v2, v0

    .line 675
    .local v2, "other":Lcom/market2345/messages/data/Conversation;
    iget-object v3, p0, Lcom/market2345/messages/data/Conversation;->mRecipients:Lcom/market2345/messages/data/ContactList;

    iget-object v4, v2, Lcom/market2345/messages/data/Conversation;->mRecipients:Lcom/market2345/messages/data/ContactList;

    invoke-virtual {v3, v4}, Lcom/market2345/messages/data/ContactList;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 677
    .end local v2    # "other":Lcom/market2345/messages/data/Conversation;
    :goto_0
    monitor-exit p0

    return v3

    .line 676
    :catch_0
    move-exception v1

    .line 677
    .local v1, "e":Ljava/lang/ClassCastException;
    const/4 v3, 0x0

    goto :goto_0

    .line 674
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getDate()J
    .locals 2

    .prologue
    .line 529
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mDate:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessageCount()I
    .locals 1

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/market2345/messages/data/Conversation;->mMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRecipients()Lcom/market2345/messages/data/ContactList;
    .locals 1

    .prologue
    .line 500
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/messages/data/Conversation;->mRecipients:Lcom/market2345/messages/data/ContactList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSnippet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/messages/data/Conversation;->mSnippet:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getThreadId()J
    .locals 2

    .prologue
    .line 443
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUri()Landroid/net/Uri;
    .locals 4

    .prologue
    .line 422
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 425
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/market2345/messages/data/TelephonyInterface$Threads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v2, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasAttachment()Z
    .locals 1

    .prologue
    .line 573
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/market2345/messages/data/Conversation;->mHasAttachment:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hasDraft()Z
    .locals 1

    .prologue
    .line 507
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized hasError()Z
    .locals 1

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/market2345/messages/data/Conversation;->mHasError:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasUnreadMessages()Z
    .locals 1

    .prologue
    .line 558
    monitor-enter p0

    .line 559
    :try_start_0
    iget-boolean v0, p0, Lcom/market2345/messages/data/Conversation;->mHasUnreadMessages:Z

    monitor-exit p0

    return v0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    .prologue
    .line 683
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/market2345/messages/data/Conversation;->mRecipients:Lcom/market2345/messages/data/ContactList;

    invoke-virtual {v0}, Lcom/market2345/messages/data/ContactList;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isChecked()Z
    .locals 1

    .prologue
    .line 587
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/market2345/messages/data/Conversation;->mIsChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markAsRead()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method public sameRecipient(Landroid/net/Uri;Landroid/content/Context;)Z
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 226
    iget-object v6, p0, Lcom/market2345/messages/data/Conversation;->mRecipients:Lcom/market2345/messages/data/ContactList;

    invoke-virtual {v6}, Lcom/market2345/messages/data/ContactList;->size()I

    move-result v3

    .line 227
    .local v3, "size":I
    if-le v3, v4, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v5

    .line 230
    :cond_1
    if-nez p1, :cond_3

    .line 231
    if-nez v3, :cond_2

    :goto_1
    move v5, v4

    goto :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .line 233
    :cond_3
    const/4 v0, 0x0

    .line 234
    .local v0, "incomingRecipient":Lcom/market2345/messages/data/ContactList;
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    if-lt v4, v6, :cond_4

    .line 236
    invoke-static {p2, p1, v5}, Lcom/market2345/messages/data/Conversation;->get(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/market2345/messages/data/Conversation;

    move-result-object v1

    .line 237
    .local v1, "otherConv":Lcom/market2345/messages/data/Conversation;
    if-eqz v1, :cond_0

    .line 240
    iget-object v0, v1, Lcom/market2345/messages/data/Conversation;->mRecipients:Lcom/market2345/messages/data/ContactList;

    .line 248
    .end local v1    # "otherConv":Lcom/market2345/messages/data/Conversation;
    :goto_2
    iget-object v4, p0, Lcom/market2345/messages/data/Conversation;->mRecipients:Lcom/market2345/messages/data/ContactList;

    invoke-virtual {v4, v0}, Lcom/market2345/messages/data/ContactList;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 242
    :cond_4
    invoke-static {p1}, Lcom/market2345/messages/data/Conversation;->getRecipients(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "recipient":Ljava/lang/String;
    invoke-static {v2, v5, v5}, Lcom/market2345/messages/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/market2345/messages/data/ContactList;

    move-result-object v0

    goto :goto_2
.end method

.method public declared-synchronized setDraftState(Z)V
    .locals 0
    .param p1, "hasDraft"    # Z

    .prologue
    .line 522
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setIsChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 591
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/market2345/messages/data/Conversation;->mIsChecked:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    monitor-exit p0

    return-void

    .line 591
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMessageCount(I)V
    .locals 1
    .param p1, "cnt"    # I

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/market2345/messages/data/Conversation;->mMessageCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    monitor-exit p0

    return-void

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRecipients(Lcom/market2345/messages/data/ContactList;)V
    .locals 3
    .param p1, "list"    # Lcom/market2345/messages/data/ContactList;

    .prologue
    .line 483
    monitor-enter p0

    :try_start_0
    const-string v0, "Messages:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    const-string v0, "messages/conv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecipients before: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/market2345/messages/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_0
    iput-object p1, p0, Lcom/market2345/messages/data/Conversation;->mRecipients:Lcom/market2345/messages/data/ContactList;

    .line 489
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    .line 491
    const-string v0, "Messages:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 492
    const-string v0, "messages/conv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecipients after: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/market2345/messages/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 494
    :cond_1
    monitor-exit p0

    return-void

    .line 483
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 688
    monitor-enter p0

    :try_start_0
    const-string v0, "[%s] (tid %d)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/market2345/messages/data/Conversation;->mRecipients:Lcom/market2345/messages/data/ContactList;

    invoke-virtual {v3}, Lcom/market2345/messages/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-wide v4, p0, Lcom/market2345/messages/data/Conversation;->mThreadId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
