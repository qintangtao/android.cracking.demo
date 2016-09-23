.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$2;
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


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;)V
    .locals 0

    .prologue
    .line 611
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 614
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    invoke-virtual {v2}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getApp()Lcom/market2345/model/InstalledApp;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    invoke-virtual {v3}, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->getApp()Lcom/market2345/model/InstalledApp;

    move-result-object v3

    iget-object v3, v3, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 616
    .local v1, "packageURI":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$2;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v2, v2, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 620
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "packageURI":Landroid/net/Uri;
    :cond_0
    return-void
.end method
