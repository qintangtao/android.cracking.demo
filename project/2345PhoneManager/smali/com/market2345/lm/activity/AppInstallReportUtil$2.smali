.class final Lcom/market2345/lm/activity/AppInstallReportUtil$2;
.super Ljava/lang/Object;
.source "AppInstallReportUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/lm/activity/AppInstallReportUtil;->reportUnReportedLog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/market2345/lm/activity/AppInstallReportUtil$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/market2345/lm/activity/AppInstallReportUtil$2$1;

    invoke-direct {v1, p0}, Lcom/market2345/lm/activity/AppInstallReportUtil$2$1;-><init>(Lcom/market2345/lm/activity/AppInstallReportUtil$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 113
    return-void
.end method
