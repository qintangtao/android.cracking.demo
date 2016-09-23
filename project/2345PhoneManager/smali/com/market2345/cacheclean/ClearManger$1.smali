.class Lcom/market2345/cacheclean/ClearManger$1;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ClearManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/cacheclean/ClearManger;->CleanAllCache(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/cacheclean/ClearManger;

.field final synthetic val$delay:Z

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/market2345/cacheclean/ClearManger;ZLandroid/content/pm/PackageManager;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/market2345/cacheclean/ClearManger$1;->this$0:Lcom/market2345/cacheclean/ClearManger;

    iput-boolean p2, p0, Lcom/market2345/cacheclean/ClearManger$1;->val$delay:Z

    iput-object p3, p0, Lcom/market2345/cacheclean/ClearManger$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/market2345/cacheclean/ClearManger$1;->val$delay:Z

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/market2345/cacheclean/ClearManger$1;->this$0:Lcom/market2345/cacheclean/ClearManger;

    iget-object v1, p0, Lcom/market2345/cacheclean/ClearManger$1;->val$pm:Landroid/content/pm/PackageManager;

    # invokes: Lcom/market2345/cacheclean/ClearManger;->delaySetNotify(Landroid/content/pm/PackageManager;)V
    invoke-static {v0, v1}, Lcom/market2345/cacheclean/ClearManger;->access$000(Lcom/market2345/cacheclean/ClearManger;Landroid/content/pm/PackageManager;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/market2345/cacheclean/ClearManger$1;->this$0:Lcom/market2345/cacheclean/ClearManger;

    iget-object v1, p0, Lcom/market2345/cacheclean/ClearManger$1;->val$pm:Landroid/content/pm/PackageManager;

    # invokes: Lcom/market2345/cacheclean/ClearManger;->notifyEnd(Landroid/content/pm/PackageManager;)V
    invoke-static {v0, v1}, Lcom/market2345/cacheclean/ClearManger;->access$100(Lcom/market2345/cacheclean/ClearManger;Landroid/content/pm/PackageManager;)V

    goto :goto_0
.end method
