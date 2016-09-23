.class Lcom/market2345/search/SearchDialogFragment$6;
.super Ljava/lang/Object;
.source "SearchDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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
    .line 775
    iput-object p1, p0, Lcom/market2345/search/SearchDialogFragment$6;->this$0:Lcom/market2345/search/SearchDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 778
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/market2345/search/SearchDialogFragment$6;->this$0:Lcom/market2345/search/SearchDialogFragment;

    const-string v2, "\u662f\u5426\u6e05\u9664\u8be5\u6761\u5386\u53f2\u8bb0\u5f55?"

    iget-object v0, p0, Lcom/market2345/search/SearchDialogFragment$6;->this$0:Lcom/market2345/search/SearchDialogFragment;

    # getter for: Lcom/market2345/search/SearchDialogFragment;->histories:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/market2345/search/SearchDialogFragment;->access$1400(Lcom/market2345/search/SearchDialogFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/market2345/search/SearchDialogFragment;->clearHistoryDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/market2345/search/SearchDialogFragment;->access$1500(Lcom/market2345/search/SearchDialogFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    const/4 v0, 0x1

    return v0
.end method
