.class Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver$1;
.super Ljava/lang/Object;
.source "AutoResidentService.java"

# interfaces
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver$1;->this$1:Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;

    iput-object p2, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 360
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 345
    iget-object v4, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver$1;->this$1:Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;

    iget-object v4, v4, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-static {v4}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v3

    .line 346
    .local v3, "session":Lcom/market2345/datacenter/DataCenterObserver;
    invoke-virtual {v3}, Lcom/market2345/datacenter/DataCenterObserver;->getUpdateList()Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    :try_start_0
    iget-object v4, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver$1;->this$1:Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;

    iget-object v4, v4, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-virtual {v4}, Lcom/market2345/autocheck/AutoResidentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 349
    .local v2, "pManager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver$1;->val$packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 350
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver$1;->this$1:Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;

    iget-object v4, v4, Lcom/market2345/autocheck/AutoResidentService$AutoResidentReceiver;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    # getter for: Lcom/market2345/autocheck/AutoResidentService;->notifiManger:Lcom/market2345/notificationmanage/NotificationManager2345;
    invoke-static {v4}, Lcom/market2345/autocheck/AutoResidentService;->access$100(Lcom/market2345/autocheck/AutoResidentService;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyNewAppNeededUpdate(Landroid/content/pm/PackageInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 351
    :catch_0
    move-exception v0

    .line 352
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
