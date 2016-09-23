.class final Lcom/market2345/lm/activity/AppInstallReportUtil$1;
.super Ljava/lang/Object;
.source "AppInstallReportUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/lm/activity/AppInstallReportUtil;->reportLianMengAppInstall(Landroid/content/Context;[Lcom/market2345/lm/activity/ReportInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$infos:[Lcom/market2345/lm/activity/ReportInfo;


# direct methods
.method constructor <init>([Lcom/market2345/lm/activity/ReportInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$1;->val$infos:[Lcom/market2345/lm/activity/ReportInfo;

    iput-object p2, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 89
    iget-object v0, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$1;->val$infos:[Lcom/market2345/lm/activity/ReportInfo;

    .local v0, "arr$":[Lcom/market2345/lm/activity/ReportInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 90
    .local v2, "info":Lcom/market2345/lm/activity/ReportInfo;
    iget-object v4, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$1;->val$context:Landroid/content/Context;

    # invokes: Lcom/market2345/lm/activity/AppInstallReportUtil;->sendData(Lcom/market2345/lm/activity/ReportInfo;Landroid/content/Context;)V
    invoke-static {v2, v4}, Lcom/market2345/lm/activity/AppInstallReportUtil;->access$000(Lcom/market2345/lm/activity/ReportInfo;Landroid/content/Context;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "info":Lcom/market2345/lm/activity/ReportInfo;
    :cond_0
    return-void
.end method
