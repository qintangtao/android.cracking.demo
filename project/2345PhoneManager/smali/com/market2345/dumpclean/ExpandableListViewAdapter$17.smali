.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;->showApkFileDialog(Lcom/market2345/dumpclean/mode/JunkChildApk;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

.field final synthetic val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$groupPoistion:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Landroid/app/Dialog;ILcom/market2345/dumpclean/mode/JunkChildApk;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->val$dialog:Landroid/app/Dialog;

    iput p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->val$groupPoistion:I

    iput-object p4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

    iput-object p5, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 965
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 967
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->val$groupPoistion:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 968
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->val$groupPoistion:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkGroup;

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->val$groupPoistion:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getSize()J

    move-result-wide v2

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

    iget-wide v4, v1, Lcom/market2345/dumpclean/mode/JunkChildApk;->size:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/market2345/dumpclean/mode/JunkGroup;->setSize(J)V

    .line 969
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 970
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$17;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/market2345/dumpclean/main/Util;->asynchronousDeleteFolderNoContainOuterFolder(Ljava/io/File;)V

    .line 973
    return-void
.end method
