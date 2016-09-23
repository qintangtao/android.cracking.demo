.class public Lcom/market2345/home/HomeUtils;
.super Ljava/lang/Object;
.source "HomeUtils.java"


# static fields
.field public static final NOTIFY:Ljava/lang/String; = "notification"

.field public static final NOTIFY_VALUE_OPENHOME_TO_APPMANAGMENT_ACTIVITY:I = 0x2

.field public static final NOTIFY_VALUE_OPENHOME_TO_APPMANAGMENT_ACTIVITY_AND_DOWNLOADALL:I = 0x7

.field public static final NOTIFY_VALUE_OPENHOME_TO_DOWNLOAD_TAB:I = 0x1

.field public static final NOTIFY_VALUE_OPENHOME_TO_NEED_ACTIVITY:I = 0x4

.field public static final NOTIFY_VALUE_OPENHOME_TO_OPEN_SLIDINGMENU:I = 0x8

.field public static final NOTIFY_VALUE_OPENHOME_TO_OPEN_TransparentFragmentActivity:I = 0x9

.field public static final NOTIFY_VALUE_OPENHOME_TO_RECOMMEND_TAB:I = 0x5

.field public static final NOTIFY_VALUE_OPENHOME_TO_WONDER_ACTIVITY:I = 0x3

.field public static final NOTIFY_VALUE_OPNEHONE_TO_CLEANACTIVITY:I = 0xa

.field public static final NOTIFY_VALUE_OPNEHONE_TO_JPUSH:I = 0xb

.field private static lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isButtonEnable()Z
    .locals 6

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, "time":J
    sget-wide v4, Lcom/market2345/home/HomeUtils;->lastClickTime:J

    sub-long v2, v0, v4

    .line 83
    .local v2, "timeD":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v2

    if-gez v4, :cond_0

    const-wide/16 v4, 0x1f4

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 84
    const/4 v4, 0x1

    .line 87
    :goto_0
    return v4

    .line 86
    :cond_0
    sput-wide v0, Lcom/market2345/home/HomeUtils;->lastClickTime:J

    .line 87
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static startActivityFromIn(Landroid/content/Context;Ljava/lang/Class;Landroid/content/Intent;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "toActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method

.method public static startHomeClearTop(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    const-class v0, Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 68
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method
