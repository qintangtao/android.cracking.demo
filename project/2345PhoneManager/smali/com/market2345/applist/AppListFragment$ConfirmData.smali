.class Lcom/market2345/applist/AppListFragment$ConfirmData;
.super Ljava/lang/Object;
.source "AppListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/applist/AppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfirmData"
.end annotation


# instance fields
.field public dataKey:Ljava/lang/String;

.field public ignoreInstalledApp:Z

.field public showRankTag:Z

.field public sort:I

.field final synthetic this$0:Lcom/market2345/applist/AppListFragment;

.field public timeKey:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/applist/AppListFragment;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 493
    iput-object p1, p0, Lcom/market2345/applist/AppListFragment$ConfirmData;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 499
    iput-boolean v0, p0, Lcom/market2345/applist/AppListFragment$ConfirmData;->ignoreInstalledApp:Z

    .line 501
    iput-boolean v0, p0, Lcom/market2345/applist/AppListFragment$ConfirmData;->showRankTag:Z

    return-void
.end method
