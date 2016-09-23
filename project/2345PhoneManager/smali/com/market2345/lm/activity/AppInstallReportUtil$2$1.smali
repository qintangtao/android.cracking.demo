.class Lcom/market2345/lm/activity/AppInstallReportUtil$2$1;
.super Ljava/lang/Object;
.source "AppInstallReportUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/lm/activity/AppInstallReportUtil$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/lm/activity/AppInstallReportUtil$2;


# direct methods
.method constructor <init>(Lcom/market2345/lm/activity/AppInstallReportUtil$2;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$2$1;->this$0:Lcom/market2345/lm/activity/AppInstallReportUtil$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 104
    :try_start_0
    invoke-static {}, Lcom/market2345/lm/activity/AppInstallReportUtil;->sendUnReportedLog()V

    .line 105
    iget-object v1, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$2$1;->this$0:Lcom/market2345/lm/activity/AppInstallReportUtil$2;

    iget-object v1, v1, Lcom/market2345/lm/activity/AppInstallReportUtil$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/market2345/lm/activity/AppInstallReportUtil;->sendLMUpdateUnReportedLog(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/market2345/lm/activity/AppInstallReportUtil;->access$100(Landroid/content/Context;)V

    .line 106
    iget-object v1, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$2$1;->this$0:Lcom/market2345/lm/activity/AppInstallReportUtil$2;

    iget-object v1, v1, Lcom/market2345/lm/activity/AppInstallReportUtil$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/market2345/lm/activity/AppInstallReportUtil;->sendLMUnReportedLog(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/market2345/lm/activity/AppInstallReportUtil;->access$200(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
