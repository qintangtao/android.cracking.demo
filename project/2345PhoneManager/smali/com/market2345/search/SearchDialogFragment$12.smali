.class Lcom/market2345/search/SearchDialogFragment$12;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/search/SearchDialogFragment;->addFooterView()V
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
    .line 943
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$12;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 946
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$12;->this$0:Lcom/market2345/search/SearchDialogFragment;

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$12;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->search_progressBar:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$2000(Lcom/market2345/search/SearchDialogFragment;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/search/SearchDialogFragment$12;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->footerViews:[Landroid/view/View;
    invoke-static {v2}, Lcom/market2345/search/SearchDialogFragment;->access$2100(Lcom/market2345/search/SearchDialogFragment;)[Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/market2345/search/SearchDialogFragment;->showSingleView(Landroid/view/View;[Landroid/view/View;)V
    invoke-static {v0, v1, v2}, Lcom/market2345/search/SearchDialogFragment;->access$500(Lcom/market2345/search/SearchDialogFragment;Landroid/view/View;[Landroid/view/View;)V

    .line 947
    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$12;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mSearchDelegate:Lcom/market2345/search/SearchDelegate;
    invoke-static {v0}, Lcom/market2345/search/SearchDialogFragment;->access$2200(Lcom/market2345/search/SearchDialogFragment;)Lcom/market2345/search/SearchDelegate;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$12;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->mSearchWord:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/search/SearchDialogFragment;->access$1200(Lcom/market2345/search/SearchDialogFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/market2345/search/SearchDelegate;->search(Ljava/lang/String;)V

    .line 948
    return-void
.end method
