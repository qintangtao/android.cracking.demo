.class Lcom/market2345/search/SearchDialogFragment$11;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchDialogFragment;->showSuggestion(Ljava/lang/String;Ljava/util/ArrayList;)V
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
    .line 873
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$11;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 878
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$11;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->bFromDesk:Z
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$1900(Lcom/market2345/search/SearchDialogFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 879
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$11;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v2}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Search_Out_Association"

    invoke-static {v2, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 883
    :goto_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 884
    .local v0, "associate":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 886
    :try_start_0
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$11;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # invokes: Lcom/market2345/search/SearchDialogFragment;->searchEvent()V
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$100(Lcom/market2345/search/SearchDialogFragment;)V

    .line 887
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$11;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # invokes: Lcom/market2345/search/SearchDialogFragment;->startSearch(Ljava/lang/String;)V
    invoke-static {v2, v0}, Lcom/market2345/search/SearchDialogFragment;->access$1300(Lcom/market2345/search/SearchDialogFragment;Ljava/lang/String;)V

    .line 888
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$11;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$000(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 889
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$11;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$000(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :cond_0
    :goto_1
    return-void

    .line 881
    .end local v0    # "associate":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$11;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v2}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Search_In_Association"

    invoke-static {v2, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 890
    .restart local v0    # "associate":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 891
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
