.class Lcom/market2345/wificonn/WifiConnDialogActivity$FinishReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/wificonn/WifiConnDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FinishReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/wificonn/WifiConnDialogActivity;


# direct methods
.method constructor <init>(Lcom/market2345/wificonn/WifiConnDialogActivity;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/market2345/wificonn/WifiConnDialogActivity$FinishReceiver;->this$0:Lcom/market2345/wificonn/WifiConnDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/market2345/wificonn/WifiConnDialogActivity$FinishReceiver;->this$0:Lcom/market2345/wificonn/WifiConnDialogActivity;

    invoke-virtual {v0}, Lcom/market2345/wificonn/WifiConnDialogActivity;->finish()V

    .line 310
    return-void
.end method
