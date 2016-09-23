.class public final Lcom/market2345/messages/data/TelephonyInterface$Threads;
.super Ljava/lang/Object;
.source "TelephonyInterface.java"

# interfaces
.implements Lcom/market2345/messages/data/TelephonyInterface$ThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/TelephonyInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation


# static fields
.field public static final BROADCAST_THREAD:I = 0x1

.field public static final COMMON_THREAD:I

.field public static final CONTENT_URI:Landroid/net/Uri;

.field private static final ID_PROJECTION:[Ljava/lang/String;

.field public static final OBSOLETE_THREADS_URI:Landroid/net/Uri;

.field private static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 2037
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/market2345/messages/data/TelephonyInterface$Threads;->ID_PROJECTION:[Ljava/lang/String;

    .line 2043
    const-string v0, "content://mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/TelephonyInterface$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 2049
    sget-object v0, Lcom/market2345/messages/data/TelephonyInterface$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/TelephonyInterface$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 2055
    sget-object v0, Lcom/market2345/messages/data/TelephonyInterface$Threads;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "obsolete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/TelephonyInterface$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2068
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2069
    return-void
.end method
