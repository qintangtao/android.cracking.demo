.class Lcom/market2345/lm/activity/FastinstallActivity$6;
.super Ljava/lang/Thread;
.source "FastinstallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/lm/activity/FastinstallActivity;->checkStatisticInstalled()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/lm/activity/FastinstallActivity;


# direct methods
.method constructor <init>(Lcom/market2345/lm/activity/FastinstallActivity;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/market2345/lm/activity/FastinstallActivity$6;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 420
    new-instance v0, Lcom/market2345/lm/activity/ReportInfo;

    invoke-direct {v0}, Lcom/market2345/lm/activity/ReportInfo;-><init>()V

    .line 421
    .local v0, "rinfo":Lcom/market2345/lm/activity/ReportInfo;
    const-string v1, "com.service.usbhelper"

    iput-object v1, v0, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    .line 422
    iput-boolean v3, v0, Lcom/market2345/lm/activity/ReportInfo;->installed:Z

    .line 423
    iget-object v1, p0, Lcom/market2345/lm/activity/FastinstallActivity$6;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/market2345/lm/activity/ReportInfo;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/market2345/lm/activity/AppInstallReportUtil;->reportLianMengAppInstall(Landroid/content/Context;[Lcom/market2345/lm/activity/ReportInfo;)V

    .line 424
    return-void
.end method
