.class Lcom/market2345/settings/SettingActivity$3;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/settings/SettingActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/settings/SettingActivity;

.field final synthetic val$downloadManager:Lcom/market2345/download/DownloadManager;


# direct methods
.method constructor <init>(Lcom/market2345/settings/SettingActivity;Lcom/market2345/download/DownloadManager;)V
    .locals 0

    .prologue
    .line 398
    iput-object p1, p0, Lcom/market2345/settings/SettingActivity$3;->this$0:Lcom/market2345/settings/SettingActivity;

    iput-object p2, p0, Lcom/market2345/settings/SettingActivity$3;->val$downloadManager:Lcom/market2345/download/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/market2345/settings/SettingActivity$3;->val$downloadManager:Lcom/market2345/download/DownloadManager;

    invoke-virtual {v0}, Lcom/market2345/download/DownloadManager;->freeUpdateIfReady()V

    .line 402
    return-void
.end method
