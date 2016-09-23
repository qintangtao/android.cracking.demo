.class Lcom/market2345/autocheck/AutoResidentService$1;
.super Ljava/lang/Thread;
.source "AutoResidentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/autocheck/AutoResidentService;->onCreate()V
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
    .line 106
    iput-object p1, p0, Lcom/market2345/autocheck/AutoResidentService$1;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/market2345/autocheck/AutoResidentService$1;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-virtual {v1}, Lcom/market2345/autocheck/AutoResidentService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/autocheck/AutoResidentService$1;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-virtual {v2}, Lcom/market2345/autocheck/AutoResidentService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/autocheck/AutoResidentService$1;->this$0:Lcom/market2345/autocheck/AutoResidentService;

    invoke-static {v1, v2}, Lcom/market2345/common/util/Utils;->releaseStatisticsApk(Landroid/content/pm/PackageInfo;Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
