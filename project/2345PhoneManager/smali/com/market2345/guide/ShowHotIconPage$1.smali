.class Lcom/market2345/guide/ShowHotIconPage$1;
.super Ljava/lang/Object;
.source "ShowHotIconPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/guide/ShowHotIconPage;->setHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/guide/ShowHotIconPage;


# direct methods
.method constructor <init>(Lcom/market2345/guide/ShowHotIconPage;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/market2345/guide/ShowHotIconPage$1;->this$0:Lcom/market2345/guide/ShowHotIconPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/market2345/guide/ShowHotIconPage$1;->this$0:Lcom/market2345/guide/ShowHotIconPage;

    # getter for: Lcom/market2345/guide/ShowHotIconPage;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/market2345/guide/ShowHotIconPage;->access$000(Lcom/market2345/guide/ShowHotIconPage;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 104
    return-void
.end method
