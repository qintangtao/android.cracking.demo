.class public final Lcom/market2345/messages/data/TelephonyInterface$Mms$Rate;
.super Ljava/lang/Object;
.source "TelephonyInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/messages/data/TelephonyInterface$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Rate"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final SENT_TIME:Ljava/lang/String; = "sent_time"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 971
    sget-object v0, Lcom/market2345/messages/data/TelephonyInterface$Mms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "rate"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/market2345/messages/data/TelephonyInterface$Mms$Rate;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 965
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 966
    return-void
.end method
