.class Lcom/market2345/search/SearchDialogFragment$3;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchDialogFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/search/SearchDialogFragment;


# direct methods
.method constructor <init>(Lcom/market2345/search/SearchDialogFragment;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$3;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$3;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/market2345/search/SearchDialogFragment;->access$000(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 317
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$3;->this$0:Lcom/market2345/search/SearchDialogFragment;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$3;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$300(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$3;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mActionViews:[Landroid/view/View;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$400(Lcom/market2345/search/SearchDialogFragment;)[Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/market2345/search/SearchDialogFragment;->access$500(Lcom/market2345/search/SearchDialogFragment;Landroid/view/View;[Landroid/view/View;)V

    .line 318
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$3;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # invokes: Lcom/market2345/search/SearchDialogFragment;->hideRecommendation()V
    invoke-static {v0}, Lcom/market2345/search/SearchDialogFragment;->access$600(Lcom/market2345/search/SearchDialogFragment;)V

    .line 319
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$3;->this$0:Lcom/market2345/search/SearchDialogFragment;

    const/4 v1, 0x1

    # invokes: Lcom/market2345/search/SearchDialogFragment;->showSearchHistory(Z)V
    invoke-static {v0, v1}, Lcom/market2345/search/SearchDialogFragment;->access$700(Lcom/market2345/search/SearchDialogFragment;Z)V

    .line 320
    return-void
.end method
