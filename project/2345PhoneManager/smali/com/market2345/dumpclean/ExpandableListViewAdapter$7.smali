.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getApkOnLongClickListener(Lcom/market2345/dumpclean/mode/JunkChildApk;I)Landroid/view/View$OnLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

.field final synthetic val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

.field final synthetic val$grouPosition:I


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildApk;I)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

    iput p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->val$grouPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 664
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/util/DialogFactory;->createTrustDialog(Landroid/content/Context;)Lcom/market2345/dumpclean/main/AddTrustDialog;

    move-result-object v0

    .line 665
    .local v0, "trustDialog":Lcom/market2345/dumpclean/main/AddTrustDialog;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/AddTrustDialog;->show()V

    .line 666
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unInstalledApp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

    iget-object v3, v3, Lcom/market2345/dumpclean/mode/JunkChildApk;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/AddTrustDialog;->getIcon()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 667
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;->val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

    iget-object v1, v1, Lcom/market2345/dumpclean/mode/JunkChildApk;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/main/AddTrustDialog;->setName(Ljava/lang/String;)V

    .line 668
    new-instance v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;

    invoke-direct {v1, p0, v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$7$1;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$7;Lcom/market2345/dumpclean/main/AddTrustDialog;)V

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/main/AddTrustDialog;->setBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 687
    invoke-virtual {v0, v4}, Lcom/market2345/dumpclean/main/AddTrustDialog;->setCanceledOnTouchOutside(Z)V

    .line 688
    return v4
.end method
