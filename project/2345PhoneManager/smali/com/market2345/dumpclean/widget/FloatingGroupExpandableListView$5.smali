.class Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$5;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FloatingGroupExpandableListView.java"


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
    .line 163
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$5;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$5;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$500(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$5;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$500(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    new-instance v0, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$5;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;
    invoke-static {v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$500(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$5;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I
    invoke-static {v2}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$600(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)I

    move-result v2

    invoke-static {v2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$5;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mAdapter:Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;
    invoke-static {v4}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$200(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$5;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupPosition:I
    invoke-static {v5}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$600(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;->getGroupId(I)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Landroid/widget/ExpandableListView$ExpandableListContextMenuInfo;-><init>(Landroid/view/View;JJ)V

    .line 169
    .local v0, "contextMenuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    const-class v1, Landroid/widget/AbsListView;

    const-string v2, "mContextMenuInfo"

    iget-object v3, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$5;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    invoke-static {v1, v2, v3, v0}, Lcom/market2345/dumpclean/widget/ReflectionUtils;->setFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$5;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->showContextMenu()Z

    .line 172
    .end local v0    # "contextMenuInfo":Landroid/view/ContextMenu$ContextMenuInfo;
    :cond_0
    return-void
.end method
