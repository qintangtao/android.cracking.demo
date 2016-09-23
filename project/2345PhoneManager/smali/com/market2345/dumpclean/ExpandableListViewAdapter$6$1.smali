.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$1;
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
    .line 587
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 592
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->cancel()V

    .line 595
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "package"

    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v4, v4, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->val$ram:Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;

    iget-object v4, v4, Lcom/market2345/dumpclean/mode/InstalledAppAndRAM;->app:Lcom/market2345/model/InstalledApp;

    iget-object v4, v4, Lcom/market2345/model/InstalledApp;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 597
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 598
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    const/16 v4, 0x11

    invoke-virtual {v3, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 599
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 600
    .local v0, "e1":Ljava/lang/Exception;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .restart local v1    # "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6$1;->this$1:Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;

    iget-object v3, v3, Lcom/market2345/dumpclean/ExpandableListViewAdapter$6;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 603
    :catch_1
    move-exception v3

    goto :goto_0
.end method
