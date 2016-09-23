.class Lcom/market2345/wificonn/WifiReceivedFilesActivity$InstalledReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiReceivedFilesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/wificonn/WifiReceivedFilesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstalledReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/wificonn/WifiReceivedFilesActivity;


# direct methods
.method constructor <init>(Lcom/market2345/wificonn/WifiReceivedFilesActivity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity$InstalledReceiver;->this$0:Lcom/market2345/wificonn/WifiReceivedFilesActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/market2345/wificonn/WifiReceivedFilesActivity$InstalledReceiver;->this$0:Lcom/market2345/wificonn/WifiReceivedFilesActivity;

    # getter for: Lcom/market2345/wificonn/WifiReceivedFilesActivity;->receivedAdapter:Lcom/market2345/wificonn/WifiReceivedFilesAdapter;
    invoke-static {v0}, Lcom/market2345/wificonn/WifiReceivedFilesActivity;->access$000(Lcom/market2345/wificonn/WifiReceivedFilesActivity;)Lcom/market2345/wificonn/WifiReceivedFilesAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/wificonn/WifiReceivedFilesAdapter;->notifyDataSetChanged()V

    .line 189
    return-void
.end method
