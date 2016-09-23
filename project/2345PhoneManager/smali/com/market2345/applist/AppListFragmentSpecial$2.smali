.class Lcom/market2345/applist/AppListFragmentSpecial$2;
.super Ljava/lang/Object;
.source "AppListFragmentSpecial.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/applist/AppListFragmentSpecial;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/AppListFragmentSpecial;


# direct methods
.method constructor <init>(Lcom/market2345/applist/AppListFragmentSpecial;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/market2345/applist/AppListFragmentSpecial$2;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "refreshView":Lcom/handmark/pulltorefresh/library/PullToRefreshBase;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    const-string v0, "type_recommend"

    iget-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial$2;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v1, v1, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v1, v1, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$2;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-virtual {v0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Refresh_Recommend"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$2;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v0, v0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$2;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v0, v0, Lcom/market2345/applist/AppListFragmentSpecial;->mViewPager:Lcom/market2345/customview/AutoScrollViewPager;

    invoke-virtual {v0}, Lcom/market2345/customview/AutoScrollViewPager;->stopAutoScroll()V

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$2;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v0, v0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->moveToFirstPage()V

    .line 158
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$2;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v0, v0, Lcom/market2345/applist/AppListFragmentSpecial;->mHttpTransaction:Lcom/market2345/httpnew/HttpTransaction;

    invoke-interface {v0}, Lcom/market2345/httpnew/HttpTransaction;->execute()V

    .line 160
    return-void

    .line 148
    :cond_2
    const-string v0, "type_soft"

    iget-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial$2;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v1, v1, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v1, v1, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$2;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-virtual {v0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Refresh_SoftWare"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_3
    const-string v0, "type_game"

    iget-object v1, p0, Lcom/market2345/applist/AppListFragmentSpecial$2;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v1, v1, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v1, v1, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/market2345/applist/AppListFragmentSpecial$2;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-virtual {v0}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Refresh_Game"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
