.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

.field final synthetic val$trustDialog:Lcom/market2345/dumpclean/main/AddTrustDialog;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;Lcom/market2345/dumpclean/main/AddTrustDialog;)V
    .locals 0

    .prologue
    .line 777
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->val$trustDialog:Lcom/market2345/dumpclean/main/AddTrustDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 780
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->val$trustDialog:Lcom/market2345/dumpclean/main/AddTrustDialog;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/main/AddTrustDialog;->dismiss()V

    .line 781
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 782
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "file_name"

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v2, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const-string v1, "file_path"

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v2, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    const-string v1, "file_size"

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-wide v2, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 788
    const-string v1, "file_type"

    sget-object v2, Lcom/market2345/dumpclean/ITEMTYPE;->CACHE:Lcom/market2345/dumpclean/ITEMTYPE;

    invoke-virtual {v2}, Lcom/market2345/dumpclean/ITEMTYPE;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->manager:Lcom/market2345/dumpclean/CleanTrustDBManager;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$500(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Lcom/market2345/dumpclean/CleanTrustDBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/market2345/dumpclean/CleanTrustDBManager;->insert(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 792
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-boolean v1, v1, Lcom/market2345/dumpclean/mode/JunkChildCache;->isExpanded:Z

    if-eqz v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iget v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->val$groupPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v2, v2, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iget v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->val$groupPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 796
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 798
    :cond_1
    return-void
.end method
