.class final Lcom/market2345/common/util/ApplicationUtils$2;
.super Ljava/lang/Thread;
.source "ApplicationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/common/util/ApplicationUtils;->showIme(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/market2345/common/util/ApplicationUtils$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1056
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    :goto_0
    iget-object v1, p0, Lcom/market2345/common/util/ApplicationUtils$2;->val$activity:Landroid/app/Activity;

    new-instance v2, Lcom/market2345/common/util/ApplicationUtils$2$1;

    invoke-direct {v2, p0}, Lcom/market2345/common/util/ApplicationUtils$2$1;-><init>(Lcom/market2345/common/util/ApplicationUtils$2;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1072
    return-void

    .line 1058
    :catch_0
    move-exception v0

    .line 1060
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
