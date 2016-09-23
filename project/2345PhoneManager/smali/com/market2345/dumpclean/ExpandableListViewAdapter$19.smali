.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$19;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getGroupCheckBoxClickListener(Lcom/market2345/dumpclean/mode/JunkGroup;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

.field final synthetic val$groupItem:Lcom/market2345/dumpclean/mode/JunkGroup;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkGroup;)V
    .locals 0

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$19;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$19;->val$groupItem:Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1041
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$19;->val$groupItem:Lcom/market2345/dumpclean/mode/JunkGroup;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/JunkGroup;->getSelect()I

    move-result v0

    .line 1042
    .local v0, "select":I
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$19;->val$groupItem:Lcom/market2345/dumpclean/mode/JunkGroup;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/market2345/dumpclean/mode/JunkGroup;->setSelect(I)V

    .line 1043
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$19;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    xor-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$19;->val$groupItem:Lcom/market2345/dumpclean/mode/JunkGroup;

    # invokes: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->changChild(ILcom/market2345/dumpclean/mode/JunkGroup;)V
    invoke-static {v1, v2, v3}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$1000(Lcom/market2345/dumpclean/ExpandableListViewAdapter;ILcom/market2345/dumpclean/mode/JunkGroup;)V

    .line 1044
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$19;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # invokes: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->handleSendUpdateBtnNotifity()V
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$300(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)V

    .line 1045
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$19;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 1046
    return-void
.end method
