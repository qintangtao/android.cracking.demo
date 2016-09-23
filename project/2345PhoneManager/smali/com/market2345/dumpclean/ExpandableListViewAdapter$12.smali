.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getCacheOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildCache;II)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

.field final synthetic val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

.field final synthetic val$childPosition:I

.field final synthetic val$groupPosttion:I


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;ILcom/market2345/dumpclean/mode/JunkChildCache;I)V
    .locals 0

    .prologue
    .line 815
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->val$groupPosttion:I

    iput-object p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    iput p4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->val$childPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f0902c2

    const/4 v4, 0x0

    .line 818
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->val$groupPosttion:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v0

    .line 819
    .local v0, "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-boolean v2, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;->isExpanded:Z

    if-eqz v2, :cond_0

    .line 820
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 821
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    iput-boolean v4, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;->isExpanded:Z

    .line 822
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->val$groupPosttion:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->val$childPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v1, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 823
    .local v1, "elementsToDel":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 832
    :goto_0
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    invoke-virtual {v2, v4}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 833
    return-void

    .line 826
    .end local v1    # "elementsToDel":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    :cond_0
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 827
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;->isExpanded:Z

    .line 828
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->val$groupPosttion:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->val$childPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v1, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 829
    .restart local v1    # "elementsToDel":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    iget v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$12;->val$childPosition:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0
.end method
