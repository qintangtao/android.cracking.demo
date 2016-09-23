.class Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$1;
.super Ljava/lang/Object;
.source "FloatingGroupExpandableListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$1;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$1;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$000(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$1;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$000(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$1;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupEnabled:Z
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$100(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$1;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$200(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$1;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$200(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->getGroupCount()I

    move-result v0

    if-lez v0, :cond_1

    if-lez p3, :cond_1

    .line 112
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$1;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # invokes: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->createFloatingGroupView(I)V
    invoke-static {v0, p2}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$300(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;I)V

    .line 114
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$1;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$000(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$1;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$000(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 103
    :cond_0
    return-void
.end method
