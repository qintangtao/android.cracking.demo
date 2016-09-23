.class Lcom/market2345/dumpclean/main/SilverActivity$1;
.super Ljava/lang/Object;
.source "SilverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/main/SilverActivity;->initScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/main/SilverActivity;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/main/SilverActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/market2345/dumpclean/main/SilverActivity$1;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity$1;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    const-wide/16 v2, -0x1

    # setter for: Lcom/market2345/dumpclean/main/SilverActivity;->selectSize:J
    invoke-static {v0, v2, v3}, Lcom/market2345/dumpclean/main/SilverActivity;->access$002(Lcom/market2345/dumpclean/main/SilverActivity;J)J

    .line 146
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity$1;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # invokes: Lcom/market2345/dumpclean/main/SilverActivity;->startCleanOverActivity()V
    invoke-static {v0}, Lcom/market2345/dumpclean/main/SilverActivity;->access$100(Lcom/market2345/dumpclean/main/SilverActivity;)V

    .line 147
    return-void
.end method
