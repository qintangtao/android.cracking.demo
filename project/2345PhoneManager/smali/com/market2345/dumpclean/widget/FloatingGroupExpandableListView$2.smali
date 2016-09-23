.class Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;
.super Ljava/lang/Object;
.source "FloatingGroupExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 117
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 121
    const/4 v6, 0x1

    .line 123
    .local v6, "allowSelection":Z
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$400(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnGroupClickListener:Landroid/widget/ExpandableListView$OnGroupClickListener;
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$400(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/widget/ExpandableListView$OnGroupClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    iget-object v2, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;
    invoke-static {v2}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$500(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I
    invoke-static {v3}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$600(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)I

    move-result v3

    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;
    invoke-static {v4}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$200(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I
    invoke-static {v5}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$600(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Landroid/widget/ExpandableListView$OnGroupClickListener;->onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v6, 0x1

    .line 127
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 128
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$200(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I
    invoke-static {v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$600(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I
    invoke-static {v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$600(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->collapseGroup(I)Z

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I
    invoke-static {v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$600(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->setSelectedGroup(I)V

    .line 136
    :cond_1
    return-void

    .line 124
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 131
    :cond_3
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$2;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I
    invoke-static {v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$600(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->expandGroup(I)Z

    goto :goto_1
.end method
