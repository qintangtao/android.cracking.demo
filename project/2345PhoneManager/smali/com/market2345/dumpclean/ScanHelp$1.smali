.class Lcom/market2345/dumpclean/ScanHelp$1;
.super Ljava/lang/Thread;
.source "ScanHelp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ScanHelp;->startScan(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ScanHelp;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ScanHelp;Z)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/market2345/dumpclean/ScanHelp$1;->this$0:Lcom/market2345/dumpclean/ScanHelp;

    iput-boolean p2, p0, Lcom/market2345/dumpclean/ScanHelp$1;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 154
    :try_start_0
    iget-boolean v1, p0, Lcom/market2345/dumpclean/ScanHelp$1;->val$flag:Z

    if-eqz v1, :cond_1

    .line 155
    const-class v1, Lcom/market2345/dumpclean/main/SilverActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/ScanHelp$1;->this$0:Lcom/market2345/dumpclean/ScanHelp;

    # getter for: Lcom/market2345/dumpclean/ScanHelp;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/dumpclean/ScanHelp;->access$000(Lcom/market2345/dumpclean/ScanHelp;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/market2345/dumpclean/main/Util;->getCurrentTopActivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/market2345/dumpclean/ScanHelp$1;->this$0:Lcom/market2345/dumpclean/ScanHelp;

    # invokes: Lcom/market2345/dumpclean/ScanHelp;->scanSize()V
    invoke-static {v1}, Lcom/market2345/dumpclean/ScanHelp;->access$100(Lcom/market2345/dumpclean/ScanHelp;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/market2345/dumpclean/ScanHelp$1;->this$0:Lcom/market2345/dumpclean/ScanHelp;

    # invokes: Lcom/market2345/dumpclean/ScanHelp;->scanAll()V
    invoke-static {v1}, Lcom/market2345/dumpclean/ScanHelp;->access$200(Lcom/market2345/dumpclean/ScanHelp;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ScanHelp"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
