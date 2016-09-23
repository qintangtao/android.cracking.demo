.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 497
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 500
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 501
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$groupPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 502
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$groupPosition:I

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-object v3, v3, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->packageName:Ljava/lang/String;

    # invokes: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getJunkChildCacheFromPackName(ILjava/lang/String;)Lcom/market2345/dumpclean/mode/JunkChildCache;
    invoke-static {v1, v2, v3}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$200(Lcom/market2345/dumpclean/ExpandableListViewAdapter;ILjava/lang/String;)Lcom/market2345/dumpclean/mode/JunkChildCache;

    move-result-object v0

    .line 503
    .local v0, "cache":Lcom/market2345/dumpclean/mode/JunkChildCache;
    iget-object v1, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->childCacheOfChild:Ljava/util/List;

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 504
    iget-wide v2, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->size:J

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-wide v4, v1, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/market2345/dumpclean/mode/JunkChildCache;->size:J

    .line 505
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$groupPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkGroup;

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$groupPosition:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/JunkGroup;->getSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v4, v4, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-wide v4, v4, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->size:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/market2345/dumpclean/mode/JunkGroup;->setSize(J)V

    .line 507
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 509
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-object v2, v2, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/market2345/dumpclean/main/Util;->asynchronousDeleteFolderNoContainOuterFolder(Ljava/io/File;)V

    .line 510
    return-void
.end method
