.class Lcom/market2345/topic/TopicListFragment$1;
.super Ljava/lang/Object;
.source "TopicListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/topic/TopicListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/topic/TopicListFragment;


# direct methods
.method constructor <init>(Lcom/market2345/topic/TopicListFragment;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/market2345/topic/TopicListFragment$1;->this$0:Lcom/market2345/topic/TopicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 147
    invoke-static {}, Lcom/market2345/base/C;->get()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/market2345/common/util/Utils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment$1;->this$0:Lcom/market2345/topic/TopicListFragment;

    invoke-virtual {v0}, Lcom/market2345/topic/TopicListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b00ed

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 154
    :goto_0
    return-void

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment$1;->this$0:Lcom/market2345/topic/TopicListFragment;

    # invokes: Lcom/market2345/topic/TopicListFragment;->loadData()V
    invoke-static {v0}, Lcom/market2345/topic/TopicListFragment;->access$000(Lcom/market2345/topic/TopicListFragment;)V

    .line 153
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment$1;->this$0:Lcom/market2345/topic/TopicListFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/market2345/topic/TopicListFragment;->changeVisiable(IIII)V

    goto :goto_0
.end method
