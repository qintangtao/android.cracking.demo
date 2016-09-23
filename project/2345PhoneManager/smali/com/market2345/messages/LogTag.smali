.class public Lcom/market2345/messages/LogTag;
.super Ljava/lang/Object;
.source "LogTag.java"


# static fields
.field public static final ALLOW_DUMP_IN_LOGS:Z = false

.field public static final APP:Ljava/lang/String; = "Messages:app"

.field public static final CONTACT:Ljava/lang/String; = "Messages:contact"

.field public static final DEBUG_DUMP:Z = false

.field public static final DEBUG_SEND:Z = false

.field public static final PDU_CACHE:Ljava/lang/String; = "Messages:pducache"

.field public static final SEVERE_WARNING:Z = true

.field private static final SHOW_SEVERE_WARNING_DIALOG:Z = false

.field public static final STRICT_MODE_TAG:Ljava/lang/String; = "Messages:strictmode"

.field public static final TAG:Ljava/lang/String; = "Messages"

.field public static final THREAD_CACHE:Ljava/lang/String; = "Messages:threadcache"

.field public static final THUMBNAIL_CACHE:Ljava/lang/String; = "Messages:thumbnailcache"

.field public static final TRANSACTION:Ljava/lang/String; = "Messages:transaction"

.field public static final VERBOSE:Z = false

.field public static final WIDGET:Ljava/lang/String; = "Messages:widget"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 59
    const-string v0, "Messages"

    invoke-static {p0, p1}, Lcom/market2345/messages/LogTag;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void
.end method

.method public static dumpInternalTables(Landroid/content/Context;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    return-void
.end method

.method public static varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 67
    const-string v0, "Messages"

    invoke-static {p0, p1}, Lcom/market2345/messages/LogTag;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void
.end method

.method private static varargs logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 49
    aget-object v2, p1, v0

    instance-of v2, v2, [Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 50
    aget-object v2, p1, v0

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-static {v2}, Lcom/market2345/messages/LogTag;->prettyArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 48
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    return-object v1
.end method

.method private static prettyArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "array"    # [Ljava/lang/String;

    .prologue
    .line 31
    array-length v3, p0

    if-nez v3, :cond_0

    .line 32
    const-string v3, "[]"

    .line 44
    :goto_0
    return-object v3

    .line 35
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .local v2, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    add-int/lit8 v1, v3, -0x1

    .line 37
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 38
    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 41
    :cond_1
    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 63
    const-string v0, "Messages"

    invoke-static {p0, p1}, Lcom/market2345/messages/LogTag;->logFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

.method public static warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 106
    return-void
.end method
