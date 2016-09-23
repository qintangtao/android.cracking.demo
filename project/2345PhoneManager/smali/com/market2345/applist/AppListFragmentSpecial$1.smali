.class Lcom/market2345/applist/AppListFragmentSpecial$1;
.super Ljava/lang/Object;
.source "AppListFragmentSpecial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/market2345/applist/AppListFragmentSpecial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/applist/AppListFragmentSpecial;


# direct methods
.method constructor <init>(Lcom/market2345/applist/AppListFragmentSpecial;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/market2345/applist/AppListFragmentSpecial$1;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 101
    .local v4, "oHolder":Ljava/lang/Object;
    instance-of v6, v4, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;

    if-eqz v6, :cond_1

    move-object v1, v4

    .line 102
    check-cast v1, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;

    .line 103
    .local v1, "appItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;
    iget v5, v1, Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;->position:I

    .line 104
    .local v5, "posi":I
    add-int/lit8 v2, v5, 0x1

    .line 105
    .local v2, "clickPostion":I
    const/16 v6, 0x64

    if-gt v2, v6, :cond_0

    .line 106
    const-string v6, "type_recommend"

    iget-object v7, p0, Lcom/market2345/applist/AppListFragmentSpecial$1;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 107
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial$1;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-virtual {v6}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Location_Main_Click_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 116
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial$1;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v6, v6, Lcom/market2345/applist/AppListFragmentSpecial;->mInsertedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 117
    .local v3, "o":Ljava/lang/Object;
    instance-of v6, v3, Lcom/market2345/model/App;

    if-eqz v6, :cond_1

    move-object v0, v3

    .line 118
    check-cast v0, Lcom/market2345/model/App;

    .line 119
    .local v0, "app":Lcom/market2345/model/App;
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial$1;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/market2345/applist/AppListFragmentSpecial$1;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-virtual {v8}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/market2345/detail/DetailActivity;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v8, Lcom/market2345/model/App;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/market2345/applist/AppListFragmentSpecial;->startActivity(Landroid/content/Intent;)V

    .line 122
    .end local v0    # "app":Lcom/market2345/model/App;
    .end local v1    # "appItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;
    .end local v2    # "clickPostion":I
    .end local v3    # "o":Ljava/lang/Object;
    .end local v5    # "posi":I
    :cond_1
    return-void

    .line 109
    .restart local v1    # "appItemHolder":Lcom/market2345/applist/AppListWithTopicAdapter$AppItemViewHolder;
    .restart local v2    # "clickPostion":I
    .restart local v5    # "posi":I
    :cond_2
    const-string v6, "type_soft"

    iget-object v7, p0, Lcom/market2345/applist/AppListFragmentSpecial$1;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 110
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial$1;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-virtual {v6}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Location_Soft_Click_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_3
    const-string v6, "type_game"

    iget-object v7, p0, Lcom/market2345/applist/AppListFragmentSpecial$1;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragmentSpecial;->confirmData:Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;

    iget-object v7, v7, Lcom/market2345/applist/AppListFragmentSpecial$ConfirmData;->type:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 112
    iget-object v6, p0, Lcom/market2345/applist/AppListFragmentSpecial$1;->this$0:Lcom/market2345/applist/AppListFragmentSpecial;

    invoke-virtual {v6}, Lcom/market2345/applist/AppListFragmentSpecial;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Location_Game_Click_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
