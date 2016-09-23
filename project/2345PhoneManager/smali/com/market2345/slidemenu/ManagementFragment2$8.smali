.class Lcom/market2345/slidemenu/ManagementFragment2$8;
.super Ljava/lang/Object;
.source "ManagementFragment2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/ManagementFragment2;->refreshUIProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/ManagementFragment2;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/ManagementFragment2;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lcom/market2345/slidemenu/ManagementFragment2$8;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/market2345/slidemenu/ManagementFragment2$8;->this$0:Lcom/market2345/slidemenu/ManagementFragment2;

    const/4 v1, 0x0

    # setter for: Lcom/market2345/slidemenu/ManagementFragment2;->isFromDesk:Z
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/ManagementFragment2;->access$2602(Lcom/market2345/slidemenu/ManagementFragment2;Z)Z

    .line 679
    return-void
.end method
