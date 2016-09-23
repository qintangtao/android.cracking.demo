.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;->showResidualDialog(Lcom/market2345/dumpclean/mode/JunkChildResidual;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$groupPosition:I

.field final synthetic val$residual:Lcom/market2345/dumpclean/mode/JunkChildResidual;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Landroid/app/Dialog;ILcom/market2345/dumpclean/mode/JunkChildResidual;)V
    .locals 0

    .prologue
    .line 897
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;->val$dialog:Landroid/app/Dialog;

    iput p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;->val$groupPosition:I

    iput-object p4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;->val$residual:Lcom/market2345/dumpclean/mode/JunkChildResidual;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 900
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 901
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->dataList:Ljava/util/List;
    invoke-static {v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;->val$groupPosition:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v0}, Lcom/market2345/dumpclean/mode/JunkGroup;->getChildrenItems()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;->val$residual:Lcom/market2345/dumpclean/mode/JunkChildResidual;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 903
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 904
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$14;->val$residual:Lcom/market2345/dumpclean/mode/JunkChildResidual;

    iget-object v0, v0, Lcom/market2345/dumpclean/mode/JunkChildResidual;->paths:Ljava/util/List;

    invoke-static {v0}, Lcom/market2345/dumpclean/main/Util;->asynchronousDeleteFolders(Ljava/util/List;)V

    .line 905
    return-void
.end method
