.class Lcom/market2345/guide/ShowSlidingMenuButtonPage$2;
.super Ljava/lang/Object;
.source "ShowSlidingMenuButtonPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/guide/ShowSlidingMenuButtonPage;->setHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/guide/ShowSlidingMenuButtonPage;


# direct methods
.method constructor <init>(Lcom/market2345/guide/ShowSlidingMenuButtonPage;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage$2;->this$0:Lcom/market2345/guide/ShowSlidingMenuButtonPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/market2345/guide/ShowSlidingMenuButtonPage$2;->this$0:Lcom/market2345/guide/ShowSlidingMenuButtonPage;

    # getter for: Lcom/market2345/guide/ShowSlidingMenuButtonPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/guide/ShowSlidingMenuButtonPage;->access$000(Lcom/market2345/guide/ShowSlidingMenuButtonPage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 130
    return-void
.end method
