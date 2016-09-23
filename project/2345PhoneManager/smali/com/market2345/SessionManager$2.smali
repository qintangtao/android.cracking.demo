.class Lcom/market2345/SessionManager$2;
.super Ljava/lang/Thread;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/SessionManager;->writePreferenceQuickly()V
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
    .line 274
    iput-object p1, p0, Lcom/market2345/SessionManager$2;->this$0:Lcom/market2345/SessionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/market2345/SessionManager$2;->this$0:Lcom/market2345/SessionManager;

    # invokes: Lcom/market2345/SessionManager;->writePreference()V
    invoke-static {v0}, Lcom/market2345/SessionManager;->access$000(Lcom/market2345/SessionManager;)V

    .line 280
    return-void
.end method
