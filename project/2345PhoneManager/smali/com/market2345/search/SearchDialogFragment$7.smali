.class Lcom/market2345/search/SearchDialogFragment$7;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchDialogFragment;->showSearchHistory(Z)V
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
    .line 782
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$7;->this$0:Lcom/market2345/search/SearchDialogFragment;

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
    .line 787
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$7;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-virtual {v2}, Lcom/market2345/search/SearchDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Search_History"

    invoke-static {v2, v3}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 788
    const/4 v1, 0x0

    .line 790
    .local v1, "word":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$7;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->searchHistoryAdapter:Lcom/market2345/search/SearchHistoryAdapter;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$1600(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/search/SearchHistoryAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/market2345/search/SearchHistoryAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 791
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$7;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # setter for: Lcom/market2345/search/SearchDialogFragment;->mSearchWord:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/market2345/search/SearchDialogFragment;->access$1202(Lcom/market2345/search/SearchDialogFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 792
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$7;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # invokes: Lcom/market2345/search/SearchDialogFragment;->startSearch(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/market2345/search/SearchDialogFragment;->access$1300(Lcom/market2345/search/SearchDialogFragment;Ljava/lang/String;)V

    .line 793
    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$7;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mSearchEditext:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$000(Lcom/market2345/search/SearchDialogFragment;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_0
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method
