.class Lcom/market2345/download/DownloadManager$13;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/download/DownloadManager;->showSizeLimitedTip(Landroid/app/Activity;[Lcom/market2345/model/App;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/download/DownloadManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$myDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/download/DownloadManager;Landroid/app/Dialog;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1398
    iput-object p1, p0, Lcom/market2345/download/DownloadManager$13;->this$0:Lcom/market2345/download/DownloadManager;

    iput-object p2, p0, Lcom/market2345/download/DownloadManager$13;->val$myDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/market2345/download/DownloadManager$13;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1401
    iget-object v1, p0, Lcom/market2345/download/DownloadManager$13;->val$myDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 1403
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/market2345/download/DownloadManager$13;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/market2345/settings/SettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1404
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1405
    iget-object v1, p0, Lcom/market2345/download/DownloadManager$13;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1406
    return-void
.end method
