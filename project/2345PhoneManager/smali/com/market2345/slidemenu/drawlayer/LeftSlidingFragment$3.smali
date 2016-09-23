.class Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$3;
.super Ljava/lang/Object;
.source "LeftSlidingFragment.java"

# interfaces
.implements Lcom/market2345/httpnew/HttpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;->getUnionApps()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment$3;->this$0:Lcom/market2345/slidemenu/drawlayer/LeftSlidingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(ILcom/market2345/httpnew/ResponseCluster;)V
    .locals 1
    .param p1, "responseCode"    # I
    .param p2, "response"    # Lcom/market2345/httpnew/ResponseCluster;

    .prologue
    .line 383
    move-object v0, p2

    check-cast v0, Lcom/market2345/lm/bean/UnionDownloadApps;

    .line 385
    .local v0, "apps":Lcom/market2345/lm/bean/UnionDownloadApps;
    return-void
.end method
