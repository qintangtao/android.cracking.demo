.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$13;
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

.field final synthetic val$residual:Lcom/market2345/dumpclean/mode/JunkChildResidual;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildResidual;)V
    .locals 0

    .prologue
    .line 872
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$13;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$13;->val$residual:Lcom/market2345/dumpclean/mode/JunkChildResidual;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 877
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$13;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/market2345/dumpclean/FileDetailsActivityPaths;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 878
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "title_name"

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$13;->val$residual:Lcom/market2345/dumpclean/mode/JunkChildResidual;

    iget-object v2, v2, Lcom/market2345/dumpclean/mode/JunkChildResidual;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string v2, "dirs"

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$13;->val$residual:Lcom/market2345/dumpclean/mode/JunkChildResidual;

    iget-object v1, v1, Lcom/market2345/dumpclean/mode/JunkChildResidual;->paths:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 880
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$13;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 881
    return-void
.end method
