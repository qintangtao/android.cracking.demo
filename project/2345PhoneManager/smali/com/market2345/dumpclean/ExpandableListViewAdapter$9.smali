.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$9;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getResidualOnLongClickListener(Lcom/market2345/dumpclean/mode/JunkChildResidual;I)Landroid/view/View$OnLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

.field final synthetic val$groupPosition:I

.field final synthetic val$residual:Lcom/market2345/dumpclean/mode/JunkChildResidual;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildResidual;I)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$9;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$9;->val$residual:Lcom/market2345/dumpclean/mode/JunkChildResidual;

    iput p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$9;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 718
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$9;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/util/DialogFactory;->createTrustDialog(Landroid/content/Context;)Lcom/market2345/dumpclean/main/AddTrustDialog;

    move-result-object v0

    .line 719
    .local v0, "trustDialog":Lcom/market2345/dumpclean/main/AddTrustDialog;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/AddTrustDialog;->show()V

    .line 720
    const v1, 0x7f02004e

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/main/AddTrustDialog;->setIcon(I)V

    .line 721
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$9;->val$residual:Lcom/market2345/dumpclean/mode/JunkChildResidual;

    iget-object v1, v1, Lcom/market2345/dumpclean/mode/JunkChildResidual;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/main/AddTrustDialog;->setName(Ljava/lang/String;)V

    .line 722
    new-instance v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$9$1;

    invoke-direct {v1, p0, v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$9$1;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$9;Lcom/market2345/dumpclean/main/AddTrustDialog;)V

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/main/AddTrustDialog;->setBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 741
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/main/AddTrustDialog;->setCanceledOnTouchOutside(Z)V

    .line 742
    const/4 v1, 0x0

    return v1
.end method
