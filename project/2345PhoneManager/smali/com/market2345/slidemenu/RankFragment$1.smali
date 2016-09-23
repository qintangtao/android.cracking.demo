.class Lcom/market2345/slidemenu/RankFragment$1;
.super Ljava/lang/Object;
.source "RankFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/market2345/slidemenu/RankFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/market2345/slidemenu/RankFragment;


# direct methods
.method constructor <init>(Lcom/market2345/slidemenu/RankFragment;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 120
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    # invokes: Lcom/market2345/slidemenu/RankFragment;->change(I)V
    invoke-static {v0, v1}, Lcom/market2345/slidemenu/RankFragment;->access$100(Lcom/market2345/slidemenu/RankFragment;I)V

    .line 121
    return-void

    .line 96
    :sswitch_0
    const-string v0, "soft"

    iget-object v1, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    # getter for: Lcom/market2345/slidemenu/RankFragment;->rankType:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/slidemenu/RankFragment;->access$000(Lcom/market2345/slidemenu/RankFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/RankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Soft_Ranking_biaoshengbang"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_1
    const-string v0, "game"

    iget-object v1, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    # getter for: Lcom/market2345/slidemenu/RankFragment;->rankType:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/slidemenu/RankFragment;->access$000(Lcom/market2345/slidemenu/RankFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/RankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Game_Ranking_biaoshengbang"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :sswitch_1
    const-string v0, "soft"

    iget-object v1, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    # getter for: Lcom/market2345/slidemenu/RankFragment;->rankType:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/slidemenu/RankFragment;->access$000(Lcom/market2345/slidemenu/RankFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/RankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Soft_Ranking_xiazaibang"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    const-string v0, "game"

    iget-object v1, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    # getter for: Lcom/market2345/slidemenu/RankFragment;->rankType:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/slidemenu/RankFragment;->access$000(Lcom/market2345/slidemenu/RankFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/RankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Game_Ranking_xiazaibang"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :sswitch_2
    const-string v0, "soft"

    iget-object v1, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    # getter for: Lcom/market2345/slidemenu/RankFragment;->rankType:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/slidemenu/RankFragment;->access$000(Lcom/market2345/slidemenu/RankFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/RankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Soft_Ranking_haopingbang"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    :cond_3
    const-string v0, "game"

    iget-object v1, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    # getter for: Lcom/market2345/slidemenu/RankFragment;->rankType:Ljava/lang/String;
    invoke-static {v1}, Lcom/market2345/slidemenu/RankFragment;->access$000(Lcom/market2345/slidemenu/RankFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/market2345/slidemenu/RankFragment$1;->this$0:Lcom/market2345/slidemenu/RankFragment;

    invoke-virtual {v0}, Lcom/market2345/slidemenu/RankFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Game_Ranking_haopingbang"

    invoke-static {v0, v1}, Lcom/statistic2345/log/Statistics;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0902e5 -> :sswitch_0
        0x7f0902e9 -> :sswitch_1
        0x7f0902f3 -> :sswitch_2
    .end sparse-switch
.end method
