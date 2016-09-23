.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 622
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 625
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 627
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getApp()Lcom/market2345/model/InstalledApp;

    move-result-object v0

    iget v0, v0, Lcom/market2345/model/InstalledApp;->flag:I

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getSelect()I

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->setSelect(I)V

    .line 635
    :goto_0
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 638
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$groupPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 631
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$groupPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkGroup;

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$groupPosition:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getSize()J

    move-result-wide v2

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    iget-wide v4, v1, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->size:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcom/market2345/dumpclean/mode/JunkGroup;->setSize(J)V

    .line 632
    new-instance v0, Lcom/market2345/dumpclean/DeleteHelp;

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/market2345/dumpclean/DeleteHelp;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$3;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/DeleteHelp;->killBackgroundProcess(Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;)V

    goto :goto_0
.end method
