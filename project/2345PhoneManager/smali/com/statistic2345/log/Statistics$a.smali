.class public final Lcom/statistic2345/log/Statistics$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/statistic2345/log/Statistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 270
    const/4 v0, 0x0

    sput v0, Lcom/statistic2345/log/Statistics$a;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 274
    const-string v0, "scale"

    const/16 v1, 0x64

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 275
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "level"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 276
    mul-int/lit8 v1, v1, 0x64

    div-int v0, v1, v0

    sput v0, Lcom/statistic2345/log/Statistics$a;->a:I

    .line 277
    return-void
.end method
