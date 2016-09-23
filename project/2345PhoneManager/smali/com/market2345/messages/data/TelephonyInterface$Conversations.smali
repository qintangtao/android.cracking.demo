.class public final Lcom/market2345/messages/data/TelephonyInterface$Conversations;
.super Ljava/lang/Object;
.source "TelephonyInterface.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lcom/market2345/messages/data/TelephonyInterface$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/TelephonyInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Conversations"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field public static final MESSAGE_COUNT:Ljava/lang/String; = "msg_count"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "content://sms/conversations"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/TelephonyInterface$Conversations;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method
