.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;

.field final synthetic val$trustDialog:Lcom/market2345/dumpclean/main/AddTrustDialog;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;Lcom/market2345/dumpclean/main/AddTrustDialog;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;->val$trustDialog:Lcom/market2345/dumpclean/main/AddTrustDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 671
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;->val$trustDialog:Lcom/market2345/dumpclean/main/AddTrustDialog;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/main/AddTrustDialog;->dismiss()V

    .line 672
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 673
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "file_name"

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

    iget-object v2, v2, Lcom/market2345/dumpclean/mode/JunkChildApk;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v1, "file_path"

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

    iget-object v2, v2, Lcom/market2345/dumpclean/mode/JunkChildApk;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    const-string v1, "file_size"

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

    iget-wide v2, v2, Lcom/market2345/dumpclean/mode/JunkChildApk;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 679
    const-string v1, "file_type"

    sget-object v2, Lcom/market2345/dumpclean/ITEMTYPE;->APKFILE:Lcom/market2345/dumpclean/ITEMTYPE;

    invoke-virtual {v2}, Lcom/market2345/dumpclean/ITEMTYPE;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 681
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->manager:Lcom/market2345/dumpclean/CleanTrustDBManager;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$500(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Lcom/market2345/dumpclean/CleanTrustDBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/market2345/dumpclean/CleanTrustDBManager;->insert(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;

    iget v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->val$grouPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 683
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 685
    :cond_0
    return-void
.end method
