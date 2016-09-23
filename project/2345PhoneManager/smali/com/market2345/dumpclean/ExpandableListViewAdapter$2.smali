.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getCheckBoxOnClickListener(Lcom/market2345/dumpclean/mode/JunkChild;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

.field final synthetic val$childrenItem:Lcom/market2345/dumpclean/mode/JunkChild;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChild;I)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->val$childrenItem:Lcom/market2345/dumpclean/mode/JunkChild;

    iput p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 386
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->val$childrenItem:Lcom/market2345/dumpclean/mode/JunkChild;

    invoke-virtual {v3}, Lcom/market2345/dumpclean/mode/JunkChild;->getSelect()I

    move-result v3

    if-ne v3, v4, :cond_2

    .line 388
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v3}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->val$groupPosition:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v3, v5}, Lcom/market2345/dumpclean/mode/JunkGroup;->setSelect(I)V

    .line 389
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->val$childrenItem:Lcom/market2345/dumpclean/mode/JunkChild;

    instance-of v3, v3, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v3, :cond_0

    .line 390
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->val$childrenItem:Lcom/market2345/dumpclean/mode/JunkChild;

    invoke-virtual {v3, v5}, Lcom/market2345/dumpclean/mode/JunkChild;->setSelect(I)V

    .line 392
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->val$childrenItem:Lcom/market2345/dumpclean/mode/JunkChild;

    check-cast v3, Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v1, v3, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 393
    .local v1, "childOfChilds":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 394
    .local v0, "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    invoke-virtual {v0, v5}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->setSelect(I)V

    goto :goto_0

    .line 398
    .end local v0    # "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .end local v1    # "childOfChilds":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->val$childrenItem:Lcom/market2345/dumpclean/mode/JunkChild;

    invoke-virtual {v3, v5}, Lcom/market2345/dumpclean/mode/JunkChild;->setSelect(I)V

    .line 414
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    invoke-virtual {v3, v5}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 415
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # invokes: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->handleSendUpdateBtnNotifity()V
    invoke-static {v3}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$300(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)V

    .line 417
    return-void

    .line 403
    :cond_2
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->val$childrenItem:Lcom/market2345/dumpclean/mode/JunkChild;

    instance-of v3, v3, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v3, :cond_3

    .line 405
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->val$childrenItem:Lcom/market2345/dumpclean/mode/JunkChild;

    invoke-virtual {v3, v4}, Lcom/market2345/dumpclean/mode/JunkChild;->setSelect(I)V

    .line 406
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->val$childrenItem:Lcom/market2345/dumpclean/mode/JunkChild;

    check-cast v3, Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v1, v3, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    .line 407
    .restart local v1    # "childOfChilds":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    .line 408
    .restart local v0    # "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    invoke-virtual {v0, v4}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->setSelect(I)V

    goto :goto_2

    .line 411
    .end local v0    # "childOfChild":Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;
    .end local v1    # "childOfChilds":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$2;->val$childrenItem:Lcom/market2345/dumpclean/mode/JunkChild;

    invoke-virtual {v3, v4}, Lcom/market2345/dumpclean/mode/JunkChild;->setSelect(I)V

    goto :goto_1
.end method
