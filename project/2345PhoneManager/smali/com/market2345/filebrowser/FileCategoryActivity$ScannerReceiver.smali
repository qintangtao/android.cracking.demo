.class Lcom/market2345/filebrowser/FileCategoryActivity$ScannerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FileCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/filebrowser/FileCategoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScannerReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/filebrowser/FileCategoryActivity;


# direct methods
.method private constructor <init>(Lcom/market2345/filebrowser/FileCategoryActivity;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/market2345/filebrowser/FileCategoryActivity$ScannerReceiver;->this$0:Lcom/market2345/filebrowser/FileCategoryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/market2345/filebrowser/FileCategoryActivity;Lcom/market2345/filebrowser/FileCategoryActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/market2345/filebrowser/FileCategoryActivity;
    .param p2, "x1"    # Lcom/market2345/filebrowser/FileCategoryActivity$1;

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/market2345/filebrowser/FileCategoryActivity$ScannerReceiver;-><init>(Lcom/market2345/filebrowser/FileCategoryActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 395
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    :cond_0
    iget-object v1, p0, Lcom/market2345/filebrowser/FileCategoryActivity$ScannerReceiver;->this$0:Lcom/market2345/filebrowser/FileCategoryActivity;

    # invokes: Lcom/market2345/filebrowser/FileCategoryActivity;->updateUI()V
    invoke-static {v1}, Lcom/market2345/filebrowser/FileCategoryActivity;->access$200(Lcom/market2345/filebrowser/FileCategoryActivity;)V

    .line 401
    :cond_1
    return-void
.end method
