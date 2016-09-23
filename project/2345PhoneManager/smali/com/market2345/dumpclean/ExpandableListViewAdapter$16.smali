.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;
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

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$groupPoistion:I

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Landroid/app/Dialog;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;->val$path:Ljava/lang/String;

    iput p4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;->val$groupPoistion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 936
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->cancel()V

    .line 937
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;->val$path:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 938
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 939
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "dir":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 941
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "file_name"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v3, "file_path"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    const-string v3, "file_type"

    sget-object v4, Lcom/market2345/dumpclean/ITEMTYPE;->APKFILE:Lcom/market2345/dumpclean/ITEMTYPE;

    invoke-virtual {v4}, Lcom/market2345/dumpclean/ITEMTYPE;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 947
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->manager:Lcom/market2345/dumpclean/CleanTrustDBManager;
    invoke-static {v3}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$500(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Lcom/market2345/dumpclean/CleanTrustDBManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/market2345/dumpclean/CleanTrustDBManager;->insert(Landroid/content/ContentValues;)Z

    .line 949
    .end local v0    # "dir":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_0
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;->val$path:Ljava/lang/String;

    iget v5, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;->val$groupPoistion:I

    # invokes: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->removePathAllApk(Ljava/lang/String;I)V
    invoke-static {v3, v4, v5}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$900(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Ljava/lang/String;I)V

    .line 950
    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$16;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->notifyDataSetChanged(Z)V

    .line 951
    return-void
.end method
