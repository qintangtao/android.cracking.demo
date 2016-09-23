.class Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;
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
    name = "HotOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/search/SearchDialogFragment;


# direct methods
.method constructor <init>(Lcom/market2345/search/SearchDialogFragment;)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 711
    const v3, 0x7f090021

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 712
    .local v1, "softId":I
    const/4 v3, -0x1

    if-ne v3, v1, :cond_1

    .line 713
    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;->this$0:Lcom/market2345/search/SearchDialogFragment;

    const/4 v4, 0x1

    # invokes: Lcom/market2345/search/SearchDialogFragment;->showRecommendation(Z)V
    invoke-static {v3, v4}, Lcom/market2345/search/SearchDialogFragment;->access$1100(Lcom/market2345/search/SearchDialogFragment;Z)V

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    if-nez v1, :cond_2

    .line 715
    const v3, 0x7f090023

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 716
    .local v2, "title":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 717
    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # setter for: Lcom/market2345/search/SearchDialogFragment;->mSearchWord:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/market2345/search/SearchDialogFragment;->access$1202(Lcom/market2345/search/SearchDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 718
    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # invokes: Lcom/market2345/search/SearchDialogFragment;->startSearch(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/market2345/search/SearchDialogFragment;->access$1300(Lcom/market2345/search/SearchDialogFragment;Ljava/lang/String;)V

    .line 719
    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/market2345/search/SearchDialogFragment;->access$000(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 720
    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/market2345/search/SearchDialogFragment;->access$000(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 722
    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v3}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Search_Recommend"

    invoke-static {v3, v4}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 724
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    if-lez v1, :cond_0

    .line 725
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v3}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/market2345/detail/DetailActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 726
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "sid"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 727
    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v3, v0}, Lcom/market2345/search/SearchDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 729
    iget-object v3, p0, Lcom/market2345/search/SearchDialogFragment$HotOnClickListener;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v3}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Search_Recommend"

    invoke-static {v3, v4}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
