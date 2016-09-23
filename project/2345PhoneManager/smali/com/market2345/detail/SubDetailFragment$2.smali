.class Lcom/market2345/detail/SubDetailFragment$2;
.super Ljava/lang/Object;
.source "SubDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/detail/SubDetailFragment;->setExpandButtonDisplay(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/detail/SubDetailFragment;

.field final synthetic val$flag:Z


# direct methods
.method constructor <init>(Lcom/market2345/detail/SubDetailFragment;Z)V
    .locals 0

    .prologue
    .line 418
    iput-object p1, p0, Lcom/market2345/detail/SubDetailFragment$2;->this$0:Lcom/market2345/detail/SubDetailFragment;

    iput-boolean p2, p0, Lcom/market2345/detail/SubDetailFragment$2;->val$flag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment$2;->this$0:Lcom/market2345/detail/SubDetailFragment;

    # getter for: Lcom/market2345/detail/SubDetailFragment;->appdetail_summary:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/market2345/detail/SubDetailFragment;->access$100(Lcom/market2345/detail/SubDetailFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/market2345/detail/SubDetailFragment$2;->val$flag:Z

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment$2;->this$0:Lcom/market2345/detail/SubDetailFragment;

    # getter for: Lcom/market2345/detail/SubDetailFragment;->expandButton:Lcom/market2345/customview/ToggleText;
    invoke-static {v0}, Lcom/market2345/detail/SubDetailFragment;->access$200(Lcom/market2345/detail/SubDetailFragment;)Lcom/market2345/customview/ToggleText;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/market2345/customview/ToggleText;->setVisibility(I)V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/market2345/detail/SubDetailFragment$2;->this$0:Lcom/market2345/detail/SubDetailFragment;

    # getter for: Lcom/market2345/detail/SubDetailFragment;->expandButton:Lcom/market2345/customview/ToggleText;
    invoke-static {v0}, Lcom/market2345/detail/SubDetailFragment;->access$200(Lcom/market2345/detail/SubDetailFragment;)Lcom/market2345/customview/ToggleText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/customview/ToggleText;->setVisibility(I)V

    goto :goto_0
.end method
