.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$5$1;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter$5;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$5;

.field final synthetic val$trustDialog:Lcom/market2345/dumpclean/main/AddTrustDialog;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$5;Lcom/market2345/dumpclean/main/AddTrustDialog;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$5$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$5;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$5$1;->val$trustDialog:Lcom/market2345/dumpclean/main/AddTrustDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 544
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$5$1;->val$trustDialog:Lcom/market2345/dumpclean/main/AddTrustDialog;

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/AddTrustDialog;->dismiss()V

    .line 545
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$5$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$5;

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$5;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$5$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$5;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$5;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    invoke-virtual {v1}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getSelect()I

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->setSelect(I)V

    .line 546
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$5$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$5;

    iget-object v0, v0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$5;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 547
    return-void
.end method
