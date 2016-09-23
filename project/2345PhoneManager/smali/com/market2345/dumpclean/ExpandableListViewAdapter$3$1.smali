.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

.field final synthetic val$trustDialog:Lcom/market2345/dumpclean/main/AddTrustDialog;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;Lcom/market2345/dumpclean/main/AddTrustDialog;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->val$trustDialog:Lcom/market2345/dumpclean/main/AddTrustDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 432
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->val$trustDialog:Lcom/market2345/dumpclean/main/AddTrustDialog;

    invoke-virtual {v2}, Lcom/market2345/dumpclean/main/AddTrustDialog;->dismiss()V

    .line 433
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 434
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "file_name"

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-object v3, v3, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v2, "file_path"

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-object v3, v3, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->path:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v2, "file_size"

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-wide v4, v3, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    const-string v2, "file_type"

    sget-object v3, Lcom/market2345/dumpclean/ITEMTYPE;->CACHE:Lcom/market2345/dumpclean/ITEMTYPE;

    invoke-virtual {v3}, Lcom/market2345/dumpclean/ITEMTYPE;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 442
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->manager:Lcom/market2345/dumpclean/CleanTrustDBManager;
    invoke-static {v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$500(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Lcom/market2345/dumpclean/CleanTrustDBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/market2345/dumpclean/CleanTrustDBManager;->insert(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->val$groupPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 444
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->val$groupPosition:I

    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v4, v4, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-object v4, v4, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->packageName:Ljava/lang/String;

    # invokes: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getJunkChildCacheFromPackName(ILjava/lang/String;)Lcom/market2345/dumpclean/mode/JunkChildCache;
    invoke-static {v2, v3, v4}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$200(Lcom/market2345/dumpclean/ExpandableListViewAdapter;ILjava/lang/String;)Lcom/market2345/dumpclean/mode/JunkChildCache;

    move-result-object v0

    .line 445
    .local v0, "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    iget-object v2, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 446
    iget-wide v2, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->size:J

    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v4, v4, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-wide v4, v4, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->size:J

    .line 447
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->val$groupPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkGroup;

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v3}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget v4, v4, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->val$groupPosition:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v3}, Lcom/market2345/dumpclean/mode/JunkGroup;->getSize()J

    move-result-wide v4

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-wide v6, v3, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/market2345/dumpclean/mode/JunkGroup;->setSize(J)V

    .line 449
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$3;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 451
    .end local v0    # "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    :cond_0
    return-void
.end method
