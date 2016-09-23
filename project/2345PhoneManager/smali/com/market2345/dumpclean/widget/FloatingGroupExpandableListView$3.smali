.class Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$3;
.super Ljava/lang/Object;
.source "FloatingGroupExpandableListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->init()V
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
    .line 139
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$3;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 143
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$3;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # invokes: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->positionSelectorOnFloatingGroup()V
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$700(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)V

    .line 144
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$3;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    invoke-virtual {v0, v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->setPressed(Z)V

    .line 145
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$3;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$500(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$3;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mFloatingGroupView:Landroid/view/View;
    invoke-static {v0}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$500(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 148
    :cond_0
    return-void
.end method
