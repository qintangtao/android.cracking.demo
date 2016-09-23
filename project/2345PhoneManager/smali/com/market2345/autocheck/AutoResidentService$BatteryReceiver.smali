.class public Lcom/market2345/autocheck/AutoResidentService$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoResidentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/autocheck/AutoResidentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/autocheck/AutoResidentService;


# direct methods
.method public constructor <init>(Lcom/market2345/autocheck/AutoResidentService;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/market2345/autocheck/AutoResidentService$BatteryReceiver;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "arg1"    # Landroid/content/Intent;

    .prologue
    .line 391
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    const-string v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/market2345/autocheck/AutoResidentService;->level:Ljava/lang/Integer;

    .line 395
    :cond_0
    return-void
.end method
