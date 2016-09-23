.class Lcom/market2345/lm/activity/FastinstallActivity$4;
.super Ljava/lang/Object;
.source "FastinstallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/lm/activity/FastinstallActivity;->installAll()V
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
    .line 355
    iput-object p1, p0, Lcom/market2345/lm/activity/FastinstallActivity$4;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity$4;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # invokes: Lcom/market2345/lm/activity/FastinstallActivity;->isStatisticApkUnInstalled()Z
    invoke-static {v0}, Lcom/market2345/lm/activity/FastinstallActivity;->access$1300(Lcom/market2345/lm/activity/FastinstallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/market2345/lm/activity/FastinstallActivity$4;->this$0:Lcom/market2345/lm/activity/FastinstallActivity;

    # invokes: Lcom/market2345/lm/activity/FastinstallActivity;->installStatisticApk()V
    invoke-static {v0}, Lcom/market2345/lm/activity/FastinstallActivity;->access$1400(Lcom/market2345/lm/activity/FastinstallActivity;)V

    .line 361
    :cond_0
    return-void
.end method
