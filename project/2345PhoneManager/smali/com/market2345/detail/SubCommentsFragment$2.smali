.class Lcom/market2345/detail/SubCommentsFragment$2;
.super Ljava/lang/Object;
.source "SubCommentsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/detail/SubCommentsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/detail/SubCommentsFragment;


# direct methods
.method constructor <init>(Lcom/market2345/detail/SubCommentsFragment;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/market2345/detail/SubCommentsFragment$2;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 204
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$2;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-virtual {v0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$2;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    invoke-virtual {v0}, Lcom/market2345/detail/SubCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b00ed

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$2;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    iget-object v1, p0, Lcom/market2345/detail/SubCommentsFragment$2;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # getter for: Lcom/market2345/detail/SubCommentsFragment;->currentType:I
    invoke-static {v1}, Lcom/market2345/detail/SubCommentsFragment;->access$000(Lcom/market2345/detail/SubCommentsFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/market2345/detail/SubCommentsFragment$2;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    # invokes: Lcom/market2345/detail/SubCommentsFragment;->getCurrentCommentListDataNew()Lcom/market2345/detail/model/CommentListDataNew;
    invoke-static {v2}, Lcom/market2345/detail/SubCommentsFragment;->access$100(Lcom/market2345/detail/SubCommentsFragment;)Lcom/market2345/detail/model/CommentListDataNew;

    move-result-object v2

    iget v2, v2, Lcom/market2345/detail/model/CommentListDataNew;->currentPage:I

    add-int/lit8 v2, v2, 0x1

    # invokes: Lcom/market2345/detail/SubCommentsFragment;->loadData(II)V
    invoke-static {v0, v1, v2}, Lcom/market2345/detail/SubCommentsFragment;->access$200(Lcom/market2345/detail/SubCommentsFragment;II)V

    .line 210
    iget-object v0, p0, Lcom/market2345/detail/SubCommentsFragment$2;->this$0:Lcom/market2345/detail/SubCommentsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/market2345/detail/SubCommentsFragment;->changeVisiable(IIII)V

    goto :goto_0
.end method
