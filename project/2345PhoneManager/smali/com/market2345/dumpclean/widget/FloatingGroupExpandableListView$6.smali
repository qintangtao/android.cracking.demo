.class Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$6;
.super Landroid/database/DataSetObserver;
.source "FloatingGroupExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->setAdapter(Lcom/market2345/dumpclean/widget/WrapperExpandableListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;


# direct methods
.method constructor <init>(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$6;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$6;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    const/4 v1, 0x0

    # setter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$502(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;Landroid/view/View;)Landroid/view/View;

    .line 330
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$6;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    const/4 v1, 0x0

    # setter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$502(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;Landroid/view/View;)Landroid/view/View;

    .line 335
    return-void
.end method
