.class Lcom/market2345/search/SearchDialogFragment$10;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchDialogFragment;->clearHistoryDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/search/SearchDialogFragment;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$myDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/search/SearchDialogFragment;Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 823
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$10;->this$0:Lcom/market2345/search/SearchDialogFragment;

    iput-object p2, p0, Lcom/market2345/search/SearchDialogFragment$10;->val$myDialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/market2345/search/SearchDialogFragment$10;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v3, 0x7f090351

    const/4 v2, 0x4

    .line 826
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$10;->val$myDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 827
    new-instance v0, Lcom/market2345/search/SearchHistoryManager;

    invoke-direct {v0}, Lcom/market2345/search/SearchHistoryManager;-><init>()V

    .line 828
    .local v0, "searchHistoryManager":Lcom/market2345/search/SearchHistoryManager;
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$10;->val$key:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 829
    invoke-virtual {v0}, Lcom/market2345/search/SearchHistoryManager;->deleteAll()V

    .line 830
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$10;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$300(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 831
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$10;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # invokes: Lcom/market2345/search/SearchDialogFragment;->resumeRecommendation()V
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$1700(Lcom/market2345/search/SearchDialogFragment;)V

    .line 839
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$10;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v0}, Lcom/market2345/search/SearchHistoryManager;->loadAll()Ljava/util/ArrayList;

    move-result-object v2

    # setter for: Lcom/market2345/search/SearchDialogFragment;->histories:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/market2345/search/SearchDialogFragment;->access$1402(Lcom/market2345/search/SearchDialogFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 840
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$10;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->searchHistoryAdapter:Lcom/market2345/search/SearchHistoryAdapter;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$1600(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/search/SearchHistoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/search/SearchHistoryAdapter;->getHistories()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 841
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$10;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->searchHistoryAdapter:Lcom/market2345/search/SearchHistoryAdapter;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$1600(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/search/SearchHistoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/search/SearchHistoryAdapter;->getHistories()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$10;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->histories:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$1400(Lcom/market2345/search/SearchDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 842
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$10;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->searchHistoryAdapter:Lcom/market2345/search/SearchHistoryAdapter;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$1600(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/search/SearchHistoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/market2345/search/SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 843
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$10;->this$0:Lcom/market2345/search/SearchDialogFragment;

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$10;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->searchHistoryListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$1800(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/market2345/search/SearchDialogFragment;->setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V

    .line 844
    return-void

    .line 833
    :cond_1
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$10;->val$key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/search/SearchHistoryManager;->delete(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0}, Lcom/market2345/search/SearchHistoryManager;->loadAll()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 835
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$10;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mRecommendationRootView:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$300(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 836
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$10;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # invokes: Lcom/market2345/search/SearchDialogFragment;->resumeRecommendation()V
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$1700(Lcom/market2345/search/SearchDialogFragment;)V

    goto :goto_0
.end method
