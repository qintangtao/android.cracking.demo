.class Lcom/market2345/search/SearchDialogFragment$13;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/search/SearchDialogFragment;
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
    .line 1020
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$13;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1024
    invoke-static {}, Lcom/market2345/MarketApplication;->getInstance()Lcom/market2345/MarketApplication;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$13;->this$0:Lcom/market2345/search/SearchDialogFragment;

    iget-object v4, p0, Lcom/market2345/search/SearchDialogFragment$13;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mCurrentSearchWord:Ljava/lang/String;
    invoke-static {v4}, Lcom/market2345/search/SearchDialogFragment;->access$2300(Lcom/market2345/search/SearchDialogFragment;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    invoke-static {v2, v3, v4, v5, v6}, Lcom/market2345/http/MarketAPI;->searchResultClick(Landroid/content/Context;Lcom/market2345/http/ApiAsyncTask$ApiRequestListener;Ljava/lang/String;ILandroid/os/Handler;)V

    .line 1026
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/applist/AppListAdapter$ViewHolder;

    .line 1027
    .local v0, "holder":Lcom/market2345/applist/AppListAdapter$ViewHolder;
    iget v1, v0, Lcom/market2345/applist/AppListAdapter$ViewHolder;->position:I

    .line 1028
    .local v1, "posi":I
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$13;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$2400(Lcom/market2345/search/SearchDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1029
    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$13;->this$0:Lcom/market2345/search/SearchDialogFragment;

    new-instance v4, Landroid/content/Intent;

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$13;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v2}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v5, Lcom/market2345/detail/DetailActivity;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v2, Lcom/market2345/model/App;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$13;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$2400(Lcom/market2345/search/SearchDialogFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "openDetailType"

    const-string v5, "searchFragment"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "bFromDesk"

    iget-object v5, p0, Lcom/market2345/search/SearchDialogFragment$13;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z
    invoke-static {v5}, Lcom/market2345/search/SearchDialogFragment;->access$1900(Lcom/market2345/search/SearchDialogFragment;)Z

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/market2345/search/SearchDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 1031
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$13;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$1900(Lcom/market2345/search/SearchDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1033
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$13;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v2}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Search_Out_Click"

    invoke-static {v2, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 1040
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$13;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v2}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Search_In_Click"

    invoke-static {v2, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
