.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getChildOfChildCheckBoxOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;II)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

.field final synthetic val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;ILcom/market2345/dumpclean/mode/JunkChildCacheOfChild;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->val$groupPosition:I

    iput-object p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 348
    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v4}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v4

    iget v5, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->val$groupPosition:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v2

    .line 349
    .local v2, "childs":Ljava/util/List;, "Ljava/util/List<Lcom/market2345/dumpclean/mode/JunkChild;>;"
    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    invoke-virtual {v4}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->getSelect()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 351
    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    invoke-virtual {v4, v7}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->setSelect(I)V

    .line 352
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkChild;

    .line 353
    .local v1, "child":Lcom/market2345/dumpclean/mode/JunkChild;
    instance-of v4, v1, Lcom/market2345/dumpclean/mode/JunkChildCache;

    if-eqz v4, :cond_0

    move-object v0, v1

    .line 354
    check-cast v0, Lcom/market2345/dumpclean/mode/JunkChildCache;

    .line 355
    .local v0, "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    iget-object v4, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-object v5, v5, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 356
    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # invokes: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->checkSelect(Lcom/market2345/dumpclean/mode/JunkChildCache;)I
    invoke-static {v4, v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$100(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildCache;)I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/market2345/dumpclean/mode/JunkChild;->setSelect(I)V

    .line 376
    .end local v0    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    .end local v1    # "child":Lcom/market2345/dumpclean/mode/JunkChild;
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # invokes: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->handleSendUpdateBtnNotifity()V
    invoke-static {v4}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$300(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)V

    .line 377
    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    invoke-virtual {v4, v7}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 378
    return-void

    .line 363
    :cond_2
    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    invoke-virtual {v4, v6}, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->setSelect(I)V

    .line 365
    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iget v5, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->val$groupPosition:I

    iget-object v6, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-object v6, v6, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->packageName:Ljava/lang/String;

    # invokes: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getJunkChildCacheFromPackName(ILjava/lang/String;)Lcom/market2345/dumpclean/mode/JunkChildCache;
    invoke-static {v4, v5, v6}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$200(Lcom/market2345/dumpclean/ExpandableListViewAdapter;ILjava/lang/String;)Lcom/market2345/dumpclean/mode/JunkChildCache;

    move-result-object v0

    .line 367
    .restart local v0    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$1;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # invokes: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->checkSelect(Lcom/market2345/dumpclean/mode/JunkChildCache;)I
    invoke-static {v4, v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$100(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildCache;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/market2345/dumpclean/mode/JunkChildCache;->setSelect(I)V

    goto :goto_0
.end method
