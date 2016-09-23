.class Lcom/market2345/topic/TopicListFragment$3;
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
    .line 181
    iput-object p1, p0, Lcom/market2345/topic/TopicListFragment$3;->this$0:Lcom/market2345/topic/TopicListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment$3;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v0, v0, Lcom/market2345/topic/TopicListFragment;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment$3;->this$0:Lcom/market2345/topic/TopicListFragment;

    iget-object v0, v0, Lcom/market2345/topic/TopicListFragment;->mNoData:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/market2345/topic/TopicListFragment$3;->this$0:Lcom/market2345/topic/TopicListFragment;

    # invokes: Lcom/market2345/topic/TopicListFragment;->loadData()V
    invoke-static {v0}, Lcom/market2345/topic/TopicListFragment;->access$000(Lcom/market2345/topic/TopicListFragment;)V

    .line 188
    return-void
.end method
