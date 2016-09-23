.class Lcom/market2345/applist/AppListFragment$1;
.super Ljava/lang/Object;
.source "AppListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/applist/AppListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/AppListFragment;


# direct methods
.method constructor <init>(Lcom/market2345/applist/AppListFragment;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/market2345/applist/AppListAdapter$ViewHolder;

    .line 91
    .local v1, "holder":Lcom/market2345/applist/AppListAdapter$ViewHolder;
    iget v2, v1, Lcom/market2345/applist/AppListAdapter$ViewHolder;->position:I

    .line 92
    .local v2, "posi":I
    iget-object v4, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    new-instance v5, Landroid/content/Intent;

    iget-object v3, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v3}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v6, Lcom/market2345/detail/DetailActivity;

    invoke-direct {v5, v3, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v3, Lcom/market2345/model/App;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    iget-object v3, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v3, v3, Lcom/market2345/applist/AppListFragment;->recommendlist:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Serializable;

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/market2345/applist/AppListFragment;->startActivity(Landroid/content/Intent;)V

    .line 95
    add-int/lit8 v0, v2, 0x1

    .line 96
    .local v0, "clickPosi":I
    const/16 v3, 0x32

    if-gt v0, v3, :cond_0

    .line 97
    const-string v3, "soft"

    iget-object v4, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v4, v4, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-object v4, v4, Lcom/market2345/applist/AppListFragment$ConfirmData;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v3, v3, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget v3, v3, Lcom/market2345/applist/AppListFragment$ConfirmData;->sort:I

    packed-switch v3, :pswitch_data_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 102
    :pswitch_0
    iget-object v3, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v3}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location_Soft_Biaoshengbang_Click_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v3, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v3}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location_Soft_Xiazaibang_Click_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 112
    :pswitch_2
    iget-object v3, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v3}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location_Soft_Pingfenbang_Click_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_1
    const-string v3, "game"

    iget-object v4, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v4, v4, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget-object v4, v4, Lcom/market2345/applist/AppListFragment$ConfirmData;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    iget-object v3, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    iget-object v3, v3, Lcom/market2345/applist/AppListFragment;->confirmData:Lcom/market2345/applist/AppListFragment$ConfirmData;

    iget v3, v3, Lcom/market2345/applist/AppListFragment$ConfirmData;->sort:I

    packed-switch v3, :pswitch_data_1

    goto :goto_0

    .line 127
    :pswitch_3
    iget-object v3, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v3}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location_Game_Xiazaibang_Click_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :pswitch_4
    iget-object v3, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v3}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location_Game_Biaoshengbang_Click_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :pswitch_5
    iget-object v3, p0, Lcom/market2345/applist/AppListFragment$1;->this$0:Lcom/market2345/applist/AppListFragment;

    invoke-virtual {v3}, Lcom/market2345/applist/AppListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Location_Game_Pingfenbang_Click_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    .line 118
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
