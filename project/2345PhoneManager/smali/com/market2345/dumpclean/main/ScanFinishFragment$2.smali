.class Lcom/market2345/dumpclean/main/ScanFinishFragment$2;
.super Ljava/lang/Object;
.source "ScanFinishFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/main/ScanFinishFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/main/ScanFinishFragment;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/main/ScanFinishFragment;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment$2;->this$0:Lcom/market2345/dumpclean/main/ScanFinishFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment$2;->this$0:Lcom/market2345/dumpclean/main/ScanFinishFragment;

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/ScanFinishFragment;->startAnim()V

    .line 164
    return-void
.end method
