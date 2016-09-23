.class final Lcom/market2345/lm/activity/AppInstallReportUtil$3;
.super Ljava/lang/Object;
.source "AppInstallReportUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/lm/activity/AppInstallReportUtil;->reportLMUpdate(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$versionCode:I

.field final synthetic val$versionName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 482
    iput-object p1, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$3;->val$packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$3;->val$versionName:Ljava/lang/String;

    iput p4, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$3;->val$versionCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 485
    new-instance v3, Lcom/market2345/lm/activity/ReportInfo;

    invoke-direct {v3}, Lcom/market2345/lm/activity/ReportInfo;-><init>()V

    .line 486
    .local v3, "reportInfo":Lcom/market2345/lm/activity/ReportInfo;
    iget-object v4, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$3;->val$packageName:Ljava/lang/String;

    iput-object v4, v3, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    .line 488
    :try_start_0
    iget-object v4, v3, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 489
    iget-object v4, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$3;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 490
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v4, v3, Lcom/market2345/lm/activity/ReportInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 492
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v1}, Lcom/market2345/common/util/Utils;->isLmApk(Landroid/content/pm/PackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    iget-object v4, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$3;->val$packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$3;->val$versionName:Ljava/lang/String;

    iget v6, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$3;->val$versionCode:I

    iget-object v7, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$3;->val$context:Landroid/content/Context;

    # invokes: Lcom/market2345/lm/activity/AppInstallReportUtil;->sendUpdate(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    invoke-static {v4, v5, v6, v7}, Lcom/market2345/lm/activity/AppInstallReportUtil;->access$300(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
