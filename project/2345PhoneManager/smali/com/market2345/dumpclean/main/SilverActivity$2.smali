.class Lcom/market2345/dumpclean/main/SilverActivity$2;
.super Ljava/lang/Object;
.source "SilverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/main/SilverActivity;->scanning(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/main/SilverActivity;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/main/SilverActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 236
    iput-object p1, p0, Lcom/market2345/dumpclean/main/SilverActivity$2;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    iput-object p2, p0, Lcom/market2345/dumpclean/main/SilverActivity$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity$2;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # getter for: Lcom/market2345/dumpclean/main/SilverActivity;->scanningF:Lcom/market2345/dumpclean/main/ScanningFragment;
    invoke-static {v0}, Lcom/market2345/dumpclean/main/SilverActivity;->access$200(Lcom/market2345/dumpclean/main/SilverActivity;)Lcom/market2345/dumpclean/main/ScanningFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/dumpclean/main/SilverActivity$2;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/main/ScanningFragment;->scanning(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/market2345/dumpclean/main/SilverActivity$2;->this$0:Lcom/market2345/dumpclean/main/SilverActivity;

    # invokes: Lcom/market2345/dumpclean/main/SilverActivity;->setScanSize()V
    invoke-static {v0}, Lcom/market2345/dumpclean/main/SilverActivity;->access$300(Lcom/market2345/dumpclean/main/SilverActivity;)V

    .line 241
    return-void
.end method
