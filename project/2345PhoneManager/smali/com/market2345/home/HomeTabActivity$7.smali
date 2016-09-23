.class Lcom/market2345/home/HomeTabActivity$7;
.super Ljava/lang/Object;
.source "HomeTabActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/home/HomeTabActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/home/HomeTabActivity;


# direct methods
.method constructor <init>(Lcom/market2345/home/HomeTabActivity;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/market2345/home/HomeTabActivity$7;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 808
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/market2345/home/HomeTabActivity$7;->this$0:Lcom/market2345/home/HomeTabActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/market2345/home/model/IBottomBarItem;

    # invokes: Lcom/market2345/home/HomeTabActivity;->changeContent(Lcom/market2345/home/model/IBottomBarItem;)Z
    invoke-static {v1, v0}, Lcom/market2345/home/HomeTabActivity;->access$1200(Lcom/market2345/home/HomeTabActivity;Lcom/market2345/home/model/IBottomBarItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity$7;->this$0:Lcom/market2345/home/HomeTabActivity;

    # invokes: Lcom/market2345/home/HomeTabActivity;->changeFocus(I)V
    invoke-static {v0, p3}, Lcom/market2345/home/HomeTabActivity;->access$1300(Lcom/market2345/home/HomeTabActivity;I)V

    .line 810
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity$7;->this$0:Lcom/market2345/home/HomeTabActivity;

    const/4 v1, 0x1

    # invokes: Lcom/market2345/home/HomeTabActivity;->changeSearchHint(Z)V
    invoke-static {v0, v1}, Lcom/market2345/home/HomeTabActivity;->access$500(Lcom/market2345/home/HomeTabActivity;Z)V

    .line 811
    iget-object v0, p0, Lcom/market2345/home/HomeTabActivity$7;->this$0:Lcom/market2345/home/HomeTabActivity;

    # invokes: Lcom/market2345/home/HomeTabActivity;->mainBottomStatisticEvent(I)V
    invoke-static {v0, p3}, Lcom/market2345/home/HomeTabActivity;->access$1400(Lcom/market2345/home/HomeTabActivity;I)V

    .line 813
    :cond_0
    return-void
.end method
