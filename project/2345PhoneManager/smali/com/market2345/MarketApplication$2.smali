.class Lcom/market2345/MarketApplication$2;
.super Ljava/lang/Object;
.source "MarketApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/MarketApplication;->setJunkDataList(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/MarketApplication;


# direct methods
.method constructor <init>(Lcom/market2345/MarketApplication;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/market2345/MarketApplication$2;->this$0:Lcom/market2345/MarketApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/market2345/MarketApplication$2;->this$0:Lcom/market2345/MarketApplication;

    # invokes: Lcom/market2345/MarketApplication;->cleanData()V
    invoke-static {v0}, Lcom/market2345/MarketApplication;->access$400(Lcom/market2345/MarketApplication;)V

    .line 228
    return-void
.end method
