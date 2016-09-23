.class Lcom/market2345/dumpclean/DeleteHelp$2;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "DeleteHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/DeleteHelp;->cleanSystemCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/DeleteHelp;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/DeleteHelp;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/market2345/dumpclean/DeleteHelp$2;->this$0:Lcom/market2345/dumpclean/DeleteHelp;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    return-void
.end method
