.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getCacheOnLongClickListener(Lcom/market2345/dumpclean/mode/JunkChildCache;I)Landroid/view/View$OnLongClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

.field final synthetic val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildCache;I)V
    .locals 0

    .prologue
    .line 770
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    iput p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 773
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$400(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/market2345/util/DialogFactory;->createTrustDialog(Landroid/content/Context;)Lcom/market2345/dumpclean/main/AddTrustDialog;

    move-result-object v0

    .line 774
    .local v0, "trustDialog":Lcom/market2345/dumpclean/main/AddTrustDialog;
    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/AddTrustDialog;->show()V

    .line 775
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installedApp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v3, v3, Lcom/market2345/dumpclean/mode/JunkChildCache;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/market2345/dumpclean/main/AddTrustDialog;->getIcon()Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    # getter for: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {v4}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$800(Lcom/market2345/dumpclean/ExpandableListViewAdapter;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 776
    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;->val$cache:Lcom/market2345/dumpclean/mode/JunkChildCache;

    iget-object v1, v1, Lcom/market2345/dumpclean/mode/JunkChildCache;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/main/AddTrustDialog;->setName(Ljava/lang/String;)V

    .line 777
    new-instance v1, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;

    invoke-direct {v1, p0, v0}, Lcom/market2345/dumpclean/ExpandableListViewAdapter$11$1;-><init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter$11;Lcom/market2345/dumpclean/main/AddTrustDialog;)V

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/main/AddTrustDialog;->setBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    invoke-virtual {v0, v5}, Lcom/market2345/dumpclean/main/AddTrustDialog;->setCanceledOnTouchOutside(Z)V

    .line 801
    return v5
.end method
