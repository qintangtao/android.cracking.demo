.class Lcom/market2345/dumpclean/ExpandableListViewAdapter$8;
.super Ljava/lang/Object;
.source "ExpandableListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/ExpandableListViewAdapter;->getApkOnClickListener(Lcom/market2345/dumpclean/mode/JunkChildApk;I)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

.field final synthetic val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildApk;I)V
    .locals 0

    .prologue
    .line 700
    iput-object p1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$8;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iput-object p2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$8;->val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

    iput p3, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$8;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 703
    iget-object v0, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$8;->this$0:Lcom/market2345/dumpclean/ExpandableListViewAdapter;

    iget-object v1, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$8;->val$apk:Lcom/market2345/dumpclean/mode/JunkChildApk;

    iget v2, p0, Lcom/market2345/dumpclean/ExpandableListViewAdapter$8;->val$groupPosition:I

    # invokes: Lcom/market2345/dumpclean/ExpandableListViewAdapter;->showApkFileDialog(Lcom/market2345/dumpclean/mode/JunkChildApk;I)V
    invoke-static {v0, v1, v2}, Lcom/market2345/dumpclean/ExpandableListViewAdapter;->access$600(Lcom/market2345/dumpclean/ExpandableListViewAdapter;Lcom/market2345/dumpclean/mode/JunkChildApk;I)V

    .line 704
    return-void
.end method
