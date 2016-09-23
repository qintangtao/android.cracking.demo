.class Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$7;
.super Ljava/lang/Object;
.source "FloatingGroupExpandableListView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->createFloatingGroupView(I)V
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
    .line 399
    iput-object p1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$7;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 403
    iget-object v0, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$7;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    iget-object v1, p0, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView$7;->this$0:Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;

    # getter for: Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->mOnClickAction:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->access$800(Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/market2345/dumpclean/widget/FloatingGroupExpandableListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 404
    return-void
.end method
