.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$1;
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


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 478
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/market2345/dumpclean/FileDetailsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 479
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "title_name"

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-object v2, v2, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v1, "dir"

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->val$childOfChild:Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;

    iget-object v2, v2, Lcom/market2345/dumpclean/mode/JunkChildCacheOfChild;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 481
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;

    iget-object v1, v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$4;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 482
    return-void
.end method
