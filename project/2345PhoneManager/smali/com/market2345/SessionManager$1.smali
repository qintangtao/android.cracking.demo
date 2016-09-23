.class Lcom/market2345/SessionManager$1;
.super Ljava/lang/Thread;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/SessionManager;->writePreferenceSlowly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/SessionManager;


# direct methods
.method constructor <init>(Lcom/market2345/SessionManager;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/market2345/SessionManager$1;->this$0:Lcom/market2345/SessionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 250
    const-wide/16 v2, 0x2710

    :try_start_0
    invoke-static {v2, v3}, Lcom/market2345/SessionManager$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    iget-object v1, p0, Lcom/market2345/SessionManager$1;->this$0:Lcom/market2345/SessionManager;

    # invokes: Lcom/market2345/SessionManager;->writePreference()V
    invoke-static {v1}, Lcom/market2345/SessionManager;->access$000(Lcom/market2345/SessionManager;)V

    .line 258
    return-void

    .line 252
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
