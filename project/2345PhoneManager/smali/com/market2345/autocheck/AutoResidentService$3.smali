.class Lcom/market2345/autocheck/AutoResidentService$3;
.super Ljava/lang/Object;
.source "AutoResidentService.java"

# interfaces
.implements Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/autocheck/AutoResidentService;->initNeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/autocheck/AutoResidentService;


# direct methods
.method constructor <init>(Lcom/market2345/autocheck/AutoResidentService;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/market2345/autocheck/AutoResidentService$3;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;I)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "statusCode"    # I

    .prologue
    .line 211
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 201
    iget-object v2, p0, Lcom/market2345/autocheck/AutoResidentService$3;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    const-string v3, "lastcallupdatetime"

    # invokes: Lcom/market2345/autocheck/AutoResidentService;->saveTimes(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/market2345/autocheck/AutoResidentService;->access$000(Lcom/market2345/autocheck/AutoResidentService;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/market2345/autocheck/AutoResidentService$3;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-static {v2}, Lcom/market2345/datacenter/DataCenterObserver;->get(Landroid/content/Context;)Lcom/market2345/datacenter/DataCenterObserver;

    move-result-object v1

    .line 203
    .local v1, "session":Lcom/market2345/datacenter/DataCenterObserver;
    invoke-virtual {v1}, Lcom/market2345/datacenter/DataCenterObserver;->getUpgradeNumber()I

    move-result v0

    .line 204
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 205
    iget-object v2, p0, Lcom/market2345/autocheck/AutoResidentService$3;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    # getter for: Lcom/market2345/autocheck/AutoResidentService;->notifiManger:Lcom/market2345/notificationmanage/NotificationManager2345;
    invoke-static {v2}, Lcom/market2345/autocheck/AutoResidentService;->access$100(Lcom/market2345/autocheck/AutoResidentService;)Lcom/market2345/notificationmanage/NotificationManager2345;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/market2345/notificationmanage/NotificationManager2345;->notifyAppsUpdate(I)V

    .line 207
    :cond_0
    return-void
.end method
