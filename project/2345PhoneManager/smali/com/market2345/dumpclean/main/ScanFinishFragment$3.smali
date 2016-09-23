.class Lcom/market2345/dumpclean/main/ScanFinishFragment$3;
.super Ljava/lang/Object;
.source "ScanFinishFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/dumpclean/main/ScanFinishFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/main/ScanFinishFragment;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/main/ScanFinishFragment;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/market2345/dumpclean/main/ScanFinishFragment$3;->this$0:Lcom/market2345/dumpclean/main/ScanFinishFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 2
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "id"    # J

    .prologue
    .line 222
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 230
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 226
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/widget/ExpandableListView;->expandGroup(IZ)Z

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p1, p3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    goto :goto_0
.end method
