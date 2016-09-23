.class Lcom/market2345/guide/ShowViewPagerSlidingPage$1;
.super Ljava/lang/Object;
.source "ShowViewPagerSlidingPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/guide/ShowViewPagerSlidingPage;->setHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/guide/ShowViewPagerSlidingPage;


# direct methods
.method constructor <init>(Lcom/market2345/guide/ShowViewPagerSlidingPage;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/market2345/guide/ShowViewPagerSlidingPage$1;->this$0:Lcom/market2345/guide/ShowViewPagerSlidingPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/market2345/guide/ShowViewPagerSlidingPage$1;->this$0:Lcom/market2345/guide/ShowViewPagerSlidingPage;

    # getter for: Lcom/market2345/guide/ShowViewPagerSlidingPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/guide/ShowViewPagerSlidingPage;->access$000(Lcom/market2345/guide/ShowViewPagerSlidingPage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 109
    return-void
.end method
